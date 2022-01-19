import std / [hashes, tables, sets, options, sequtils, math]
import pkg / [model_citizen, print]
import core, models / [types, states, bots, colors, units, scripts], engine / engine
const BufferSize = vec3(16, 16, 16)

include "default_builder.nim.nimf"

const
  default_color = action_colors[blue]
  highlight_energy = 1.0
  default_energy = 0.0

let state = GameState.active

method code_template*(self: Build, imports: string): string =
  result = default_builder(self.script_file, imports, self.script_ctx.is_clone)

proc find_root(self: Build): tuple[build: Build, offset: Vector3] =
  result.build = self
  var parent = self.parent
  while parent != nil and not result.build.root:
    if parent of Build:
      result.build = Build(parent)
      result.offset += result.build.transform.origin
    parent = parent.parent

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
        if position - offset in unit:
          return unit
      let first = unit.units.find_first(positions)
      if first:
        return first

proc draw*(self: Build, position: Vector3, voxel: VoxelInfo) =
  var target = self
  var offset: Vector3
  if voxel.kind in {Manual, Hole}:
    (target, offset) = self.find_root

  let position = (position - offset).floor
  if position.buffer notin target.chunks:
    target.chunks[position.buffer] = Chunk.init
  if position notin target.bounds.value:
    target.bounds.value = target.bounds.value.expand(position).grow(1)
  target.chunks[position.buffer][position] = voxel

proc drop_block(self: Build) =
  if self.drawing:
    var p = self.draw_transform.origin.snapped(vec3(1, 1, 1))
    self.draw(p, (Computed, self.color))

proc walk_tree(root: Unit, callback: proc(unit: Unit)) =
  callback(root)
  for unit in root.units:
    unit.walk_tree(callback)

proc remove(self: Build) =
  if state.tool.value == Block:
    let point = self.target_point - self.target_normal - (self.target_normal.inverse_normalized * 0.5)
    self.draw(point, (Manual, action_colors[eraser]))
    state.draw_plane = self.to_global(self.target_point) * self.target_normal
    if not self.chunks.any_it(it.value.any_it(it.value.color != action_colors[eraser])):
      if self.parent.is_nil:
        state.units -= self
      else:
        self.parent.units -= self

proc fire(self: Build) =
  let global_point = self.to_global(self.target_point)
  if state.tool.value == Block:
    let point = (self.target_point + (self.target_normal * 0.5)).floor
    self.draw(point, (Manual, state.selected_color))
  elif state.tool.value == Place and state.target_block and state.bot_at(global_point).is_nil:
    let transform = Transform.init(origin = global_point)
    state.units += Bot.init(transform = transform)
  elif state.tool.value == Code:
    let (root, _) = self.find_root
    state.open_unit.value = root
  state.draw_plane = self.to_global(self.target_point) * self.target_normal

method on_begin_move*(self: Build, direction: Vector3, steps: float): Callback =
  if self.moving:
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
  active_ctx().start_advance_timer()

method on_begin_turn*(self: Build, axis: Vector3, degrees: float): Callback =
  let map = {LEFT: UP, RIGHT: DOWN, UP: RIGHT, DOWN: LEFT}.to_table
  let axis = map[axis]
  if self.moving:
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
        self.transform.value = final_transform
        false
    active_ctx().start_advance_timer()
  else:
    let axis = self.draw_transform.basis.xform(axis)
    self.draw_transform.basis = self.draw_transform.basis.rotated(axis, deg_to_rad(degrees))
    self.draw_transform = self.draw_transform.orthonormalized()

proc reset_state(self: Build) =
  self.draw_transform = Transform.init
  self.moving = false

method reset*(self: Build) =
  self.reset_state()
  let chunks = self.chunks.value
  for chunk_id, chunk in chunks:
    let voxels = chunk.value
    for vec, info in voxels:
      if info.kind == Computed:
        self.chunks[chunk_id].del(vec)
        if self.chunks[chunk_id].len == 0:
          self.chunks.del(chunk_id)

proc set_vars*(self: Build) =
  let engine = self.script_ctx.engine
  let module_name = engine.module_name

  engine.call_proc("set_vars", module_name = module_name, action_index(self.color).int,
                   self.drawing, self.speed, self.scale, self.moving, self.energy.value)

method load_vars*(self: Build) =
  let old_speed = self.speed
  let ctx = self.script_ctx
  self.speed = ctx.engine.get_float("speed", ctx.engine.module_name)

  let
    e = ctx.engine
    scale_factor = ctx.engine.get_float("scale", e.module_name).round(3)
  self.moving = ctx.engine.get_bool("move_mode", e.module_name)
  self.color = action_colors[Colors(ctx.engine.get_int("color", e.module_name))]
  self.drawing = ctx.engine.get_bool("drawing", e.module_name)
  self.voxels_per_frame = if self.speed == 0:
    float.high
  else:
    self.speed
  if self.speed != old_speed:
    self.voxels_remaining_this_frame = 0
  if scale_factor != self.scale.round(3):
    self.scale = scale_factor
    self.transform.basis = self.transform.basis.scaled(vec3(scale_factor, scale_factor, scale_factor))
  self.energy.value = ctx.engine.get_float("energy", e.module_name).round(3)

  self.set_vars()

method on_script_loaded*(self: Build) =
  var save_points: Table[string, tuple[transform: Transform, color: Color, drawing: bool]]
  let e = self.script_ctx.engine
  self.voxels_remaining_this_frame = 0
  e.expose "set_energy", proc(a: VmArgs): bool =
    self.energy.value = get_float(a, 0)
    false
  e.expose "save", proc(a: VmArgs): bool =
    self.load_vars()
    let name = get_string(a, 0)
    save_points[name] = (self.transform.value, self.color, self.drawing)
    false
  e.expose "restore", proc(a: VmArgs): bool =
    let name = get_string(a, 0)
    (self.transform.value, self.color, self.drawing) = save_points[name]
    self.set_vars()
    false
  e.expose "reset", proc(a: VmArgs): bool =
    let clear = get_bool(a, 0)
    if clear:
      self.reset()
    else:
      self.reset_state()
    false
  e.expose "load_defaults", proc(a: VmArgs): bool =
    self.set_vars()
    false
  e.expose "get_position", proc(a: VmArgs): bool =
    let v = self.transform.origin
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

    let e = self.transform.basis.get_euler

    let n = e.nm
    let v = vec3(nm(n.x).rad_to_deg, nm(n.y).rad_to_deg, nm(n.z).rad_to_deg)
    let m = if v.z > 0: 1.0 else: -1.0
    let v2 = vec3(0.0, (v.x - v.y) * m, 0.0)
    a.set_result(v2.to_node)
    return false

proc init*(_: type Build, root = false, transform = Transform.init, color = default_color, clone_of: Unit = nil): Build =
  let self = Build(
    id: "build_" & generate_id(),
    root: root,
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
    clone_of: clone_of
  )

  self.flags.changes:
    if Hover.added and state.tool.value == Code:
      let (root, _) = self.find_root
      root.walk_tree proc(unit: Unit) = unit.energy.value = highlight_energy
    elif Hover.removed:
      let (root, _) = self.find_root
      root.walk_tree proc(unit: Unit) = unit.energy.value = default_energy
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

proc init*(_: type Build, root = false, color = default_color, position: Vector3): Build =
  let transform = Transform.init(origin = position)
  result = Build.init(root = root, transform = transform, color = color)

method clone*(self: Build, clone_to: Unit, ctx: ScriptCtx): Unit =
  var transform = clone_to.transform.value
  if clone_to of Build:
    transform = Build(clone_to).draw_transform
  let clone = Build.init(transform = transform, root = false, clone_of = self)
  clone.parent = self
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
