
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  ATTENUATION_DISABLED* = 3'i64
  ATTENUATION_INVERSE_DISTANCE* = 0'i64
  ATTENUATION_INVERSE_SQUARE_DISTANCE* = 1'i64
  ATTENUATION_LOGARITHMIC* = 2'i64
  DOPPLER_TRACKING_DISABLED* = 0'i64
  DOPPLER_TRACKING_IDLE_STEP* = 1'i64
  DOPPLER_TRACKING_PHYSICS_STEP* = 2'i64
  OUT_OF_RANGE_MIX* = 0'i64
  OUT_OF_RANGE_PAUSE* = 1'i64
proc areaMask*(self: AudioStreamPlayer3D): int64 {.gcsafe, locks: 0.}
proc `areaMask=`*(self: AudioStreamPlayer3D; val: int64) {.gcsafe, locks: 0.}
proc attenuationFilterCutoffHz*(self: AudioStreamPlayer3D): float64 {.gcsafe,
    locks: 0.}
proc `attenuationFilterCutoffHz=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe,
    locks: 0.}
proc attenuationFilterDb*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc `attenuationFilterDb=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe,
    locks: 0.}
proc attenuationModel*(self: AudioStreamPlayer3D): int64 {.gcsafe, locks: 0.}
proc `attenuationModel=`*(self: AudioStreamPlayer3D; val: int64) {.gcsafe, locks: 0.}
proc autoplay*(self: AudioStreamPlayer3D): bool {.gcsafe, locks: 0.}
proc `autoplay=`*(self: AudioStreamPlayer3D; val: bool) {.gcsafe, locks: 0.}
proc bus*(self: AudioStreamPlayer3D): string {.gcsafe, locks: 0.}
proc `bus=`*(self: AudioStreamPlayer3D; val: string) {.gcsafe, locks: 0.}
proc dopplerTracking*(self: AudioStreamPlayer3D): int64 {.gcsafe, locks: 0.}
proc `dopplerTracking=`*(self: AudioStreamPlayer3D; val: int64) {.gcsafe, locks: 0.}
proc emissionAngleDegrees*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc `emissionAngleDegrees=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe,
    locks: 0.}
proc emissionAngleEnabled*(self: AudioStreamPlayer3D): bool {.gcsafe, locks: 0.}
proc `emissionAngleEnabled=`*(self: AudioStreamPlayer3D; val: bool) {.gcsafe, locks: 0.}
proc emissionAngleFilterAttenuationDb*(self: AudioStreamPlayer3D): float64 {.gcsafe,
    locks: 0.}
proc `emissionAngleFilterAttenuationDb=`*(self: AudioStreamPlayer3D; val: float64) {.
    gcsafe, locks: 0.}
proc maxDb*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc `maxDb=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe, locks: 0.}
proc maxDistance*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc `maxDistance=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe, locks: 0.}
proc outOfRangeMode*(self: AudioStreamPlayer3D): int64 {.gcsafe, locks: 0.}
proc `outOfRangeMode=`*(self: AudioStreamPlayer3D; val: int64) {.gcsafe, locks: 0.}
proc pitchScale*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc `pitchScale=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe, locks: 0.}
proc playing*(self: AudioStreamPlayer3D): bool {.gcsafe, locks: 0.}
proc `playing=`*(self: AudioStreamPlayer3D; val: bool) {.gcsafe, locks: 0.}
proc stream*(self: AudioStreamPlayer3D): AudioStream {.gcsafe, locks: 0.}
proc `stream=`*(self: AudioStreamPlayer3D; val: AudioStream) {.gcsafe, locks: 0.}
proc streamPaused*(self: AudioStreamPlayer3D): bool {.gcsafe, locks: 0.}
proc `streamPaused=`*(self: AudioStreamPlayer3D; val: bool) {.gcsafe, locks: 0.}
proc unitDb*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc `unitDb=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe, locks: 0.}
proc unitSize*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc `unitSize=`*(self: AudioStreamPlayer3D; val: float64) {.gcsafe, locks: 0.}
method busLayoutChanged*(self: AudioStreamPlayer3D) {.gcsafe, locks: 0, base.}
method isActive*(self: AudioStreamPlayer3D): bool {.gcsafe, locks: 0, base.}
proc getPlaybackPosition*(self: AudioStreamPlayer3D): float64 {.gcsafe, locks: 0.}
proc getStreamPlayback*(self: AudioStreamPlayer3D): AudioStreamPlayback {.gcsafe,
    locks: 0.}
proc play*(self: AudioStreamPlayer3D; fromPosition: float64 = 0.0) {.gcsafe, locks: 0.}
proc seek*(self: AudioStreamPlayer3D; toPosition: float64) {.gcsafe, locks: 0.}
proc stop*(self: AudioStreamPlayer3D) {.gcsafe, locks: 0.}
var audioStreamPlayer3DGetAreaMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaMask(self: AudioStreamPlayer3D): int64 =
  if isNil(audioStreamPlayer3DGetAreaMaskMethodBind):
    audioStreamPlayer3DGetAreaMaskMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_area_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetAreaMaskMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetAreaMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `areaMask=`(self: AudioStreamPlayer3D; val: int64) =
  if isNil(audioStreamPlayer3DSetAreaMaskMethodBind):
    audioStreamPlayer3DSetAreaMaskMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_area_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetAreaMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetAttenuationFilterCutoffHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc attenuationFilterCutoffHz(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetAttenuationFilterCutoffHzMethodBind):
    audioStreamPlayer3DGetAttenuationFilterCutoffHzMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_attenuation_filter_cutoff_hz")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetAttenuationFilterCutoffHzMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var audioStreamPlayer3DSetAttenuationFilterCutoffHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc `attenuationFilterCutoffHz=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetAttenuationFilterCutoffHzMethodBind):
    audioStreamPlayer3DSetAttenuationFilterCutoffHzMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_attenuation_filter_cutoff_hz")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetAttenuationFilterCutoffHzMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetAttenuationFilterDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc attenuationFilterDb(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetAttenuationFilterDbMethodBind):
    audioStreamPlayer3DGetAttenuationFilterDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_attenuation_filter_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetAttenuationFilterDbMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var audioStreamPlayer3DSetAttenuationFilterDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `attenuationFilterDb=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetAttenuationFilterDbMethodBind):
    audioStreamPlayer3DSetAttenuationFilterDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_attenuation_filter_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetAttenuationFilterDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetAttenuationModelMethodBind {.threadvar.}: ptr GodotMethodBind
proc attenuationModel(self: AudioStreamPlayer3D): int64 =
  if isNil(audioStreamPlayer3DGetAttenuationModelMethodBind):
    audioStreamPlayer3DGetAttenuationModelMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_attenuation_model")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetAttenuationModelMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetAttenuationModelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `attenuationModel=`(self: AudioStreamPlayer3D; val: int64) =
  if isNil(audioStreamPlayer3DSetAttenuationModelMethodBind):
    audioStreamPlayer3DSetAttenuationModelMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_attenuation_model")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetAttenuationModelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DIsAutoplayEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoplay(self: AudioStreamPlayer3D): bool =
  if isNil(audioStreamPlayer3DIsAutoplayEnabledMethodBind):
    audioStreamPlayer3DIsAutoplayEnabledMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"is_autoplay_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DIsAutoplayEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetAutoplayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoplay=`(self: AudioStreamPlayer3D; val: bool) =
  if isNil(audioStreamPlayer3DSetAutoplayMethodBind):
    audioStreamPlayer3DSetAutoplayMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_autoplay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetAutoplayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc bus(self: AudioStreamPlayer3D): string =
  if isNil(audioStreamPlayer3DGetBusMethodBind):
    audioStreamPlayer3DGetBusMethodBind = getMethod(cstring"AudioStreamPlayer3D",
        cstring"get_bus")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayer3DGetBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioStreamPlayer3DSetBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bus=`(self: AudioStreamPlayer3D; val: string) =
  if isNil(audioStreamPlayer3DSetBusMethodBind):
    audioStreamPlayer3DSetBusMethodBind = getMethod(cstring"AudioStreamPlayer3D",
        cstring"set_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetBusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var audioStreamPlayer3DGetDopplerTrackingMethodBind {.threadvar.}: ptr GodotMethodBind
proc dopplerTracking(self: AudioStreamPlayer3D): int64 =
  if isNil(audioStreamPlayer3DGetDopplerTrackingMethodBind):
    audioStreamPlayer3DGetDopplerTrackingMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_doppler_tracking")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetDopplerTrackingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetDopplerTrackingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dopplerTracking=`(self: AudioStreamPlayer3D; val: int64) =
  if isNil(audioStreamPlayer3DSetDopplerTrackingMethodBind):
    audioStreamPlayer3DSetDopplerTrackingMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_doppler_tracking")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetDopplerTrackingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetEmissionAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionAngleDegrees(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetEmissionAngleMethodBind):
    audioStreamPlayer3DGetEmissionAngleMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_emission_angle")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetEmissionAngleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetEmissionAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionAngleDegrees=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetEmissionAngleMethodBind):
    audioStreamPlayer3DSetEmissionAngleMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_emission_angle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetEmissionAngleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DIsEmissionAngleEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionAngleEnabled(self: AudioStreamPlayer3D): bool =
  if isNil(audioStreamPlayer3DIsEmissionAngleEnabledMethodBind):
    audioStreamPlayer3DIsEmissionAngleEnabledMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"is_emission_angle_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DIsEmissionAngleEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var audioStreamPlayer3DSetEmissionAngleEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionAngleEnabled=`(self: AudioStreamPlayer3D; val: bool) =
  if isNil(audioStreamPlayer3DSetEmissionAngleEnabledMethodBind):
    audioStreamPlayer3DSetEmissionAngleEnabledMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_emission_angle_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetEmissionAngleEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetEmissionAngleFilterAttenuationDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionAngleFilterAttenuationDb(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetEmissionAngleFilterAttenuationDbMethodBind):
    audioStreamPlayer3DGetEmissionAngleFilterAttenuationDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D",
        cstring"get_emission_angle_filter_attenuation_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetEmissionAngleFilterAttenuationDbMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var audioStreamPlayer3DSetEmissionAngleFilterAttenuationDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionAngleFilterAttenuationDb=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetEmissionAngleFilterAttenuationDbMethodBind):
    audioStreamPlayer3DSetEmissionAngleFilterAttenuationDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D",
        cstring"set_emission_angle_filter_attenuation_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetEmissionAngleFilterAttenuationDbMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetMaxDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxDb(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetMaxDbMethodBind):
    audioStreamPlayer3DGetMaxDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_max_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetMaxDbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamPlayer3DSetMaxDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxDb=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetMaxDbMethodBind):
    audioStreamPlayer3DSetMaxDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_max_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetMaxDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxDistance(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetMaxDistanceMethodBind):
    audioStreamPlayer3DGetMaxDistanceMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_max_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetMaxDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxDistance=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetMaxDistanceMethodBind):
    audioStreamPlayer3DSetMaxDistanceMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_max_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetMaxDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetOutOfRangeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc outOfRangeMode(self: AudioStreamPlayer3D): int64 =
  if isNil(audioStreamPlayer3DGetOutOfRangeModeMethodBind):
    audioStreamPlayer3DGetOutOfRangeModeMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_out_of_range_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetOutOfRangeModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetOutOfRangeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outOfRangeMode=`(self: AudioStreamPlayer3D; val: int64) =
  if isNil(audioStreamPlayer3DSetOutOfRangeModeMethodBind):
    audioStreamPlayer3DSetOutOfRangeModeMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_out_of_range_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetOutOfRangeModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc pitchScale(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetPitchScaleMethodBind):
    audioStreamPlayer3DGetPitchScaleMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_pitch_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetPitchScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetPitchScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pitchScale=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetPitchScaleMethodBind):
    audioStreamPlayer3DSetPitchScaleMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_pitch_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetPitchScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc playing(self: AudioStreamPlayer3D): bool =
  if isNil(audioStreamPlayer3DIsPlayingMethodBind):
    audioStreamPlayer3DIsPlayingMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamPlayer3DUnderscoresetPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playing=`(self: AudioStreamPlayer3D; val: bool) =
  if isNil(audioStreamPlayer3DUnderscoresetPlayingMethodBind):
    audioStreamPlayer3DUnderscoresetPlayingMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"_set_playing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DUnderscoresetPlayingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc stream(self: AudioStreamPlayer3D): AudioStream =
  if isNil(audioStreamPlayer3DGetStreamMethodBind):
    audioStreamPlayer3DGetStreamMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_stream")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayer3DGetStreamMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioStreamPlayer3DSetStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stream=`(self: AudioStreamPlayer3D; val: AudioStream) =
  if isNil(audioStreamPlayer3DSetStreamMethodBind):
    audioStreamPlayer3DSetStreamMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_stream")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  audioStreamPlayer3DSetStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetStreamPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc streamPaused(self: AudioStreamPlayer3D): bool =
  if isNil(audioStreamPlayer3DGetStreamPausedMethodBind):
    audioStreamPlayer3DGetStreamPausedMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_stream_paused")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetStreamPausedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetStreamPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `streamPaused=`(self: AudioStreamPlayer3D; val: bool) =
  if isNil(audioStreamPlayer3DSetStreamPausedMethodBind):
    audioStreamPlayer3DSetStreamPausedMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_stream_paused")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetStreamPausedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetUnitDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc unitDb(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetUnitDbMethodBind):
    audioStreamPlayer3DGetUnitDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_unit_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetUnitDbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamPlayer3DSetUnitDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `unitDb=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetUnitDbMethodBind):
    audioStreamPlayer3DSetUnitDbMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_unit_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetUnitDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DGetUnitSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc unitSize(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetUnitSizeMethodBind):
    audioStreamPlayer3DGetUnitSizeMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_unit_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetUnitSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DSetUnitSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `unitSize=`(self: AudioStreamPlayer3D; val: float64) =
  if isNil(audioStreamPlayer3DSetUnitSizeMethodBind):
    audioStreamPlayer3DSetUnitSizeMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"set_unit_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamPlayer3DSetUnitSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioStreamPlayer3DUnderscorebusLayoutChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method busLayoutChanged(self: AudioStreamPlayer3D) =
  if isNil(audioStreamPlayer3DUnderscorebusLayoutChangedMethodBind):
    audioStreamPlayer3DUnderscorebusLayoutChangedMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"_bus_layout_changed")
  var ptrCallRet: pointer
  audioStreamPlayer3DUnderscorebusLayoutChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var audioStreamPlayer3DUnderscoreisActiveMethodBind {.threadvar.}: ptr GodotMethodBind
method isActive(self: AudioStreamPlayer3D): bool =
  if isNil(audioStreamPlayer3DUnderscoreisActiveMethodBind):
    audioStreamPlayer3DUnderscoreisActiveMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"_is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DUnderscoreisActiveMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DGetPlaybackPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPlaybackPosition(self: AudioStreamPlayer3D): float64 =
  if isNil(audioStreamPlayer3DGetPlaybackPositionMethodBind):
    audioStreamPlayer3DGetPlaybackPositionMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_playback_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamPlayer3DGetPlaybackPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamPlayer3DGetStreamPlaybackMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStreamPlayback(self: AudioStreamPlayer3D): AudioStreamPlayback =
  if isNil(audioStreamPlayer3DGetStreamPlaybackMethodBind):
    audioStreamPlayer3DGetStreamPlaybackMethodBind = getMethod(
        cstring"AudioStreamPlayer3D", cstring"get_stream_playback")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioStreamPlayer3DGetStreamPlaybackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioStreamPlayer3DPlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc play(self: AudioStreamPlayer3D; fromPosition: float64 = 0.0) =
  if isNil(audioStreamPlayer3DPlayMethodBind):
    audioStreamPlayer3DPlayMethodBind = getMethod(cstring"AudioStreamPlayer3D",
        cstring"play")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromPosition)
  var ptrCallRet: pointer
  audioStreamPlayer3DPlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamPlayer3DSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: AudioStreamPlayer3D; toPosition: float64) =
  if isNil(audioStreamPlayer3DSeekMethodBind):
    audioStreamPlayer3DSeekMethodBind = getMethod(cstring"AudioStreamPlayer3D",
        cstring"seek")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  audioStreamPlayer3DSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamPlayer3DStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: AudioStreamPlayer3D) =
  if isNil(audioStreamPlayer3DStopMethodBind):
    audioStreamPlayer3DStopMethodBind = getMethod(cstring"AudioStreamPlayer3D",
        cstring"stop")
  var ptrCallRet: pointer
  audioStreamPlayer3DStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
