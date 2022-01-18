import helpers, strutils, types, math
export helpers

include loops

let skip_3d = true

var
  speed* = 1.0
  scale* = 1.0
  color*: ColorIndex

include base_api

me.ctrl.begin_move = proc(direction: Vector3, steps: float, self: ScriptNode) =
  self.wait begin_move(direction, steps)

me.ctrl.begin_turn = proc(axis: Vector3, degrees: float, self: ScriptNode) =
  self.wait begin_turn(axis, degrees)

me.ctrl.advance_state_machine = proc(): bool = advance_state_machine()
me.ctrl.yield_script = proc() = yield_script()

me.ctrl.set = proc(name: string, new_speed:float) =
  speed = new_speed
me.ctrl.get = proc(name: string): float = speed

me.ctrl.stash = proc() =
  stash()

me.ctrl.get_position = proc(): Vector3 =
  get_position()

me.ctrl.get_rotation = proc(): Vector3 =
  get_rotation()

me.ctrl.look_at = proc(target: ScriptNode) =
  look_at(target)

me.ctrl.add_stashed = proc() =
  add_stashed()

me.ctrl.create_new = proc() =
  create_new()

proc play*(animation_name: string)  = discard
proc set_speed*(spd: float)         = speed = spd

proc walk*() =
  speed = 1.0
  play("walk")

proc run*() =
  speed = 5.0
  play("run")
