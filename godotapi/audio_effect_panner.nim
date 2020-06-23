
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc pan*(self: AudioEffectPanner): float64 {.gcsafe, locks: 0.}
proc `pan=`*(self: AudioEffectPanner; val: float64) {.gcsafe, locks: 0.}
var audioEffectPannerGetPanMethodBind {.threadvar.}: ptr GodotMethodBind
proc pan(self: AudioEffectPanner): float64 =
  if isNil(audioEffectPannerGetPanMethodBind):
    audioEffectPannerGetPanMethodBind = getMethod(cstring"AudioEffectPanner",
        cstring"get_pan")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPannerGetPanMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectPannerSetPanMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pan=`(self: AudioEffectPanner; val: float64) =
  if isNil(audioEffectPannerSetPanMethodBind):
    audioEffectPannerSetPanMethodBind = getMethod(cstring"AudioEffectPanner",
        cstring"set_pan")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPannerSetPanMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
