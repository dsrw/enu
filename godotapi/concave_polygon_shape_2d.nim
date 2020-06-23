
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc segments*(self: ConcavePolygonShape2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `segments=`*(self: ConcavePolygonShape2D; val: PoolVector2Array) {.gcsafe,
    locks: 0.}
var concavePolygonShape2DGetSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc segments(self: ConcavePolygonShape2D): PoolVector2Array =
  if isNil(concavePolygonShape2DGetSegmentsMethodBind):
    concavePolygonShape2DGetSegmentsMethodBind = getMethod(
        cstring"ConcavePolygonShape2D", cstring"get_segments")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  concavePolygonShape2DGetSegmentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var concavePolygonShape2DSetSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `segments=`(self: ConcavePolygonShape2D; val: PoolVector2Array) =
  if isNil(concavePolygonShape2DSetSegmentsMethodBind):
    concavePolygonShape2DSetSegmentsMethodBind = getMethod(
        cstring"ConcavePolygonShape2D", cstring"set_segments")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  concavePolygonShape2DSetSegmentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
