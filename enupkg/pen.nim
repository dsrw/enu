import ../godotapi/[node],
       sets,
       godot, core, options

type
  DrawMode* = enum
    GridMode, VoxelMode

  Pen* = ref object of RootObj
    id*: string
    builder*: Node
    voxes*: VoxSet # XXX find a better name

method draw*(self: Pen, location: Vector3, index: int) =
  raise new_exception(AssertionDefect, "You shouldn't be here")

method clear*(self: Pen): bool = false

import grid, terrain
export draw, clear

proc init*(mode: DrawMode, builder: Node, id: string): Pen =
  result = case mode:
  of VoxelMode: VoxelPen.init(builder, "voxel-" & id)
  of GridMode: GridPen.init(builder, "grid-" & id)
