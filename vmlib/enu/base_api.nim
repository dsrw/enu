import random, types

# API
proc quit*(exit_code = 0) = discard
proc sleep*(seconds: float)         = discard
proc create_new() = discard
proc stash() = discard
proc add_stashed() = discard
proc get_position(): Vector3 = discard
proc get_rotation(): Vector3 = discard

proc add(node: ScriptNode) =
  node.stash()
  add_stashed()

proc distance(node: ScriptNode): float =
  node.get_position().distance_to(get_position())

proc near(node: ScriptNode, less_than = 5.0): bool =
  result = node.distance < less_than

proc echo_console(msg: string) = discard
proc echo(msg: varargs[string, `$`]) = echo_console msg.join

proc begin_move*(direction: Vector3, steps: float) = discard
proc begin_turn*(axis: Vector3, steps: float) = discard

proc forward*(steps = 1.0) = self.wait begin_move(FORWARD, steps)
proc back*(steps = 1.0) = self.wait begin_move(BACK, steps)
proc left*(steps = 1.0) = self.wait begin_move(LEFT, steps)
proc right*(steps = 1.0) = self.wait begin_move(RIGHT, steps)
proc turn_left*(degrees = 90.0) = self.wait begin_turn(LEFT, degrees)
proc turn_right*(degrees = 90.0) = self.wait begin_turn(RIGHT, degrees)

proc fd*(steps = 1.0) = forward(steps)
proc bk*(steps = 1.0) = back(steps)
proc lt*(steps = 1.0) = left(steps)
proc rt*(steps = 1.0) = right(steps)
proc tl*(degrees = 90.0) = turn_left(degrees)
proc tr*(degrees = 90.0) = turn_right(degrees)

proc look_at(node: ScriptNode) =
  let
    p1 = get_position()
    p2 = node.get_position()
    d = (p1 - p2).normalized()
  let n = arctan2(d.x, d.z).rad_to_deg
  let rot = get_rotation()
  turn_left(n - rot.y)

when not declared(skip_3d):
  proc up*(steps = 1.0) = self.wait begin_move(UP, steps)
  proc down*(steps = 1.0) = self.wait begin_move(DOWN, steps)
  proc turn_up*(degrees = 0.0) = self.wait begin_turn(UP, degrees)
  proc turn_down*(degrees = 90.0) = self.wait begin_turn(DOWN, degrees)
  proc tu*(degrees = 90.0) = turn_up(degrees)
  proc td*(degrees = 90.0) = turn_down(degrees)
