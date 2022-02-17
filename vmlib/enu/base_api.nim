import std / [random, strutils, math]
import types, state_machine

proc echo_console*(msg: string) = discard

proc register_active*(self: ScriptNode) = discard
proc new_instance*(src, dest: ScriptNode) = discard
proc exec_instance*(self: ScriptNode) = discard
proc active_unit*(): ScriptNode = discard

var speed_counter = 0
# API
proc id*(self: ScriptNode): string = discard
proc exit*(exit_code = 0) = discard
proc sleep*(seconds = 1.0) = discard
proc create_new*(self: ScriptNode) = discard
proc position*(self: ScriptNode): Vector3 = discard
proc `position=`*(self: ScriptNode, position: Vector3) = discard
proc speed*(self: ScriptNode): float = discard
proc `speed=`*(self: ScriptNode, speed: float) = discard
proc scale*(self: ScriptNode): float = discard
proc `scale=`*(self: ScriptNode, scale: float) = discard
proc energy*(self: ScriptNode): float = discard
proc `energy=`*(self: ScriptNode, energy: float) = discard
proc global*(self: ScriptNode): bool = discard
proc `global=`*(self: ScriptNode, global: bool) = discard
proc color*(self: ScriptNode): Colors = discard
proc `color=`*(self: ScriptNode, color: Colors) = discard
proc rotation*(self: ScriptNode): Vector3 = discard
proc hit*(self: ScriptNode, node: ScriptNode): Vector3 = discard
proc `velocity=`(self: ScriptNode, velocity: Vector3) = discard
proc velocity(self: ScriptNode): Vector3 = discard

proc bounce*(me: PlayerType, power = 1.0) =
  me.velocity = me.velocity + UP * power * 30

proc action_running(self: ScriptNode): bool = discard
proc `action_running=`(self: ScriptNode, value: bool) = discard

proc yield_script(self: ScriptNode) = discard

proc begin_move(self: ScriptNode, direction: Vector3, steps: float, move_mode: int) = discard
proc begin_turn(self: ScriptNode, axis: Vector3, steps: float, move_mode: int) = discard

template wait(body: untyped) =
  mixin action_running, `action_running=`, yield_script
  let self = active_unit()
  `action_running=`(self, true)
  body
  while self.action_running and self.advance_state_machine():
    self.yield_script()

proc forward*(self: ScriptNode, steps: float, move_mode: int) =
  wait self.begin_move(FORWARD, steps, move_mode)

template forward*(self: ScriptNode, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(FORWARD, steps, move_mode)

proc back*(self: ScriptNode, steps: float, move_mode: int) =
  wait self.begin_move(BACK, steps, move_mode)

template back*(self: ScriptNode, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(BACK, steps, move_mode)

proc left*(self: ScriptNode, steps: float, move_mode: int) =
  wait self.begin_move(LEFT, steps, move_mode)

template left*(self: ScriptNode, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(LEFT, steps, move_mode)

proc right*(self: ScriptNode, steps: float, move_mode: int) =
  wait self.begin_move(RIGHT, steps, move_mode)

template right*(self: ScriptNode, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(RIGHT, steps, move_mode)

proc up*(self: ScriptNode, steps: float, move_mode: int) =
  wait self.begin_move(UP, steps, move_mode)

template up*(self: ScriptNode, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(UP, steps, move_mode)

proc down*(self: ScriptNode, steps: float, move_mode: int) =
  wait self.begin_move(DOWN, steps, move_mode)

template down*(self: ScriptNode, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(DOWN, steps, move_mode)

template l*(self: ScriptNode, steps = 1.0) = self.left(steps)
template r*(self: ScriptNode, steps = 1.0) = self.right(steps)
template u*(self: ScriptNode, steps = 1.0) = self.up(steps)
template d*(self: ScriptNode, steps = 1.0) = self.down(steps)
template f*(self: ScriptNode, steps = 1.0) = self.forward(steps)
template b*(self: ScriptNode, steps = 1.0) = self.back(steps)

proc turn*(self: ScriptNode, direction: Directions, degrees = 90.0, move_mode: int) =
  let dir = case direction:
    of Directions.forward, Directions.f: FORWARD
    of Directions.back, Directions.b: BACK
    of Directions.left, Directions.l: LEFT
    of Directions.right, Directions.r: RIGHT
    of Directions.up, Directions.u: UP
    of Directions.down, Directions.d: DOWN

  self.begin_turn(dir, degrees, move_mode)

proc turn*(self: ScriptNode, degrees: float, move_mode: int) =
  let degrees = floor_mod(degrees, 360)
  if degrees <= 180:
    self.turn right, degrees, move_mode
  else:
    let d = 180 - (degrees - 180)
    self.turn left, 180 - (degrees - 180), move_mode

template turn*(self: ScriptNode, direction: Directions, degrees = 90.0) =
  mixin wait
  wait turn(self, direction, degrees, move_mode)

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

template turn*(direction: Directions, degrees = 90.0) =
  mixin wait
  wait target.turn(direction, degrees, move_mode)

template turn*(degrees: float) =
  mixin wait
  wait target.turn(degrees, move_mode)

template move*[T: ScriptNode](new_target: T) =
  target = new_target
  move_mode = 2

template build*(new_target: ScriptNode) =
  target = new_target
  move_mode = 1

type NegativeNode = ref object
  node: ScriptNode

proc angle_to(self: ScriptNode, target: ScriptNode): float =
  let
    p1 = self.position
    p2 = target.position
    d = (p1 - p2).normalized()
  let n = arctan2(d.x, d.z).rad_to_deg
  let rot = self.rotation
  result = -(n - rot.y)

template turn*(self: ScriptNode, target: ScriptNode) =
  self.turn(self.angle_to(target), move_mode)

template turn*(target: ScriptNode) =
  active_unit().turn(target)

proc `-`*(node: ScriptNode): NegativeNode =
  NegativeNode(node: node)

template turn*(self: ScriptNode, target: NegativeNode) =
  self.turn(self.angle_to(target.node) - 180, move_mode)

template turn*(target: NegativeNode) =
  active_unit().turn(target)

template hit*(node: ScriptNode): Vector3 =
  target.hit(node)

proc distance*(node: ScriptNode): float =
  node.position.distance_to(active_unit().position)

proc near*(node: ScriptNode, less_than = 5.0): bool =
  result = node.distance < less_than

proc far*(node: ScriptNode, greater_than = 100.0): bool =
  result = node.distance > greater_than
