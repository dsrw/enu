
import
  godot, godottypes, godotinternal, audio_stream

export
  godottypes, audio_stream

proc bufferLength*(self: AudioStreamGenerator): float64 {.gcsafe, locks: 0.}
proc `bufferLength=`*(self: AudioStreamGenerator; val: float64) {.gcsafe, locks: 0.}
proc mixRate*(self: AudioStreamGenerator): float64 {.gcsafe, locks: 0.}
proc `mixRate=`*(self: AudioStreamGenerator; val: float64) {.gcsafe, locks: 0.}
var audioStreamGeneratorGetBufferLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc bufferLength(self: AudioStreamGenerator): float64 =
  if isNil(audioStreamGeneratorGetBufferLengthMethodBind):
    audioStreamGeneratorGetBufferLengthMethodBind = getMethod(
        cstring"AudioStreamGenerator", cstring"get_buffer_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGeneratorGetBufferLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamGeneratorSetBufferLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bufferLength=`(self: AudioStreamGenerator; val: float64) =
  if isNil(audioStreamGeneratorSetBufferLengthMethodBind):
    audioStreamGeneratorSetBufferLengthMethodBind = getMethod(
        cstring"AudioStreamGenerator", cstring"set_buffer_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamGeneratorSetBufferLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamGeneratorGetMixRateMethodBind {.threadvar.}: ptr GodotMethodBind
proc mixRate(self: AudioStreamGenerator): float64 =
  if isNil(audioStreamGeneratorGetMixRateMethodBind):
    audioStreamGeneratorGetMixRateMethodBind = getMethod(
        cstring"AudioStreamGenerator", cstring"get_mix_rate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGeneratorGetMixRateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamGeneratorSetMixRateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mixRate=`(self: AudioStreamGenerator; val: float64) =
  if isNil(audioStreamGeneratorSetMixRateMethodBind):
    audioStreamGeneratorSetMixRateMethodBind = getMethod(
        cstring"AudioStreamGenerator", cstring"set_mix_rate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamGeneratorSetMixRateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
