
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  BUILD_SEGMENTS* = 1'i64
  BUILD_SOLIDS* = 0'i64
proc buildMode*(self: CollisionPolygon2D): int64 {.gcsafe, locks: 0.}
proc `buildMode=`*(self: CollisionPolygon2D; val: int64) {.gcsafe, locks: 0.}
proc disabled*(self: CollisionPolygon2D): bool {.gcsafe, locks: 0.}
proc `disabled=`*(self: CollisionPolygon2D; val: bool) {.gcsafe, locks: 0.}
proc oneWayCollision*(self: CollisionPolygon2D): bool {.gcsafe, locks: 0.}
proc `oneWayCollision=`*(self: CollisionPolygon2D; val: bool) {.gcsafe, locks: 0.}
proc oneWayCollisionMargin*(self: CollisionPolygon2D): float64 {.gcsafe, locks: 0.}
proc `oneWayCollisionMargin=`*(self: CollisionPolygon2D; val: float64) {.gcsafe,
    locks: 0.}
proc polygon*(self: CollisionPolygon2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `polygon=`*(self: CollisionPolygon2D; val: PoolVector2Array) {.gcsafe, locks: 0.}
var collisionPolygon2DGetBuildModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc buildMode(self: CollisionPolygon2D): int64 =
  if isNil(collisionPolygon2DGetBuildModeMethodBind):
    collisionPolygon2DGetBuildModeMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"get_build_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionPolygon2DGetBuildModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var collisionPolygon2DSetBuildModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `buildMode=`(self: CollisionPolygon2D; val: int64) =
  if isNil(collisionPolygon2DSetBuildModeMethodBind):
    collisionPolygon2DSetBuildModeMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"set_build_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionPolygon2DSetBuildModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionPolygon2DIsDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disabled(self: CollisionPolygon2D): bool =
  if isNil(collisionPolygon2DIsDisabledMethodBind):
    collisionPolygon2DIsDisabledMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"is_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionPolygon2DIsDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionPolygon2DSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disabled=`(self: CollisionPolygon2D; val: bool) =
  if isNil(collisionPolygon2DSetDisabledMethodBind):
    collisionPolygon2DSetDisabledMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"set_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionPolygon2DSetDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionPolygon2DIsOneWayCollisionEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneWayCollision(self: CollisionPolygon2D): bool =
  if isNil(collisionPolygon2DIsOneWayCollisionEnabledMethodBind):
    collisionPolygon2DIsOneWayCollisionEnabledMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"is_one_way_collision_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionPolygon2DIsOneWayCollisionEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var collisionPolygon2DSetOneWayCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneWayCollision=`(self: CollisionPolygon2D; val: bool) =
  if isNil(collisionPolygon2DSetOneWayCollisionMethodBind):
    collisionPolygon2DSetOneWayCollisionMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"set_one_way_collision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionPolygon2DSetOneWayCollisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionPolygon2DGetOneWayCollisionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneWayCollisionMargin(self: CollisionPolygon2D): float64 =
  if isNil(collisionPolygon2DGetOneWayCollisionMarginMethodBind):
    collisionPolygon2DGetOneWayCollisionMarginMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"get_one_way_collision_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionPolygon2DGetOneWayCollisionMarginMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var collisionPolygon2DSetOneWayCollisionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneWayCollisionMargin=`(self: CollisionPolygon2D; val: float64) =
  if isNil(collisionPolygon2DSetOneWayCollisionMarginMethodBind):
    collisionPolygon2DSetOneWayCollisionMarginMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"set_one_way_collision_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionPolygon2DSetOneWayCollisionMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionPolygon2DGetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygon(self: CollisionPolygon2D): PoolVector2Array =
  if isNil(collisionPolygon2DGetPolygonMethodBind):
    collisionPolygon2DGetPolygonMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"get_polygon")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  collisionPolygon2DGetPolygonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var collisionPolygon2DSetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygon=`(self: CollisionPolygon2D; val: PoolVector2Array) =
  if isNil(collisionPolygon2DSetPolygonMethodBind):
    collisionPolygon2DSetPolygonMethodBind = getMethod(
        cstring"CollisionPolygon2D", cstring"set_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  collisionPolygon2DSetPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
