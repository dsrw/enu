
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc panPullout*(self: AudioEffectStereoEnhance): float64 {.gcsafe, locks: 0.}
proc `panPullout=`*(self: AudioEffectStereoEnhance; val: float64) {.gcsafe, locks: 0.}
proc surround*(self: AudioEffectStereoEnhance): float64 {.gcsafe, locks: 0.}
proc `surround=`*(self: AudioEffectStereoEnhance; val: float64) {.gcsafe, locks: 0.}
proc timePulloutMs*(self: AudioEffectStereoEnhance): float64 {.gcsafe, locks: 0.}
proc `timePulloutMs=`*(self: AudioEffectStereoEnhance; val: float64) {.gcsafe,
    locks: 0.}
var audioEffectStereoEnhanceGetPanPulloutMethodBind {.threadvar.}: ptr GodotMethodBind
proc panPullout(self: AudioEffectStereoEnhance): float64 =
  if isNil(audioEffectStereoEnhanceGetPanPulloutMethodBind):
    audioEffectStereoEnhanceGetPanPulloutMethodBind = getMethod(
        cstring"AudioEffectStereoEnhance", cstring"get_pan_pullout")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectStereoEnhanceGetPanPulloutMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectStereoEnhanceSetPanPulloutMethodBind {.threadvar.}: ptr GodotMethodBind
proc `panPullout=`(self: AudioEffectStereoEnhance; val: float64) =
  if isNil(audioEffectStereoEnhanceSetPanPulloutMethodBind):
    audioEffectStereoEnhanceSetPanPulloutMethodBind = getMethod(
        cstring"AudioEffectStereoEnhance", cstring"set_pan_pullout")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectStereoEnhanceSetPanPulloutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectStereoEnhanceGetSurroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc surround(self: AudioEffectStereoEnhance): float64 =
  if isNil(audioEffectStereoEnhanceGetSurroundMethodBind):
    audioEffectStereoEnhanceGetSurroundMethodBind = getMethod(
        cstring"AudioEffectStereoEnhance", cstring"get_surround")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectStereoEnhanceGetSurroundMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectStereoEnhanceSetSurroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc `surround=`(self: AudioEffectStereoEnhance; val: float64) =
  if isNil(audioEffectStereoEnhanceSetSurroundMethodBind):
    audioEffectStereoEnhanceSetSurroundMethodBind = getMethod(
        cstring"AudioEffectStereoEnhance", cstring"set_surround")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectStereoEnhanceSetSurroundMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectStereoEnhanceGetTimePulloutMethodBind {.threadvar.}: ptr GodotMethodBind
proc timePulloutMs(self: AudioEffectStereoEnhance): float64 =
  if isNil(audioEffectStereoEnhanceGetTimePulloutMethodBind):
    audioEffectStereoEnhanceGetTimePulloutMethodBind = getMethod(
        cstring"AudioEffectStereoEnhance", cstring"get_time_pullout")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectStereoEnhanceGetTimePulloutMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectStereoEnhanceSetTimePulloutMethodBind {.threadvar.}: ptr GodotMethodBind
proc `timePulloutMs=`(self: AudioEffectStereoEnhance; val: float64) =
  if isNil(audioEffectStereoEnhanceSetTimePulloutMethodBind):
    audioEffectStereoEnhanceSetTimePulloutMethodBind = getMethod(
        cstring"AudioEffectStereoEnhance", cstring"set_time_pullout")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectStereoEnhanceSetTimePulloutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
