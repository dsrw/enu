import helpers, strutils, types
export helpers

include loops

let skip_3d = true

var
  speed* = 1.0
  player* = Node()

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

proc play*(animation_name: string)  = discard
proc set_speed*(spd: float)         = speed = spd

proc walk*() =
  speed = 1.0
  play("walk")

proc run*() =
  speed = 5.0
  play("run")
