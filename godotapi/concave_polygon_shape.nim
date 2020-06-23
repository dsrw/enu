
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc data*(self: ConcavePolygonShape): PoolVector3Array {.gcsafe, locks: 0.}
proc `data=`*(self: ConcavePolygonShape; val: PoolVector3Array) {.gcsafe, locks: 0.}
var concavePolygonShapeGetFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: ConcavePolygonShape): PoolVector3Array =
  if isNil(concavePolygonShapeGetFacesMethodBind):
    concavePolygonShapeGetFacesMethodBind = getMethod(
        cstring"ConcavePolygonShape", cstring"get_faces")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  concavePolygonShapeGetFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var concavePolygonShapeSetFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: ConcavePolygonShape; val: PoolVector3Array) =
  if isNil(concavePolygonShapeSetFacesMethodBind):
    concavePolygonShapeSetFacesMethodBind = getMethod(
        cstring"ConcavePolygonShape", cstring"set_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  concavePolygonShapeSetFacesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
