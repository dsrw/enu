
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc collider*(self: Physics2DTestMotionResult): Object {.gcsafe, locks: 0.}
proc `collider=`*(self: Physics2DTestMotionResult; val: Object) {.gcsafe, locks: 0.}
proc colliderId*(self: Physics2DTestMotionResult): int64 {.gcsafe, locks: 0.}
proc `colliderId=`*(self: Physics2DTestMotionResult; val: int64) {.gcsafe, locks: 0.}
proc colliderRid*(self: Physics2DTestMotionResult): RID {.gcsafe, locks: 0.}
proc `colliderRid=`*(self: Physics2DTestMotionResult; val: RID) {.gcsafe, locks: 0.}
proc colliderShape*(self: Physics2DTestMotionResult): int64 {.gcsafe, locks: 0.}
proc `colliderShape=`*(self: Physics2DTestMotionResult; val: int64) {.gcsafe, locks: 0.}
proc colliderVelocity*(self: Physics2DTestMotionResult): Vector2 {.gcsafe, locks: 0.}
proc `colliderVelocity=`*(self: Physics2DTestMotionResult; val: Vector2) {.gcsafe,
    locks: 0.}
proc collisionNormal*(self: Physics2DTestMotionResult): Vector2 {.gcsafe, locks: 0.}
proc `collisionNormal=`*(self: Physics2DTestMotionResult; val: Vector2) {.gcsafe,
    locks: 0.}
proc collisionPoint*(self: Physics2DTestMotionResult): Vector2 {.gcsafe, locks: 0.}
proc `collisionPoint=`*(self: Physics2DTestMotionResult; val: Vector2) {.gcsafe,
    locks: 0.}
proc motion*(self: Physics2DTestMotionResult): Vector2 {.gcsafe, locks: 0.}
proc `motion=`*(self: Physics2DTestMotionResult; val: Vector2) {.gcsafe, locks: 0.}
proc motionRemainder*(self: Physics2DTestMotionResult): Vector2 {.gcsafe, locks: 0.}
proc `motionRemainder=`*(self: Physics2DTestMotionResult; val: Vector2) {.gcsafe,
    locks: 0.}
var physics2DTestMotionResultGetColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc collider(self: Physics2DTestMotionResult): Object =
  if isNil(physics2DTestMotionResultGetColliderMethodBind):
    physics2DTestMotionResultGetColliderMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_collider")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physics2DTestMotionResultGetColliderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physics2DTestMotionResultMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collider=`(self: Physics2DTestMotionResult; val: Object) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetColliderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderId(self: Physics2DTestMotionResult): int64 =
  if isNil(physics2DTestMotionResultGetColliderIdMethodBind):
    physics2DTestMotionResultGetColliderIdMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_collider_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetColliderIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `colliderId=`(self: Physics2DTestMotionResult; val: int64) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetColliderRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderRid(self: Physics2DTestMotionResult): RID =
  if isNil(physics2DTestMotionResultGetColliderRidMethodBind):
    physics2DTestMotionResultGetColliderRidMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_collider_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetColliderRidMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `colliderRid=`(self: Physics2DTestMotionResult; val: RID) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderShape(self: Physics2DTestMotionResult): int64 =
  if isNil(physics2DTestMotionResultGetColliderShapeMethodBind):
    physics2DTestMotionResultGetColliderShapeMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_collider_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetColliderShapeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `colliderShape=`(self: Physics2DTestMotionResult; val: int64) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetColliderVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderVelocity(self: Physics2DTestMotionResult): Vector2 =
  if isNil(physics2DTestMotionResultGetColliderVelocityMethodBind):
    physics2DTestMotionResultGetColliderVelocityMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_collider_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetColliderVelocityMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

proc `colliderVelocity=`(self: Physics2DTestMotionResult; val: Vector2) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetCollisionNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionNormal(self: Physics2DTestMotionResult): Vector2 =
  if isNil(physics2DTestMotionResultGetCollisionNormalMethodBind):
    physics2DTestMotionResultGetCollisionNormalMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_collision_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetCollisionNormalMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

proc `collisionNormal=`(self: Physics2DTestMotionResult; val: Vector2) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetCollisionPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionPoint(self: Physics2DTestMotionResult): Vector2 =
  if isNil(physics2DTestMotionResultGetCollisionPointMethodBind):
    physics2DTestMotionResultGetCollisionPointMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_collision_point")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetCollisionPointMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `collisionPoint=`(self: Physics2DTestMotionResult; val: Vector2) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc motion(self: Physics2DTestMotionResult): Vector2 =
  if isNil(physics2DTestMotionResultGetMotionMethodBind):
    physics2DTestMotionResultGetMotionMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_motion")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetMotionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `motion=`(self: Physics2DTestMotionResult; val: Vector2) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DTestMotionResultGetMotionRemainderMethodBind {.threadvar.}: ptr GodotMethodBind
proc motionRemainder(self: Physics2DTestMotionResult): Vector2 =
  if isNil(physics2DTestMotionResultGetMotionRemainderMethodBind):
    physics2DTestMotionResultGetMotionRemainderMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"get_motion_remainder")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DTestMotionResultGetMotionRemainderMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

proc `motionRemainder=`(self: Physics2DTestMotionResult; val: Vector2) =
  if isNil(physics2DTestMotionResultMethodBind):
    physics2DTestMotionResultMethodBind = getMethod(
        cstring"Physics2DTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DTestMotionResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
