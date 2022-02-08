import std / [random, strutils, math]
import types, state_machine

proc register_active*(self: ScriptNode) = discard
proc new_instance*(src, dest: ScriptNode) = discard
# API
proc quit*(self: ScriptNode, exit_code = 0) = discard
proc sleep*(self: ScriptNode, seconds = 1.0, ctx: Context = nil) = discard
proc create_new*(self: ScriptNode) = discard
proc position*(self: ScriptNode): Vector3 = discard
proc `position=`*(self: ScriptNode, position: Vector3) = discard
proc rotation*(self: ScriptNode): Vector3 = discard
proc collision*(self: ScriptNode, node: ScriptNode): Vector3 = discard

proc begin_move(self: ScriptNode, direction: Vector3, steps: float) = discard
proc begin_turn(self: ScriptNode, axis: Vector3, steps: float) = discard

proc echo_console(msg: string) = discard
proc echo*(msg: varargs[string, `$`]) = echo_console msg.join
#
# var target: ScriptNode = me
#
# proc add(node: ScriptNode) =
#   node.stash()
#   add_stashed()
#
# proc distance(node: ScriptNode): float =
#   node.get_position().distance_to(get_position())
#
# proc near(node: ScriptNode, less_than = 5.0): bool =
#   result = node.distance < less_than
#
# proc far(node: ScriptNode, greater_than = 100.0): bool =
#   result = node.distance > greater_than
#
# proc echo_console(msg: string) = discard
# proc echo(msg: varargs[string, `$`]) = echo_console msg.join
#

proc forward*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.begin_move(FORWARD, steps)
proc back*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.begin_move(BACK, steps)
proc left*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.begin_move(LEFT, steps)
proc right*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.begin_move(RIGHT, steps)
proc up*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.begin_move(UP, steps)
proc down*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.begin_move(DOWN, steps)

proc l*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.left(steps)
proc r*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.right(steps)
proc u*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.up(steps)
proc d*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.down(steps)
proc f*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.forward(steps)
proc b*(self: ScriptNode, steps = 1.0): Direction {.discardable.} = self.back(steps)

# proc set_global(global: bool) = discard
# proc get_global(): bool = discard
#
proc turn*(self: ScriptNode, direction: proc(self: ScriptNode, steps = 1.0): Direction, degrees = 90.0) =
  let dir = if direction == forward or direction == f: FORWARD
            elif direction == back or direction == b: BACK
            elif direction == left or direction == l: LEFT
            elif direction == right or direction == r: RIGHT
            elif direction == up or direction == u: UP
            elif direction == down or direction == d: DOWN
            else:
              assert false, "Invalid direction"
              return

  self.begin_turn(dir, degrees)

proc turn*(self: ScriptNode, degrees: float) =
  let degrees = floor_mod(degrees, 360)
  if degrees <= 180:
    self.turn right, degrees
  else:
    let d = 180 - (degrees - 180)
    self.turn left, 180 - (degrees - 180)

template forward*(steps = 1.0) = target.forward(steps)
template back*(steps = 1.0) = target.back(steps)
template left*(steps = 1.0) = target.left(steps)
template right*(steps = 1.0) = target.right(steps)
template up*(steps = 1.0) = target.up(steps)
template down*(steps = 1.0) = target.down(steps)

template l*(steps = 1.0) = target.left(steps)
template r*(steps = 1.0) = target.right(steps)
template u*(steps = 1.0) = target.up(steps)
template d*(steps = 1.0) = target.down(steps)
template f*(steps = 1.0) = target.forward(steps)
template b*(steps = 1.0) = target.back(steps)

template turn*(direction: proc(self: ScriptNode, steps = 1.0): Direction, degrees = 90.0) =
  target.turn(direction, degrees)

template turn*(degrees: float) =
  target.turn(degrees)

template move*[T: ScriptNode](new_target: T) =
  target = new_target

#
# proc t(direction: proc(steps = 1.0, ctx: Context = nil): Direction, degrees = 90.0) =
#   turn(direction, degrees)
#
# proc f(steps = 1.0, ctx: Context = nil) = forward(steps)
# proc b(steps = 1.0, ctx: Context = nil) = back(steps)
#
# proc look_at(node: ScriptNode) =
#   let
#     p1 = get_position()
#     p2 = node.get_position()
#     d = (p1 - p2).normalized()
#   let n = arctan2(d.x, d.z).rad_to_deg
#   let rot = get_rotation()
#   turn(left, n - rot.y)
#
# proc la(node: ScriptNode) = look_at(node)
