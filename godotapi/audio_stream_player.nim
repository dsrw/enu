
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  MIX_TARGET_CENTER* = 2'i64
  MIX_TARGET_STEREO* = 0'i64
  MIX_TARGET_SURROUND* = 1'i64
proc autoplay*(self: AudioStreamPlayer): bool {.gcsafe, locks: 0.}
proc `autoplay=`*(self: AudioStreamPlayer; val: bool) {.gcsafe, locks: 0.}
proc bus*(self: AudioStreamPlayer): string {.gcsafe, locks: 0.}
proc `bus=`*(self: AudioStreamPlayer; val: string) {.gcsafe, locks: 0.}
proc mixTarget*(self: AudioStreamPlayer): int64 {.gcsafe, locks: 0.}
proc `mixTarget=`*(self: AudioStreamPlayer; val: int64) {.gcsafe, locks: 0.}
proc pitchScale*(self: AudioStreamPlayer): float64 {.gcsafe, locks: 0.}
proc `pitchScale=`*(self: AudioStreamPlayer; val: float64) {.gcsafe, locks: 0.}
proc playing*(self: AudioStreamPlayer): bool {.gcsafe, locks: 0.}
proc `playing=`*(self: AudioStreamPlayer; val: bool) {.gcsafe, locks: 0.}
proc stream*(self: AudioStreamPlayer): AudioStream {.gcsafe, locks: 0.}
proc `stream=`*(self: AudioStreamPlayer; val: AudioStream) {.gcsafe, locks: 0.}
proc streamPaused*(self: AudioStreamPlayer): bool {.gcsafe, locks: 0.}
proc `streamPaused=`*(self: AudioStreamPlayer; val: bool) {.gcsafe, locks: 0.}
proc volumeDb*(self: AudioStreamPlayer): float64 {.gcsafe, locks: 0.}
proc `volumeDb=`*(self: AudioStreamPlayer; val: float64) {.gcsafe, locks: 0.}
method busLayoutChanged*(self: AudioStreamPlayer) {.gcsafe, locks: 0, base.}
method isActive*(self: AudioStreamPlayer): bool {.gcsafe, locks: 0, base.}
proc getPlaybackPosition*(self: AudioStreamPlayer): float64 {.gcsafe, locks: 0.}
proc getStreamPlayback*(self: AudioStreamPlayer): AudioStreamPlayback {.gcsafe,
    locks: 0.}
proc play*(self: AudioStreamPlayer; fromPosition: float64 = 0.0) {.gcsafe, locks: 0.}
proc seek*(self: AudioStreamPlayer; toPosition: float64) {.gcsafe, locks: 0.}
proc stop*(self: AudioStreamPlayer) {.gcsafe, locks: 0.}
var audioStreamPlayerIsAutoplayEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoplay(self: AudioStreamPlayer): bool =
  if isNil(audioStreamPlayerIsAutoplayEnabledMethodBind):
    audioStreamPlayerIsAutoplayEnabledMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"is_autoplay_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerIsAutoplayEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayerSetAutoplayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoplay=`(self: AudioStreamPlayer; val: bool) =
  if isNil(audioStreamPlayerSetAutoplayMethodBind):
    audioStreamPlayerSetAutoplayMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"set_autoplay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayerSetAutoplayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayerGetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc bus(self: AudioStreamPlayer): string =
  if isNil(audioStreamPlayerGetBusMethodBind):
    audioStreamPlayerGetBusMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"get_bus")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayerGetBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioStreamPlayerSetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bus=`(self: AudioStreamPlayer; val: string) =
  if isNil(audioStreamPlayerSetBusMethodBind):
    audioStreamPlayerSetBusMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"set_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  audioStreamPlayerSetBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var audioStreamPlayerGetMixTargetMethodBind {.threadvar.}: ptr GodotMethodBind
proc mixTarget(self: AudioStreamPlayer): int64 =
  if isNil(audioStreamPlayerGetMixTargetMethodBind):
    audioStreamPlayerGetMixTargetMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"get_mix_target")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerGetMixTargetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayerSetMixTargetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mixTarget=`(self: AudioStreamPlayer; val: int64) =
  if isNil(audioStreamPlayerSetMixTargetMethodBind):
    audioStreamPlayerSetMixTargetMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"set_mix_target")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayerSetMixTargetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayerGetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc pitchScale(self: AudioStreamPlayer): float64 =
  if isNil(audioStreamPlayerGetPitchScaleMethodBind):
    audioStreamPlayerGetPitchScaleMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"get_pitch_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerGetPitchScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayerSetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pitchScale=`(self: AudioStreamPlayer; val: float64) =
  if isNil(audioStreamPlayerSetPitchScaleMethodBind):
    audioStreamPlayerSetPitchScaleMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"set_pitch_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayerSetPitchScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayerIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc playing(self: AudioStreamPlayer): bool =
  if isNil(audioStreamPlayerIsPlayingMethodBind):
    audioStreamPlayerIsPlayingMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamPlayerUnderscoresetPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playing=`(self: AudioStreamPlayer; val: bool) =
  if isNil(audioStreamPlayerUnderscoresetPlayingMethodBind):
    audioStreamPlayerUnderscoresetPlayingMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"_set_playing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayerUnderscoresetPlayingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayerGetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc stream(self: AudioStreamPlayer): AudioStream =
  if isNil(audioStreamPlayerGetStreamMethodBind):
    audioStreamPlayerGetStreamMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"get_stream")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayerGetStreamMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioStreamPlayerSetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stream=`(self: AudioStreamPlayer; val: AudioStream) =
  if isNil(audioStreamPlayerSetStreamMethodBind):
    audioStreamPlayerSetStreamMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"set_stream")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  audioStreamPlayerSetStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayerGetStreamPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc streamPaused(self: AudioStreamPlayer): bool =
  if isNil(audioStreamPlayerGetStreamPausedMethodBind):
    audioStreamPlayerGetStreamPausedMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"get_stream_paused")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerGetStreamPausedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayerSetStreamPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `streamPaused=`(self: AudioStreamPlayer; val: bool) =
  if isNil(audioStreamPlayerSetStreamPausedMethodBind):
    audioStreamPlayerSetStreamPausedMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"set_stream_paused")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayerSetStreamPausedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayerGetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc volumeDb(self: AudioStreamPlayer): float64 =
  if isNil(audioStreamPlayerGetVolumeDbMethodBind):
    audioStreamPlayerGetVolumeDbMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"get_volume_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerGetVolumeDbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamPlayerSetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `volumeDb=`(self: AudioStreamPlayer; val: float64) =
  if isNil(audioStreamPlayerSetVolumeDbMethodBind):
    audioStreamPlayerSetVolumeDbMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"set_volume_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayerSetVolumeDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayerUnderscorebusLayoutChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method busLayoutChanged(self: AudioStreamPlayer) =
  if isNil(audioStreamPlayerUnderscorebusLayoutChangedMethodBind):
    audioStreamPlayerUnderscorebusLayoutChangedMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"_bus_layout_changed")
  var ptrCallRet: pointer
  audioStreamPlayerUnderscorebusLayoutChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var audioStreamPlayerUnderscoreisActiveMethodBind {.threadvar.}: ptr GodotMethodBind
method isActive(self: AudioStreamPlayer): bool =
  if isNil(audioStreamPlayerUnderscoreisActiveMethodBind):
    audioStreamPlayerUnderscoreisActiveMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"_is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerUnderscoreisActiveMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayerGetPlaybackPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPlaybackPosition(self: AudioStreamPlayer): float64 =
  if isNil(audioStreamPlayerGetPlaybackPositionMethodBind):
    audioStreamPlayerGetPlaybackPositionMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"get_playback_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayerGetPlaybackPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayerGetStreamPlaybackMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStreamPlayback(self: AudioStreamPlayer): AudioStreamPlayback =
  if isNil(audioStreamPlayerGetStreamPlaybackMethodBind):
    audioStreamPlayerGetStreamPlaybackMethodBind = getMethod(
        cstring"AudioStreamPlayer", cstring"get_stream_playback")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayerGetStreamPlaybackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioStreamPlayerPlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc play(self: AudioStreamPlayer; fromPosition: float64 = 0.0) =
  if isNil(audioStreamPlayerPlayMethodBind):
    audioStreamPlayerPlayMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"play")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromPosition)
  var ptrCallRet: pointer
  audioStreamPlayerPlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamPlayerSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: AudioStreamPlayer; toPosition: float64) =
  if isNil(audioStreamPlayerSeekMethodBind):
    audioStreamPlayerSeekMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"seek")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  audioStreamPlayerSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamPlayerStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: AudioStreamPlayer) =
  if isNil(audioStreamPlayerStopMethodBind):
    audioStreamPlayerStopMethodBind = getMethod(cstring"AudioStreamPlayer",
        cstring"stop")
  var ptrCallRet: pointer
  audioStreamPlayerStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
