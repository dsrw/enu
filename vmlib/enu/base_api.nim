import std / [strutils, math, importutils]
import random except rand
import types, state_machine, base_bridge, base_bridge_private

export base_bridge

proc `position=`*(self: Unit, position: Vector3) = self.`position=impl`(position)
proc `position=`*(self: Unit, unit: Unit) = self.`position=impl`(unit.position)

proc link_dependency*(dep: Unit) =
  if not dep.is_nil:
    link_dependency_impl(dep)

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

template forward*(steps = 1.0) = enu_target.forward(steps)
template back*(steps = 1.0) = enu_target.back(steps)
template left*(steps = 1.0) = enu_target.left(steps)
template right*(steps = 1.0) = enu_target.right(steps)
template up*(steps = 1.0) = enu_target.up(steps)
template down*(steps = 1.0) = enu_target.down(steps)

template l*(steps = 1.0) = enu_target.left(steps)
template r*(steps = 1.0) = enu_target.right(steps)
template u*(steps = 1.0) = enu_target.up(steps)
template d*(steps = 1.0) = enu_target.down(steps)
template f*(steps = 1.0) = enu_target.forward(steps)
template b*(steps = 1.0) = enu_target.back(steps)

proc forward*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.z - value.position.z + value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template forward*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.z - value.position.z + value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template forward*(offset: PositionOffset) = enu_target.forward(offset)

proc back*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.position.z - value.position.z - value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template back*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.z - value.position.z - value.offset
  wait self.begin_move(FORWARD, steps, move_mode)

template back*(offset: PositionOffset) = enu_target.back(offset)

proc left*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.x - value.position.x + value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template left*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.x - value.position.x + value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template left*(offset: PositionOffset) = enu_target.left(offset)

proc right*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.x - value.position.x - value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template right*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.x - value.position.x - value.offset
  wait self.begin_move(LEFT, steps, move_mode)

template right*(offset: PositionOffset) = enu_target.right(offset)

proc down*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.y - value.position.y + value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template down*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.y - value.position.y + value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template down*(offset: PositionOffset) = enu_target.down(offset)

proc up*(self: Unit, value: PositionOffset, move_mode: int) =
  let steps = self.local_position.y - value.position.y - value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template up*(self: Unit, value: PositionOffset) =
  mixin wait, begin_move
  let steps = self.local_position.y - value.position.y - value.offset
  wait self.begin_move(DOWN, steps, move_mode)

template up*(offset: PositionOffset) = enu_target.up(offset)

type NegativeNode = ref object
  node: Unit

proc `-`*(node: Unit): NegativeNode =
  NegativeNode(node: node)

proc angle_to(self: Unit, enu_target: Unit): float =
  let
    p1 = self.position
    p2 = enu_target.position
    d = (p1 - p2).normalized()
  let n = arctan2(d.x, d.z).rad_to_deg
  let rot = self.rotation
  result = -(n - rot)

proc vec3(direction: Directions): Vector3 =
  result = case direction:
    of Directions.forward, Directions.f: FORWARD
    of Directions.back, Directions.b: BACK
    of Directions.left, Directions.l: LEFT
    of Directions.right, Directions.r: RIGHT
    of Directions.up, Directions.u: UP
    of Directions.down, Directions.d: DOWN

proc turn*(self: Unit, direction: Directions, degrees = 90.0, move_mode: int) =
  let dir = vec3(direction)
  if dir in [BACK, FORWARD]:
    raise IndexDefect.init("You can't turn forward or back")
  
  self.begin_turn(dir, degrees, false, move_mode)

proc turn*(self: Unit, degrees: float, move_mode: int) =
  let degrees = floor_mod(degrees, 360)
  if degrees <= 180:
    self.turn Directions.right, degrees, move_mode
  else:
    let d = 180 - (degrees - 180)
    self.turn Directions.left, 180 - (degrees - 180), move_mode

template turn*(self: Unit, direction: Directions, degrees = 90.0) =
  mixin wait
  wait turn(self, direction, degrees, move_mode)

template turn*(direction: Directions, degrees = 90.0) =
  mixin wait
  wait enu_target.turn(direction, degrees, move_mode)

template t*(direction: Directions, degrees = 90.0) =
  turn direction, degrees

template turn*(degrees: float) =
  mixin wait
  wait enu_target.turn(degrees, move_mode)

template t*(degrees: float) =
  turn degrees

template turn*(self: Unit, degrees: float) =
  mixin wait
  wait self.turn(degrees, move_mode)

template t*(self: Unit, degrees: float) =
  turn self, degrees

proc lean*(self: Unit, direction: Directions, degrees = 90.0, move_mode: int) =
  let dir = vec3(direction)
  if dir in [UP, DOWN]:
    raise IndexDefect.init("You can't lean up or down")
  
  self.begin_turn(dir, degrees, true, move_mode)

proc lean*(self: Unit, degrees: float, move_mode: int) =
  let degrees = floor_mod(degrees, 360)
  if degrees <= 180:
    self.lean Directions.right, degrees, move_mode
  else:
    let d = 180 - (degrees - 180)
    self.lean Directions.left, 180 - (degrees - 180), move_mode

template lean*(self: Unit, direction: Directions, degrees = 90.0) =
  mixin wait
  wait lean(self, direction, degrees, move_mode)

template lean*(direction: Directions, degrees = 90.0) =
  mixin wait
  wait enu_target.lean(direction, degrees, move_mode)

template lean*(degrees: float) =
  mixin wait
  wait enu_target.lean(degrees, move_mode)

template lean*(self: Unit, degrees: float) =
  mixin wait
  wait self.lean(degrees, move_mode)

template move*[T: Unit](new_enu_target: T) =
  enu_target = new_enu_target
  move_mode = 2
  if enu_target.speed == 0:
    enu_target.speed = 1

template build*(new_enu_target: Unit) =
  enu_target = new_enu_target
  move_mode = 1

proc turn*(self: Unit, enu_target: Unit, move_mode: int) =
  self.turn(self.angle_to(enu_target), move_mode)

template turn*(self: Unit, enu_target: Unit) =
  self.turn(enu_target, move_mode)

template turn*(enu_target: Unit) =
  active_unit().turn(enu_target)

template t*(enu_target: Unit) =
  turn enu_target

template turn*(self: Unit, enu_target: NegativeNode) =
  self.turn(self.angle_to(enu_target.node) - 180, move_mode)

template turn*(enu_target: NegativeNode) =
  active_unit().turn(enu_target)

template t*(enu_target: NegativeNode) =
  turn(enu_target)

template hit*(node: Unit): Vector3 =
  enu_target.hit(node)

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
  # save position and height in case unit moves
  var position = unit.position
  var height = unit.height
  active_unit().turn(unit, 2)
  active_unit().forward((position - active_unit().position).length, 2)
  active_unit().down(active_unit().height - height, 2)

proc even*(self: int): bool = self mod 2 == 0
proc odd*(self: int): bool = not self.even
