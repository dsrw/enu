
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc disabled*(self: CollisionShape): bool {.gcsafe, locks: 0.}
proc `disabled=`*(self: CollisionShape; val: bool) {.gcsafe, locks: 0.}
proc shape*(self: CollisionShape): Shape {.gcsafe, locks: 0.}
proc `shape=`*(self: CollisionShape; val: Shape) {.gcsafe, locks: 0.}
method shapeChanged*(self: CollisionShape) {.gcsafe, locks: 0, base.}
method updateDebugShape*(self: CollisionShape) {.gcsafe, locks: 0, base.}
proc makeConvexFromBrothers*(self: CollisionShape) {.gcsafe, locks: 0.}
proc resourceChanged*(self: CollisionShape; resource: Resource) {.gcsafe, locks: 0.}
var collisionShapeIsDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disabled(self: CollisionShape): bool =
  if isNil(collisionShapeIsDisabledMethodBind):
    collisionShapeIsDisabledMethodBind = getMethod(cstring"CollisionShape",
        cstring"is_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionShapeIsDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionShapeSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disabled=`(self: CollisionShape; val: bool) =
  if isNil(collisionShapeSetDisabledMethodBind):
    collisionShapeSetDisabledMethodBind = getMethod(cstring"CollisionShape",
        cstring"set_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionShapeSetDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionShapeGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shape(self: CollisionShape): Shape =
  if isNil(collisionShapeGetShapeMethodBind):
    collisionShapeGetShapeMethodBind = getMethod(cstring"CollisionShape",
        cstring"get_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  collisionShapeGetShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var collisionShapeSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shape=`(self: CollisionShape; val: Shape) =
  if isNil(collisionShapeSetShapeMethodBind):
    collisionShapeSetShapeMethodBind = getMethod(cstring"CollisionShape",
        cstring"set_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  collisionShapeSetShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var collisionShapeUnderscoreshapeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method shapeChanged(self: CollisionShape) =
  if isNil(collisionShapeUnderscoreshapeChangedMethodBind):
    collisionShapeUnderscoreshapeChangedMethodBind = getMethod(
        cstring"CollisionShape", cstring"_shape_changed")
  var ptrCallRet: pointer
  collisionShapeUnderscoreshapeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var collisionShapeUnderscoreupdateDebugShapeMethodBind {.threadvar.}: ptr GodotMethodBind
method updateDebugShape(self: CollisionShape) =
  if isNil(collisionShapeUnderscoreupdateDebugShapeMethodBind):
    collisionShapeUnderscoreupdateDebugShapeMethodBind = getMethod(
        cstring"CollisionShape", cstring"_update_debug_shape")
  var ptrCallRet: pointer
  collisionShapeUnderscoreupdateDebugShapeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var collisionShapeMakeConvexFromBrothersMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeConvexFromBrothers(self: CollisionShape) =
  if isNil(collisionShapeMakeConvexFromBrothersMethodBind):
    collisionShapeMakeConvexFromBrothersMethodBind = getMethod(
        cstring"CollisionShape", cstring"make_convex_from_brothers")
  var ptrCallRet: pointer
  collisionShapeMakeConvexFromBrothersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var collisionShapeResourceChangedMethodBind {.threadvar.}: ptr GodotMethodBind
proc resourceChanged(self: CollisionShape; resource: Resource) =
  if isNil(collisionShapeResourceChangedMethodBind):
    collisionShapeResourceChangedMethodBind = getMethod(cstring"CollisionShape",
        cstring"resource_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  collisionShapeResourceChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
