import std / [hashes, tables, sets, options]
import pkg / [model_citizen, print]
import core, types, colors
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

  let position = position - offset
  target.voxels[position.buffer][position] = voxel

proc flag_tree[T](root: Unit[T], add: bool, flag: ModelFlags) =
  if add:
    root.flags += flag
  else:
    root.flags -= flag
  for unit in root.units:
    unit.flag_tree(add, flag)

# proc fire[T](self: Build[T], state: GameState[T]) =
#   let point = (self.target_point - vec3(0.5, 0, 0.5)).trunc
#   if state.tool == Block:
#     self.painting = true
#     let points = point.surrounding
#     let neighbour = state.units.find_first(points)
#     if neighbour:
#       let local = point.local_to(neighbour)
#       neighbour.draw(local, (Manual, state.selected_color))
#     else:
#       state.units += Build.init(T, state, position = point, root = true, color = state.selected_color)
#   elif state.tool == Place:
#     var t = Transform.init(origin = point)
#     state.units += Bot.init(T, transform = t)

proc fire[T](self: Build[T], state: GameState[T]) =
  if state.tool == Block:
    self.painting = true
    self.draw(self.target_point, (Manual, state.selected_color))
#   let vox = self.get_vox(self.targeted_voxel)
#   if vox:
#     if tool_mode == BlockMode:
#       self.painting = true
#       let point = self.targeted_voxel + self.current_normal
#       if not self.root_builder.is_nil:
#         let t = self.get_parent().as(Spatial).translation #+ vec3(2,0,1)
#         self.root_builder.draw_terrain(t + point, action_index, true)
#         self.root_builder.draw_plane = (t + self.current_point) * self.current_normal
#       else:
#         self.draw_terrain(point, action_index, true)
#       self.draw_plane = self.current_point * self.current_normal
#     elif tool_mode == ObjectMode:
#       var transform = init_transform().translated(self.to_global(self.current_point))
#       create_bot(transform, data_node, up_axis = self.current_normal)
#     elif tool_mode == CodeMode:
#       self.trigger("block_selected")
  #       self.get_parent.trigger("deselect", true)


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
      if change.obj == Hover and state.tool == Code:
        if Added in change.changes:
          let (root, _) = self.find_root
          root.flag_tree(true, Highlight)
        elif Removed in change.changes:
          let (root, _) = self.find_root
          root.flag_tree(false, Highlight)

  state.input_flags.track proc(changes: auto) =
    if Hover in self.flags:
      for change in changes:
        if change.obj == Primary and Added in change.changes:
          self.fire(state)

  result = self

proc init*(_: type Build, T: type, state: GameState[T], root = false, color = default_color, position: Vector3): Build[T] =
  let transform = Transform.init(origin = position)
  result = Build.init(T, state = state, root = root, transform = transform, color = color)

when is_main_module:
  import unittest
  type Node = ref object of RootObj

  var b = Build.init(Node, root = true)

  b.draw vec3(1, 1, 1), (Computed, Color())
  check vec3(1, 1, 1) in b.voxels[vec3(0, 0, 0)]
  b.draw vec3(17, 17, 17), (Computed, Color())
  check vec3(17, 17, 17) in b.voxels[vec3(1, 1, 1)]
  var c = Build.init(Node, transform = Transform(origin: vec3(5, 5, 5)))
  c.parent = b

  c.draw vec3(14, 14, 14), (Manual, Color())
  c.flags += Targeted
