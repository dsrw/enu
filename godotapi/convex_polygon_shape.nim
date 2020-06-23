
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc points*(self: ConvexPolygonShape): PoolVector3Array {.gcsafe, locks: 0.}
proc `points=`*(self: ConvexPolygonShape; val: PoolVector3Array) {.gcsafe, locks: 0.}
var convexPolygonShapeGetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc points(self: ConvexPolygonShape): PoolVector3Array =
  if isNil(convexPolygonShapeGetPointsMethodBind):
    convexPolygonShapeGetPointsMethodBind = getMethod(
        cstring"ConvexPolygonShape", cstring"get_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  convexPolygonShapeGetPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var convexPolygonShapeSetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `points=`(self: ConvexPolygonShape; val: PoolVector3Array) =
  if isNil(convexPolygonShapeSetPointsMethodBind):
    convexPolygonShapeSetPointsMethodBind = getMethod(
        cstring"ConvexPolygonShape", cstring"set_points")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  convexPolygonShapeSetPointsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
