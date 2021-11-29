import godotapi / [spatial, resource_loader, packed_scene]
import godotapi / [mesh, voxel_terrain, voxel_mesher_blocky, voxel_tool, voxel, voxel_library, shader_material]
import godot
import std / [tables, math, sets, sugar, sequtils, hashes, os, monotimes]
import core, globals
import engine/contexts
export contexts

include "default_builder.nim.nimf"

var max_grid_index = 0

type
  Timer = tuple[until: DateTime, callback: proc()]
  Buffers = Table[Vector3, VoxTable]

const
  highlight_energy = 1.0
  default_energy = 0.1

proc create_builder*(point: Vector3, parent: Node, script = "", is_clone = false): Node {.discardable.}
proc create_bot(transform: Transform, parent: Node, up_axis = UP)

iterator child_objects(self: Node): Node =
  let children = self.get_node("OwnedNodes").get_children
  for v in children:
    let child = v.as_object(Node)
    yield child

gdobj BuildNode of VoxelTerrain:
  var
    script_ctx: ScriptCtx
    script_index* {.gdExport.} = 0
    initial_index* {.gdExport.} = 1
    # FIXME `saved_blocks` and `saved_block_colors` should be
    # a single `seq[(Vector, int)]`. Will need `to_variant`
    # and `from_variant` procs.
    saved_blocks* {.gdExport.}: seq[Vector3]
    saved_block_colors {.gdExport.}: seq[int]
    saved_holes* {.gdExport}: seq[Vector3]
    original_translation* {.gdExport.}: Vector3
    index: int = 1
    blocks_per_frame* = 0.0
    blocks_remaining_this_frame = 0.0
    speed = 1.0
    position* = init_transform()
    drawing = true
    save_points: Table[string, tuple[position: Transform, index: int, drawing: bool]]
    holes, kept_holes: Table[Vector3, int]
    overwrite = false
    built = false
    move_mode = false
    # If we delete a voxel while it's queued up to be drawn by godot voxel,
    # the voxel gets drawn anyway, and the polys hang around until they
    # move out of draw distance. Wait a bit before clearing. FIXME.
    timers: seq[Timer]
    root_builder: BuildNode

  # terrain:
  var
    targeted_voxel: Vector3
    current_normal: Vector3
    draw_plane: Vector3
    current_point: Vector3
    voxel_tool: VoxelTool
    buffers: Buffers
    visible_buffers: HashSet[Vector3]
    loading_buffers: seq[Vector3]
    highlighted = false
    painting, erasing = false
    library: VoxelLibrary
    # NOTE Voxels on the edges of buffers behave strangely. They often can't be drawn with
    # voxel_tool, even if their buffer is visible. I'm not sure if this is a bug.
    # To work around this, we add voxels that can't be displayed with their buffer
    # (using an is_area_editable check) to a `lost_voxels` list, that we just try on each
    # buffer load until we can draw them.
    #
    # There's probably a better way to do this, or to avoid the behavior (bug?)
    # all together.
    lost_voxels: Table[Vector3, seq[Vox]]
    rotational_change*: Vector3

# Terrain:
  proc `highlighted=`*(val: bool) =
    self.highlighted = val
    var energy = if val: highlight_energy else: default_energy
    for i in 0..<self.library.voxel_count.int:
      let m = self.get_material(i).as(ShaderMaterial)
      if not m.is_nil:
        m.set_shader_param("emission_energy", energy.to_variant)

  proc highlight*: bool = self.highlighted

  proc clone_materials =
    let count = self.mesher.as(VoxelMesherBlocky).library.voxel_count
    for i in 0..int.high:
      let m = self.get_material(i)
      if m.is_nil:
        break
      else:
        let m = m.duplicate.as(ShaderMaterial)
        m.set_shader_param("emission_energy", default_energy.to_variant)
        self.set_material(i, m)

  proc in_view(loc: Vector3, log = false): bool =
    self.voxel_tool.is_area_editable(init_aabb(loc, vec3(1,1,1)))

  proc set_voxel(loc: Vector3, index: int) =
    self.voxel_tool.set_voxel(loc, index)

  proc set_energy*(color: int, energy: float) =
    let index = color - 1
    let m = self.get_material(index).as(ShaderMaterial)
    if not m.is_nil:
      m.set_shader_param("emission_energy", energy.to_variant)
    else:
      echo "can't find material"

  proc draw_terrain*(x, y, z: float, index: int, keep = false, trigger = true) =
    if self.voxel_tool.is_nil:
      self.voxel_tool = self.get_voxel_tool()

    let
      loc = vec3(x, y, z)
      blk = self.voxel_to_data_block(loc)
      vox: Vox = (loc, (index, keep))

    while not self.bounds.contains(loc):
      self.bounds = self.bounds.grow(16)

    if self.in_view(loc):
      self.set_voxel(loc, index)
    elif blk in self.visible_buffers:
      self.lost_voxels.mget_or_put(blk, @[])
                      .add vox
    if index == 0:
      self.del_voxel(blk, vox)
    else:
      self.add_voxel(blk, vox)

    if keep and trigger:
      self.trigger("terrain_block_added", loc, index)

  proc draw_terrain*(loc: Vector3, index: int, keep = false, trigger = true) =
    self.draw_terrain(loc.x, loc.y, loc.z, index, keep, trigger)

  proc find_targeted_voxel(point, normal: Vector3): Vector3 =
    let diffed = (vec3(1, 1, 1) + normal) * 0.5
    result = point - diffed

  proc get_vox*(point: Vector3): Option[VoxData] =
    let blk = self.voxel_to_data_block(point)
    if blk in self.buffers:
      let buf = self.buffers[blk]
      if point in buf:
        result = some(buf[point])

  method process*(delta: float) =
    if self.loading_buffers.len > 0:
      let lost_voxels = self.lost_voxels
      for blk, voxels in lost_voxels:
        var remaining_voxels: seq[Vox]
        for (loc, data) in voxels:
          self.try_draw(loc, data.index, data.keep, remaining_voxels)
        if remaining_voxels.len > 0:
          self.lost_voxels[blk] = remaining_voxels
        else:
          self.lost_voxels.del(blk)

      for blk in self.loading_buffers:
        if blk in self.buffers:
          let voxels = self.buffers[blk]
          for loc, data in voxels:
            if not self.try_draw(loc, data.index):
              self.lost_voxels.mget_or_put(blk, @[])
                              .add (loc, data)

      self.loading_buffers = @[]

  proc try_draw(loc: Vector3, idx: int): bool =
    result = if self.in_view(loc):
      self.set_voxel(loc, idx)
      true
    else:
      false

  proc try_draw(loc: Vector3, idx: int, keep = false, buffers: var seq[Vox]) =
    if not self.try_draw(loc, idx):
      buffers.add (loc, (idx, keep))

  proc add_voxel(blk: Vector3, vox: Vox) =
    let (loc, data) = vox
    if blk notin self.buffers:
      self.buffers[blk] = VoxTable()

    self.buffers[blk][loc] = data

  proc del_voxel(blk: Vector3, vox: Vox) =
    let (loc, data) = vox
    self.buffers[blk].del loc

    if self.buffers[blk].len == 0:
      self.buffers.del(blk)

  proc export_data*(): seq[Vox] =
    for blk, table in self.buffers:
      for loc, data in table:
        result.add (loc, data)

  proc clear*(all = false) =
    for blk in self.visible_buffers:
      if blk in self.buffers:
        for loc, data in self.buffers[blk]:
          if (all or not data.keep):
            self.voxel_tool.set_voxel(loc, 0)

    for blk, table in self.buffers:
      for loc, data in table:
        if all or not data.keep:
          self.buffers[blk].del(loc)

    let lost_voxels = self.lost_voxels
    for blk, voxes in lost_voxels:
      self.lost_voxels[blk] = voxes.filter_it:
        it.data.keep and not all

  method on_block_loaded(location: Vector3) =
    self.loading_buffers.add location
    self.visible_buffers.incl location

  method on_block_unloaded(location: Vector3) =
    self.visible_buffers.excl location
    self.lost_voxels.del location

  method on_target_move(point, normal: Vector3) =
    let
      prev_point = self.current_point
      prev_normal = self.current_normal
    self.current_point = point
    self.current_normal = normal
    let targeted_voxel = self.find_targeted_voxel(point, normal)
    if targeted_voxel != self.targeted_voxel:
      self.targeted_voxel = targeted_voxel

    if not self.highlighted and tool_mode == CodeMode:
      self.get_parent.trigger("highlight", true)

    if tool_mode == ObjectMode:
      if normal == UP:
        state.target_block = true
      else:
        state.reticle = true

    if self.painting and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_fire()
    elif self.erasing and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_remove()

  method on_target_out() =
    self.get_parent.trigger("deselect", true)
    if tool_mode == ObjectMode:
      game_node.trigger("show_target")

  method on_target_in() =
    if tool_mode == CodeMode:
      self.get_parent.trigger("highlight", true)
    if tool_mode == ObjectMode:
      game_node.trigger("hide_target")

  method on_mouse_released() =
    self.painting = false
    self.erasing = false
    self.draw_plane = vec3()

  method on_tree_exiting() =
    game_node.trigger("collider_exiting", self)

  method on_target_fire() =
    let vox = self.get_vox(self.targeted_voxel)
    if vox:
      if tool_mode == BlockMode:
        self.painting = true
        let point = self.targeted_voxel + self.current_normal
        if not self.root_builder.is_nil:
          let t = self.get_parent().as(Spatial).translation #+ vec3(2,0,1)
          self.root_builder.draw_terrain(t + point, action_index, true)
          self.root_builder.draw_plane = (t + self.current_point) * self.current_normal
        else:
          self.draw_terrain(point, action_index, true)
        self.draw_plane = self.current_point * self.current_normal
      elif tool_mode == ObjectMode:
        var transform = init_transform().translated(self.to_global(self.current_point))
        create_bot(transform, data_node, up_axis = self.current_normal)
      elif tool_mode == CodeMode:
        self.trigger("block_selected")
        self.get_parent.trigger("deselect", true)

  method on_target_remove() =
    let loc = self.targeted_voxel
    if tool_mode == BlockMode:
      self.erasing = true
      let data = self.get_vox(loc)
      if data:
        let data = data.get
        self.draw_terrain(loc, 0)
        if self.buffers.len == 0:
          self.trigger("last_block_deleted", 0)
        else:
          self.trigger("terrain_block_removed", 0 , loc, data.index, data.keep)
      self.draw_plane = self.current_point * self.current_normal

  # BuildNode
  proc init*() =
    self.script_ctx = ScriptCtx.init("grid")

  proc code_template(file: string, imports: string): string =
    result = default_builder(config.script_dir & "/" & file, imports, self.script_ctx.is_clone)

  method ready() =
    # Terrain
    self.bind_signals(self, w"""
      target_in target_out target_move
      target_fire target_remove block_loaded
      block_unloaded tree_exiting""")
    self.bind_signals("mouse_released")
    self.library = self.mesher.as(VoxelMesherBlocky).library
    self.clone_materials()

    # BuildNode
    if max_grid_index <= self.script_index:
      max_grid_index = self.script_index + 1
    if not self.script_ctx.is_clone:
      self.set_script()
    if self.script_ctx.is_clone:
      self.root_builder = self.find_root().as(BuildNode)
    self.translation = self.original_translation

    self.bind_signals self,
      w"block_selected last_block_deleted terrain_block_added terrain_block_removed"

    self.bind_signals self, w"highlight deselect deleted"
    self.bind_signals w"reload pause reload_all"

    if self.saved_blocks.len > 0 or self.saved_holes.len > 0:
      self.restore_blocks()

  proc setup*(translation: Vector3, script_index = -1) =
    self.translation = translation
    self.original_translation = translation
    if script_index == -1:
      self.script_index = max_grid_index
    else:
      self.script_index = script_index
    inc max_grid_index
    self.name = "Build_" & $self.script_index
    if not self.script_ctx.is_clone:
      self.set_script()
      write_file self.script, ""

  proc on_clone(target: Node, ctx: ScriptCtx): BuildNode =
    let owner = target.get_parent.as(Spatial)
    var t = owner.global_transform.origin
    var diff = vec3()
    let builder = owner.as(BuildNode)
    if not builder.is_nil:
      t = builder.position.origin.snapped(vec3(1, 1, 1))
      diff = t - self.global_transform.origin
    result = create_builder(t, target, self.script_ctx.script, is_clone = true).as(BuildNode)
    result.saved_holes = self.saved_holes.map_it(it + diff)

    result.saved_blocks = self.saved_blocks.map_it(it + diff)
    result.saved_block_colors = self.saved_block_colors
    result.restore_blocks()

  proc save_blocks*() =
    let data = self.export_data()
    self.saved_blocks = @[]
    self.saved_block_colors = @[]
    for vox in data:
      if vox.data.keep:
        self.saved_blocks.add vox.location
        self.saved_block_colors.add vox.data.index

    self.saved_holes = @[]
    for loc in self.holes.keys:
      self.saved_holes.add loc

  proc restore_blocks*() =
    for loc in self.saved_holes:
      self.holes[loc] = -1
    for (loc, index) in zip(self.saved_blocks, self.saved_block_colors):
      self.draw(loc.x, loc.y, loc.z, index, true, false)

  proc draw(x, y, z: float, index: int, keep = false, trigger = true) =
    let
      loc = vec3(x, y, z)
      root_loc = loc + self.translation
      root = self.root_builder

    if (not keep) and loc in self.holes and
       not self.overwrite and index != self.holes[loc]:
      self.kept_holes[loc] = self.holes[loc]
    elif (not keep) and not root.is_nil and root_loc in root.holes and
         not self.overwrite and index != root.holes[root_loc]:
      root.kept_holes[root_loc] = root.holes[root_loc]
    else:
      self.draw_terrain(x, y, z, index, keep, trigger)

  proc draw*(loc: Vector3, index: int) =
    let loc = loc - self.translation
    self.draw(loc.x, loc.y, loc.z, index, keep = true)

  proc update_running_state(running: bool) =
    self.engine.running = running
    if not running:
      self.holes = self.kept_holes
      self.kept_holes.clear()
      self.save_blocks()
      self.load_vars()
      debug(self.script & " done.")

  proc includes_any_location*(locations: seq[Vector3]): bool =
    let holes = to_seq(self.holes.keys)
    for loc in locations:
      let loc = loc - self.translation
      if self.get_vox(loc) or loc in holes:
        return true

  proc set_defaults() =
    self.position = init_transform()
    self.translation = self.original_translation
    self.speed = 1.0
    self.index = 1
    self.drawing = true
    self.overwrite = false
    self.move_mode = false

  proc on_load_vars() =
    var old_speed = self.speed
    let
      e = self.engine
      scale_factor = self.engine.get_float("scale", e.module_name).round(3)
    self.move_mode = self.engine.get_bool("move_mode", e.module_name)
    self.speed = self.engine.get_float("speed", e.module_name)
    self.index = self.engine.get_int("color", e.module_name)
    self.drawing = self.engine.get_bool("drawing", e.module_name)
    self.overwrite = self.engine.get_bool("overwrite", e.module_name)
    self.blocks_per_frame = if self.speed == 0:
      float.high
    else:
      self.speed
    if self.speed != old_speed:
      self.blocks_remaining_this_frame = 0
    if scale_factor != self.scale.x.round(3):
      self.scale = vec3(scale_factor, scale_factor, scale_factor)

    self.set_vars()

  method physics_process(delta: float64) =
    let previous = self.rotation()
    defer:
      self.rotational_change = self.rotation() - previous

    if self.timers.len > 0:
      var timers = self.timers
      self.timers = @[]
      for timer in timers:
        if timer.until < now():
          timer.callback()
        else:
          self.timers.add timer
      return

    if not self.built:
      self.build()
      self.built = true
    if not self.paused:
      try:
        if self.engine.running:
          self.advance(delta)
      except VMQuit as e:
        self.engine.error(e)

  proc set_vars() =
    let module_name = self.engine.module_name
    self.engine.call_proc("set_vars", module_name = module_name, self.index, self.drawing,
                          self.speed, self.scale.x,
                          self.overwrite, self.move_mode)

  proc on_begin_move(direction: Vector3, steps: float): Callback =
    if self.move_mode:
      let steps = steps.float
      var duration = 0.0
      let
        moving = self.transform.basis.xform(direction)
        finish = self.translation + moving * steps
        finish_time = 1.0 / self.speed * steps

      result = proc(delta: float): bool =
        duration += delta
        if duration >= finish_time:
          self.translation = finish
          return false
        else:
          self.translation = self.translation + (moving * self.speed * delta)
          return true
    else:
      var count = 0
      result = proc(delta: float): bool =
        var remaining = self.blocks_remaining_this_frame
        var per_frame = self.blocks_per_frame
        while count.float < steps and self.blocks_remaining_this_frame >= 1:
          remaining = self.blocks_remaining_this_frame
          per_frame = self.blocks_per_frame
          self.position = self.position.translated(direction)
          inc count
          self.blocks_remaining_this_frame -= 1
          self.drop_block()
        result = count.float < steps
    active_ctx().start_advance_timer()

  method on_deleted*(clear = true) =
    self.destroy_children()
    if clear:
      self.clear()
    let duration = if self.engine.running: 0.5.seconds else: 0.5.seconds
    self.set_timer duration, proc() =
      self.paused = false
      self.script_ctx.destroy()
      self.destroy()

  proc on_begin_turn(axis = UP, degrees: float): Callback =
    let map = {LEFT: UP, RIGHT: DOWN, UP: RIGHT, DOWN: LEFT}.to_table
    let axis = map[axis]
    if self.move_mode:
      var duration = 0.0
      let axis = self.transform.basis.xform(axis)
      var final_transform = self.transform
      final_transform.basis = final_transform.basis.rotated(axis, deg_to_rad(degrees))
                                                   .orthonormalized()
      result = proc(delta: float): bool =
        duration += delta
        self.rotate(axis, deg_to_rad(degrees * delta * self.speed))
        if duration <= 1.0 / self.speed:
          true
        else:
          self.transform = final_transform
          false
      active_ctx().start_advance_timer()
    else:
      let axis = self.position.basis.xform(axis)
      self.position.basis = self.position.basis.rotated(axis, deg_to_rad(degrees))
      self.position = self.position.orthonormalized()

  proc on_sleep(seconds: float) =
    self.blocks_per_frame = 0.0
    self.blocks_remaining_this_frame = 0.0

  proc save(name: string): bool =
    self.load_vars()
    self.save_points[name] = (self.position, self.index, self.drawing)
    false

  proc restore(name: string): bool =
    (self.position, self.index, self.drawing) = self.save_points[name]
    if self.engine.initialized: self.set_vars()
    false

  proc on_script_loaded(e: Engine) =
    self.blocks_remaining_this_frame = 0
    e.expose "set_energy", proc(a: VmArgs): bool =
      let
        color = get_int(a, 0).int
        energy = get_float(a, 1)
      self.set_energy(color, energy)
      false
    e.expose("save", a => self.save(get_string(a, 0)))
    e.expose("restore", a => self.restore(get_string(a, 0)))
    e.expose "reset", proc(a: VmArgs): bool =
      self.reset(get_bool(a, 0))
      false
    e.expose "pause", proc(a: VmArgs): bool =
      self.paused = true
      true
    e.expose "load_defaults", proc(a: VmArgs): bool =
      self.set_vars()
      false
    e.expose "get_position", proc(a: VmArgs): bool =
      let v = self.position.origin
      a.set_result(v.to_node)
      false
    e.expose "get_rotation", proc(a: VmArgs): bool =
      proc nm(f: float): float =
        if f.is_equal_approx(0):
          return 0
        elif f < 0:
          return f + (2 * PI)
        else:
          return f

      proc nm(v: Vector3): Vector3 =
        vec3(v.x.nm, v.y.nm, v.z.nm)

      let e = self.position.basis.get_euler

      let n = e.nm
      let v = vec3(nm(n.x).rad_to_deg, nm(n.y).rad_to_deg, nm(n.z).rad_to_deg)
      let m = if v.z > 0: 1.0 else: -1.0
      let v2 = vec3(0.0, (v.x - v.y) * m, 0.0)
      a.set_result(v2.to_node)
      return false

  proc reset(clear = true, set_vars = true) =
    self.set_defaults()
    if set_vars and self.engine.initialized:
      try:
        self.set_vars()
      except VMError:
        discard
    if clear:
      self.clear()
      let p = self.position.origin
      self.scale = vec3(1, 1, 1)
      self.draw(p.x, p.y, p.z, self.initial_index)

  proc drop_block() =
    if self.drawing:
      var p = self.position.origin.snapped(vec3(1, 1, 1))
      self.draw(p.x, p.y, p.z, self.index)

  proc build() =
    let p = self.position.origin
    let index = if action_index > 0: action_index else: 1
    self.draw(p.x, p.y, p.z, index)
    self.load_script()

  proc find_root: Node =
    var target: Node = self
    while target.get_parent.name == "OwnedNodes":
      target = target.get_parent.get_parent
    result = target

  method on_block_selected =
    var t = self.root_builder
    if t.is_nil:
      t = self
    state.open_file = t.script
    state.open_engine = t.engine
    state.editing = true

  method on_selected() =
    var t = self.find_root().as(BuildNode)
    if t.is_nil:
      t = self
    state.open_file = t.script
    state.open_engine = t.engine
    state.editing = true

  proc set_timer(duration: TimeInterval, callback: proc()) =
    self.timers.add (now() + duration, callback)

  proc destroy_children() =
    for child in self.child_objects:
      child.trigger("deleted")

  method reload() =
    let duration = if self.engine.running: 0.5.seconds else: 0.seconds
    self.destroy_children()
    self.set_timer duration, proc() =
      self.reset(clear = true, set_vars = false)
      self.paused = false
      self.load_script()

  method on_reload() =
    if state.open_file == self.script:
      self.reload()

  method on_reload_all() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused

  method on_last_block_deleted(offset: int) =
    if offset == self.script_index:
      # nothing to clear
      self.on_deleted(clear = false)

  method on_terrain_block_added(loc: Vector3, index: int) =
    if loc in self.holes:
      self.holes[loc] = index
      self.save_blocks()
    elif not self.root_builder.is_nil:
      let loc = loc + self.translation
      if loc in self.root_builder.holes:
        self.root_builder.holes[loc] = index
        self.root_builder.save_blocks()
    else:
      self.save_blocks()
    save_scene()

  method on_terrain_block_removed(offset: int, loc: Vector3, index: int, keep: bool) =
    if not keep:
      if not self.root_builder.is_nil:
        let loc = loc + self.translation
        self.root_builder.kept_holes[loc] = -1
        self.root_builder.holes[loc] = -1
        self.root_builder.save_blocks()
      else:
        self.holes[loc] = -1
        self.save_blocks()
    save_scene()

  method on_highlight(find_root: bool) =
    if find_root and not self.root_builder.is_nil:
      self.root_builder.trigger("highlight", false)
    else:
      self.highlighted = true
      for child in self.child_objects:
        child.trigger("highlight", false)

  method on_deselect(find_root: bool) =
    if find_root and not self.root_builder.is_nil:
      self.root_builder.trigger("deselect", false)
    else:
      self.highlighted = false
      for child in self.child_objects:
        child.trigger("deselect", false)

proc create_builder*(point: Vector3, parent: Node, script = "", is_clone = false): Node {.discardable.} =
  let
    proto = load("res://components/BuildNode.tscn") as PackedScene
    b = proto.instance() as BuildNode
    is_clone = parent != data_node
  assert not b.is_nil
  b.script_ctx.is_clone = is_clone
  b.paused = true
  b.setup(point)
  b.initial_index = action_index
  if is_clone:
    b.script_ctx.script = script
  parent.add_child(b)
  b.owner = parent
  save_scene()
  result = b

import world/bot_node

proc create_bot(transform: Transform, parent: Node, up_axis = UP) =
  bot_node.create_bot(transform, parent, up_axis = up_axis)
