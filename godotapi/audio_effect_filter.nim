
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

const
  FILTER_12DB* = 1'i64
  FILTER_18DB* = 2'i64
  FILTER_24DB* = 3'i64
  FILTER_6DB* = 0'i64
proc cutoffHz*(self: AudioEffectFilter): float64 {.gcsafe, locks: 0.}
proc `cutoffHz=`*(self: AudioEffectFilter; val: float64) {.gcsafe, locks: 0.}
proc db*(self: AudioEffectFilter): int64 {.gcsafe, locks: 0.}
proc `db=`*(self: AudioEffectFilter; val: int64) {.gcsafe, locks: 0.}
proc gain*(self: AudioEffectFilter): float64 {.gcsafe, locks: 0.}
proc `gain=`*(self: AudioEffectFilter; val: float64) {.gcsafe, locks: 0.}
proc resonance*(self: AudioEffectFilter): float64 {.gcsafe, locks: 0.}
proc `resonance=`*(self: AudioEffectFilter; val: float64) {.gcsafe, locks: 0.}
var audioEffectFilterGetCutoffMethodBind {.threadvar.}: ptr GodotMethodBind
proc cutoffHz(self: AudioEffectFilter): float64 =
  if isNil(audioEffectFilterGetCutoffMethodBind):
    audioEffectFilterGetCutoffMethodBind = getMethod(cstring"AudioEffectFilter",
        cstring"get_cutoff")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectFilterGetCutoffMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectFilterSetCutoffMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cutoffHz=`(self: AudioEffectFilter; val: float64) =
  if isNil(audioEffectFilterSetCutoffMethodBind):
    audioEffectFilterSetCutoffMethodBind = getMethod(cstring"AudioEffectFilter",
        cstring"set_cutoff")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectFilterSetCutoffMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectFilterGetDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc db(self: AudioEffectFilter): int64 =
  if isNil(audioEffectFilterGetDbMethodBind):
    audioEffectFilterGetDbMethodBind = getMethod(cstring"AudioEffectFilter",
        cstring"get_db")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectFilterGetDbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectFilterSetDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `db=`(self: AudioEffectFilter; val: int64) =
  if isNil(audioEffectFilterSetDbMethodBind):
    audioEffectFilterSetDbMethodBind = getMethod(cstring"AudioEffectFilter",
        cstring"set_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectFilterSetDbMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioEffectFilterGetGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc gain(self: AudioEffectFilter): float64 =
  if isNil(audioEffectFilterGetGainMethodBind):
    audioEffectFilterGetGainMethodBind = getMethod(cstring"AudioEffectFilter",
        cstring"get_gain")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectFilterGetGainMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectFilterSetGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gain=`(self: AudioEffectFilter; val: float64) =
  if isNil(audioEffectFilterSetGainMethodBind):
    audioEffectFilterSetGainMethodBind = getMethod(cstring"AudioEffectFilter",
        cstring"set_gain")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectFilterSetGainMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioEffectFilterGetResonanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc resonance(self: AudioEffectFilter): float64 =
  if isNil(audioEffectFilterGetResonanceMethodBind):
    audioEffectFilterGetResonanceMethodBind = getMethod(
        cstring"AudioEffectFilter", cstring"get_resonance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectFilterGetResonanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectFilterSetResonanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resonance=`(self: AudioEffectFilter; val: float64) =
  if isNil(audioEffectFilterSetResonanceMethodBind):
    audioEffectFilterSetResonanceMethodBind = getMethod(
        cstring"AudioEffectFilter", cstring"set_resonance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectFilterSetResonanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
