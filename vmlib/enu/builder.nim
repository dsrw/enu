import strformat, strutils, helpers, types, math
export helpers

include loops

var
  speed* = 1.0
  drawing* = true
  color* = blue
  move_mode* = false
  scale* = 1.0
  energy* = 0.0

include base_api

me.ctrl.begin_move = proc(direction: Vector3, steps: float, self: ScriptNode, moving: bool) =
  self.wait begin_move(direction, steps, moving)

me.ctrl.begin_turn = proc(axis: Vector3, degrees: float, self: ScriptNode, moving: bool) =
  self.wait begin_turn(axis, degrees, moving)

me.ctrl.advance_state_machine = proc(): bool = advance_state_machine()
me.ctrl.yield_script = proc() = yield_script()

me.ctrl.set_global = proc(global: bool) =
  set_global(global)

me.ctrl.get_global = proc(): bool =
  get_global()

me.ctrl.set_color = proc(value: ColorIndex) =
  color = value

me.ctrl.get_color = proc(): ColorIndex =
  color

me.ctrl.set = proc(name: string, new_speed:float) =
  speed = new_speed
me.ctrl.get = proc(name: string): float = speed

me.ctrl.create_new = proc() =
  create_new()

me.ctrl.get_position = proc(): Vector3 =
  get_position()

me.ctrl.set_position = proc(position: Vector3) =
  set_position(position)

me.ctrl.get_rotation = proc(): Vector3 =
  get_rotation()

me.ctrl.look_at = proc(target: ScriptNode) =
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

# Helpers
proc load_defaults()             = discard

proc set_vars*(color_index: int, drw: bool, spd, scl: float, eg: float) =
  color = ColorIndex color_index
  drawing = drw
  speed = spd
  scale = scl
  energy = eg

proc fill_square*(length = 1) =
  for l in 0..length:
    for i in 0..3:
      forward(length - l)
      right()

proc move*[T: ScriptNode](new_target: T) =
  target = new_target
  move_mode = true

proc m*[T: ScriptNode](new_target: T) =
  target = new_target
  move_mode = true

proc build*(new_target: ScriptNode) =
  target = new_target
  move_mode = false

proc print*(args: varargs[string, `$`]) =
  echo_console args.join

load_defaults()
