
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc ceilingDb*(self: AudioEffectLimiter): float64 {.gcsafe, locks: 0.}
proc `ceilingDb=`*(self: AudioEffectLimiter; val: float64) {.gcsafe, locks: 0.}
proc softClipDb*(self: AudioEffectLimiter): float64 {.gcsafe, locks: 0.}
proc `softClipDb=`*(self: AudioEffectLimiter; val: float64) {.gcsafe, locks: 0.}
proc softClipRatio*(self: AudioEffectLimiter): float64 {.gcsafe, locks: 0.}
proc `softClipRatio=`*(self: AudioEffectLimiter; val: float64) {.gcsafe, locks: 0.}
proc thresholdDb*(self: AudioEffectLimiter): float64 {.gcsafe, locks: 0.}
proc `thresholdDb=`*(self: AudioEffectLimiter; val: float64) {.gcsafe, locks: 0.}
var audioEffectLimiterGetCeilingDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc ceilingDb(self: AudioEffectLimiter): float64 =
  if isNil(audioEffectLimiterGetCeilingDbMethodBind):
    audioEffectLimiterGetCeilingDbMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"get_ceiling_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectLimiterGetCeilingDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectLimiterSetCeilingDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ceilingDb=`(self: AudioEffectLimiter; val: float64) =
  if isNil(audioEffectLimiterSetCeilingDbMethodBind):
    audioEffectLimiterSetCeilingDbMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"set_ceiling_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectLimiterSetCeilingDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectLimiterGetSoftClipDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc softClipDb(self: AudioEffectLimiter): float64 =
  if isNil(audioEffectLimiterGetSoftClipDbMethodBind):
    audioEffectLimiterGetSoftClipDbMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"get_soft_clip_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectLimiterGetSoftClipDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectLimiterSetSoftClipDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `softClipDb=`(self: AudioEffectLimiter; val: float64) =
  if isNil(audioEffectLimiterSetSoftClipDbMethodBind):
    audioEffectLimiterSetSoftClipDbMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"set_soft_clip_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectLimiterSetSoftClipDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectLimiterGetSoftClipRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc softClipRatio(self: AudioEffectLimiter): float64 =
  if isNil(audioEffectLimiterGetSoftClipRatioMethodBind):
    audioEffectLimiterGetSoftClipRatioMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"get_soft_clip_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectLimiterGetSoftClipRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectLimiterSetSoftClipRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `softClipRatio=`(self: AudioEffectLimiter; val: float64) =
  if isNil(audioEffectLimiterSetSoftClipRatioMethodBind):
    audioEffectLimiterSetSoftClipRatioMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"set_soft_clip_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectLimiterSetSoftClipRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectLimiterGetThresholdDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc thresholdDb(self: AudioEffectLimiter): float64 =
  if isNil(audioEffectLimiterGetThresholdDbMethodBind):
    audioEffectLimiterGetThresholdDbMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"get_threshold_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectLimiterGetThresholdDbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectLimiterSetThresholdDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `thresholdDb=`(self: AudioEffectLimiter; val: float64) =
  if isNil(audioEffectLimiterSetThresholdDbMethodBind):
    audioEffectLimiterSetThresholdDbMethodBind = getMethod(
        cstring"AudioEffectLimiter", cstring"set_threshold_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectLimiterSetThresholdDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
