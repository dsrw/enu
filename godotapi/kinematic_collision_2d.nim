
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc collider*(self: KinematicCollision2D): Object {.gcsafe, locks: 0.}
proc `collider=`*(self: KinematicCollision2D; val: Object) {.gcsafe, locks: 0.}
proc colliderId*(self: KinematicCollision2D): int64 {.gcsafe, locks: 0.}
proc `colliderId=`*(self: KinematicCollision2D; val: int64) {.gcsafe, locks: 0.}
proc colliderMetadata*(self: KinematicCollision2D): Variant {.gcsafe, locks: 0.}
proc `colliderMetadata=`*(self: KinematicCollision2D; val: Variant) {.gcsafe, locks: 0.}
proc colliderShape*(self: KinematicCollision2D): Object {.gcsafe, locks: 0.}
proc `colliderShape=`*(self: KinematicCollision2D; val: Object) {.gcsafe, locks: 0.}
proc colliderShapeIndex*(self: KinematicCollision2D): int64 {.gcsafe, locks: 0.}
proc `colliderShapeIndex=`*(self: KinematicCollision2D; val: int64) {.gcsafe, locks: 0.}
proc colliderVelocity*(self: KinematicCollision2D): Vector2 {.gcsafe, locks: 0.}
proc `colliderVelocity=`*(self: KinematicCollision2D; val: Vector2) {.gcsafe, locks: 0.}
proc localShape*(self: KinematicCollision2D): Object {.gcsafe, locks: 0.}
proc `localShape=`*(self: KinematicCollision2D; val: Object) {.gcsafe, locks: 0.}
proc normal*(self: KinematicCollision2D): Vector2 {.gcsafe, locks: 0.}
proc `normal=`*(self: KinematicCollision2D; val: Vector2) {.gcsafe, locks: 0.}
proc position*(self: KinematicCollision2D): Vector2 {.gcsafe, locks: 0.}
proc `position=`*(self: KinematicCollision2D; val: Vector2) {.gcsafe, locks: 0.}
proc remainder*(self: KinematicCollision2D): Vector2 {.gcsafe, locks: 0.}
proc `remainder=`*(self: KinematicCollision2D; val: Vector2) {.gcsafe, locks: 0.}
proc travel*(self: KinematicCollision2D): Vector2 {.gcsafe, locks: 0.}
proc `travel=`*(self: KinematicCollision2D; val: Vector2) {.gcsafe, locks: 0.}
var kinematicCollision2DGetColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc collider(self: KinematicCollision2D): Object =
  if isNil(kinematicCollision2DGetColliderMethodBind):
    kinematicCollision2DGetColliderMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_collider")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicCollision2DGetColliderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var kinematicCollision2DMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collider=`(self: KinematicCollision2D; val: Object) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
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
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetColliderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderId(self: KinematicCollision2D): int64 =
  if isNil(kinematicCollision2DGetColliderIdMethodBind):
    kinematicCollision2DGetColliderIdMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_collider_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollision2DGetColliderIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `colliderId=`(self: KinematicCollision2D; val: int64) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetColliderMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderMetadata(self: KinematicCollision2D): Variant =
  if isNil(kinematicCollision2DGetColliderMetadataMethodBind):
    kinematicCollision2DGetColliderMetadataMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_collider_metadata")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  kinematicCollision2DGetColliderMetadataMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = newVariant(ptrCallVal)

proc `colliderMetadata=`(self: KinematicCollision2D; val: Variant) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotVariant
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderShape(self: KinematicCollision2D): Object =
  if isNil(kinematicCollision2DGetColliderShapeMethodBind):
    kinematicCollision2DGetColliderShapeMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_collider_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicCollision2DGetColliderShapeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `colliderShape=`(self: KinematicCollision2D; val: Object) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
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
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetColliderShapeIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderShapeIndex(self: KinematicCollision2D): int64 =
  if isNil(kinematicCollision2DGetColliderShapeIndexMethodBind):
    kinematicCollision2DGetColliderShapeIndexMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_collider_shape_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollision2DGetColliderShapeIndexMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `colliderShapeIndex=`(self: KinematicCollision2D; val: int64) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetColliderVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderVelocity(self: KinematicCollision2D): Vector2 =
  if isNil(kinematicCollision2DGetColliderVelocityMethodBind):
    kinematicCollision2DGetColliderVelocityMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_collider_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollision2DGetColliderVelocityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `colliderVelocity=`(self: KinematicCollision2D; val: Vector2) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetLocalShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc localShape(self: KinematicCollision2D): Object =
  if isNil(kinematicCollision2DGetLocalShapeMethodBind):
    kinematicCollision2DGetLocalShapeMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_local_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicCollision2DGetLocalShapeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `localShape=`(self: KinematicCollision2D; val: Object) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
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
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc normal(self: KinematicCollision2D): Vector2 =
  if isNil(kinematicCollision2DGetNormalMethodBind):
    kinematicCollision2DGetNormalMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollision2DGetNormalMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `normal=`(self: KinematicCollision2D; val: Vector2) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc position(self: KinematicCollision2D): Vector2 =
  if isNil(kinematicCollision2DGetPositionMethodBind):
    kinematicCollision2DGetPositionMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollision2DGetPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `position=`(self: KinematicCollision2D; val: Vector2) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetRemainderMethodBind {.threadvar.}: ptr GodotMethodBind
proc remainder(self: KinematicCollision2D): Vector2 =
  if isNil(kinematicCollision2DGetRemainderMethodBind):
    kinematicCollision2DGetRemainderMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_remainder")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollision2DGetRemainderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `remainder=`(self: KinematicCollision2D; val: Vector2) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicCollision2DGetTravelMethodBind {.threadvar.}: ptr GodotMethodBind
proc travel(self: KinematicCollision2D): Vector2 =
  if isNil(kinematicCollision2DGetTravelMethodBind):
    kinematicCollision2DGetTravelMethodBind = getMethod(
        cstring"KinematicCollision2D", cstring"get_travel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicCollision2DGetTravelMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `travel=`(self: KinematicCollision2D; val: Vector2) =
  if isNil(kinematicCollision2DMethodBind):
    kinematicCollision2DMethodBind = getMethod(cstring"KinematicCollision2D",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicCollision2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
