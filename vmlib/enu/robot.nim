import helpers, strutils, types, math
export helpers

include loops

let skip_3d = true

var
  speed* = 1.0
  scale* = 1.0
  color*: ColorIndex
  height* = 0.0
  position* = vec3(0, 0, 0)
  move_mode = 0

include base_api

load_values = proc() =
  position = me.position
  height = position.y

me.ctrl.begin_move = proc(direction: Vector3, steps: float, self: ScriptNode, moving: int) =
  self.wait begin_move(direction, steps, 0)

me.ctrl.begin_turn = proc(axis: Vector3, degrees: float, self: ScriptNode, moving: int) =
  self.wait begin_turn(axis, degrees, 0)

me.ctrl.advance_state_machine = proc(): bool = advance_state_machine()
me.ctrl.yield_script = proc() = yield_script()

me.ctrl.set_global = proc(global: bool) =
  set_global(global)

me.ctrl.get_global = proc(): bool =
  get_global()

me.ctrl.set = proc(name: string, new_speed:float) =
  speed = new_speed
me.ctrl.get = proc(name: string): float = speed

me.ctrl.stash = proc() =
  stash()

me.ctrl.get_position = proc(): Vector3 =
  get_position()

me.ctrl.set_position = proc(position: Vector3) =
  set_position(position)

me.ctrl.get_rotation = proc(): Vector3 =
  get_rotation()

me.ctrl.look_at = proc(target: ScriptNode) =
  look_at(target)

me.ctrl.add_stashed = proc() =
  add_stashed()

me.ctrl.create_new = proc() =
  create_new()

me.ctrl.get_color = proc(): ColorIndex = color
me.ctrl.set_color = proc(value: ColorIndex) = color = value

proc play*(animation_name: string)  = discard
proc set_speed*(spd: float)         = speed = spd

proc walk*() =
  speed = 1.0
  play("walk")

proc run*() =
  speed = 5.0
  play("run")

proc move*[T: ScriptNode](new_target: T) =
  target = new_target
