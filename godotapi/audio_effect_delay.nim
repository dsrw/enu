
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc dry*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `dry=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc feedbackactive*(self: AudioEffectDelay): bool {.gcsafe, locks: 0.}
proc `feedbackactive=`*(self: AudioEffectDelay; val: bool) {.gcsafe, locks: 0.}
proc feedbackdelayMs*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `feedbackdelayMs=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc feedbacklevelDb*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `feedbacklevelDb=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc feedbacklowpass*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `feedbacklowpass=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc tap1active*(self: AudioEffectDelay): bool {.gcsafe, locks: 0.}
proc `tap1active=`*(self: AudioEffectDelay; val: bool) {.gcsafe, locks: 0.}
proc tap1delayMs*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `tap1delayMs=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc tap1levelDb*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `tap1levelDb=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc tap1pan*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `tap1pan=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc tap2active*(self: AudioEffectDelay): bool {.gcsafe, locks: 0.}
proc `tap2active=`*(self: AudioEffectDelay; val: bool) {.gcsafe, locks: 0.}
proc tap2delayMs*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `tap2delayMs=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc tap2levelDb*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `tap2levelDb=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
proc tap2pan*(self: AudioEffectDelay): float64 {.gcsafe, locks: 0.}
proc `tap2pan=`*(self: AudioEffectDelay; val: float64) {.gcsafe, locks: 0.}
var audioEffectDelayGetDryMethodBind {.threadvar.}: ptr GodotMethodBind
proc dry(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetDryMethodBind):
    audioEffectDelayGetDryMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"get_dry")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetDryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectDelaySetDryMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dry=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetDryMethodBind):
    audioEffectDelaySetDryMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"set_dry")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetDryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioEffectDelayIsFeedbackActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc feedbackactive(self: AudioEffectDelay): bool =
  if isNil(audioEffectDelayIsFeedbackActiveMethodBind):
    audioEffectDelayIsFeedbackActiveMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"is_feedback_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayIsFeedbackActiveMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetFeedbackActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `feedbackactive=`(self: AudioEffectDelay; val: bool) =
  if isNil(audioEffectDelaySetFeedbackActiveMethodBind):
    audioEffectDelaySetFeedbackActiveMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_feedback_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetFeedbackActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetFeedbackDelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc feedbackdelayMs(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetFeedbackDelayMsMethodBind):
    audioEffectDelayGetFeedbackDelayMsMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"get_feedback_delay_ms")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetFeedbackDelayMsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetFeedbackDelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `feedbackdelayMs=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetFeedbackDelayMsMethodBind):
    audioEffectDelaySetFeedbackDelayMsMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_feedback_delay_ms")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetFeedbackDelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetFeedbackLevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc feedbacklevelDb(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetFeedbackLevelDbMethodBind):
    audioEffectDelayGetFeedbackLevelDbMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"get_feedback_level_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetFeedbackLevelDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetFeedbackLevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `feedbacklevelDb=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetFeedbackLevelDbMethodBind):
    audioEffectDelaySetFeedbackLevelDbMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_feedback_level_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetFeedbackLevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetFeedbackLowpassMethodBind {.threadvar.}: ptr GodotMethodBind
proc feedbacklowpass(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetFeedbackLowpassMethodBind):
    audioEffectDelayGetFeedbackLowpassMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"get_feedback_lowpass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetFeedbackLowpassMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetFeedbackLowpassMethodBind {.threadvar.}: ptr GodotMethodBind
proc `feedbacklowpass=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetFeedbackLowpassMethodBind):
    audioEffectDelaySetFeedbackLowpassMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_feedback_lowpass")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetFeedbackLowpassMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayIsTap1ActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap1active(self: AudioEffectDelay): bool =
  if isNil(audioEffectDelayIsTap1ActiveMethodBind):
    audioEffectDelayIsTap1ActiveMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"is_tap1_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayIsTap1ActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectDelaySetTap1ActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap1active=`(self: AudioEffectDelay; val: bool) =
  if isNil(audioEffectDelaySetTap1ActiveMethodBind):
    audioEffectDelaySetTap1ActiveMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_tap1_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap1ActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetTap1DelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap1delayMs(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetTap1DelayMsMethodBind):
    audioEffectDelayGetTap1DelayMsMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"get_tap1_delay_ms")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetTap1DelayMsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetTap1DelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap1delayMs=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetTap1DelayMsMethodBind):
    audioEffectDelaySetTap1DelayMsMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_tap1_delay_ms")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap1DelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetTap1LevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap1levelDb(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetTap1LevelDbMethodBind):
    audioEffectDelayGetTap1LevelDbMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"get_tap1_level_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetTap1LevelDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetTap1LevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap1levelDb=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetTap1LevelDbMethodBind):
    audioEffectDelaySetTap1LevelDbMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_tap1_level_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap1LevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetTap1PanMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap1pan(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetTap1PanMethodBind):
    audioEffectDelayGetTap1PanMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"get_tap1_pan")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetTap1PanMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectDelaySetTap1PanMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap1pan=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetTap1PanMethodBind):
    audioEffectDelaySetTap1PanMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"set_tap1_pan")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap1PanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayIsTap2ActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap2active(self: AudioEffectDelay): bool =
  if isNil(audioEffectDelayIsTap2ActiveMethodBind):
    audioEffectDelayIsTap2ActiveMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"is_tap2_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayIsTap2ActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectDelaySetTap2ActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap2active=`(self: AudioEffectDelay; val: bool) =
  if isNil(audioEffectDelaySetTap2ActiveMethodBind):
    audioEffectDelaySetTap2ActiveMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_tap2_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap2ActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetTap2DelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap2delayMs(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetTap2DelayMsMethodBind):
    audioEffectDelayGetTap2DelayMsMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"get_tap2_delay_ms")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetTap2DelayMsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetTap2DelayMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap2delayMs=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetTap2DelayMsMethodBind):
    audioEffectDelaySetTap2DelayMsMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_tap2_delay_ms")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap2DelayMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetTap2LevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap2levelDb(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetTap2LevelDbMethodBind):
    audioEffectDelayGetTap2LevelDbMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"get_tap2_level_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetTap2LevelDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectDelaySetTap2LevelDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap2levelDb=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetTap2LevelDbMethodBind):
    audioEffectDelaySetTap2LevelDbMethodBind = getMethod(
        cstring"AudioEffectDelay", cstring"set_tap2_level_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap2LevelDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectDelayGetTap2PanMethodBind {.threadvar.}: ptr GodotMethodBind
proc tap2pan(self: AudioEffectDelay): float64 =
  if isNil(audioEffectDelayGetTap2PanMethodBind):
    audioEffectDelayGetTap2PanMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"get_tap2_pan")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectDelayGetTap2PanMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectDelaySetTap2PanMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tap2pan=`(self: AudioEffectDelay; val: float64) =
  if isNil(audioEffectDelaySetTap2PanMethodBind):
    audioEffectDelaySetTap2PanMethodBind = getMethod(cstring"AudioEffectDelay",
        cstring"set_tap2_pan")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectDelaySetTap2PanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
