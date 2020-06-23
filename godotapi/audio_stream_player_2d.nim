
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc areaMask*(self: AudioStreamPlayer2D): int64 {.gcsafe, locks: 0.}
proc `areaMask=`*(self: AudioStreamPlayer2D; val: int64) {.gcsafe, locks: 0.}
proc attenuation*(self: AudioStreamPlayer2D): float64 {.gcsafe, locks: 0.}
proc `attenuation=`*(self: AudioStreamPlayer2D; val: float64) {.gcsafe, locks: 0.}
proc autoplay*(self: AudioStreamPlayer2D): bool {.gcsafe, locks: 0.}
proc `autoplay=`*(self: AudioStreamPlayer2D; val: bool) {.gcsafe, locks: 0.}
proc bus*(self: AudioStreamPlayer2D): string {.gcsafe, locks: 0.}
proc `bus=`*(self: AudioStreamPlayer2D; val: string) {.gcsafe, locks: 0.}
proc maxDistance*(self: AudioStreamPlayer2D): float64 {.gcsafe, locks: 0.}
proc `maxDistance=`*(self: AudioStreamPlayer2D; val: float64) {.gcsafe, locks: 0.}
proc pitchScale*(self: AudioStreamPlayer2D): float64 {.gcsafe, locks: 0.}
proc `pitchScale=`*(self: AudioStreamPlayer2D; val: float64) {.gcsafe, locks: 0.}
proc playing*(self: AudioStreamPlayer2D): bool {.gcsafe, locks: 0.}
proc `playing=`*(self: AudioStreamPlayer2D; val: bool) {.gcsafe, locks: 0.}
proc stream*(self: AudioStreamPlayer2D): AudioStream {.gcsafe, locks: 0.}
proc `stream=`*(self: AudioStreamPlayer2D; val: AudioStream) {.gcsafe, locks: 0.}
proc streamPaused*(self: AudioStreamPlayer2D): bool {.gcsafe, locks: 0.}
proc `streamPaused=`*(self: AudioStreamPlayer2D; val: bool) {.gcsafe, locks: 0.}
proc volumeDb*(self: AudioStreamPlayer2D): float64 {.gcsafe, locks: 0.}
proc `volumeDb=`*(self: AudioStreamPlayer2D; val: float64) {.gcsafe, locks: 0.}
method busLayoutChanged*(self: AudioStreamPlayer2D) {.gcsafe, locks: 0, base.}
method isActive*(self: AudioStreamPlayer2D): bool {.gcsafe, locks: 0, base.}
proc getPlaybackPosition*(self: AudioStreamPlayer2D): float64 {.gcsafe, locks: 0.}
proc getStreamPlayback*(self: AudioStreamPlayer2D): AudioStreamPlayback {.gcsafe,
    locks: 0.}
proc play*(self: AudioStreamPlayer2D; fromPosition: float64 = 0.0) {.gcsafe, locks: 0.}
proc seek*(self: AudioStreamPlayer2D; toPosition: float64) {.gcsafe, locks: 0.}
proc stop*(self: AudioStreamPlayer2D) {.gcsafe, locks: 0.}
var audioStreamPlayer2DGetAreaMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaMask(self: AudioStreamPlayer2D): int64 =
  if isNil(audioStreamPlayer2DGetAreaMaskMethodBind):
    audioStreamPlayer2DGetAreaMaskMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_area_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DGetAreaMaskMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DSetAreaMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `areaMask=`(self: AudioStreamPlayer2D; val: int64) =
  if isNil(audioStreamPlayer2DSetAreaMaskMethodBind):
    audioStreamPlayer2DSetAreaMaskMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_area_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetAreaMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DGetAttenuationMethodBind {.threadvar.}: ptr GodotMethodBind
proc attenuation(self: AudioStreamPlayer2D): float64 =
  if isNil(audioStreamPlayer2DGetAttenuationMethodBind):
    audioStreamPlayer2DGetAttenuationMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_attenuation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DGetAttenuationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DSetAttenuationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `attenuation=`(self: AudioStreamPlayer2D; val: float64) =
  if isNil(audioStreamPlayer2DSetAttenuationMethodBind):
    audioStreamPlayer2DSetAttenuationMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_attenuation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetAttenuationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DIsAutoplayEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoplay(self: AudioStreamPlayer2D): bool =
  if isNil(audioStreamPlayer2DIsAutoplayEnabledMethodBind):
    audioStreamPlayer2DIsAutoplayEnabledMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"is_autoplay_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DIsAutoplayEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DSetAutoplayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoplay=`(self: AudioStreamPlayer2D; val: bool) =
  if isNil(audioStreamPlayer2DSetAutoplayMethodBind):
    audioStreamPlayer2DSetAutoplayMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_autoplay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetAutoplayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DGetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc bus(self: AudioStreamPlayer2D): string =
  if isNil(audioStreamPlayer2DGetBusMethodBind):
    audioStreamPlayer2DGetBusMethodBind = getMethod(cstring"AudioStreamPlayer2D",
        cstring"get_bus")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayer2DGetBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioStreamPlayer2DSetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bus=`(self: AudioStreamPlayer2D; val: string) =
  if isNil(audioStreamPlayer2DSetBusMethodBind):
    audioStreamPlayer2DSetBusMethodBind = getMethod(cstring"AudioStreamPlayer2D",
        cstring"set_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetBusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var audioStreamPlayer2DGetMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxDistance(self: AudioStreamPlayer2D): float64 =
  if isNil(audioStreamPlayer2DGetMaxDistanceMethodBind):
    audioStreamPlayer2DGetMaxDistanceMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_max_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DGetMaxDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DSetMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxDistance=`(self: AudioStreamPlayer2D; val: float64) =
  if isNil(audioStreamPlayer2DSetMaxDistanceMethodBind):
    audioStreamPlayer2DSetMaxDistanceMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_max_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetMaxDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DGetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc pitchScale(self: AudioStreamPlayer2D): float64 =
  if isNil(audioStreamPlayer2DGetPitchScaleMethodBind):
    audioStreamPlayer2DGetPitchScaleMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_pitch_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DGetPitchScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DSetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pitchScale=`(self: AudioStreamPlayer2D; val: float64) =
  if isNil(audioStreamPlayer2DSetPitchScaleMethodBind):
    audioStreamPlayer2DSetPitchScaleMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_pitch_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetPitchScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc playing(self: AudioStreamPlayer2D): bool =
  if isNil(audioStreamPlayer2DIsPlayingMethodBind):
    audioStreamPlayer2DIsPlayingMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamPlayer2DUnderscoresetPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playing=`(self: AudioStreamPlayer2D; val: bool) =
  if isNil(audioStreamPlayer2DUnderscoresetPlayingMethodBind):
    audioStreamPlayer2DUnderscoresetPlayingMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"_set_playing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DUnderscoresetPlayingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DGetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc stream(self: AudioStreamPlayer2D): AudioStream =
  if isNil(audioStreamPlayer2DGetStreamMethodBind):
    audioStreamPlayer2DGetStreamMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_stream")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayer2DGetStreamMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioStreamPlayer2DSetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stream=`(self: AudioStreamPlayer2D; val: AudioStream) =
  if isNil(audioStreamPlayer2DSetStreamMethodBind):
    audioStreamPlayer2DSetStreamMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_stream")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  audioStreamPlayer2DSetStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DGetStreamPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc streamPaused(self: AudioStreamPlayer2D): bool =
  if isNil(audioStreamPlayer2DGetStreamPausedMethodBind):
    audioStreamPlayer2DGetStreamPausedMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_stream_paused")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DGetStreamPausedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DSetStreamPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `streamPaused=`(self: AudioStreamPlayer2D; val: bool) =
  if isNil(audioStreamPlayer2DSetStreamPausedMethodBind):
    audioStreamPlayer2DSetStreamPausedMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_stream_paused")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetStreamPausedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DGetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc volumeDb(self: AudioStreamPlayer2D): float64 =
  if isNil(audioStreamPlayer2DGetVolumeDbMethodBind):
    audioStreamPlayer2DGetVolumeDbMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_volume_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DGetVolumeDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DSetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `volumeDb=`(self: AudioStreamPlayer2D; val: float64) =
  if isNil(audioStreamPlayer2DSetVolumeDbMethodBind):
    audioStreamPlayer2DSetVolumeDbMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"set_volume_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer2DSetVolumeDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer2DUnderscorebusLayoutChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method busLayoutChanged(self: AudioStreamPlayer2D) =
  if isNil(audioStreamPlayer2DUnderscorebusLayoutChangedMethodBind):
    audioStreamPlayer2DUnderscorebusLayoutChangedMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"_bus_layout_changed")
  var ptrCallRet: pointer
  audioStreamPlayer2DUnderscorebusLayoutChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var audioStreamPlayer2DUnderscoreisActiveMethodBind {.threadvar.}: ptr GodotMethodBind
method isActive(self: AudioStreamPlayer2D): bool =
  if isNil(audioStreamPlayer2DUnderscoreisActiveMethodBind):
    audioStreamPlayer2DUnderscoreisActiveMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"_is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DUnderscoreisActiveMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DGetPlaybackPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPlaybackPosition(self: AudioStreamPlayer2D): float64 =
  if isNil(audioStreamPlayer2DGetPlaybackPositionMethodBind):
    audioStreamPlayer2DGetPlaybackPositionMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_playback_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer2DGetPlaybackPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer2DGetStreamPlaybackMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStreamPlayback(self: AudioStreamPlayer2D): AudioStreamPlayback =
  if isNil(audioStreamPlayer2DGetStreamPlaybackMethodBind):
    audioStreamPlayer2DGetStreamPlaybackMethodBind = getMethod(
        cstring"AudioStreamPlayer2D", cstring"get_stream_playback")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayer2DGetStreamPlaybackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioStreamPlayer2DPlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc play(self: AudioStreamPlayer2D; fromPosition: float64 = 0.0) =
  if isNil(audioStreamPlayer2DPlayMethodBind):
    audioStreamPlayer2DPlayMethodBind = getMethod(cstring"AudioStreamPlayer2D",
        cstring"play")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromPosition)
  var ptrCallRet: pointer
  audioStreamPlayer2DPlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamPlayer2DSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: AudioStreamPlayer2D; toPosition: float64) =
  if isNil(audioStreamPlayer2DSeekMethodBind):
    audioStreamPlayer2DSeekMethodBind = getMethod(cstring"AudioStreamPlayer2D",
        cstring"seek")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  audioStreamPlayer2DSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamPlayer2DStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: AudioStreamPlayer2D) =
  if isNil(audioStreamPlayer2DStopMethodBind):
    audioStreamPlayer2DStopMethodBind = getMethod(cstring"AudioStreamPlayer2D",
        cstring"stop")
  var ptrCallRet: pointer
  audioStreamPlayer2DStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
