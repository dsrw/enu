
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

proc audioTrack*(self: VideoPlayer): int64 {.gcsafe, locks: 0.}
proc `audioTrack=`*(self: VideoPlayer; val: int64) {.gcsafe, locks: 0.}
proc autoplay*(self: VideoPlayer): bool {.gcsafe, locks: 0.}
proc `autoplay=`*(self: VideoPlayer; val: bool) {.gcsafe, locks: 0.}
proc bufferingMsec*(self: VideoPlayer): int64 {.gcsafe, locks: 0.}
proc `bufferingMsec=`*(self: VideoPlayer; val: int64) {.gcsafe, locks: 0.}
proc bus*(self: VideoPlayer): string {.gcsafe, locks: 0.}
proc `bus=`*(self: VideoPlayer; val: string) {.gcsafe, locks: 0.}
proc expand*(self: VideoPlayer): bool {.gcsafe, locks: 0.}
proc `expand=`*(self: VideoPlayer; val: bool) {.gcsafe, locks: 0.}
proc paused*(self: VideoPlayer): bool {.gcsafe, locks: 0.}
proc `paused=`*(self: VideoPlayer; val: bool) {.gcsafe, locks: 0.}
proc stream*(self: VideoPlayer): VideoStream {.gcsafe, locks: 0.}
proc `stream=`*(self: VideoPlayer; val: VideoStream) {.gcsafe, locks: 0.}
proc streamPosition*(self: VideoPlayer): float64 {.gcsafe, locks: 0.}
proc `streamPosition=`*(self: VideoPlayer; val: float64) {.gcsafe, locks: 0.}
proc volume*(self: VideoPlayer): float64 {.gcsafe, locks: 0.}
proc `volume=`*(self: VideoPlayer; val: float64) {.gcsafe, locks: 0.}
proc volumeDb*(self: VideoPlayer): float64 {.gcsafe, locks: 0.}
proc `volumeDb=`*(self: VideoPlayer; val: float64) {.gcsafe, locks: 0.}
proc getStreamName*(self: VideoPlayer): string {.gcsafe, locks: 0.}
proc getVideoTexture*(self: VideoPlayer): Texture {.gcsafe, locks: 0.}
proc isPlaying*(self: VideoPlayer): bool {.gcsafe, locks: 0.}
proc play*(self: VideoPlayer) {.gcsafe, locks: 0.}
proc stop*(self: VideoPlayer) {.gcsafe, locks: 0.}
var videoPlayerGetAudioTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrack(self: VideoPlayer): int64 =
  if isNil(videoPlayerGetAudioTrackMethodBind):
    videoPlayerGetAudioTrackMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_audio_track")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerGetAudioTrackMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetAudioTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioTrack=`(self: VideoPlayer; val: int64) =
  if isNil(videoPlayerSetAudioTrackMethodBind):
    videoPlayerSetAudioTrackMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_audio_track")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetAudioTrackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var videoPlayerHasAutoplayMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoplay(self: VideoPlayer): bool =
  if isNil(videoPlayerHasAutoplayMethodBind):
    videoPlayerHasAutoplayMethodBind = getMethod(cstring"VideoPlayer",
        cstring"has_autoplay")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerHasAutoplayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetAutoplayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoplay=`(self: VideoPlayer; val: bool) =
  if isNil(videoPlayerSetAutoplayMethodBind):
    videoPlayerSetAutoplayMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_autoplay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetAutoplayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var videoPlayerGetBufferingMsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc bufferingMsec(self: VideoPlayer): int64 =
  if isNil(videoPlayerGetBufferingMsecMethodBind):
    videoPlayerGetBufferingMsecMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_buffering_msec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerGetBufferingMsecMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetBufferingMsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bufferingMsec=`(self: VideoPlayer; val: int64) =
  if isNil(videoPlayerSetBufferingMsecMethodBind):
    videoPlayerSetBufferingMsecMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_buffering_msec")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetBufferingMsecMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var videoPlayerGetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc bus(self: VideoPlayer): string =
  if isNil(videoPlayerGetBusMethodBind):
    videoPlayerGetBusMethodBind = getMethod(cstring"VideoPlayer", cstring"get_bus")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  videoPlayerGetBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var videoPlayerSetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bus=`(self: VideoPlayer; val: string) =
  if isNil(videoPlayerSetBusMethodBind):
    videoPlayerSetBusMethodBind = getMethod(cstring"VideoPlayer", cstring"set_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  videoPlayerSetBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var videoPlayerHasExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc expand(self: VideoPlayer): bool =
  if isNil(videoPlayerHasExpandMethodBind):
    videoPlayerHasExpandMethodBind = getMethod(cstring"VideoPlayer",
        cstring"has_expand")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerHasExpandMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expand=`(self: VideoPlayer; val: bool) =
  if isNil(videoPlayerSetExpandMethodBind):
    videoPlayerSetExpandMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_expand")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetExpandMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var videoPlayerIsPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc paused(self: VideoPlayer): bool =
  if isNil(videoPlayerIsPausedMethodBind):
    videoPlayerIsPausedMethodBind = getMethod(cstring"VideoPlayer",
        cstring"is_paused")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerIsPausedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paused=`(self: VideoPlayer; val: bool) =
  if isNil(videoPlayerSetPausedMethodBind):
    videoPlayerSetPausedMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_paused")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetPausedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var videoPlayerGetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc stream(self: VideoPlayer): VideoStream =
  if isNil(videoPlayerGetStreamMethodBind):
    videoPlayerGetStreamMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_stream")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  videoPlayerGetStreamMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var videoPlayerSetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stream=`(self: VideoPlayer; val: VideoStream) =
  if isNil(videoPlayerSetStreamMethodBind):
    videoPlayerSetStreamMethodBind = getMethod(cstring"VideoPlayer",
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
  videoPlayerSetStreamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var videoPlayerGetStreamPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc streamPosition(self: VideoPlayer): float64 =
  if isNil(videoPlayerGetStreamPositionMethodBind):
    videoPlayerGetStreamPositionMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_stream_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerGetStreamPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetStreamPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `streamPosition=`(self: VideoPlayer; val: float64) =
  if isNil(videoPlayerSetStreamPositionMethodBind):
    videoPlayerSetStreamPositionMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_stream_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetStreamPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var videoPlayerGetVolumeMethodBind {.threadvar.}: ptr GodotMethodBind
proc volume(self: VideoPlayer): float64 =
  if isNil(videoPlayerGetVolumeMethodBind):
    videoPlayerGetVolumeMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_volume")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerGetVolumeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetVolumeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `volume=`(self: VideoPlayer; val: float64) =
  if isNil(videoPlayerSetVolumeMethodBind):
    videoPlayerSetVolumeMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_volume")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetVolumeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var videoPlayerGetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc volumeDb(self: VideoPlayer): float64 =
  if isNil(videoPlayerGetVolumeDbMethodBind):
    videoPlayerGetVolumeDbMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_volume_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerGetVolumeDbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerSetVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `volumeDb=`(self: VideoPlayer; val: float64) =
  if isNil(videoPlayerSetVolumeDbMethodBind):
    videoPlayerSetVolumeDbMethodBind = getMethod(cstring"VideoPlayer",
        cstring"set_volume_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  videoPlayerSetVolumeDbMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var videoPlayerGetStreamNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStreamName(self: VideoPlayer): string =
  if isNil(videoPlayerGetStreamNameMethodBind):
    videoPlayerGetStreamNameMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_stream_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  videoPlayerGetStreamNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var videoPlayerGetVideoTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVideoTexture(self: VideoPlayer): Texture =
  if isNil(videoPlayerGetVideoTextureMethodBind):
    videoPlayerGetVideoTextureMethodBind = getMethod(cstring"VideoPlayer",
        cstring"get_video_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  videoPlayerGetVideoTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var videoPlayerIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPlaying(self: VideoPlayer): bool =
  if isNil(videoPlayerIsPlayingMethodBind):
    videoPlayerIsPlayingMethodBind = getMethod(cstring"VideoPlayer",
        cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  videoPlayerIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerPlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc play(self: VideoPlayer) =
  if isNil(videoPlayerPlayMethodBind):
    videoPlayerPlayMethodBind = getMethod(cstring"VideoPlayer", cstring"play")
  var ptrCallRet: pointer
  videoPlayerPlayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var videoPlayerStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: VideoPlayer) =
  if isNil(videoPlayerStopMethodBind):
    videoPlayerStopMethodBind = getMethod(cstring"VideoPlayer", cstring"stop")
  var ptrCallRet: pointer
  videoPlayerStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
