import std / [hashes, tables, sets, options, sequtils, math, wrapnils, monotimes, sugar]
import pkg / [model_citizen, print]
import core, models / [types, states, bots, colors, units]
const BufferSize = vec3(16, 16, 16)

include "build_code_template.nim.nimf"

const default_color = action_colors[blue]

let state = GameState.active
var current_build*: Build
var previous_build*: Build
var dont_join* = false

proc draw*(self: Build, position: Vector3, voxel: VoxelInfo)

method code_template*(self: Build, imports: string): string =
  result = build_code_template(self.script_file, imports, not self.clone_of.is_nil)

proc buffer(position: Vector3): Vector3 = (position / BufferSize).floor

proc contains*(self: Build, position: Vector3): bool =
  let buf = position.buffer
  result = buf in self.chunks and position in self.chunks[buf]

proc find_voxel*(self: Build, position: Vector3): Option[VoxelInfo] =
  let buf = position.buffer
  result = if buf in self:
    some(self.chunks[buf][position])
  else:
    none(VoxelInfo)

proc find_first*(units: ZenSeq[Unit], positions: open_array[Vector3]): Build =
  for unit in units:
    if unit of Build:
      let unit = Build(unit)
      let offset = vec3().global_from(unit)
      for position in positions:
        var loc = position - offset
        if loc in unit:
          var info = unit.chunks[loc.buffer][loc]
          if info.kind != Hole and info.color != action_colors[eraser]:
            return unit
      let first = unit.units.find_first(positions)
      if first:
        return first

proc add_build(self, source: Build) =
  dont_join = true
  for chunk_id, chunk in source.chunks:
    for position, info in chunk:
      var position = source.to_global(position)
      position = self.to_local(position)
      self.draw(position, info)

  if source.parent.is_nil:
    state.units -= source
  else:
    source.parent.units -= source
  dont_join = false

proc maybe_join_previous_build(self: Build, position: Vector3, voxel: VoxelInfo) =
  if self != current_build:
    previous_build = current_build
    current_build = self

  if previous_build and previous_build != self:
    var partner = previous_build
    let root = previous_build.find_root
    if root.unit of Build:
      partner = Build(root.unit)

    if partner != self:
      for position in self.to_global(position).surrounding:
        if partner.to_local(position) in partner:
          var source, dest: Build
          if partner.code.value.strip == "":
            source = partner
            dest = self
          elif self.code.value.strip == "":
            source = self
            dest = partner

          if source and dest:
            dest.add_build(source)
            current_build = dest
            return

proc draw*(self: Build, position: Vector3, voxel: VoxelInfo) =
  var target = self
  var offset: Vector3
  let root = self.find_root
  var replaced = false
  if root.unit != self and root.unit of Build:
    let root_build = Build(root.unit)
    if voxel.kind in {Manual, Hole}:
      target = root_build
      offset = root.offset
      let buffer = position.buffer
      if buffer in self.chunks and position in self.chunks[buffer]:
        self.chunks[buffer].del(position)
        if self.chunks[buffer].len == 0:
          self.chunks.del(buffer)
        replaced = true
    else:
      let offset = root.offset
      let position = (position - offset).floor
      let buffer = position.buffer
      if buffer in root_build.chunks and position in root_build.chunks[buffer]:
        let info = root_build.chunks[buffer][position]
        if info.kind == Manual and info.color == voxel.color:
          root_build.chunks[buffer].del(position)
          if root_build.chunks[buffer].len == 0:
            root_build.chunks.del(buffer)
        else:
          return

  let position = (position - offset).floor
  let buffer = position.buffer
  if not replaced and buffer in target.chunks and position in target.chunks[buffer]:
    replaced = true
  else:
    if buffer notin target.chunks:
      target.chunks[buffer] = Chunk.init
  if position notin target.bounds.value:
    target.bounds.value = target.bounds.value.expand(position).grow(1)
  if voxel.kind == Hole and not replaced:
    target.chunks[buffer].del(position)
  else:
    target.chunks[buffer][position] = voxel

  if position == vec3(0, 0, 0):
    self.start_color = voxel.color

  if not dont_join and voxel.kind == Manual:
    self.maybe_join_previous_build(position, voxel)

proc drop_block(self: Build) =
  if self.drawing:
    var p = self.draw_transform.origin.snapped(vec3(1, 1, 1))
    self.draw(p, (Computed, self.color))

proc remove(self: Build) =
  if state.tool.value == Block:
    let point = self.target_point - self.target_normal - (self.target_normal.inverse_normalized * 0.5)
    self.draw(point, (Hole, action_colors[eraser]))
    state.draw_plane = self.to_global(self.target_point) * self.target_normal
    if not self.chunks.any_it(it.value.any_it(it.value.color != action_colors[eraser])):
      if self.parent.is_nil:
        state.units -= self
      else:
        self.parent.units -= self

proc fire(self: Build) =
  let global_point = self.to_global(self.target_point)
  state.draw_plane = self.to_global(self.target_point) * self.target_normal
  if state.tool.value == Block:
    let point = (self.target_point + (self.target_normal * 0.5)).floor
    self.draw(point, (Manual, state.selected_color))
  elif state.tool.value == Place and state.target_block and state.bot_at(global_point).is_nil:
    let transform = Transform.init(origin = global_point)
    state.units += Bot.init(transform = transform)
  elif state.tool.value == Code:
    let (root, _) = self.find_root(true)
    state.open_unit.value = root

proc is_moving(self: Build, move_mode: int): bool =
  result = if move_mode == 1:
    false
  elif move_mode == 2:
    true
  else:
    var computed, manual = 0
    for _, chunk in self.chunks:
      for _, info in chunk:
        if info.kind == Computed:
          computed += 1
        elif info.kind == Manual:
          manual += 1
        if computed > 1:
          return false
    manual > 1

method on_begin_move*(self: Build, direction: Vector3, steps: float, move_mode: int): Callback =
  let move = self.is_moving(move_mode)
  if move:
    self.voxels_per_frame = 0
    let steps = steps.float
    var duration = 0.0
    let
      moving = self.transform.basis.xform(direction)
      finish = self.transform.origin + moving * steps
      finish_time = 1.0 / self.speed * steps

    result = proc(delta: float): bool =
      duration += delta
      if duration >= finish_time:
        self.transform.origin = finish
        return false
      else:
        self.transform.origin = self.transform.origin + (moving * self.speed * delta)
        return true
  else:
    self.voxels_per_frame = if self.speed == 0:
      float.high
    else:
      self.speed
    var count = 0
    result = proc(delta: float): bool =
      var remaining = self.voxels_remaining_this_frame
      var per_frame = self.voxels_per_frame
      while count.float < steps and self.voxels_remaining_this_frame >= 1:
        remaining = self.voxels_remaining_this_frame
        per_frame = self.voxels_per_frame
        self.draw_transform = self.draw_transform.translated(direction)
        inc count
        self.voxels_remaining_this_frame -= 1
        self.drop_block()
      result = count.float < steps
  #active_ctx().start_advance_timer()

method on_begin_turn*(self: Build, axis: Vector3, degrees: float, move_mode: int): Callback =
  let map = {LEFT: UP, RIGHT: DOWN, UP: RIGHT, DOWN: LEFT}.to_table
  let axis = map[axis]
  let move = self.is_moving(move_mode)
  if move:
    self.voxels_per_frame = 0
    var duration = 0.0
    let axis = self.transform.basis.xform(axis)
    var final_transform = self.transform.value
    final_transform.basis = final_transform.basis.rotated(axis, deg_to_rad(degrees))
                                                 .orthonormalized()
    result = proc(delta: float): bool =
      duration += delta
      self.transform.basis = self.transform.basis.rotated(axis, deg_to_rad(degrees * delta * self.speed))
      if duration <= 1.0 / self.speed:
        true
      else:
        # TODO?
        self.transform.value = final_transform
        false
    #active_ctx().start_advance_timer()
  else:
    let axis = self.draw_transform.basis.xform(axis)
    self.draw_transform.basis = self.draw_transform.basis.rotated(axis, deg_to_rad(degrees))
    self.draw_transform = self.draw_transform.orthonormalized()

proc reset_state*(self: Build) =
  self.draw_transform = Transform.init

method reset*(self: Build) =
  self.transform.value = self.start_transform
  self.reset_state()
  let chunks = self.chunks.value
  for chunk_id, chunk in chunks:
    let voxels = chunk.value
    for vec, info in voxels:
      if info.kind == Computed:
        self.chunks[chunk_id].del(vec)
        if self.chunks[chunk_id].len == 0:
          self.chunks.del(chunk_id)
  self.units.clear()

# proc set_vars*(self: Build) =
#   let engine = self.script_ctx.engine
#   let module_name = engine.module_name
#
#   engine.call_proc("set_vars", module_name = module_name, action_index(self.color).int,
#                    self.drawing, self.speed, self.scale, self.energy.value)
#
# method load_vars*(self: Build) =
#   let old_speed = self.speed
#   let ctx = self.script_ctx
#   self.speed = ctx.engine.get_float("speed", ctx.engine.module_name)
#
#   let
#     e = ctx.engine
#     scale_factor = ctx.engine.get_float("scale", e.module_name).round(3)
#   self.color = action_colors[Colors(ctx.engine.get_int("color", e.module_name))]
#   self.drawing = ctx.engine.get_bool("drawing", e.module_name)
#   self.voxels_per_frame = if self.speed == 0:
#     float.high
#   else:
#     self.speed
#   if self.speed != old_speed:
#     self.voxels_remaining_this_frame = 0
#   if scale_factor != self.scale.round(3):
#     self.scale = scale_factor
#     var basis = self.transform.basis
#     basis.set_scale(vec3(scale_factor, scale_factor, scale_factor))
#     self.transform.basis = basis
#   self.energy.value = ctx.engine.get_float("energy", e.module_name).round(3)
#
#   self.set_vars()

# method on_script_loaded*(self: Build) =
#   var save_points: Table[string, tuple[transform: Transform, color: Color, drawing: bool]]
#   let e = self.script_ctx.engine
#   self.voxels_remaining_this_frame = 0
#   e.expose "set_energy", proc(a: VmArgs): bool =
#     self.energy.value = get_float(a, 0)
#     false
#   e.expose "save", proc(a: VmArgs): bool =
#     self.load_vars()
#     let name = get_string(a, 0)
#     save_points[name] = (self.transform.value, self.color, self.drawing)
#     false
#   e.expose "restore", proc(a: VmArgs): bool =
#     let name = get_string(a, 0)
#     (self.transform.value, self.color, self.drawing) = save_points[name]
#     self.set_vars()
#     false
#   e.expose "reset", proc(a: VmArgs): bool =
#     let clear = get_bool(a, 0)
#     if clear:
#       self.reset()
#     else:
#       self.reset_state()
#     false
#   e.expose "load_defaults", proc(a: VmArgs): bool =
#     self.set_vars()
#     false

proc init*(_: type Build, transform = Transform.init, color = default_color,
                          clone_of: Unit = nil, global = true, bot_collisions = true): Build =
  let self = Build(
    id: "build_" & generate_id(),
    chunks: ZenTable[Vector3, Chunk].init(track_children = false),
    transform: Zen.init(transform),
    start_transform: transform,
    draw_transform: Transform.init,
    units: ZenSeq[Unit].init,
    color: color,
    start_color: color,
    flags: ZenSet[ModelFlags].init,
    code: ZenValue[string].init,
    velocity: ZenValue[Vector3].init,
    energy: ZenValue[float].init,
    drawing: true,
    bounds: Zen.init(init_aabb(vec3(), vec3(-1, -1, -1))),
    speed: 1.0,
    clone_of: clone_of,
    bot_collisions: bot_collisions,
    frame_delta: ZenValue[float].init,
    scale: Zen.init(1.0)
  )
  if global: self.flags += Global

  self.flags.changes:
    if Hover.added and state.tool.value == Code:
      let (root, _) = self.find_root(true)
      root.walk_tree proc(unit: Unit) = unit.flags += Highlight
    elif Hover.removed:
      let (root, _) = self.find_root(true)
      root.walk_tree proc(unit: Unit) = unit.flags -= Highlight
    if TargetMoved.touched:
      let plane = self.to_global(self.target_point) * self.target_normal
      if plane == state.draw_plane:
        if Secondary in state.input_flags:
          self.remove
        elif Primary in state.input_flags:
          self.fire

    if change.item in {TargetMoved, Hover} and state.tool.value == Place:
      if self.target_normal == UP:
        state.target_block = true
      else:
        state.reticle = true

  state.input_flags.changes:
    if Hover in self.flags:
      if Primary.added:
        self.fire
      elif Secondary.added:
        self.remove
    if Primary.removed or Secondary.removed:
      state.draw_plane = vec3()

  result = self

method on_collision*(self: Build, partner: Model, normal: Vector3) =
  self.collisions.add (partner, normal)
  if self.script_ctx:
    self.script_ctx.timer = get_mono_time()

method off_collision*(self: Build, partner: Model) =
  self.collisions = collect:
    for collision in self.collisions:
      if collision.model != partner:
        collision

  if self.script_ctx:
    self.script_ctx.timer = get_mono_time()

method clone*(self: Build, clone_to: Unit): Unit =
  var transform = clone_to.transform.value
  var global = true
  if clone_to of Build:
    transform = Build(clone_to).draw_transform
    global = false

  let bot_collisions = not (clone_to of Bot)
  let clone = Build.init(transform = transform, clone_of = self, global = global,
                         color = self.start_color, bot_collisions = bot_collisions)
  clone.parent = clone_to
  for chunk_id, chunk in self.chunks:
    let target_chunk = Chunk.init
    for location, info in chunk:
      if info.kind != Computed:
        target_chunk[location] = info
    if target_chunk.len > 0:
      clone.chunks[chunk_id] = target_chunk
  result = clone

when is_main_module:
  import unittest, states
  type Node = ref object of RootObj

  var b = Build.init(root = true)

  b.draw vec3(1, 1, 1), (Computed, Color())
  check vec3(1, 1, 1) in b.voxels[vec3(0, 0, 0)]
  b.draw vec3(17, 17, 17), (Computed, Color())
  check vec3(17, 17, 17) in b.voxels[vec3(1, 1, 1)]
  var c = Build.init(transform = Transform(origin: vec3(5, 5, 5)))
  c.parent = b

  c.draw vec3(14, 14, 14), (Manual, Color())
  c.flags += Hover
