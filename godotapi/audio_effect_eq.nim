
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc getBandCount*(self: AudioEffectEQ): int64 {.gcsafe, locks: 0.}
proc getBandGainDb*(self: AudioEffectEQ; bandIdx: int64): float64 {.gcsafe, locks: 0.}
proc setBandGainDb*(self: AudioEffectEQ; bandIdx: int64; volumeDb: float64) {.gcsafe,
    locks: 0.}
var audioEffectEQGetBandCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBandCount(self: AudioEffectEQ): int64 =
  if isNil(audioEffectEQGetBandCountMethodBind):
    audioEffectEQGetBandCountMethodBind = getMethod(cstring"AudioEffectEQ",
        cstring"get_band_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectEQGetBandCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectEQGetBandGainDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBandGainDb(self: AudioEffectEQ; bandIdx: int64): float64 =
  if isNil(audioEffectEQGetBandGainDbMethodBind):
    audioEffectEQGetBandGainDbMethodBind = getMethod(cstring"AudioEffectEQ",
        cstring"get_band_gain_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bandIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectEQGetBandGainDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectEQSetBandGainDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBandGainDb(self: AudioEffectEQ; bandIdx: int64; volumeDb: float64) =
  if isNil(audioEffectEQSetBandGainDbMethodBind):
    audioEffectEQSetBandGainDbMethodBind = getMethod(cstring"AudioEffectEQ",
        cstring"set_band_gain_db")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bandIdx)
  argsToPassToGodot[][1] = unsafeAddr(volumeDb)
  var ptrCallRet: pointer
  audioEffectEQSetBandGainDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
