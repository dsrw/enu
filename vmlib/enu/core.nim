type
  ColorIndex* = enum
    eraser = 0,
    blue = 1,
    red = 2,
    green = 3,
    black = 4,
    white = 5

  DrawMode* = enum
    GridMode, VoxelMode

  Energy* = range[0.0..100.0]
