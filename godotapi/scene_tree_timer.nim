
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc timeLeft*(self: SceneTreeTimer): float64 {.gcsafe, locks: 0.}
proc `timeLeft=`*(self: SceneTreeTimer; val: float64) {.gcsafe, locks: 0.}
var sceneTreeTimerGetTimeLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc timeLeft(self: SceneTreeTimer): float64 =
  if isNil(sceneTreeTimerGetTimeLeftMethodBind):
    sceneTreeTimerGetTimeLeftMethodBind = getMethod(cstring"SceneTreeTimer",
        cstring"get_time_left")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeTimerGetTimeLeftMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeTimerSetTimeLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc `timeLeft=`(self: SceneTreeTimer; val: float64) =
  if isNil(sceneTreeTimerSetTimeLeftMethodBind):
    sceneTreeTimerSetTimeLeftMethodBind = getMethod(cstring"SceneTreeTimer",
        cstring"set_time_left")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sceneTreeTimerSetTimeLeftMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
