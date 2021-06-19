import random

# API
proc quit*(exit_code = 0) = discard
proc create_new() = discard

proc echo_console(msg: string) = discard
proc echo(msg: varargs[string, `$`]) = echo_console msg.join

proc begin_move*(direction: Vector3, steps: float) = discard
proc begin_turn*(axis: Vector3, steps: float) = discard

proc look_at_impl(node: Node) = discard
proc near(node: Node, distance = 5):bool = discard

proc forward*(steps = 1.0) = self.wait begin_move(FORWARD, steps)
proc back*(steps = 1.0) = self.wait begin_move(BACK, steps)
proc left*(steps = 1.0) = self.wait begin_move(LEFT, steps)
proc right*(steps = 1.0) = self.wait begin_move(RIGHT, steps)
proc turn_left*(degrees = 90.0) = self.wait begin_turn(LEFT, degrees)
proc turn_right*(degrees = 90.0) = self.wait begin_turn(RIGHT, degrees)
proc look_at*(node: Node) = self.wait look_at_impl(node)

proc fd*(steps = 1.0) = forward(steps)
proc bk*(steps = 1.0) = back(steps)
proc lt*(steps = 1.0) = left(steps)
proc rt*(steps = 1.0) = right(steps)
proc tl*(degrees = 90.0) = turn_left(degrees)
proc tr*(degrees = 90.0) = turn_right(degrees)

when not declared(skip_3d):
  proc up*(steps = 1.0) = self.wait begin_move(UP, steps)
  proc down*(steps = 1.0) = self.wait begin_move(DOWN, steps)
  proc turn_up*(degrees = 0.0) = self.wait begin_turn(UP, degrees)
  proc turn_down*(degrees = 90.0) = self.wait begin_turn(DOWN, degrees)
  proc tu*(degrees = 90.0) = turn_up(degrees)
  proc td*(degrees = 90.0) = turn_down(degrees)
