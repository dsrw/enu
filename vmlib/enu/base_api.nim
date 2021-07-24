import random, types

# API
proc quit*(exit_code = 0) = discard
proc sleep*(seconds: float)         = discard
proc create_new() = discard
proc stash() = discard
proc add_stashed() = discard
proc get_position(): Vector3 = discard
proc get_rotation(): Vector3 = discard

var target: ScriptNode = me

proc add(node: ScriptNode) =
  node.stash()
  add_stashed()

proc distance(node: ScriptNode): float =
  node.get_position().distance_to(get_position())

proc near(node: ScriptNode, less_than = 5.0): bool =
  result = node.distance < less_than

proc echo_console(msg: string) = discard
proc echo(msg: varargs[string, `$`]) = echo_console msg.join

proc begin_move(direction: Vector3, steps: float) = discard
proc begin_turn(axis: Vector3, steps: float) = discard

proc forward(steps = 1.0) = target.ctrl.begin_move(FORWARD, steps, me)
proc back(steps = 1.0) = target.ctrl.begin_move(BACK, steps, me)
proc left(steps = 1.0): Direction {.discardable.} = target.ctrl.begin_move(LEFT, steps, me)
proc right(steps = 1.0): Direction {.discardable.} = target.ctrl.begin_move(RIGHT, steps, me)
proc l(steps = 1.0): Direction {.discardable.} = left(steps)
proc r(steps = 1.0): Direction {.discardable.} = right(steps)
proc up(steps = 1.0): Direction {.discardable.} = target.ctrl.begin_move(UP, steps, me)
proc u(steps = 1.0): Direction {.discardable.} = up(steps)
proc down(steps = 1.0): Direction {.discardable.} = target.ctrl.begin_move(DOWN, steps, me)
proc d(steps = 1.0): Direction {.discardable.} = down(steps)

proc turn(direction: proc(steps = 1.0): Direction, degrees = 90.0) =
  var axis = if direction == r: RIGHT
             elif direction == right: RIGHT
             elif direction == l: LEFT
             elif direction == left: LEFT
             else: Vector3()

  if axis == Vector3():
    axis = if direction == u: UP
    elif direction == up: UP
    elif direction == d: DOWN
    elif direction == down: DOWN
    else: Vector3()

  assert axis != Vector3(), "Invalid direction"
  target.ctrl.begin_turn(axis, degrees, me)

proc t(direction: proc(steps = 1.0): Direction, degrees = 90.0) =
  turn(direction, degrees)

proc f(steps = 1.0) = forward(steps)
proc b(steps = 1.0) = back(steps)

proc look_at(node: ScriptNode) =
  let
    p1 = get_position()
    p2 = node.get_position()
    d = (p1 - p2).normalized()
  let n = arctan2(d.x, d.z).rad_to_deg
  let rot = get_rotation()
  turn(left, n - rot.y)

proc la(node: ScriptNode) = look_at(node)
