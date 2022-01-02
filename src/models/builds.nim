import std / [hashes, tables, sets, options, sequtils]
import pkg / [model_citizen, print]
import types, colors, core
const BufferSize = vec3(16, 16, 16)

const default_color = action_colors[blue]

proc find_root[T](self: Build[T]): tuple[build: Build[T], offset: Vector3] =
  result.build = self
  var parent = self.parent
  while parent != nil and not result.build.root:
    if parent of Build[T]:
      result.build = Build[T](parent)
      result.offset += result.build.transform.origin
    parent = parent.parent

proc buffer(position: Vector3): Vector3 = (position / BufferSize).floor

proc contains*(self: Build, position: Vector3): bool =
  let buf = position.buffer
  result = buf in self.voxels and position in self.voxels[buf]

proc find_voxel*(self: Build, position: Vector3): Option[VoxelInfo] =
  let buf = position.buffer
  result = if buf in self:
    some(self.voxels[buf][position])
  else:
    none(VoxelInfo)

proc find_first*[T](units: ZenSeq[Unit[T]], positions: open_array[Vector3]): Build[T] =
  for unit in units:
    if unit of Build[T]:
      let unit = Build[T](unit)
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
  if position.buffer notin target.voxels:
    target.voxels[position.buffer] = ZenTable[Vector3, VoxelInfo].init
  target.voxels[position.buffer][position] = voxel

proc flag_tree[T](root: Unit[T], add: bool, flag: ModelFlags) =
  if add:
    root.flags += flag
  else:
    root.flags -= flag
  for unit in root.units:
    unit.flag_tree(add, flag)

proc remove(self: Build, state: GameState) =
  if state.tool.value == Block:
    let point = self.target_point - self.target_normal - (self.target_normal.inverse_normalized * 0.5)
    self.draw(point, (Manual, action_colors[eraser]))
    state.draw_plane = self.to_global(self.target_point) * self.target_normal
    if not self.voxels.any_it(it.value.any_it(it.value.color != action_colors[eraser])):
      if self.parent.is_nil:
        state.units -= self
      else:
        self.parent.units -= self

proc fire(self: Build, state: GameState) =
  if state.tool.value == Block:
    self.draw(self.target_point, (Manual, state.selected_color))
    state.draw_plane = self.to_global(self.target_point) * self.target_normal

proc init*(_: type Build, T: type, state: GameState[T], root = false, transform = Transform.init, color = default_color): Build[T] =
  let self = Build[T](
    root: root,
    voxels: result.voxels.type.init,
    transform: transform,
    units: ZenSeq[Unit[T]].init,
    color: color,
    start_color: color,
    flags: ZenSet[ModelFlags].init
  )

  self.flags.track proc(changes: auto) =
    for change in changes:
      if change.item == Hover:
        if Added in change.changes and state.tool.value == Code:
          let (root, _) = self.find_root
          root.flag_tree(true, Highlight)
        elif Removed in change.changes:
          let (root, _) = self.find_root
          root.flag_tree(false, Highlight)
      elif change.item == TargetMoved and state.tool.value == Block:
        let plane = self.to_global(self.target_point) * self.target_normal
        if Touched in change.changes and plane == state.draw_plane:
          if Secondary in state.input_flags:
            self.remove(state)
          elif Primary in state.input_flags:
            self.fire(state)

  state.input_flags.track proc(changes: auto) =
    for change in changes:
      if Hover in self.flags:
        if Added in change.changes:
          if change.item == Primary:
            self.fire(state)
          elif change.item == Secondary:
            self.remove(state)
      if Removed in change.changes and change.item in {Primary, Secondary}:
        state.draw_plane = vec3()

  result = self

proc init*(_: type Build, T: type, state: GameState[T], root = false, color = default_color, position: Vector3): Build[T] =
  let transform = Transform.init(origin = position)
  result = Build.init(T, state = state, root = root, transform = transform, color = color)

when is_main_module:
  import unittest, states
  type Node = ref object of RootObj
  let state = GameState.init(Node, action_count = 6, action_index = 1)

  var b = Build.init(Node, state, root = true)

  b.draw vec3(1, 1, 1), (Computed, Color())
  check vec3(1, 1, 1) in b.voxels[vec3(0, 0, 0)]
  b.draw vec3(17, 17, 17), (Computed, Color())
  check vec3(17, 17, 17) in b.voxels[vec3(1, 1, 1)]
  var c = Build.init(Node, state, transform = Transform(origin: vec3(5, 5, 5)))
  c.parent = b

  c.draw vec3(14, 14, 14), (Manual, Color())
  c.flags += Hover
