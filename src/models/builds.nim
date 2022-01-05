import std / [hashes, tables, sets, options, sequtils]
import pkg / [model_citizen, print]
import types, colors, core
import states, bots
const BufferSize = vec3(16, 16, 16)

const default_color = action_colors[blue]

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
  result = buf in self.voxels and position in self.voxels[buf]

proc find_voxel*(self: Build, position: Vector3): Option[VoxelInfo] =
  let buf = position.buffer
  result = if buf in self:
    some(self.voxels[buf][position])
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
  if position.buffer notin target.voxels:
    target.voxels[position.buffer] = ZenTable[Vector3, VoxelInfo].init
  target.voxels[position.buffer][position] = voxel

proc flag_tree(root: Unit, add: bool, flag: ModelFlags) =
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
  let global_point = self.to_global(self.target_point)
  if state.tool.value == Block:
    let point = (self.target_point + (self.target_normal * 0.5)).floor
    self.draw(point, (Manual, state.selected_color))
  elif state.tool.value == Place and state.target_block and state.bot_at(global_point).is_nil:
    let transform = Transform.init(origin = global_point)
    state.units += Bot.init(state, transform = transform)
  elif state.tool.value == Code:
    state.open_unit.value = self
  state.draw_plane = self.to_global(self.target_point) * self.target_normal

proc init*(_: type Build, state: GameState, root = false, transform = Transform.init, color = default_color): Build =
  let self = Build(
    root: root,
    voxels: result.voxels.type.init,
    transform: transform,
    units: ZenSeq[Unit].init,
    color: color,
    start_color: color,
    flags: ZenSet[ModelFlags].init
  )

  self.flags.changes:
    if Hover.added and state.tool.value == Code:
      let (root, _) = self.find_root
      root.flag_tree(true, Highlight)
    elif Hover.removed:
      let (root, _) = self.find_root
      root.flag_tree(false, Highlight)
    if TargetMoved.touched:
      let plane = self.to_global(self.target_point) * self.target_normal
      if plane == state.draw_plane:
        if Secondary in state.input_flags:
          self.remove(state)
        elif Primary in state.input_flags:
          self.fire(state)
      # if change.item == TargetMoved and state.tool.value == Place:
      #   if Touched in change.changes and Primary in state.input_flags:
      #     s

    if change.item in {TargetMoved, Hover} and state.tool.value == Place:
      if self.target_normal == UP:
        state.target_block = true
      else:
        state.reticle = true

  state.input_flags.changes:
    if Hover in self.flags:
      if Primary.added:
        self.fire(state)
      elif Secondary.added:
        self.remove(state)
    if Primary.removed or Secondary.removed:
      state.draw_plane = vec3()

  result = self

proc init*(_: type Build, state: GameState, root = false, color = default_color, position: Vector3): Build =
  let transform = Transform.init(origin = position)
  result = Build.init(state = state, root = root, transform = transform, color = color)

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
