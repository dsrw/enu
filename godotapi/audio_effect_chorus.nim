
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc dry*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `dry=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice1cutoffHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice1cutoffHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice1delayMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice1delayMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice1depthMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice1depthMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice1levelDb*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice1levelDb=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice1pan*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice1pan=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice1rateHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice1rateHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice2cutoffHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice2cutoffHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice2delayMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice2delayMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice2depthMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice2depthMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice2levelDb*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice2levelDb=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice2pan*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice2pan=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice2rateHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice2rateHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice3cutoffHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice3cutoffHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice3delayMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice3delayMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice3depthMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice3depthMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice3levelDb*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice3levelDb=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice3pan*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice3pan=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice3rateHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice3rateHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice4cutoffHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice4cutoffHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice4delayMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice4delayMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice4depthMs*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice4depthMs=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice4levelDb*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice4levelDb=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice4pan*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice4pan=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voice4rateHz*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `voice4rateHz=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
proc voiceCount*(self: AudioEffectChorus): int64 {.gcsafe, locks: 0.}
proc `voiceCount=`*(self: AudioEffectChorus; val: int64) {.gcsafe, locks: 0.}
proc wet*(self: AudioEffectChorus): float64 {.gcsafe, locks: 0.}
proc `wet=`*(self: AudioEffectChorus; val: float64) {.gcsafe, locks: 0.}
var audioEffectChorusGetDryMethodBind {.threadvar.}: ptr GodotMethodBind
proc dry(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetDryMethodBind):
    audioEffectChorusGetDryMethodBind = getMethod(cstring"AudioEffectChorus",
        cstring"get_dry")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetDryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectChorusSetDryMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dry=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetDryMethodBind):
    audioEffectChorusSetDryMethodBind = getMethod(cstring"AudioEffectChorus",
        cstring"set_dry")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetDryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioEffectChorusGetVoiceCutoffHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc voice1cutoffHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceCutoffHzMethodBind):
    audioEffectChorusGetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_cutoff_hz")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusSetVoiceCutoffHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc `voice1cutoffHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceCutoffHzMethodBind):
    audioEffectChorusSetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_cutoff_hz")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusGetVoiceDelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc voice1delayMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDelayMsMethodBind):
    audioEffectChorusGetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_delay_ms")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusSetVoiceDelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `voice1delayMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDelayMsMethodBind):
    audioEffectChorusSetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_delay_ms")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusGetVoiceDepthMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc voice1depthMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDepthMsMethodBind):
    audioEffectChorusGetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_depth_ms")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusSetVoiceDepthMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `voice1depthMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDepthMsMethodBind):
    audioEffectChorusSetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_depth_ms")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusGetVoiceLevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc voice1levelDb(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceLevelDbMethodBind):
    audioEffectChorusGetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_level_db")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusSetVoiceLevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `voice1levelDb=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceLevelDbMethodBind):
    audioEffectChorusSetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_level_db")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusGetVoicePanMethodBind {.threadvar.}: ptr GodotMethodBind
proc voice1pan(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoicePanMethodBind):
    audioEffectChorusGetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_pan")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusSetVoicePanMethodBind {.threadvar.}: ptr GodotMethodBind
proc `voice1pan=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoicePanMethodBind):
    audioEffectChorusSetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_pan")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusGetVoiceRateHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc voice1rateHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceRateHzMethodBind):
    audioEffectChorusGetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_rate_hz")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusSetVoiceRateHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc `voice1rateHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceRateHzMethodBind):
    audioEffectChorusSetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_rate_hz")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice2cutoffHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceCutoffHzMethodBind):
    audioEffectChorusGetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_cutoff_hz")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice2cutoffHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceCutoffHzMethodBind):
    audioEffectChorusSetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_cutoff_hz")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice2delayMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDelayMsMethodBind):
    audioEffectChorusGetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_delay_ms")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice2delayMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDelayMsMethodBind):
    audioEffectChorusSetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_delay_ms")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice2depthMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDepthMsMethodBind):
    audioEffectChorusGetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_depth_ms")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice2depthMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDepthMsMethodBind):
    audioEffectChorusSetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_depth_ms")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice2levelDb(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceLevelDbMethodBind):
    audioEffectChorusGetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_level_db")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice2levelDb=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceLevelDbMethodBind):
    audioEffectChorusSetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_level_db")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice2pan(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoicePanMethodBind):
    audioEffectChorusGetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_pan")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice2pan=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoicePanMethodBind):
    audioEffectChorusSetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_pan")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice2rateHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceRateHzMethodBind):
    audioEffectChorusGetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_rate_hz")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice2rateHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceRateHzMethodBind):
    audioEffectChorusSetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_rate_hz")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice3cutoffHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceCutoffHzMethodBind):
    audioEffectChorusGetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_cutoff_hz")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice3cutoffHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceCutoffHzMethodBind):
    audioEffectChorusSetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_cutoff_hz")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice3delayMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDelayMsMethodBind):
    audioEffectChorusGetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_delay_ms")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice3delayMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDelayMsMethodBind):
    audioEffectChorusSetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_delay_ms")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice3depthMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDepthMsMethodBind):
    audioEffectChorusGetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_depth_ms")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice3depthMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDepthMsMethodBind):
    audioEffectChorusSetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_depth_ms")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice3levelDb(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceLevelDbMethodBind):
    audioEffectChorusGetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_level_db")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice3levelDb=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceLevelDbMethodBind):
    audioEffectChorusSetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_level_db")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice3pan(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoicePanMethodBind):
    audioEffectChorusGetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_pan")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice3pan=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoicePanMethodBind):
    audioEffectChorusSetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_pan")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice3rateHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceRateHzMethodBind):
    audioEffectChorusGetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_rate_hz")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice3rateHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceRateHzMethodBind):
    audioEffectChorusSetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_rate_hz")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice4cutoffHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceCutoffHzMethodBind):
    audioEffectChorusGetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_cutoff_hz")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice4cutoffHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceCutoffHzMethodBind):
    audioEffectChorusSetVoiceCutoffHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_cutoff_hz")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceCutoffHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice4delayMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDelayMsMethodBind):
    audioEffectChorusGetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_delay_ms")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice4delayMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDelayMsMethodBind):
    audioEffectChorusSetVoiceDelayMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_delay_ms")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice4depthMs(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceDepthMsMethodBind):
    audioEffectChorusGetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_depth_ms")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice4depthMs=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceDepthMsMethodBind):
    audioEffectChorusSetVoiceDepthMsMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_depth_ms")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceDepthMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice4levelDb(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceLevelDbMethodBind):
    audioEffectChorusGetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_level_db")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice4levelDb=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceLevelDbMethodBind):
    audioEffectChorusSetVoiceLevelDbMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_level_db")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice4pan(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoicePanMethodBind):
    audioEffectChorusGetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_pan")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice4pan=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoicePanMethodBind):
    audioEffectChorusSetVoicePanMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_pan")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoicePanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc voice4rateHz(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetVoiceRateHzMethodBind):
    audioEffectChorusGetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_rate_hz")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `voice4rateHz=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetVoiceRateHzMethodBind):
    audioEffectChorusSetVoiceRateHzMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_rate_hz")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusGetVoiceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc voiceCount(self: AudioEffectChorus): int64 =
  if isNil(audioEffectChorusGetVoiceCountMethodBind):
    audioEffectChorusGetVoiceCountMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"get_voice_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetVoiceCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectChorusSetVoiceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `voiceCount=`(self: AudioEffectChorus; val: int64) =
  if isNil(audioEffectChorusSetVoiceCountMethodBind):
    audioEffectChorusSetVoiceCountMethodBind = getMethod(
        cstring"AudioEffectChorus", cstring"set_voice_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetVoiceCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectChorusGetWetMethodBind {.threadvar.}: ptr GodotMethodBind
proc wet(self: AudioEffectChorus): float64 =
  if isNil(audioEffectChorusGetWetMethodBind):
    audioEffectChorusGetWetMethodBind = getMethod(cstring"AudioEffectChorus",
        cstring"get_wet")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectChorusGetWetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectChorusSetWetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `wet=`(self: AudioEffectChorus; val: float64) =
  if isNil(audioEffectChorusSetWetMethodBind):
    audioEffectChorusSetWetMethodBind = getMethod(cstring"AudioEffectChorus",
        cstring"set_wet")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectChorusSetWetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
