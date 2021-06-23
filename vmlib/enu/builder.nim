import strformat, strutils, helpers, types, math
export helpers

include loops

var
  speed* = 1.0
  move_speed = 1.0
  drawing* = true
  color*: ColorIndex
  mode* = VoxelMode
  overwrite* = false
  move_mode* = false
  scale* = 1.0
  energies: Table[ColorIndex, float]

include base_api

self.ctrl.begin_move = proc(direction: Vector3, steps: float, self: ScriptNode) =
  self.wait begin_move(direction, steps)

self.ctrl.begin_turn = proc(axis: Vector3, degrees: float, self: ScriptNode) =
  self.wait begin_turn(axis, degrees)

self.ctrl.advance_state_machine = proc(): bool = advance_state_machine()
self.ctrl.yield_script = proc() = yield_script()

self.ctrl.set = proc(name: string, new_speed:float) =
  speed = new_speed
self.ctrl.get = proc(name: string): float = speed

self.ctrl.create_new = proc() =
  create_new()

self.ctrl.get_position = proc(): Vector3 =
  get_position()

self.ctrl.get_rotation = proc(): Vector3 =
  get_rotation()

self.ctrl.look_at = proc(target: ScriptNode) =
  look_at(target)

proc change_color(amount: int) =
  var color_index = int color
  color_index += amount
  if color_index > int ColorIndex.high:
    color_index = ColorIndex.low.int
  elif color_index < ColorIndex.low.int:
    color_index = int ColorIndex.high
  color = ColorIndex color_index

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
