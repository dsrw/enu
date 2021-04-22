import strformat, strutils, helpers
export helpers

include loops

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

  Energy = range[0.0..100.0]

var
  speed*: range[0.0..250.0] = 30.0
  move_speed = 1.0
  drawing* = true
  color*: ColorIndex
  mode* = VoxelMode
  overwrite* = false
  move_mode* = false
  scale* = 1.0
  energies: Table[ColorIndex, float]

proc change_color(amount: int) =
  var color_index = int color
  color_index += amount
  if color_index > int ColorIndex.high:
    color_index = ColorIndex.low.int
  elif color_index < ColorIndex.low.int:
    color_index = int ColorIndex.high
  color = ColorIndex color_index

include logo

proc echo_console*(msg: string)     = discard
proc sleep*(seconds: float)         = discard
proc reset*(clear = false)          = discard
proc save*(name = "default")        = discard
proc restore*(name = "default")     = discard
proc pause*()                       = discard
proc next_color*()                  = change_color 1
proc prev_color*()                  = change_color -1
proc nc*()                          = next_color()
proc pc*()                          = prev_color()

proc set_energy(color: int, energy: float) =
  discard

proc `energy=`*(color: ColorIndex, energy: float) =
  set_energy(color.int, energy)
  energies[color] = energy

proc energy*(color: ColorIndex): var float =
  if color notin energies:
    energies[color] = 0.1
  result = energies[color]

# Helpers
proc load_defaults()             = discard

proc set_vars*(color_index: int, drw: bool, spd, scl: float, draw_mode: int, ow, mv: bool) =
  color = ColorIndex color_index
  drawing = drw
  speed = spd
  scale = scl
  mode = DrawMode draw_mode
  overwrite = ow
  move_mode = mv

proc fill_square*(length = 1) =
  for l in 0..length:
    for i in 0..3:
      forward(length - l)
      right()

template move*(body: untyped): untyped =
  let prev_speed = speed
  move_mode = true
  speed = move_speed
  body
  move_mode = false
  move_speed = speed
  speed = prev_speed

template build*(body: untyped): untyped =
  let prev_move_mode = move_mode
  move_mode = false
  body
  move_mode = prev_move_mode

proc print*(args: varargs[string, `$`]) =
  echo_console args.join

load_defaults()
