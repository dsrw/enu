
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

const
  FFT_SIZE_1024* = 2'i64
  FFT_SIZE_2048* = 3'i64
  FFT_SIZE_256* = 0'i64
  FFT_SIZE_4096* = 4'i64
  FFT_SIZE_512* = 1'i64
  FFT_SIZE_MAX* = 5'i64
proc fftSize*(self: AudioEffectPitchShift): int64 {.gcsafe, locks: 0.}
proc `fftSize=`*(self: AudioEffectPitchShift; val: int64) {.gcsafe, locks: 0.}
proc oversampling*(self: AudioEffectPitchShift): int64 {.gcsafe, locks: 0.}
proc `oversampling=`*(self: AudioEffectPitchShift; val: int64) {.gcsafe, locks: 0.}
proc pitchScale*(self: AudioEffectPitchShift): float64 {.gcsafe, locks: 0.}
proc `pitchScale=`*(self: AudioEffectPitchShift; val: float64) {.gcsafe, locks: 0.}
var audioEffectPitchShiftGetFftSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc fftSize(self: AudioEffectPitchShift): int64 =
  if isNil(audioEffectPitchShiftGetFftSizeMethodBind):
    audioEffectPitchShiftGetFftSizeMethodBind = getMethod(
        cstring"AudioEffectPitchShift", cstring"get_fft_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPitchShiftGetFftSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectPitchShiftSetFftSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fftSize=`(self: AudioEffectPitchShift; val: int64) =
  if isNil(audioEffectPitchShiftSetFftSizeMethodBind):
    audioEffectPitchShiftSetFftSizeMethodBind = getMethod(
        cstring"AudioEffectPitchShift", cstring"set_fft_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPitchShiftSetFftSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectPitchShiftGetOversamplingMethodBind {.threadvar.}: ptr GodotMethodBind
proc oversampling(self: AudioEffectPitchShift): int64 =
  if isNil(audioEffectPitchShiftGetOversamplingMethodBind):
    audioEffectPitchShiftGetOversamplingMethodBind = getMethod(
        cstring"AudioEffectPitchShift", cstring"get_oversampling")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPitchShiftGetOversamplingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectPitchShiftSetOversamplingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oversampling=`(self: AudioEffectPitchShift; val: int64) =
  if isNil(audioEffectPitchShiftSetOversamplingMethodBind):
    audioEffectPitchShiftSetOversamplingMethodBind = getMethod(
        cstring"AudioEffectPitchShift", cstring"set_oversampling")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPitchShiftSetOversamplingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectPitchShiftGetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc pitchScale(self: AudioEffectPitchShift): float64 =
  if isNil(audioEffectPitchShiftGetPitchScaleMethodBind):
    audioEffectPitchShiftGetPitchScaleMethodBind = getMethod(
        cstring"AudioEffectPitchShift", cstring"get_pitch_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPitchShiftGetPitchScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectPitchShiftSetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pitchScale=`(self: AudioEffectPitchShift; val: float64) =
  if isNil(audioEffectPitchShiftSetPitchScaleMethodBind):
    audioEffectPitchShiftSetPitchScaleMethodBind = getMethod(
        cstring"AudioEffectPitchShift", cstring"set_pitch_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPitchShiftSetPitchScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
