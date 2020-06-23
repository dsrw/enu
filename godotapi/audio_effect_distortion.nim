
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

const
  MODE_ATAN* = 1'i64
  MODE_CLIP* = 0'i64
  MODE_LOFI* = 2'i64
  MODE_OVERDRIVE* = 3'i64
  MODE_WAVESHAPE* = 4'i64
proc drive*(self: AudioEffectDistortion): float64 {.gcsafe, locks: 0.}
proc `drive=`*(self: AudioEffectDistortion; val: float64) {.gcsafe, locks: 0.}
proc keepHfHz*(self: AudioEffectDistortion): float64 {.gcsafe, locks: 0.}
proc `keepHfHz=`*(self: AudioEffectDistortion; val: float64) {.gcsafe, locks: 0.}
proc mode*(self: AudioEffectDistortion): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: AudioEffectDistortion; val: int64) {.gcsafe, locks: 0.}
proc postGain*(self: AudioEffectDistortion): float64 {.gcsafe, locks: 0.}
proc `postGain=`*(self: AudioEffectDistortion; val: float64) {.gcsafe, locks: 0.}
proc preGain*(self: AudioEffectDistortion): float64 {.gcsafe, locks: 0.}
proc `preGain=`*(self: AudioEffectDistortion; val: float64) {.gcsafe, locks: 0.}
var audioEffectDistortionGetDriveMethodBind {.threadvar.}: ptr GodotMethodBind
proc drive(self: AudioEffectDistortion): float64 =
  if isNil(audioEffectDistortionGetDriveMethodBind):
    audioEffectDistortionGetDriveMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"get_drive")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDistortionGetDriveMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDistortionSetDriveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drive=`(self: AudioEffectDistortion; val: float64) =
  if isNil(audioEffectDistortionSetDriveMethodBind):
    audioEffectDistortionSetDriveMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"set_drive")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDistortionSetDriveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDistortionGetKeepHfHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc keepHfHz(self: AudioEffectDistortion): float64 =
  if isNil(audioEffectDistortionGetKeepHfHzMethodBind):
    audioEffectDistortionGetKeepHfHzMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"get_keep_hf_hz")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDistortionGetKeepHfHzMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDistortionSetKeepHfHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc `keepHfHz=`(self: AudioEffectDistortion; val: float64) =
  if isNil(audioEffectDistortionSetKeepHfHzMethodBind):
    audioEffectDistortionSetKeepHfHzMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"set_keep_hf_hz")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDistortionSetKeepHfHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDistortionGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: AudioEffectDistortion): int64 =
  if isNil(audioEffectDistortionGetModeMethodBind):
    audioEffectDistortionGetModeMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDistortionGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectDistortionSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: AudioEffectDistortion; val: int64) =
  if isNil(audioEffectDistortionSetModeMethodBind):
    audioEffectDistortionSetModeMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDistortionSetModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDistortionGetPostGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc postGain(self: AudioEffectDistortion): float64 =
  if isNil(audioEffectDistortionGetPostGainMethodBind):
    audioEffectDistortionGetPostGainMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"get_post_gain")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDistortionGetPostGainMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDistortionSetPostGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc `postGain=`(self: AudioEffectDistortion; val: float64) =
  if isNil(audioEffectDistortionSetPostGainMethodBind):
    audioEffectDistortionSetPostGainMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"set_post_gain")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDistortionSetPostGainMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDistortionGetPreGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc preGain(self: AudioEffectDistortion): float64 =
  if isNil(audioEffectDistortionGetPreGainMethodBind):
    audioEffectDistortionGetPreGainMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"get_pre_gain")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDistortionGetPreGainMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDistortionSetPreGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc `preGain=`(self: AudioEffectDistortion; val: float64) =
  if isNil(audioEffectDistortionSetPreGainMethodBind):
    audioEffectDistortionSetPreGainMethodBind = getMethod(
        cstring"AudioEffectDistortion", cstring"set_pre_gain")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDistortionSetPreGainMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
