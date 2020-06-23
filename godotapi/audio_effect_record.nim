
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc format*(self: AudioEffectRecord): int64 {.gcsafe, locks: 0.}
proc `format=`*(self: AudioEffectRecord; val: int64) {.gcsafe, locks: 0.}
proc getRecording*(self: AudioEffectRecord): AudioStreamSample {.gcsafe, locks: 0.}
proc isRecordingActive*(self: AudioEffectRecord): bool {.gcsafe, locks: 0.}
proc setRecordingActive*(self: AudioEffectRecord; record: bool) {.gcsafe, locks: 0.}
var audioEffectRecordGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc format(self: AudioEffectRecord): int64 =
  if isNil(audioEffectRecordGetFormatMethodBind):
    audioEffectRecordGetFormatMethodBind = getMethod(cstring"AudioEffectRecord",
        cstring"get_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectRecordGetFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectRecordSetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `format=`(self: AudioEffectRecord; val: int64) =
  if isNil(audioEffectRecordSetFormatMethodBind):
    audioEffectRecordSetFormatMethodBind = getMethod(cstring"AudioEffectRecord",
        cstring"set_format")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectRecordSetFormatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectRecordGetRecordingMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRecording(self: AudioEffectRecord): AudioStreamSample =
  if isNil(audioEffectRecordGetRecordingMethodBind):
    audioEffectRecordGetRecordingMethodBind = getMethod(
        cstring"AudioEffectRecord", cstring"get_recording")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioEffectRecordGetRecordingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioEffectRecordIsRecordingActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc isRecordingActive(self: AudioEffectRecord): bool =
  if isNil(audioEffectRecordIsRecordingActiveMethodBind):
    audioEffectRecordIsRecordingActiveMethodBind = getMethod(
        cstring"AudioEffectRecord", cstring"is_recording_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectRecordIsRecordingActiveMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectRecordSetRecordingActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRecordingActive(self: AudioEffectRecord; record: bool) =
  if isNil(audioEffectRecordSetRecordingActiveMethodBind):
    audioEffectRecordSetRecordingActiveMethodBind = getMethod(
        cstring"AudioEffectRecord", cstring"set_recording_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(record)
  var ptrCallRet: pointer
  audioEffectRecordSetRecordingActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
