import ../godotapi/[node],
       sets,
       godot, globals, core, options



method draw*(self: Pen, location: Vector3, index: int, save = SaveNone) =
  raise new_exception(AssertionDefect, "You shouldn't be here")

import grid, terrain
export draw, clear

proc init*(mode: DrawMode, builder: Node, id: string, voxes: VoxSet): Pen =
  result = case mode:
  of VoxelMode: VoxelPen.init(builder, "voxel-" & id, voxes)
  of GridMode: GridPen.init(builder, "grid-" & id)
  pens.add result
