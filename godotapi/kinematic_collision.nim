
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc collider*(self: KinematicCollision): Object {.gcsafe, locks: 0.}
proc `collider=`*(self: KinematicCollision; val: Object) {.gcsafe, locks: 0.}
proc colliderId*(self: KinematicCollision): int64 {.gcsafe, locks: 0.}
proc `colliderId=`*(self: KinematicCollision; val: int64) {.gcsafe, locks: 0.}
proc colliderMetadata*(self: KinematicCollision): Variant {.gcsafe, locks: 0.}
proc `colliderMetadata=`*(self: KinematicCollision; val: Variant) {.gcsafe, locks: 0.}
proc colliderShape*(self: KinematicCollision): Object {.gcsafe, locks: 0.}
proc `colliderShape=`*(self: KinematicCollision; val: Object) {.gcsafe, locks: 0.}
proc colliderShapeIndex*(self: KinematicCollision): int64 {.gcsafe, locks: 0.}
proc `colliderShapeIndex=`*(self: KinematicCollision; val: int64) {.gcsafe, locks: 0.}
proc colliderVelocity*(self: KinematicCollision): Vector3 {.gcsafe, locks: 0.}
proc `colliderVelocity=`*(self: KinematicCollision; val: Vector3) {.gcsafe, locks: 0.}
proc localShape*(self: KinematicCollision): Object {.gcsafe, locks: 0.}
proc `localShape=`*(self: KinematicCollision; val: Object) {.gcsafe, locks: 0.}
proc normal*(self: KinematicCollision): Vector3 {.gcsafe, locks: 0.}
proc `normal=`*(self: KinematicCollision; val: Vector3) {.gcsafe, locks: 0.}
proc position*(self: KinematicCollision): Vector3 {.gcsafe, locks: 0.}
proc `position=`*(self: KinematicCollision; val: Vector3) {.gcsafe, locks: 0.}
proc remainder*(self: KinematicCollision): Vector3 {.gcsafe, locks: 0.}
proc `remainder=`*(self: KinematicCollision; val: Vector3) {.gcsafe, locks: 0.}
proc travel*(self: KinematicCollision): Vector3 {.gcsafe, locks: 0.}
proc `travel=`*(self: KinematicCollision; val: Vector3) {.gcsafe, locks: 0.}
var kinematicCollisionGetColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc collider(self: KinematicCollision): Object =
  if isNil(kinematicCollisionGetColliderMethodBind):
    kinematicCollisionGetColliderMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_collider")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicCollisionGetColliderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var kinematicCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collider=`(self: KinematicCollision; val: Object) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetColliderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderId(self: KinematicCollision): int64 =
  if isNil(kinematicCollisionGetColliderIdMethodBind):
    kinematicCollisionGetColliderIdMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_collider_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollisionGetColliderIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `colliderId=`(self: KinematicCollision; val: int64) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetColliderMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderMetadata(self: KinematicCollision): Variant =
  if isNil(kinematicCollisionGetColliderMetadataMethodBind):
    kinematicCollisionGetColliderMetadataMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_collider_metadata")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  kinematicCollisionGetColliderMetadataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newVariant(ptrCallVal)

proc `colliderMetadata=`(self: KinematicCollision; val: Variant) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotVariant
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderShape(self: KinematicCollision): Object =
  if isNil(kinematicCollisionGetColliderShapeMethodBind):
    kinematicCollisionGetColliderShapeMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_collider_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicCollisionGetColliderShapeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `colliderShape=`(self: KinematicCollision; val: Object) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetColliderShapeIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderShapeIndex(self: KinematicCollision): int64 =
  if isNil(kinematicCollisionGetColliderShapeIndexMethodBind):
    kinematicCollisionGetColliderShapeIndexMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_collider_shape_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollisionGetColliderShapeIndexMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `colliderShapeIndex=`(self: KinematicCollision; val: int64) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetColliderVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderVelocity(self: KinematicCollision): Vector3 =
  if isNil(kinematicCollisionGetColliderVelocityMethodBind):
    kinematicCollisionGetColliderVelocityMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_collider_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollisionGetColliderVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `colliderVelocity=`(self: KinematicCollision; val: Vector3) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetLocalShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc localShape(self: KinematicCollision): Object =
  if isNil(kinematicCollisionGetLocalShapeMethodBind):
    kinematicCollisionGetLocalShapeMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_local_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicCollisionGetLocalShapeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `localShape=`(self: KinematicCollision; val: Object) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc normal(self: KinematicCollision): Vector3 =
  if isNil(kinematicCollisionGetNormalMethodBind):
    kinematicCollisionGetNormalMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollisionGetNormalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

proc `normal=`(self: KinematicCollision; val: Vector3) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc position(self: KinematicCollision): Vector3 =
  if isNil(kinematicCollisionGetPositionMethodBind):
    kinematicCollisionGetPositionMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollisionGetPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `position=`(self: KinematicCollision; val: Vector3) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetRemainderMethodBind {.threadvar.}: ptr GodotMethodBind
proc remainder(self: KinematicCollision): Vector3 =
  if isNil(kinematicCollisionGetRemainderMethodBind):
    kinematicCollisionGetRemainderMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_remainder")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollisionGetRemainderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `remainder=`(self: KinematicCollision; val: Vector3) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var kinematicCollisionGetTravelMethodBind {.threadvar.}: ptr GodotMethodBind
proc travel(self: KinematicCollision): Vector3 =
  if isNil(kinematicCollisionGetTravelMethodBind):
    kinematicCollisionGetTravelMethodBind = getMethod(
        cstring"KinematicCollision", cstring"get_travel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollisionGetTravelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

proc `travel=`(self: KinematicCollision; val: Vector3) =
  if isNil(kinematicCollisionMethodBind):
    kinematicCollisionMethodBind = getMethod(cstring"KinematicCollision",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
