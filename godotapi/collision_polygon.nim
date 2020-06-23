
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc depth*(self: CollisionPolygon): float64 {.gcsafe, locks: 0.}
proc `depth=`*(self: CollisionPolygon; val: float64) {.gcsafe, locks: 0.}
proc disabled*(self: CollisionPolygon): bool {.gcsafe, locks: 0.}
proc `disabled=`*(self: CollisionPolygon; val: bool) {.gcsafe, locks: 0.}
proc polygon*(self: CollisionPolygon): PoolVector2Array {.gcsafe, locks: 0.}
proc `polygon=`*(self: CollisionPolygon; val: PoolVector2Array) {.gcsafe, locks: 0.}
method isEditable3dPolygon*(self: CollisionPolygon): bool {.gcsafe, locks: 0, base.}
var collisionPolygonGetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc depth(self: CollisionPolygon): float64 =
  if isNil(collisionPolygonGetDepthMethodBind):
    collisionPolygonGetDepthMethodBind = getMethod(cstring"CollisionPolygon",
        cstring"get_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionPolygonGetDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionPolygonSetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depth=`(self: CollisionPolygon; val: float64) =
  if isNil(collisionPolygonSetDepthMethodBind):
    collisionPolygonSetDepthMethodBind = getMethod(cstring"CollisionPolygon",
        cstring"set_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionPolygonSetDepthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var collisionPolygonIsDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disabled(self: CollisionPolygon): bool =
  if isNil(collisionPolygonIsDisabledMethodBind):
    collisionPolygonIsDisabledMethodBind = getMethod(cstring"CollisionPolygon",
        cstring"is_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionPolygonIsDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionPolygonSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disabled=`(self: CollisionPolygon; val: bool) =
  if isNil(collisionPolygonSetDisabledMethodBind):
    collisionPolygonSetDisabledMethodBind = getMethod(cstring"CollisionPolygon",
        cstring"set_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionPolygonSetDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionPolygonGetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygon(self: CollisionPolygon): PoolVector2Array =
  if isNil(collisionPolygonGetPolygonMethodBind):
    collisionPolygonGetPolygonMethodBind = getMethod(cstring"CollisionPolygon",
        cstring"get_polygon")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  collisionPolygonGetPolygonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var collisionPolygonSetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygon=`(self: CollisionPolygon; val: PoolVector2Array) =
  if isNil(collisionPolygonSetPolygonMethodBind):
    collisionPolygonSetPolygonMethodBind = getMethod(cstring"CollisionPolygon",
        cstring"set_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  collisionPolygonSetPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionPolygonUnderscoreisEditable3dPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
method isEditable3dPolygon(self: CollisionPolygon): bool =
  if isNil(collisionPolygonUnderscoreisEditable3dPolygonMethodBind):
    collisionPolygonUnderscoreisEditable3dPolygonMethodBind = getMethod(
        cstring"CollisionPolygon", cstring"_is_editable_3d_polygon")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionPolygonUnderscoreisEditable3dPolygonMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
