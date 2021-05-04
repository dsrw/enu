import random, types

# API
proc forward_impl*(steps: float) = discard
proc back_impl(steps: float) = discard
proc left_impl(steps: float) = discard
proc right_impl(steps: float) = discard
proc turn_left_impl(degrees: float) = discard
proc turn_right_impl(degrees: float) = discard
proc look_at_impl(node: Node) = discard
proc near*(node: Node, distance = 5):bool = discard

proc forward*(steps = 1.0) = wait forward_impl(steps)
proc back*(steps = 1.0) = wait back_impl(steps)
proc left*(steps = 1.0) = wait left_impl(steps)
proc right*(steps = 1.0) = wait right_impl(steps)
proc turn_left*(degrees = 90.0) = wait turn_left_impl(degrees)
proc turn_right*(degrees = 90.0) = wait turn_right_impl(degrees)
proc look_at*(node: Node) = wait look_at_impl(node)


proc fd*(steps = 1.0) = forward(steps)
proc bk*(steps = 1.0) = back(steps)
proc lt*(steps = 1.0) = left(steps)
proc rt*(steps = 1.0) = right(steps)
proc tl*(degrees = 90.0) = turn_left(degrees)
proc tr*(degrees = 90.0) = turn_right(degrees)

when not declared(skip_3d):
  proc up_impl(steps: float) = discard
  proc down_impl(steps: float) = discard
  proc turn_up_impl(degrees: float) = discard
  proc turn_down_impl(degrees: float) = discard
  proc up*(steps = 1.0) = wait up_impl(steps)
  proc down*(steps = 1.0) = wait down_impl(steps)
  proc turn_up*(degrees = 0.0) = wait turn_up_impl(degrees)
  proc turn_down*(degrees = 90.0) = wait turn_down_impl(degrees)
  proc tu*(degrees = 90.0) = turn_up(degrees)
  proc td*(degrees = 90.0) = turn_down(degrees)
