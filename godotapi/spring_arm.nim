
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc collisionMask*(self: SpringArm): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: SpringArm; val: int64) {.gcsafe, locks: 0.}
proc margin*(self: SpringArm): float64 {.gcsafe, locks: 0.}
proc `margin=`*(self: SpringArm; val: float64) {.gcsafe, locks: 0.}
proc shape*(self: SpringArm): Shape {.gcsafe, locks: 0.}
proc `shape=`*(self: SpringArm; val: Shape) {.gcsafe, locks: 0.}
proc springLength*(self: SpringArm): float64 {.gcsafe, locks: 0.}
proc `springLength=`*(self: SpringArm; val: float64) {.gcsafe, locks: 0.}
proc addExcludedObject*(self: SpringArm; RID: RID) {.gcsafe, locks: 0.}
proc clearExcludedObjects*(self: SpringArm) {.gcsafe, locks: 0.}
proc getHitLength*(self: SpringArm): float64 {.gcsafe, locks: 0.}
proc removeExcludedObject*(self: SpringArm; RID: RID): bool {.gcsafe, locks: 0.}
var springArmGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: SpringArm): int64 =
  if isNil(springArmGetCollisionMaskMethodBind):
    springArmGetCollisionMaskMethodBind = getMethod(cstring"SpringArm",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  springArmGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var springArmSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: SpringArm; val: int64) =
  if isNil(springArmSetCollisionMaskMethodBind):
    springArmSetCollisionMaskMethodBind = getMethod(cstring"SpringArm",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  springArmSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var springArmGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc margin(self: SpringArm): float64 =
  if isNil(springArmGetMarginMethodBind):
    springArmGetMarginMethodBind = getMethod(cstring"SpringArm",
        cstring"get_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  springArmGetMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var springArmSetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `margin=`(self: SpringArm; val: float64) =
  if isNil(springArmSetMarginMethodBind):
    springArmSetMarginMethodBind = getMethod(cstring"SpringArm",
        cstring"set_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  springArmSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var springArmGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shape(self: SpringArm): Shape =
  if isNil(springArmGetShapeMethodBind):
    springArmGetShapeMethodBind = getMethod(cstring"SpringArm", cstring"get_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  springArmGetShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var springArmSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shape=`(self: SpringArm; val: Shape) =
  if isNil(springArmSetShapeMethodBind):
    springArmSetShapeMethodBind = getMethod(cstring"SpringArm", cstring"set_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  springArmSetShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var springArmGetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc springLength(self: SpringArm): float64 =
  if isNil(springArmGetLengthMethodBind):
    springArmGetLengthMethodBind = getMethod(cstring"SpringArm",
        cstring"get_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  springArmGetLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var springArmSetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `springLength=`(self: SpringArm; val: float64) =
  if isNil(springArmSetLengthMethodBind):
    springArmSetLengthMethodBind = getMethod(cstring"SpringArm",
        cstring"set_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  springArmSetLengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var springArmAddExcludedObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc addExcludedObject(self: SpringArm; RID: RID) =
  if isNil(springArmAddExcludedObjectMethodBind):
    springArmAddExcludedObjectMethodBind = getMethod(cstring"SpringArm",
        cstring"add_excluded_object")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(RID)
  var ptrCallRet: pointer
  springArmAddExcludedObjectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var springArmClearExcludedObjectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearExcludedObjects(self: SpringArm) =
  if isNil(springArmClearExcludedObjectsMethodBind):
    springArmClearExcludedObjectsMethodBind = getMethod(cstring"SpringArm",
        cstring"clear_excluded_objects")
  var ptrCallRet: pointer
  springArmClearExcludedObjectsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var springArmGetHitLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHitLength(self: SpringArm): float64 =
  if isNil(springArmGetHitLengthMethodBind):
    springArmGetHitLengthMethodBind = getMethod(cstring"SpringArm",
        cstring"get_hit_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  springArmGetHitLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var springArmRemoveExcludedObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeExcludedObject(self: SpringArm; RID: RID): bool =
  if isNil(springArmRemoveExcludedObjectMethodBind):
    springArmRemoveExcludedObjectMethodBind = getMethod(cstring"SpringArm",
        cstring"remove_excluded_object")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(RID)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  springArmRemoveExcludedObjectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
