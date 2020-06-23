
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc worldScale*(self: ARVROrigin): float64 {.gcsafe, locks: 0.}
proc `worldScale=`*(self: ARVROrigin; val: float64) {.gcsafe, locks: 0.}
var aRVROriginGetWorldScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc worldScale(self: ARVROrigin): float64 =
  if isNil(aRVROriginGetWorldScaleMethodBind):
    aRVROriginGetWorldScaleMethodBind = getMethod(cstring"ARVROrigin",
        cstring"get_world_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVROriginGetWorldScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVROriginSetWorldScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `worldScale=`(self: ARVROrigin; val: float64) =
  if isNil(aRVROriginSetWorldScaleMethodBind):
    aRVROriginSetWorldScaleMethodBind = getMethod(cstring"ARVROrigin",
        cstring"set_world_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVROriginSetWorldScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
