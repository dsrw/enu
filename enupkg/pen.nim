import ../godotapi/[node],
       sets,
       godot, core, options

type
  DrawMode* = enum
    GridMode, VoxelMode

  Pen* = ref object of RootObj
    id*: string
    voxes*: VoxSet

method draw*(self: Pen, location: Vector3, index: int) =
  raise new_exception(AssertionDefect, "You shouldn't be here")

method clear*(self: Pen): bool = false

import grid, terrain
export draw, clear

proc init*(mode: DrawMode, node: Node, id: string): Pen =
  result = case mode:
  of VoxelMode: VoxelPen.init("voxel-" & id)
  of GridMode: GridPen.init(node, "grid-" & id)
