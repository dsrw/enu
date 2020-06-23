
import
  godot, godottypes, godotinternal, audio_stream

export
  godottypes, audio_stream

proc audioStream*(self: AudioStreamRandomPitch): AudioStream {.gcsafe, locks: 0.}
proc `audioStream=`*(self: AudioStreamRandomPitch; val: AudioStream) {.gcsafe,
    locks: 0.}
proc randomPitch*(self: AudioStreamRandomPitch): float64 {.gcsafe, locks: 0.}
proc `randomPitch=`*(self: AudioStreamRandomPitch; val: float64) {.gcsafe, locks: 0.}
var audioStreamRandomPitchGetAudioStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioStream(self: AudioStreamRandomPitch): AudioStream =
  if isNil(audioStreamRandomPitchGetAudioStreamMethodBind):
    audioStreamRandomPitchGetAudioStreamMethodBind = getMethod(
        cstring"AudioStreamRandomPitch", cstring"get_audio_stream")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioStreamRandomPitchGetAudioStreamMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioStreamRandomPitchSetAudioStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioStream=`(self: AudioStreamRandomPitch; val: AudioStream) =
  if isNil(audioStreamRandomPitchSetAudioStreamMethodBind):
    audioStreamRandomPitchSetAudioStreamMethodBind = getMethod(
        cstring"AudioStreamRandomPitch", cstring"set_audio_stream")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  audioStreamRandomPitchSetAudioStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamRandomPitchGetRandomPitchMethodBind {.threadvar.}: ptr GodotMethodBind
proc randomPitch(self: AudioStreamRandomPitch): float64 =
  if isNil(audioStreamRandomPitchGetRandomPitchMethodBind):
    audioStreamRandomPitchGetRandomPitchMethodBind = getMethod(
        cstring"AudioStreamRandomPitch", cstring"get_random_pitch")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamRandomPitchGetRandomPitchMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamRandomPitchSetRandomPitchMethodBind {.threadvar.}: ptr GodotMethodBind
proc `randomPitch=`(self: AudioStreamRandomPitch; val: float64) =
  if isNil(audioStreamRandomPitchSetRandomPitchMethodBind):
    audioStreamRandomPitchSetRandomPitchMethodBind = getMethod(
        cstring"AudioStreamRandomPitch", cstring"set_random_pitch")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamRandomPitchSetRandomPitchMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
