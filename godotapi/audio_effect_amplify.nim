
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc volumeDb*(self: AudioEffectAmplify): float64 {.gcsafe, locks: 0.}
proc `volumeDb=`*(self: AudioEffectAmplify; val: float64) {.gcsafe, locks: 0.}
var audioEffectAmplifyGetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc volumeDb(self: AudioEffectAmplify): float64 =
  if isNil(audioEffectAmplifyGetVolumeDbMethodBind):
    audioEffectAmplifyGetVolumeDbMethodBind = getMethod(
        cstring"AudioEffectAmplify", cstring"get_volume_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectAmplifyGetVolumeDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectAmplifySetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `volumeDb=`(self: AudioEffectAmplify; val: float64) =
  if isNil(audioEffectAmplifySetVolumeDbMethodBind):
    audioEffectAmplifySetVolumeDbMethodBind = getMethod(
        cstring"AudioEffectAmplify", cstring"set_volume_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectAmplifySetVolumeDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
