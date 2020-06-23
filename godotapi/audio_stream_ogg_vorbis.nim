
import
  godot, godottypes, godotinternal, audio_stream

export
  godottypes, audio_stream

proc data*(self: AudioStreamOGGVorbis): PoolByteArray {.gcsafe, locks: 0.}
proc `data=`*(self: AudioStreamOGGVorbis; val: PoolByteArray) {.gcsafe, locks: 0.}
proc loop*(self: AudioStreamOGGVorbis): bool {.gcsafe, locks: 0.}
proc `loop=`*(self: AudioStreamOGGVorbis; val: bool) {.gcsafe, locks: 0.}
proc loopOffset*(self: AudioStreamOGGVorbis): float64 {.gcsafe, locks: 0.}
proc `loopOffset=`*(self: AudioStreamOGGVorbis; val: float64) {.gcsafe, locks: 0.}
var audioStreamOGGVorbisGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: AudioStreamOGGVorbis): PoolByteArray =
  if isNil(audioStreamOGGVorbisGetDataMethodBind):
    audioStreamOGGVorbisGetDataMethodBind = getMethod(
        cstring"AudioStreamOGGVorbis", cstring"get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  audioStreamOGGVorbisGetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var audioStreamOGGVorbisSetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: AudioStreamOGGVorbis; val: PoolByteArray) =
  if isNil(audioStreamOGGVorbisSetDataMethodBind):
    audioStreamOGGVorbisSetDataMethodBind = getMethod(
        cstring"AudioStreamOGGVorbis", cstring"set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolByteArray
  var ptrCallRet: pointer
  audioStreamOGGVorbisSetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamOGGVorbisHasLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc loop(self: AudioStreamOGGVorbis): bool =
  if isNil(audioStreamOGGVorbisHasLoopMethodBind):
    audioStreamOGGVorbisHasLoopMethodBind = getMethod(
        cstring"AudioStreamOGGVorbis", cstring"has_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamOGGVorbisHasLoopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamOGGVorbisSetLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loop=`(self: AudioStreamOGGVorbis; val: bool) =
  if isNil(audioStreamOGGVorbisSetLoopMethodBind):
    audioStreamOGGVorbisSetLoopMethodBind = getMethod(
        cstring"AudioStreamOGGVorbis", cstring"set_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamOGGVorbisSetLoopMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamOGGVorbisGetLoopOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc loopOffset(self: AudioStreamOGGVorbis): float64 =
  if isNil(audioStreamOGGVorbisGetLoopOffsetMethodBind):
    audioStreamOGGVorbisGetLoopOffsetMethodBind = getMethod(
        cstring"AudioStreamOGGVorbis", cstring"get_loop_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamOGGVorbisGetLoopOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamOGGVorbisSetLoopOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loopOffset=`(self: AudioStreamOGGVorbis; val: float64) =
  if isNil(audioStreamOGGVorbisSetLoopOffsetMethodBind):
    audioStreamOGGVorbisSetLoopOffsetMethodBind = getMethod(
        cstring"AudioStreamOGGVorbis", cstring"set_loop_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamOGGVorbisSetLoopOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
