
import
  godot, godottypes, godotinternal, audio_stream

export
  godottypes, audio_stream

const
  FORMAT_16_BITS* = 1'i64
  FORMAT_8_BITS* = 0'i64
  FORMAT_IMA_ADPCM* = 2'i64
  LOOP_BACKWARD* = 3'i64
  LOOP_DISABLED* = 0'i64
  LOOP_FORWARD* = 1'i64
  LOOP_PING_PONG* = 2'i64
proc data*(self: AudioStreamSample): PoolByteArray {.gcsafe, locks: 0.}
proc `data=`*(self: AudioStreamSample; val: PoolByteArray) {.gcsafe, locks: 0.}
proc format*(self: AudioStreamSample): int64 {.gcsafe, locks: 0.}
proc `format=`*(self: AudioStreamSample; val: int64) {.gcsafe, locks: 0.}
proc loopBegin*(self: AudioStreamSample): int64 {.gcsafe, locks: 0.}
proc `loopBegin=`*(self: AudioStreamSample; val: int64) {.gcsafe, locks: 0.}
proc loopEnd*(self: AudioStreamSample): int64 {.gcsafe, locks: 0.}
proc `loopEnd=`*(self: AudioStreamSample; val: int64) {.gcsafe, locks: 0.}
proc loopMode*(self: AudioStreamSample): int64 {.gcsafe, locks: 0.}
proc `loopMode=`*(self: AudioStreamSample; val: int64) {.gcsafe, locks: 0.}
proc mixRate*(self: AudioStreamSample): int64 {.gcsafe, locks: 0.}
proc `mixRate=`*(self: AudioStreamSample; val: int64) {.gcsafe, locks: 0.}
proc stereo*(self: AudioStreamSample): bool {.gcsafe, locks: 0.}
proc `stereo=`*(self: AudioStreamSample; val: bool) {.gcsafe, locks: 0.}
proc saveToWav*(self: AudioStreamSample; path: string): Error {.gcsafe, locks: 0.}
var audioStreamSampleGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: AudioStreamSample): PoolByteArray =
  if isNil(audioStreamSampleGetDataMethodBind):
    audioStreamSampleGetDataMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  audioStreamSampleGetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var audioStreamSampleSetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: AudioStreamSample; val: PoolByteArray) =
  if isNil(audioStreamSampleSetDataMethodBind):
    audioStreamSampleSetDataMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolByteArray
  var ptrCallRet: pointer
  audioStreamSampleSetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamSampleGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc format(self: AudioStreamSample): int64 =
  if isNil(audioStreamSampleGetFormatMethodBind):
    audioStreamSampleGetFormatMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"get_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamSampleGetFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamSampleSetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `format=`(self: AudioStreamSample; val: int64) =
  if isNil(audioStreamSampleSetFormatMethodBind):
    audioStreamSampleSetFormatMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"set_format")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamSampleSetFormatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamSampleGetLoopBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc loopBegin(self: AudioStreamSample): int64 =
  if isNil(audioStreamSampleGetLoopBeginMethodBind):
    audioStreamSampleGetLoopBeginMethodBind = getMethod(
        cstring"AudioStreamSample", cstring"get_loop_begin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamSampleGetLoopBeginMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamSampleSetLoopBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loopBegin=`(self: AudioStreamSample; val: int64) =
  if isNil(audioStreamSampleSetLoopBeginMethodBind):
    audioStreamSampleSetLoopBeginMethodBind = getMethod(
        cstring"AudioStreamSample", cstring"set_loop_begin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamSampleSetLoopBeginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamSampleGetLoopEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc loopEnd(self: AudioStreamSample): int64 =
  if isNil(audioStreamSampleGetLoopEndMethodBind):
    audioStreamSampleGetLoopEndMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"get_loop_end")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamSampleGetLoopEndMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamSampleSetLoopEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loopEnd=`(self: AudioStreamSample; val: int64) =
  if isNil(audioStreamSampleSetLoopEndMethodBind):
    audioStreamSampleSetLoopEndMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"set_loop_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamSampleSetLoopEndMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamSampleGetLoopModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc loopMode(self: AudioStreamSample): int64 =
  if isNil(audioStreamSampleGetLoopModeMethodBind):
    audioStreamSampleGetLoopModeMethodBind = getMethod(
        cstring"AudioStreamSample", cstring"get_loop_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamSampleGetLoopModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamSampleSetLoopModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loopMode=`(self: AudioStreamSample; val: int64) =
  if isNil(audioStreamSampleSetLoopModeMethodBind):
    audioStreamSampleSetLoopModeMethodBind = getMethod(
        cstring"AudioStreamSample", cstring"set_loop_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamSampleSetLoopModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamSampleGetMixRateMethodBind {.threadvar.}: ptr GodotMethodBind
proc mixRate(self: AudioStreamSample): int64 =
  if isNil(audioStreamSampleGetMixRateMethodBind):
    audioStreamSampleGetMixRateMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"get_mix_rate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamSampleGetMixRateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamSampleSetMixRateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mixRate=`(self: AudioStreamSample; val: int64) =
  if isNil(audioStreamSampleSetMixRateMethodBind):
    audioStreamSampleSetMixRateMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"set_mix_rate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamSampleSetMixRateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamSampleIsStereoMethodBind {.threadvar.}: ptr GodotMethodBind
proc stereo(self: AudioStreamSample): bool =
  if isNil(audioStreamSampleIsStereoMethodBind):
    audioStreamSampleIsStereoMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"is_stereo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamSampleIsStereoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamSampleSetStereoMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stereo=`(self: AudioStreamSample; val: bool) =
  if isNil(audioStreamSampleSetStereoMethodBind):
    audioStreamSampleSetStereoMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"set_stereo")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamSampleSetStereoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamSampleSaveToWavMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveToWav(self: AudioStreamSample; path: string): Error =
  if isNil(audioStreamSampleSaveToWavMethodBind):
    audioStreamSampleSaveToWavMethodBind = getMethod(cstring"AudioStreamSample",
        cstring"save_to_wav")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  audioStreamSampleSaveToWavMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)
