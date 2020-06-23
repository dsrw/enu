
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
proc bufferLength*(self: AudioEffectSpectrumAnalyzer): float64 {.gcsafe, locks: 0.}
proc `bufferLength=`*(self: AudioEffectSpectrumAnalyzer; val: float64) {.gcsafe,
    locks: 0.}
proc fftSize*(self: AudioEffectSpectrumAnalyzer): int64 {.gcsafe, locks: 0.}
proc `fftSize=`*(self: AudioEffectSpectrumAnalyzer; val: int64) {.gcsafe, locks: 0.}
proc tapBackPos*(self: AudioEffectSpectrumAnalyzer): float64 {.gcsafe, locks: 0.}
proc `tapBackPos=`*(self: AudioEffectSpectrumAnalyzer; val: float64) {.gcsafe,
    locks: 0.}
var audioEffectSpectrumAnalyzerGetBufferLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc bufferLength(self: AudioEffectSpectrumAnalyzer): float64 =
  if isNil(audioEffectSpectrumAnalyzerGetBufferLengthMethodBind):
    audioEffectSpectrumAnalyzerGetBufferLengthMethodBind = getMethod(
        cstring"AudioEffectSpectrumAnalyzer", cstring"get_buffer_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectSpectrumAnalyzerGetBufferLengthMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var audioEffectSpectrumAnalyzerSetBufferLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bufferLength=`(self: AudioEffectSpectrumAnalyzer; val: float64) =
  if isNil(audioEffectSpectrumAnalyzerSetBufferLengthMethodBind):
    audioEffectSpectrumAnalyzerSetBufferLengthMethodBind = getMethod(
        cstring"AudioEffectSpectrumAnalyzer", cstring"set_buffer_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectSpectrumAnalyzerSetBufferLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectSpectrumAnalyzerGetFftSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc fftSize(self: AudioEffectSpectrumAnalyzer): int64 =
  if isNil(audioEffectSpectrumAnalyzerGetFftSizeMethodBind):
    audioEffectSpectrumAnalyzerGetFftSizeMethodBind = getMethod(
        cstring"AudioEffectSpectrumAnalyzer", cstring"get_fft_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectSpectrumAnalyzerGetFftSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectSpectrumAnalyzerSetFftSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fftSize=`(self: AudioEffectSpectrumAnalyzer; val: int64) =
  if isNil(audioEffectSpectrumAnalyzerSetFftSizeMethodBind):
    audioEffectSpectrumAnalyzerSetFftSizeMethodBind = getMethod(
        cstring"AudioEffectSpectrumAnalyzer", cstring"set_fft_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectSpectrumAnalyzerSetFftSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectSpectrumAnalyzerGetTapBackPosMethodBind {.threadvar.}: ptr GodotMethodBind
proc tapBackPos(self: AudioEffectSpectrumAnalyzer): float64 =
  if isNil(audioEffectSpectrumAnalyzerGetTapBackPosMethodBind):
    audioEffectSpectrumAnalyzerGetTapBackPosMethodBind = getMethod(
        cstring"AudioEffectSpectrumAnalyzer", cstring"get_tap_back_pos")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectSpectrumAnalyzerGetTapBackPosMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var audioEffectSpectrumAnalyzerSetTapBackPosMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tapBackPos=`(self: AudioEffectSpectrumAnalyzer; val: float64) =
  if isNil(audioEffectSpectrumAnalyzerSetTapBackPosMethodBind):
    audioEffectSpectrumAnalyzerSetTapBackPosMethodBind = getMethod(
        cstring"AudioEffectSpectrumAnalyzer", cstring"set_tap_back_pos")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectSpectrumAnalyzerSetTapBackPosMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
