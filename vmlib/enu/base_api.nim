import std / [strutils, math, importutils]
import random except rand
import types, state_machine

proc echo_console*(msg: string) = discard

# NOTE: overridden by ScriptController. Only for tests.
var current_active_unit: Unit
proc register_active*(self: Unit) = current_active_unit = self
proc active_unit*(): Unit = current_active_unit

proc write_stack_trace*() = discard
proc new_instance*(src, dest: Unit) = discard
proc exec_instance*(self: Unit) = discard

proc action_running(self: Unit): bool = discard
proc `action_running=`(self: Unit, value: bool) = discard
proc yield_script(self: Unit) = discard
proc begin_move(self: Unit, direction: Vector3, steps: float, move_mode: int) = discard
proc begin_turn(self: Unit, axis: Vector3, steps: float, move_mode: int) = discard
proc wake*(self: Unit) = discard

proc link_dependency_impl(dep: Unit) = discard
proc link_dependency*(dep: Unit) =
  if not dep.is_nil:
    link_dependency_impl(dep)

proc link_dependency*(dep: not Unit) = discard

# API
proc frame_count*(): int = discard
proc id*(self: Unit): string = discard
proc exit*(exit_code = 0, msg = "") = discard
proc sleep_impl(seconds = 1.0) = discard
proc create_new*(self: Unit) = discard
proc position*(self: Unit): Vector3 = discard
proc local_position*(self: Unit): Vector3 = discard
proc `position=impl`(self: Unit, position: Vector3) = discard
proc `position=`*(self: Unit, position: Vector3) = self.`position=impl`(position)
proc `position=`*(self: Unit, unit: Unit) = self.`position=impl`(unit.position)
proc start_position*(self: Unit): Vector3 = discard
proc speed*(self: Unit): float = discard
proc `speed=`*(self: Unit, speed: float) = discard
proc scale*(self: Unit): float = discard
proc `scale=`*(self: Unit, scale: float) = discard
proc energy*(self: Unit): float = discard
proc `energy=`*(self: Unit, energy: float) = discard
proc global*(self: Unit): bool = discard
proc `global=`*(self: Unit, global: bool) = discard
proc rotation*(self: Unit): float = discard
proc `rotation=`*(self: Unit, degrees: float) = discard
proc hit*(self: Unit, node: Unit): Vector3 = discard
proc `velocity=`(self: Unit, velocity: Vector3) = discard
proc velocity(self: Unit): Vector3 = discard
proc color*(self: Unit): Colors = discard
proc `color=`*(self: Unit, color: Colors) = discard

proc `seed=`*(self: Unit, seed: int) =
  private_access Unit
  self.rng = init_rand(seed)
  self.seed = seed

proc seed*(self: Unit): int =
  private_access Unit
  self.seed

proc bounce*(me: PlayerType, power = 1.0) =
  me.velocity = me.velocity + UP * power * 30

template wait(body: untyped) =
  mixin action_running, `action_running=`, yield_script
  let self = active_unit()
  `action_running=`(self, true)
  body
  while self.action_running and self.advance_state_machine():
    self.yield_script()

proc sleep*(seconds = 0.0) =
  wait sleep_impl(seconds)

proc forward*(self: Unit, steps: float, move_mode: int) =
  wait self.begin_move(FORWARD, steps, move_mode)

template forward*(self: Unit, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(FORWARD, steps, move_mode)

proc back*(self: Unit, steps: float, move_mode: int) =
  wait self.begin_move(BACK, steps, move_mode)

template back*(self: Unit, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(BACK, steps, move_mode)

proc left*(self: Unit, steps: float, move_mode: int) =
  wait self.begin_move(LEFT, steps, move_mode)

template left*(self: Unit, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(LEFT, steps, move_mode)

proc right*(self: Unit, steps: float, move_mode: int) =
  wait self.begin_move(RIGHT, steps, move_mode)

template right*(self: Unit, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(RIGHT, steps, move_mode)

proc up*(self: Unit, steps: float, move_mode: int) =
  wait self.begin_move(UP, steps, move_mode)

template up*(self: Unit, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(UP, steps, move_mode)

proc down*(self: Unit, steps: float, move_mode: int) =
  wait self.begin_move(DOWN, steps, move_mode)

template down*(self: Unit, steps = 1.0) =
  mixin wait, begin_move
  wait self.begin_move(DOWN, steps, move_mode)

template l*(self: Unit, steps = 1.0) = self.left(steps)
template r*(self: Unit, steps = 1.0) = self.right(steps)
template u*(self: Unit, steps = 1.0) = self.up(steps)
template d*(self: Unit, steps = 1.0) = self.down(steps)
template f*(self: Unit, steps = 1.0) = self.forward(steps)
template b*(self: Unit, steps = 1.0) = self.back(steps)

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

proc forward*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.z - value.position.z + value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template forward*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.z - value.position.z + value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template forward*(offset: PositionOffset) = target.forward(offset)

proc back*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.position.z - value.position.z - value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template back*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.z - value.position.z - value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template back*(offset: PositionOffset) = target.back(offset)

proc left*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.x - value.position.x + value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template left*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.x - value.position.x + value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template left*(offset: PositionOffset) = target.left(offset)

proc right*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.x - value.position.x - value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template right*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.x - value.position.x - value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template right*(offset: PositionOffset) = target.right(offset)

proc down*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.y - value.position.y + value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template down*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.y - value.position.y + value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template down*(offset: PositionOffset) = target.down(offset)

proc up*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.y - value.position.y - value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template up*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.y - value.position.y - value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template up*(offset: PositionOffset) = target.up(offset)

type NegativeNode = ref object
  node: Unit

proc `-`*(node: Unit): NegativeNode =
  NegativeNode(node: node)

proc angle_to(self: Unit, target: Unit): float =
  let
    p1 = self.position
    p2 = target.position
    d = (p1 - p2).normalized()
  let n = arctan2(d.x, d.z).rad_to_deg
  let rot = self.rotation
  result = -(n - rot)

proc turn*(self: Unit, direction: Directions, degrees = 90.0, move_mode: int) =
  let dir = case direction:
    of Directions.forward, Directions.f: FORWARD
    of Directions.back, Directions.b: BACK
    of Directions.left, Directions.l: LEFT
    of Directions.right, Directions.r: RIGHT
    of Directions.up, Directions.u: UP
    of Directions.down, Directions.d: DOWN

  self.begin_turn(dir, degrees, move_mode)

proc turn*(self: Unit, degrees: float, move_mode: int) =
  let degrees = floor_mod(degrees, 360)
  if degrees <= 180:
    self.turn right, degrees, move_mode
  else:
    let d = 180 - (degrees - 180)
    self.turn left, 180 - (degrees - 180), move_mode

template turn*(self: Unit, direction: Directions, degrees = 90.0) =
  mixin wait
  wait turn(self, direction, degrees, move_mode)

template turn*(direction: Directions, degrees = 90.0) =
  mixin wait
  wait target.turn(direction, degrees, move_mode)

template t*(direction: Directions, degrees = 90.0) =
  turn direction, degrees

template turn*(degrees: float) =
  mixin wait
  wait target.turn(degrees, move_mode)

template t*(degrees: float) =
  turn degrees

template turn*(self: Unit, degrees: float) =
  mixin wait
  wait self.turn(degrees, move_mode)

template t*(self: Unit, degrees: float) =
  turn self, degrees

template move*[T: Unit](new_target: T) =
  target = new_target
  move_mode = 2
  if target.speed == 0:
    target.speed = 1

template build*(new_target: Unit) =
  target = new_target
  move_mode = 1

proc turn*(self: Unit, target: Unit, move_mode: int) =
  self.turn(self.angle_to(target), move_mode)

template turn*(self: Unit, target: Unit) =
  self.turn(target, move_mode)

template turn*(target: Unit) =
  active_unit().turn(target)

template t*(target: Unit) =
  turn target

template turn*(self: Unit, target: NegativeNode) =
  self.turn(self.angle_to(target.node) - 180, move_mode)

template turn*(target: NegativeNode) =
  active_unit().turn(target)

template t*(target: NegativeNode) =
  turn(target)

template hit*(node: Unit): Vector3 =
  target.hit(node)

proc distance*(node: Unit): float =
  node.position.distance_to(active_unit().position)

proc near*(node: Unit, less_than = 5.0): bool =
  result = node.distance < less_than

proc far*(node: Unit, greater_than = 100.0): bool =
  result = node.distance > greater_than

proc seen*(node: Unit, less_than = 100.0): bool = discard

proc height*(self: Vector3): float = self.y
proc height*(self: Unit): float = self.position.y

import macros, random, tables
export random, tables

proc rng(): var Rand =
  private_access Unit
  var unit = active_unit()
  if unit.seed == 0:
    randomize()
    unit.seed = rand(int.high)
    unit.rng = init_rand(unit.seed)
  unit.rng

proc rand*[T: int | float](range: Slice[T]): T =
  random.rand rng(), if range.a > range.b:
    range.b..range.a
  else:
    range

converter int_to_float*(i: int): float =
  result = i.float

converter int_slice_to_float*(range: Slice[int]): float =
  rand(range).float

converter int_slice_to_fint*(range: Slice[int]): int =
  rand(range)

converter float_slice_to_float*(range: Slice[float]): float =
  rand(range)

proc fuzzed*(self, range: float): float =
  result = if range > 0:
    self + (rand(0.0..range) - (range / 2.0))
  else:
    self

proc fuzzed*(self, range: Vector3): Vector3 =
  vec3(self.x.fuzzed(range.x), self.y.fuzzed(range.y), self.z.fuzzed(range.z))

proc fuzzed*(self: Vector3, range: float): Vector3 =
  self.fuzzed(vec3(range, range, range))

proc fuzzed*(self: Vector3, x, y, z: float): Vector3 =
  self.fuzzed(vec3(x, y, z))

template times*(count: int, body: untyped): untyped =
  for x in 0..<count:
    body

template times*(count: int, name: untyped, body: untyped): untyped =
  for name {.inject.} in 0..<count:
    body

template x*(count: int, body: untyped): untyped = times(count, body)

macro dump*(x: typed): untyped =
  let s = x.toStrLit
  let r = quote do:
    echo(`s` & " = " & $`x`)
  return r

template cycle*[T](args: varargs[T]): T =
  var
    positions {.global.}: Table[(string, int, int), int]
    key = instantiation_info()

  inc positions.mget_or_put(key, -1)

  if positions[key] >= args.len:
    positions[key] = 0

  args[positions[key]]

proc contains*(max, chance: int): bool =
  var r = rng().rand(1..max)
  result = r <= chance

template forever*(body) =
  while true:
    body

template o*(body) =
  while true:
    body

proc `+`*(self: PositionOffset, offset: float): PositionOffset =
  result = self
  result.offset += offset

proc `-`*(self: PositionOffset, offset: float): PositionOffset =
  result = self
  result.offset -= offset

proc go*(unit: Unit) =
  active_unit().turn(unit, 2)
  active_unit().forward((unit.position - active_unit().position).length, 2)

proc even*(self: int): bool = self mod 2 == 0
proc odd*(self: int): bool = not self.even
