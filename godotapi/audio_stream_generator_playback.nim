
import
  godot, godottypes, godotinternal, audio_stream_playback_resampled

export
  godottypes, audio_stream_playback_resampled

proc canPushBuffer*(self: AudioStreamGeneratorPlayback; amount: int64): bool {.gcsafe,
    locks: 0.}
proc clearBuffer*(self: AudioStreamGeneratorPlayback) {.gcsafe, locks: 0.}
proc getFramesAvailable*(self: AudioStreamGeneratorPlayback): int64 {.gcsafe,
    locks: 0.}
proc getSkips*(self: AudioStreamGeneratorPlayback): int64 {.gcsafe, locks: 0.}
proc pushBuffer*(self: AudioStreamGeneratorPlayback; frames: PoolVector2Array): bool {.
    gcsafe, locks: 0.}
proc pushFrame*(self: AudioStreamGeneratorPlayback; frame: Vector2): bool {.gcsafe,
    locks: 0.}
var audioStreamGeneratorPlaybackCanPushBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc canPushBuffer(self: AudioStreamGeneratorPlayback; amount: int64): bool =
  if isNil(audioStreamGeneratorPlaybackCanPushBufferMethodBind):
    audioStreamGeneratorPlaybackCanPushBufferMethodBind = getMethod(
        cstring"AudioStreamGeneratorPlayback", cstring"can_push_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(amount)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGeneratorPlaybackCanPushBufferMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamGeneratorPlaybackClearBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBuffer(self: AudioStreamGeneratorPlayback) =
  if isNil(audioStreamGeneratorPlaybackClearBufferMethodBind):
    audioStreamGeneratorPlaybackClearBufferMethodBind = getMethod(
        cstring"AudioStreamGeneratorPlayback", cstring"clear_buffer")
  var ptrCallRet: pointer
  audioStreamGeneratorPlaybackClearBufferMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var audioStreamGeneratorPlaybackGetFramesAvailableMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFramesAvailable(self: AudioStreamGeneratorPlayback): int64 =
  if isNil(audioStreamGeneratorPlaybackGetFramesAvailableMethodBind):
    audioStreamGeneratorPlaybackGetFramesAvailableMethodBind = getMethod(
        cstring"AudioStreamGeneratorPlayback", cstring"get_frames_available")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGeneratorPlaybackGetFramesAvailableMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var audioStreamGeneratorPlaybackGetSkipsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSkips(self: AudioStreamGeneratorPlayback): int64 =
  if isNil(audioStreamGeneratorPlaybackGetSkipsMethodBind):
    audioStreamGeneratorPlaybackGetSkipsMethodBind = getMethod(
        cstring"AudioStreamGeneratorPlayback", cstring"get_skips")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGeneratorPlaybackGetSkipsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamGeneratorPlaybackPushBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushBuffer(self: AudioStreamGeneratorPlayback; frames: PoolVector2Array): bool =
  if isNil(audioStreamGeneratorPlaybackPushBufferMethodBind):
    audioStreamGeneratorPlaybackPushBufferMethodBind = getMethod(
        cstring"AudioStreamGeneratorPlayback", cstring"push_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = frames.godotPoolVector2Array
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGeneratorPlaybackPushBufferMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamGeneratorPlaybackPushFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushFrame(self: AudioStreamGeneratorPlayback; frame: Vector2): bool =
  if isNil(audioStreamGeneratorPlaybackPushFrameMethodBind):
    audioStreamGeneratorPlaybackPushFrameMethodBind = getMethod(
        cstring"AudioStreamGeneratorPlayback", cstring"push_frame")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(frame)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGeneratorPlaybackPushFrameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
