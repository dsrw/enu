
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc disabled*(self: CollisionShape2D): bool {.gcsafe, locks: 0.}
proc `disabled=`*(self: CollisionShape2D; val: bool) {.gcsafe, locks: 0.}
proc oneWayCollision*(self: CollisionShape2D): bool {.gcsafe, locks: 0.}
proc `oneWayCollision=`*(self: CollisionShape2D; val: bool) {.gcsafe, locks: 0.}
proc oneWayCollisionMargin*(self: CollisionShape2D): float64 {.gcsafe, locks: 0.}
proc `oneWayCollisionMargin=`*(self: CollisionShape2D; val: float64) {.gcsafe,
    locks: 0.}
proc shape*(self: CollisionShape2D): Shape2D {.gcsafe, locks: 0.}
proc `shape=`*(self: CollisionShape2D; val: Shape2D) {.gcsafe, locks: 0.}
method shapeChanged*(self: CollisionShape2D) {.gcsafe, locks: 0, base.}
var collisionShape2DIsDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disabled(self: CollisionShape2D): bool =
  if isNil(collisionShape2DIsDisabledMethodBind):
    collisionShape2DIsDisabledMethodBind = getMethod(cstring"CollisionShape2D",
        cstring"is_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionShape2DIsDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionShape2DSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disabled=`(self: CollisionShape2D; val: bool) =
  if isNil(collisionShape2DSetDisabledMethodBind):
    collisionShape2DSetDisabledMethodBind = getMethod(cstring"CollisionShape2D",
        cstring"set_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionShape2DSetDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionShape2DIsOneWayCollisionEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneWayCollision(self: CollisionShape2D): bool =
  if isNil(collisionShape2DIsOneWayCollisionEnabledMethodBind):
    collisionShape2DIsOneWayCollisionEnabledMethodBind = getMethod(
        cstring"CollisionShape2D", cstring"is_one_way_collision_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionShape2DIsOneWayCollisionEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var collisionShape2DSetOneWayCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneWayCollision=`(self: CollisionShape2D; val: bool) =
  if isNil(collisionShape2DSetOneWayCollisionMethodBind):
    collisionShape2DSetOneWayCollisionMethodBind = getMethod(
        cstring"CollisionShape2D", cstring"set_one_way_collision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionShape2DSetOneWayCollisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionShape2DGetOneWayCollisionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneWayCollisionMargin(self: CollisionShape2D): float64 =
  if isNil(collisionShape2DGetOneWayCollisionMarginMethodBind):
    collisionShape2DGetOneWayCollisionMarginMethodBind = getMethod(
        cstring"CollisionShape2D", cstring"get_one_way_collision_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionShape2DGetOneWayCollisionMarginMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var collisionShape2DSetOneWayCollisionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneWayCollisionMargin=`(self: CollisionShape2D; val: float64) =
  if isNil(collisionShape2DSetOneWayCollisionMarginMethodBind):
    collisionShape2DSetOneWayCollisionMarginMethodBind = getMethod(
        cstring"CollisionShape2D", cstring"set_one_way_collision_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionShape2DSetOneWayCollisionMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionShape2DGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shape(self: CollisionShape2D): Shape2D =
  if isNil(collisionShape2DGetShapeMethodBind):
    collisionShape2DGetShapeMethodBind = getMethod(cstring"CollisionShape2D",
        cstring"get_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  collisionShape2DGetShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var collisionShape2DSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shape=`(self: CollisionShape2D; val: Shape2D) =
  if isNil(collisionShape2DSetShapeMethodBind):
    collisionShape2DSetShapeMethodBind = getMethod(cstring"CollisionShape2D",
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
  collisionShape2DSetShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var collisionShape2DUnderscoreshapeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method shapeChanged(self: CollisionShape2D) =
  if isNil(collisionShape2DUnderscoreshapeChangedMethodBind):
    collisionShape2DUnderscoreshapeChangedMethodBind = getMethod(
        cstring"CollisionShape2D", cstring"_shape_changed")
  var ptrCallRet: pointer
  collisionShape2DUnderscoreshapeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
