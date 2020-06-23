
import
  godot, godottypes, godotinternal, audio_effect_instance

export
  godottypes, audio_effect_instance

const
  MAGNITUDE_AVERAGE* = 0'i64
  MAGNITUDE_MAX* = 1'i64
proc getMagnitudeForFrequencyRange*(self: AudioEffectSpectrumAnalyzerInstance;
                                   fromHz: float64; toHz: float64;
                                   mode: int64 = 1'i64): Vector2 {.gcsafe, locks: 0.}
var audioEffectSpectrumAnalyzerInstanceGetMagnitudeForFrequencyRangeMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc getMagnitudeForFrequencyRange(self: AudioEffectSpectrumAnalyzerInstance;
                                  fromHz: float64; toHz: float64;
                                  mode: int64 = 1'i64): Vector2 =
  if isNil(audioEffectSpectrumAnalyzerInstanceGetMagnitudeForFrequencyRangeMethodBind):
    audioEffectSpectrumAnalyzerInstanceGetMagnitudeForFrequencyRangeMethodBind = getMethod(
        cstring"AudioEffectSpectrumAnalyzerInstance",
        cstring"get_magnitude_for_frequency_range")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromHz)
  argsToPassToGodot[][1] = unsafeAddr(toHz)
  argsToPassToGodot[][2] = unsafeAddr(mode)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectSpectrumAnalyzerInstanceGetMagnitudeForFrequencyRangeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
