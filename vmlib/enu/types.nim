import helpers, strutils, strformat
import macros, math, hashes

type
  Vector3* = object
    x*, y*, z*: float

  Node* = ref object of RootObj
    id: int
    name*: string

  Controller*  = object
    action_running*: bool
    advance_state_machine*: proc(): bool
    yield_script*: proc()
    begin_move*: proc(direction: Vector3, steps: float, self: ScriptNode)
    begin_turn*: proc(axis: Vector3, degrees: float, self: ScriptNode)
    look_at*: proc(target: ScriptNode)
    set*: proc(var_name: string, value: float)
    get*: proc(var_name: string): float
    create_new*: proc()
    set_color*: proc(col: ColorIndex)
    get_position*: proc(): Vector3
    get_rotation*: proc(): Vector3
    set_owned*: proc(owned: bool)
    get_owned*: proc(): bool
    stash*: proc()
    add_stashed*: proc()

  ScriptNode* = ref object of Node
    ctrl*: Controller

  ColorIndex* = enum
    eraser = 0,
    blue = 1,
    red = 2,
    green = 3,
    black = 4,
    white = 5,
    brown = 6

  Energy* = range[0.0..100.0]

  Direction* = object

proc vec3*(x, y, z: float): Vector3 {.inline.} =
  Vector3(x:x, y:y, z:z)

const
  UP* = vec3(0, 1, 0)
  DOWN* = vec3(0, -1, 0)
  BACK* = vec3(0, 0, 1)
  FORWARD* = vec3(0, 0, -1)
  RIGHT* = vec3(1, 0, 0)
  LEFT* = vec3(-1, 0, 0)

# math from https://github.com/pragmagic/godot-nim/blob/7fb22f69af92aa916e56dba14ba3938fc7fa1dd1/godot/core/godotbase.nim

const EPSILON = 0.00001'f32

proc isEqualApprox*(a, b: float32): bool {.inline, noinit.}  =
  abs(a - b) < EPSILON

proc isEqualApprox*(a, b: float64): bool {.inline, noinit.} =
  abs(a - b) < EPSILON

proc sign*(a: float32): float32 {.inline, noinit.} =
  if a < 0: -1.0'f32 else: 1.0'f32

proc sign*(a: float64): float64 {.inline, noinit.} =
  if a < 0: -1.0'f64 else: 1.0'f64

proc stepify*(value, step: float64): float64 {.inline, noinit.} =
  if step != 0'f64:
    floor(value / step + 0.5'f64) * step
  else:
    value

proc stepify*(value, step: float32): float32 {.inline, noinit.} =
  if step != 0'f32:
    floor(value / step + 0.5'f32) * step
  else:
    value

# Vector3 math. https://github.com/pragmagic/godot-nim/blob/7fb22f69af92aa916e56dba14ba3938fc7fa1dd1/godot/core/vector3.nim

proc hash*(self: Vector3): Hash {.inline, noinit.} =
  !$(self.x.hash() !& self.y.hash() !& self.z.hash())

proc `+`*(a, b: Vector3): Vector3 {.inline.} =
  result.x = a.x + b.x
  result.y = a.y + b.y
  result.z = a.z + b.z

proc `+=`*(a: var Vector3, b: Vector3) {.inline.} =
  a.x += b.x
  a.y += b.y
  a.z += b.z

proc `-`*(a, b: Vector3): Vector3 {.inline.} =
  result.x = a.x - b.x
  result.y = a.y - b.y
  result.z = a.z - b.z

proc `-=`*(a: var Vector3, b: Vector3) {.inline.} =
  a.x -= b.x
  a.y -= b.y
  a.z -= b.z

proc `*`*(a, b: Vector3): Vector3 {.inline.} =
  result.x = a.x * b.x
  result.y = a.y * b.y
  result.z = a.z * b.z

proc `*=`*(a: var Vector3, b: Vector3) {.inline.}=
  a.x *= b.x
  a.y *= b.y
  a.z *= b.z

proc `*`*(a: Vector3; b: float32): Vector3 {.inline.} =
  result.x = a.x * b
  result.y = a.y * b
  result.z = a.z * b

proc `*`*(b: float32; a: Vector3): Vector3 {.inline.} =
  a * b

proc `*=`*(a: var Vector3; b: float32) {.inline.} =
  a.x *= b
  a.y *= b
  a.z *= b

proc `/`*(a, b: Vector3): Vector3 =
  result.x = a.x / b.x
  result.y = a.y / b.y
  result.z = a.z / b.z

proc `/=`*(a: var Vector3; b: Vector3) {.inline.} =
  a.x /= b.x
  a.y /= b.y
  a.z /= b.z

proc `/`*(a: Vector3; b: float32): Vector3 =
  result.x = a.x / b
  result.y = a.y / b
  result.z = a.z / b

proc `/=`*(a: var Vector3; b: float32) {.inline.} =
  a.x /= b
  a.y /= b
  a.z /= b

proc `==`*(a, b: Vector3): bool {.inline.} =
  a.x == b.x and a.y == b.y and a.z == b.z

proc `<`*(a, b: Vector3): bool =
  if a.x == b.x:
    if a.y == b.y:
      return a.z < b.z
    return a.y < b.y
  return a.x < b.x

proc `-`*(self: Vector3): Vector3 =
  result.x = -self.x
  result.y = -self.y
  result.z = -self.z

proc minAxis*(self: Vector3): int {.inline.} =
  if self.x < self.y:
    if self.x < self.z: 0 else: 2
  else:
    if self.y < self.z: 1 else: 2

proc maxAxis*(self: Vector3): int {.inline.} =
  if self.x < self.y:
    if self.y < self.z: 2 else: 1
  else:
    if self.x < self.z: 2 else: 0

proc length*(self: Vector3): float32 {.inline.} =
  let x2 = self.x * self.x
  let y2 = self.y * self.y
  let z2 = self.z * self.z

  result = sqrt(x2 + y2 + z2)

proc lengthSquared*(self: Vector3): float32 {.inline.} =
  let x2 = self.x * self.x
  let y2 = self.y * self.y
  let z2 = self.z * self.z

  result = x2 + y2 + z2

proc normalize*(self: var Vector3) {.inline.} =
  let len = self.length()
  if len == 0:
    self.x = 0
    self.y = 0
    self.z = 0
  else:
    self.x /= len
    self.y /= len
    self.z /= len

proc normalized*(self: Vector3): Vector3 {.inline.} =
  result = self
  result.normalize()

proc isNormalized*(self: Vector3): bool {.inline.} =
  self.lengthSquared().isEqualApprox(1.0'f32)

proc zero*(self: var Vector3) {.inline.} =
  self.x = 0
  self.y = 0
  self.z = 0

proc inverse*(self: Vector3): Vector3 {.inline.} =
  vec3(1.0'f32 / self.x, 1.0'f32 / self.y, 1.0'f32 / self.z)

proc cross*(self, other: Vector3): Vector3 {.inline.} =
  vec3(
    self.y * other.z - self.z * other.y,
    self.z * other.x - self.x * other.z,
    self.x * other.y - self.y * other.x)

proc dot*(self, other: Vector3): float32 {.inline.} =
  self.x * other.x + self.y * other.y + self.z * other.z

proc abs*(self: Vector3): Vector3 {.inline.} =
  vec3(abs(self.x), abs(self.y), abs(self.z))

proc sign*(self: Vector3): Vector3 {.inline.} =
  vec3(sign(self.x),  sign(self.y), sign(self.z))

proc floor*(self: Vector3): Vector3 {.inline.} =
  vec3(floor(self.x), floor(self.y), floor(self.z))

proc ceil*(self: Vector3): Vector3 {.inline.} =
  vec3(ceil(self.x), ceil(self.y), ceil(self.z))

proc lerp*(self: Vector3, other: Vector3, t: float32): Vector3 {.inline.} =
  vec3(
    self.x + t * (other.x - self.x),
    self.y + t * (other.y - self.y),
    self.z + t * (other.z - self.z)
  )

proc distanceTo*(self, other: Vector3): float32 {.inline.} =
  (other - self).length()

proc distanceSquaredTo*(self, other: Vector3): float32 {.inline.} =
  (other - self).lengthSquared()

proc angleTo*(self, other: Vector3): float32 {.inline.} =
  arctan2(self.cross(other).length(), self.dot(other))

proc slide*(self, n: Vector3): Vector3 {.inline.} =
  assert(n.isNormalized())
  result = self - n * self.dot(n)

proc reflect*(self, n: Vector3): Vector3 {.inline.} =
  assert(n.isNormalized())
  result = 2.0'f32 * n * self.dot(n) - self

proc bounce*(self, n: Vector3): Vector3 {.inline.} =
  -self.reflect(n)

proc snap*(self: var Vector3, other: Vector3) =
  self.x = stepify(self.x, other.x)
  self.y = stepify(self.y, other.y)
  self.z = stepify(self.z, other.z)

proc snapped*(self: Vector3, other: Vector3): Vector3 =
  result = self
  result.snap(other)

proc cubicInterpolate*(self, b, preA, postB: Vector3;
                       t: float32): Vector3 =
  let p0 = preA
  let p1 = self
  let p2 = b
  let p3 = postB

  let t2 = t * t
  let t3 = t2 * t

  result = 0.5 * ((p1 * 2.0) +
            (-p0 + p2) * t +
            (2.0 * p0 - 5.0 * p1 + 4 * p2 - p3) * t2 +
            (-p0 + 3.0 * p1 - 3.0 * p2 + p3) * t3)

proc moveToward*(vFrom, to: Vector3, delta: float32): Vector3 =
  let
    vd = to - vFrom
    vLen = vd.length

  if vLen <= delta or vLen < EPSILON:
    result = to
  else:
    result = vFrom + (vd / vLen) * delta

# public api

template forward*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(FORWARD, steps, self)

template back*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(BACK, steps, self)

template left*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(LEFT, steps, self)

template right*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(RIGHT, steps, self)

template turn_left*(target: ScriptNode, degrees = 90.0) =
  target.ctrl.begin_turn(LEFT, degrees, self)

template turn_right*(target: ScriptNode, degrees = 90.0) =
  target.ctrl.begin_turn(RIGHT, degrees, self)

proc `speed=`*(self: ScriptNode, speed: float) =
  self.ctrl.set("speed", speed)

proc speed*(self: ScriptNode): float =
  self.ctrl.get("speed")

proc `owned=`*(self: ScriptNode, owned: bool) =
  self.ctrl.set_owned(owned)

proc owned*(self: ScriptNode): bool =
  self.ctrl.get_owned()

template up*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(UP, steps, me)

template down*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(DOWN, steps, me)

template turn_up*(target: ScriptNode, degrees = 90.0) =
  target.ctrl.begin_turn(UP, degrees, me)

template turn_down*(target: ScriptNode, degrees = 90.0) =
  target.ctrl.begin_turn(DOWN, degrees, me)

proc look_at*(actor: ScriptNode) =
  actor.ctrl.look_at(actor)

proc near*(actor, target: ScriptNode, less_than = 5.0): bool =
  let distance = actor.ctrl.get_position().distance_to(target.ctrl.get_position())
  result = distance < less_than

proc get_position*(actor: ScriptNode): Vector3 =
  actor.ctrl.get_position()

proc get_rotation*(actor: ScriptNode): Vector3 =
  actor.ctrl.get_rotation()

proc stash*(actor: ScriptNode) =
  actor.ctrl.stash()

proc add_stashed*(actor: ScriptNode) =
  actor.ctrl.add_stashed()
