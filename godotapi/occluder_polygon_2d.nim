
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  CULL_CLOCKWISE* = 1'i64
  CULL_COUNTER_CLOCKWISE* = 2'i64
  CULL_DISABLED* = 0'i64
proc closed*(self: OccluderPolygon2D): bool {.gcsafe, locks: 0.}
proc `closed=`*(self: OccluderPolygon2D; val: bool) {.gcsafe, locks: 0.}
proc cullMode*(self: OccluderPolygon2D): int64 {.gcsafe, locks: 0.}
proc `cullMode=`*(self: OccluderPolygon2D; val: int64) {.gcsafe, locks: 0.}
proc polygon*(self: OccluderPolygon2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `polygon=`*(self: OccluderPolygon2D; val: PoolVector2Array) {.gcsafe, locks: 0.}
var occluderPolygon2DIsClosedMethodBind {.threadvar.}: ptr GodotMethodBind
proc closed(self: OccluderPolygon2D): bool =
  if isNil(occluderPolygon2DIsClosedMethodBind):
    occluderPolygon2DIsClosedMethodBind = getMethod(cstring"OccluderPolygon2D",
        cstring"is_closed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  occluderPolygon2DIsClosedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var occluderPolygon2DSetClosedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `closed=`(self: OccluderPolygon2D; val: bool) =
  if isNil(occluderPolygon2DSetClosedMethodBind):
    occluderPolygon2DSetClosedMethodBind = getMethod(cstring"OccluderPolygon2D",
        cstring"set_closed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  occluderPolygon2DSetClosedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var occluderPolygon2DGetCullModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cullMode(self: OccluderPolygon2D): int64 =
  if isNil(occluderPolygon2DGetCullModeMethodBind):
    occluderPolygon2DGetCullModeMethodBind = getMethod(
        cstring"OccluderPolygon2D", cstring"get_cull_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  occluderPolygon2DGetCullModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var occluderPolygon2DSetCullModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cullMode=`(self: OccluderPolygon2D; val: int64) =
  if isNil(occluderPolygon2DSetCullModeMethodBind):
    occluderPolygon2DSetCullModeMethodBind = getMethod(
        cstring"OccluderPolygon2D", cstring"set_cull_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  occluderPolygon2DSetCullModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var occluderPolygon2DGetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygon(self: OccluderPolygon2D): PoolVector2Array =
  if isNil(occluderPolygon2DGetPolygonMethodBind):
    occluderPolygon2DGetPolygonMethodBind = getMethod(cstring"OccluderPolygon2D",
        cstring"get_polygon")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  occluderPolygon2DGetPolygonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var occluderPolygon2DSetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygon=`(self: OccluderPolygon2D; val: PoolVector2Array) =
  if isNil(occluderPolygon2DSetPolygonMethodBind):
    occluderPolygon2DSetPolygonMethodBind = getMethod(cstring"OccluderPolygon2D",
        cstring"set_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  occluderPolygon2DSetPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
