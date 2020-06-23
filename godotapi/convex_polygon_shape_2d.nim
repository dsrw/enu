
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc points*(self: ConvexPolygonShape2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `points=`*(self: ConvexPolygonShape2D; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc setPointCloud*(self: ConvexPolygonShape2D; pointCloud: PoolVector2Array) {.
    gcsafe, locks: 0.}
var convexPolygonShape2DGetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc points(self: ConvexPolygonShape2D): PoolVector2Array =
  if isNil(convexPolygonShape2DGetPointsMethodBind):
    convexPolygonShape2DGetPointsMethodBind = getMethod(
        cstring"ConvexPolygonShape2D", cstring"get_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  convexPolygonShape2DGetPointsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var convexPolygonShape2DSetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `points=`(self: ConvexPolygonShape2D; val: PoolVector2Array) =
  if isNil(convexPolygonShape2DSetPointsMethodBind):
    convexPolygonShape2DSetPointsMethodBind = getMethod(
        cstring"ConvexPolygonShape2D", cstring"set_points")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  convexPolygonShape2DSetPointsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var convexPolygonShape2DSetPointCloudMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointCloud(self: ConvexPolygonShape2D; pointCloud: PoolVector2Array) =
  if isNil(convexPolygonShape2DSetPointCloudMethodBind):
    convexPolygonShape2DSetPointCloudMethodBind = getMethod(
        cstring"ConvexPolygonShape2D", cstring"set_point_cloud")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = pointCloud.godotPoolVector2Array
  var ptrCallRet: pointer
  convexPolygonShape2DSetPointCloudMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
