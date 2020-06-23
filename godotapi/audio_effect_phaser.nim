
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc depth*(self: AudioEffectPhaser): float64 {.gcsafe, locks: 0.}
proc `depth=`*(self: AudioEffectPhaser; val: float64) {.gcsafe, locks: 0.}
proc feedback*(self: AudioEffectPhaser): float64 {.gcsafe, locks: 0.}
proc `feedback=`*(self: AudioEffectPhaser; val: float64) {.gcsafe, locks: 0.}
proc rangeMaxHz*(self: AudioEffectPhaser): float64 {.gcsafe, locks: 0.}
proc `rangeMaxHz=`*(self: AudioEffectPhaser; val: float64) {.gcsafe, locks: 0.}
proc rangeMinHz*(self: AudioEffectPhaser): float64 {.gcsafe, locks: 0.}
proc `rangeMinHz=`*(self: AudioEffectPhaser; val: float64) {.gcsafe, locks: 0.}
proc rateHz*(self: AudioEffectPhaser): float64 {.gcsafe, locks: 0.}
proc `rateHz=`*(self: AudioEffectPhaser; val: float64) {.gcsafe, locks: 0.}
var audioEffectPhaserGetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc depth(self: AudioEffectPhaser): float64 =
  if isNil(audioEffectPhaserGetDepthMethodBind):
    audioEffectPhaserGetDepthMethodBind = getMethod(cstring"AudioEffectPhaser",
        cstring"get_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPhaserGetDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectPhaserSetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depth=`(self: AudioEffectPhaser; val: float64) =
  if isNil(audioEffectPhaserSetDepthMethodBind):
    audioEffectPhaserSetDepthMethodBind = getMethod(cstring"AudioEffectPhaser",
        cstring"set_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPhaserSetDepthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectPhaserGetFeedbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc feedback(self: AudioEffectPhaser): float64 =
  if isNil(audioEffectPhaserGetFeedbackMethodBind):
    audioEffectPhaserGetFeedbackMethodBind = getMethod(
        cstring"AudioEffectPhaser", cstring"get_feedback")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPhaserGetFeedbackMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectPhaserSetFeedbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc `feedback=`(self: AudioEffectPhaser; val: float64) =
  if isNil(audioEffectPhaserSetFeedbackMethodBind):
    audioEffectPhaserSetFeedbackMethodBind = getMethod(
        cstring"AudioEffectPhaser", cstring"set_feedback")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPhaserSetFeedbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectPhaserGetRangeMaxHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeMaxHz(self: AudioEffectPhaser): float64 =
  if isNil(audioEffectPhaserGetRangeMaxHzMethodBind):
    audioEffectPhaserGetRangeMaxHzMethodBind = getMethod(
        cstring"AudioEffectPhaser", cstring"get_range_max_hz")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPhaserGetRangeMaxHzMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectPhaserSetRangeMaxHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeMaxHz=`(self: AudioEffectPhaser; val: float64) =
  if isNil(audioEffectPhaserSetRangeMaxHzMethodBind):
    audioEffectPhaserSetRangeMaxHzMethodBind = getMethod(
        cstring"AudioEffectPhaser", cstring"set_range_max_hz")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPhaserSetRangeMaxHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectPhaserGetRangeMinHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeMinHz(self: AudioEffectPhaser): float64 =
  if isNil(audioEffectPhaserGetRangeMinHzMethodBind):
    audioEffectPhaserGetRangeMinHzMethodBind = getMethod(
        cstring"AudioEffectPhaser", cstring"get_range_min_hz")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPhaserGetRangeMinHzMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectPhaserSetRangeMinHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeMinHz=`(self: AudioEffectPhaser; val: float64) =
  if isNil(audioEffectPhaserSetRangeMinHzMethodBind):
    audioEffectPhaserSetRangeMinHzMethodBind = getMethod(
        cstring"AudioEffectPhaser", cstring"set_range_min_hz")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPhaserSetRangeMinHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectPhaserGetRateHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc rateHz(self: AudioEffectPhaser): float64 =
  if isNil(audioEffectPhaserGetRateHzMethodBind):
    audioEffectPhaserGetRateHzMethodBind = getMethod(cstring"AudioEffectPhaser",
        cstring"get_rate_hz")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectPhaserGetRateHzMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectPhaserSetRateHzMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rateHz=`(self: AudioEffectPhaser; val: float64) =
  if isNil(audioEffectPhaserSetRateHzMethodBind):
    audioEffectPhaserSetRateHzMethodBind = getMethod(cstring"AudioEffectPhaser",
        cstring"set_rate_hz")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectPhaserSetRateHzMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
