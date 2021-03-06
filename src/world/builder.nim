import godotapi / [spatial, grid_map, resource_loader, packed_scene]
import godot
import std / [tables, math, sets, sugar, sequtils, hashes, os, monotimes, macros]
import core, globals, world / [terrain, grid]
import engine/contexts
export contexts

include "default_builder.nim.nimf"

var max_grid_index = 0

type
  Timer = tuple[until: DateTime, callback: proc()]

proc create_builder*(point: Vector3, parent: Node, script = "", is_clone = false): Node {.discardable.}

gdobj Builder of Spatial:
  var
    script_ctx: ScriptCtx
    draw_mode* {.gdExport.}: DrawMode
    script_index* {.gdExport.} = 0
    owner_script_index = -1
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
    speed = 0.0
    position* = init_transform()
    drawing = true
    save_points: Table[string, tuple[position: Transform, index: int, drawing: bool]]
    grid: Grid
    terrain: Terrain
    holes, kept_holes: Table[Vector3, int]
    overwrite = false
    built = false
    move_mode = false
    scale_factor = 1.0
    # If we delete a voxel while it's queued up to be drawn by godot voxel,
    # the voxel gets drawn anyway, and the polys hang around until they
    # move out of draw distance. Wait a bit before clearing. FIXME.
    timers: seq[Timer]

  proc init*() =
    self.script_ctx = ScriptCtx.init("grid")

  proc code_template(file: string, imports: string): string =
    result = default_builder(config.script_dir & "/" & file, imports, self.script_ctx.is_clone)

  method ready() =
    if max_grid_index <= self.script_index:
      max_grid_index = self.script_index + 1
    if not self.script_ctx.is_clone:
      self.set_script()
    self.translation = self.original_translation
    self.grid = self.get_node("Grid") as Grid
    self.terrain = game_node.find_node("Terrain") as Terrain
    assert self.grid != nil
    assert self.terrain != nil

    self.bind_signals self.terrain,
      w"block_selected last_block_deleted terrain_block_added terrain_block_removed"
    self.bind_signals self.grid, w"selected grid_block_added grid_block_removed"
    self.bind_signals self, @["deleted"]
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
    self.name = "Builder_" & $self.script_index
    if not self.script_ctx.is_clone:
      self.set_script()
      write_file self.script, ""

  proc on_clone(target: Node, ctx: ScriptCtx): Builder =
    let owner = target.get_parent.as(Spatial)
    var t = owner.global_transform.origin
    var diff = vec3()
    let builder = owner.as(Builder)
    if not builder.is_nil:
      t = builder.position.origin
      diff = t - self.global_transform.origin
    if not builder.is_nil and self.draw_mode == GridMode:
      diff = vec3()
    result = create_builder(t, target, self.script_ctx.script, is_clone = true).as(Builder)
    if not builder.is_nil:
      result.owner_script_index = builder.script_index
    result.draw_mode = self.draw_mode
    result.saved_holes = self.saved_holes.map_it(it + diff)

    result.saved_blocks = self.saved_blocks.map_it(it + diff)
    result.saved_block_colors = self.saved_block_colors
    result.restore_blocks()

  proc active_script_index: int =
    if self.owner_script_index > -1:
      self.owner_script_index
    else:
      self.script_index

  proc save_blocks*() =
    let data = if self.draw_mode == VoxelMode:
      self.terrain.export_data(self.active_script_index, vec3())
    else:
      self.grid.export_data()
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

  proc draw*(x, y, z: float, index: int, keep = false, trigger = true) =
    let loc = vec3(x, y, z)
    if not keep and loc in self.holes and
       not self.overwrite and index != self.holes[loc]:
      self.kept_holes[loc] = self.holes[loc]
    else:
      if self.draw_mode == VoxelMode:
        self.terrain.draw(x, y, z, index, self.active_script_index, keep, trigger)
      else:
        self.grid.draw(x, y, z, index, keep, trigger)

  proc update_running_state(running: bool) =
    self.engine.running = running
    if not running:
      self.holes = self.kept_holes
      self.kept_holes.clear()
      self.save_blocks()
      self.load_vars()
      debug(self.script & " done.")

  proc includes_any_location*(locations: seq[Vector3]): bool =
    if self.draw_mode == GridMode:
      for l in self.grid.get_used_cells():
        let loc = l.asVector3() + self.translation
        if loc in locations:
          return true
    for loc in self.holes.keys:
      var loc = loc
      if self.draw_mode == GridMode:
        loc += self.translation
      if loc in locations:
        return true
    return false

  proc set_defaults() =
    self.position = init_transform()
    self.translation = self.original_translation
    if self.draw_mode == VoxelMode:
      self.position.origin = self.translation

    self.speed = 1.0
    self.scale_factor = 1.0
    self.grid.scale = vec3(1, 1, 1)
    self.index = 1
    self.drawing = true
    self.overwrite = false
    self.move_mode = false

  proc switch_to_grid_mode() =
    let offset = self.active_script_index
    var holes: Table[Vector3, int]

    let data = self.grid.export_data()
    self.grid.clear(all = true)
    self.position.origin += self.translation
    for loc, index in self.holes:
      holes[loc + self.translation] = index
    self.holes = holes
    self.terrain.import_data(data, offset, self.translation)

  proc switch_to_voxel_mode() =
    let offset = self.active_script_index
    var holes: Table[Vector3, int]

    let data = self.terrain.export_data(offset, self.translation)
    self.set_timer 0.5.seconds, proc() =
      self.terrain.clear(offset, all = true)
    self.position.origin -= self.translation
    for loc, index in self.holes:
      holes[loc - self.translation] = index
    self.holes = holes
    self.grid.import_data(data)

  proc switch_mode(mode: DrawMode, move_mode: bool, scale_factor: float) =
    var mode = mode
    if move_mode:
      mode = GridMode
    if scale_factor != 1.0:
      mode = GridMode
    self.move_mode = move_mode
    if mode != self.draw_mode:
      debug &"switching to {mode} mode"
      if self.draw_mode == VoxelMode:
        self.switch_to_voxel_mode()
      else:
        self.switch_to_grid_mode()
      self.draw_mode = mode
      self.save_blocks()

  proc on_load_vars() =
    var old_speed = self.speed
    let
      e = self.engine
      mode = DrawMode self.engine.get_int("mode", e.module_name)
      move_mode = self.engine.get_bool("move_mode", e.module_name)
      scale_factor = self.engine.get_float("scale", e.module_name)
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
    if scale_factor != self.scale_factor:
      self.grid.scale = vec3(scale_factor, scale_factor, scale_factor)
      self.scale_factor = scale_factor

    self.switch_mode(mode, move_mode, self.scale_factor)
    self.set_vars()

  method physics_process(delta: float64) =
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
                          self.speed, self.scale_factor, int self.draw_mode,
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
      if self.draw_mode == GridMode:
        self.grid.set_energy(color, energy)
      else:
        self.terrain.set_energy(color, energy, self.active_script_index)
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
      let v = if self.draw_mode == GridMode:
        self.global_transform.origin
      else:
        self.position.origin
      a.set_result(v.to_node)
      false
    e.expose "get_rotation", proc(a: VmArgs): bool =
      if self.draw_mode == GridMode:
        a.set_result(self.rotation_degrees.to_node)
      else:
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

  proc clear() =
    if self.draw_mode == VoxelMode:
      self.terrain.clear(self.active_script_index)
    else:
      self.grid.clear()

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
    if self.draw_mode == VoxelMode:
      self.position.origin = self.translation

    let p = self.position.origin
    self.draw(p.x, p.y, p.z, action_index)
    self.load_script()

  proc find_root: Node =
    var target: Node = self
    while target.get_parent.name == "OwnedNodes":
      target = target.get_parent.get_parent
    result = target

  method on_block_selected(offset: int) =
    if offset == self.active_script_index:
      var t = self.find_root().as(Builder)
      if t.is_nil:
        t = self
      show_editor t.script, t.engine

  method on_selected() =
    var t = self.find_root().as(Builder)
    if t.is_nil:
      t = self
    show_editor t.script, t.engine

  proc set_timer(duration: TimeInterval, callback: proc()) =
    self.timers.add (now() + duration, callback)

  proc destroy_children() =
    let children = self.get_node("OwnedNodes").get_children
    for v in children:
      let child = v.as_object(Node)
      child.trigger("deleted")

  method reload() =
    let duration = if self.engine.running: 0.5.seconds else: 0.seconds
    self.destroy_children()
    self.set_timer duration, proc() =
      self.reset(clear = true, set_vars = false)
      self.paused = false
      self.load_script()

  method on_reload() =
    if not editing() or open_file == self.script:
      self.reload()

  method on_reload_all() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused

  method on_last_block_deleted(offset: int) =
    if offset == self.script_index:
      # nothing to clear
      self.on_deleted(clear = false)

  method on_grid_block_added(loc: Vector3, index: int) =
    if loc in self.holes:
      self.holes[loc] = index
    self.save_blocks()
    save_scene()

  method on_grid_block_removed(loc: Vector3, index: int, keep: bool) =
    if not keep:
      self.holes[loc] = -1
    self.save_blocks()
    save_scene()

  method on_terrain_block_added(offset: int, loc: Vector3, index: int) =
    if offset == self.script_index:
      self.on_grid_block_added(loc, index)

  method on_terrain_block_removed(offset: int, loc: Vector3, index: int, keep: bool) =
    if offset == self.script_index:
      self.on_grid_block_removed(loc, index, keep)

proc create_builder*(point: Vector3, parent: Node, script = "", is_clone = false): Node {.discardable.} =
  let
    proto = load("res://components/Builder.tscn") as PackedScene
    b = proto.instance() as Builder
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
