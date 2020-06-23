
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc attackUs*(self: AudioEffectCompressor): float64 {.gcsafe, locks: 0.}
proc `attackUs=`*(self: AudioEffectCompressor; val: float64) {.gcsafe, locks: 0.}
proc gain*(self: AudioEffectCompressor): float64 {.gcsafe, locks: 0.}
proc `gain=`*(self: AudioEffectCompressor; val: float64) {.gcsafe, locks: 0.}
proc mix*(self: AudioEffectCompressor): float64 {.gcsafe, locks: 0.}
proc `mix=`*(self: AudioEffectCompressor; val: float64) {.gcsafe, locks: 0.}
proc ratio*(self: AudioEffectCompressor): float64 {.gcsafe, locks: 0.}
proc `ratio=`*(self: AudioEffectCompressor; val: float64) {.gcsafe, locks: 0.}
proc releaseMs*(self: AudioEffectCompressor): float64 {.gcsafe, locks: 0.}
proc `releaseMs=`*(self: AudioEffectCompressor; val: float64) {.gcsafe, locks: 0.}
proc sidechain*(self: AudioEffectCompressor): string {.gcsafe, locks: 0.}
proc `sidechain=`*(self: AudioEffectCompressor; val: string) {.gcsafe, locks: 0.}
proc threshold*(self: AudioEffectCompressor): float64 {.gcsafe, locks: 0.}
proc `threshold=`*(self: AudioEffectCompressor; val: float64) {.gcsafe, locks: 0.}
var audioEffectCompressorGetAttackUsMethodBind {.threadvar.}: ptr GodotMethodBind
proc attackUs(self: AudioEffectCompressor): float64 =
  if isNil(audioEffectCompressorGetAttackUsMethodBind):
    audioEffectCompressorGetAttackUsMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"get_attack_us")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCompressorGetAttackUsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCompressorSetAttackUsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `attackUs=`(self: AudioEffectCompressor; val: float64) =
  if isNil(audioEffectCompressorSetAttackUsMethodBind):
    audioEffectCompressorSetAttackUsMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"set_attack_us")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectCompressorSetAttackUsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectCompressorGetGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc gain(self: AudioEffectCompressor): float64 =
  if isNil(audioEffectCompressorGetGainMethodBind):
    audioEffectCompressorGetGainMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"get_gain")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCompressorGetGainMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectCompressorSetGainMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gain=`(self: AudioEffectCompressor; val: float64) =
  if isNil(audioEffectCompressorSetGainMethodBind):
    audioEffectCompressorSetGainMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"set_gain")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectCompressorSetGainMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectCompressorGetMixMethodBind {.threadvar.}: ptr GodotMethodBind
proc mix(self: AudioEffectCompressor): float64 =
  if isNil(audioEffectCompressorGetMixMethodBind):
    audioEffectCompressorGetMixMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"get_mix")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCompressorGetMixMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectCompressorSetMixMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mix=`(self: AudioEffectCompressor; val: float64) =
  if isNil(audioEffectCompressorSetMixMethodBind):
    audioEffectCompressorSetMixMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"set_mix")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectCompressorSetMixMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectCompressorGetRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc ratio(self: AudioEffectCompressor): float64 =
  if isNil(audioEffectCompressorGetRatioMethodBind):
    audioEffectCompressorGetRatioMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"get_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCompressorGetRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCompressorSetRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ratio=`(self: AudioEffectCompressor; val: float64) =
  if isNil(audioEffectCompressorSetRatioMethodBind):
    audioEffectCompressorSetRatioMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"set_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectCompressorSetRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectCompressorGetReleaseMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc releaseMs(self: AudioEffectCompressor): float64 =
  if isNil(audioEffectCompressorGetReleaseMsMethodBind):
    audioEffectCompressorGetReleaseMsMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"get_release_ms")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCompressorGetReleaseMsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCompressorSetReleaseMsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `releaseMs=`(self: AudioEffectCompressor; val: float64) =
  if isNil(audioEffectCompressorSetReleaseMsMethodBind):
    audioEffectCompressorSetReleaseMsMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"set_release_ms")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectCompressorSetReleaseMsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectCompressorGetSidechainMethodBind {.threadvar.}: ptr GodotMethodBind
proc sidechain(self: AudioEffectCompressor): string =
  if isNil(audioEffectCompressorGetSidechainMethodBind):
    audioEffectCompressorGetSidechainMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"get_sidechain")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioEffectCompressorGetSidechainMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioEffectCompressorSetSidechainMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sidechain=`(self: AudioEffectCompressor; val: string) =
  if isNil(audioEffectCompressorSetSidechainMethodBind):
    audioEffectCompressorSetSidechainMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"set_sidechain")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  audioEffectCompressorSetSidechainMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var audioEffectCompressorGetThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc threshold(self: AudioEffectCompressor): float64 =
  if isNil(audioEffectCompressorGetThresholdMethodBind):
    audioEffectCompressorGetThresholdMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"get_threshold")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCompressorGetThresholdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCompressorSetThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `threshold=`(self: AudioEffectCompressor; val: float64) =
  if isNil(audioEffectCompressorSetThresholdMethodBind):
    audioEffectCompressorSetThresholdMethodBind = getMethod(
        cstring"AudioEffectCompressor", cstring"set_threshold")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectCompressorSetThresholdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
