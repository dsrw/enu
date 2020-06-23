
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc asNormalmap*(self: NoiseTexture): bool {.gcsafe, locks: 0.}
proc `asNormalmap=`*(self: NoiseTexture; val: bool) {.gcsafe, locks: 0.}
proc bumpStrength*(self: NoiseTexture): float64 {.gcsafe, locks: 0.}
proc `bumpStrength=`*(self: NoiseTexture; val: float64) {.gcsafe, locks: 0.}
proc height*(self: NoiseTexture): int64 {.gcsafe, locks: 0.}
proc `height=`*(self: NoiseTexture; val: int64) {.gcsafe, locks: 0.}
proc noise*(self: NoiseTexture): OpenSimplexNoise {.gcsafe, locks: 0.}
proc `noise=`*(self: NoiseTexture; val: OpenSimplexNoise) {.gcsafe, locks: 0.}
proc seamless*(self: NoiseTexture): bool {.gcsafe, locks: 0.}
proc `seamless=`*(self: NoiseTexture; val: bool) {.gcsafe, locks: 0.}
proc width*(self: NoiseTexture): int64 {.gcsafe, locks: 0.}
proc `width=`*(self: NoiseTexture; val: int64) {.gcsafe, locks: 0.}
method generateTexture*(self: NoiseTexture): Image {.gcsafe, locks: 0, base.}
method queueUpdate*(self: NoiseTexture) {.gcsafe, locks: 0, base.}
method threadDone*(self: NoiseTexture; image: Image) {.gcsafe, locks: 0, base.}
method updateTexture*(self: NoiseTexture) {.gcsafe, locks: 0, base.}
var noiseTextureIsNormalmapMethodBind {.threadvar.}: ptr GodotMethodBind
proc asNormalmap(self: NoiseTexture): bool =
  if isNil(noiseTextureIsNormalmapMethodBind):
    noiseTextureIsNormalmapMethodBind = getMethod(cstring"NoiseTexture",
        cstring"is_normalmap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  noiseTextureIsNormalmapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var noiseTextureSetAsNormalmapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `asNormalmap=`(self: NoiseTexture; val: bool) =
  if isNil(noiseTextureSetAsNormalmapMethodBind):
    noiseTextureSetAsNormalmapMethodBind = getMethod(cstring"NoiseTexture",
        cstring"set_as_normalmap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  noiseTextureSetAsNormalmapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var noiseTextureGetBumpStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc bumpStrength(self: NoiseTexture): float64 =
  if isNil(noiseTextureGetBumpStrengthMethodBind):
    noiseTextureGetBumpStrengthMethodBind = getMethod(cstring"NoiseTexture",
        cstring"get_bump_strength")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  noiseTextureGetBumpStrengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var noiseTextureSetBumpStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bumpStrength=`(self: NoiseTexture; val: float64) =
  if isNil(noiseTextureSetBumpStrengthMethodBind):
    noiseTextureSetBumpStrengthMethodBind = getMethod(cstring"NoiseTexture",
        cstring"set_bump_strength")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  noiseTextureSetBumpStrengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var noiseTextureGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: NoiseTexture): int64 =
  if isNil(noiseTextureGetHeightMethodBind):
    noiseTextureGetHeightMethodBind = getMethod(cstring"NoiseTexture",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  noiseTextureGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var noiseTextureSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: NoiseTexture; val: int64) =
  if isNil(noiseTextureSetHeightMethodBind):
    noiseTextureSetHeightMethodBind = getMethod(cstring"NoiseTexture",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  noiseTextureSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var noiseTextureGetNoiseMethodBind {.threadvar.}: ptr GodotMethodBind
proc noise(self: NoiseTexture): OpenSimplexNoise =
  if isNil(noiseTextureGetNoiseMethodBind):
    noiseTextureGetNoiseMethodBind = getMethod(cstring"NoiseTexture",
        cstring"get_noise")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  noiseTextureGetNoiseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var noiseTextureSetNoiseMethodBind {.threadvar.}: ptr GodotMethodBind
proc `noise=`(self: NoiseTexture; val: OpenSimplexNoise) =
  if isNil(noiseTextureSetNoiseMethodBind):
    noiseTextureSetNoiseMethodBind = getMethod(cstring"NoiseTexture",
        cstring"set_noise")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  noiseTextureSetNoiseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var noiseTextureGetSeamlessMethodBind {.threadvar.}: ptr GodotMethodBind
proc seamless(self: NoiseTexture): bool =
  if isNil(noiseTextureGetSeamlessMethodBind):
    noiseTextureGetSeamlessMethodBind = getMethod(cstring"NoiseTexture",
        cstring"get_seamless")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  noiseTextureGetSeamlessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var noiseTextureSetSeamlessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `seamless=`(self: NoiseTexture; val: bool) =
  if isNil(noiseTextureSetSeamlessMethodBind):
    noiseTextureSetSeamlessMethodBind = getMethod(cstring"NoiseTexture",
        cstring"set_seamless")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  noiseTextureSetSeamlessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var noiseTextureGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc width(self: NoiseTexture): int64 =
  if isNil(noiseTextureGetWidthMethodBind):
    noiseTextureGetWidthMethodBind = getMethod(cstring"NoiseTexture",
        cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  noiseTextureGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var noiseTextureSetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `width=`(self: NoiseTexture; val: int64) =
  if isNil(noiseTextureSetWidthMethodBind):
    noiseTextureSetWidthMethodBind = getMethod(cstring"NoiseTexture",
        cstring"set_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  noiseTextureSetWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var noiseTextureUnderscoregenerateTextureMethodBind {.threadvar.}: ptr GodotMethodBind
method generateTexture(self: NoiseTexture): Image =
  if isNil(noiseTextureUnderscoregenerateTextureMethodBind):
    noiseTextureUnderscoregenerateTextureMethodBind = getMethod(
        cstring"NoiseTexture", cstring"_generate_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  noiseTextureUnderscoregenerateTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var noiseTextureUnderscorequeueUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
method queueUpdate(self: NoiseTexture) =
  if isNil(noiseTextureUnderscorequeueUpdateMethodBind):
    noiseTextureUnderscorequeueUpdateMethodBind = getMethod(
        cstring"NoiseTexture", cstring"_queue_update")
  var ptrCallRet: pointer
  noiseTextureUnderscorequeueUpdateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var noiseTextureUnderscorethreadDoneMethodBind {.threadvar.}: ptr GodotMethodBind
method threadDone(self: NoiseTexture; image: Image) =
  if isNil(noiseTextureUnderscorethreadDoneMethodBind):
    noiseTextureUnderscorethreadDoneMethodBind = getMethod(cstring"NoiseTexture",
        cstring"_thread_done")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  noiseTextureUnderscorethreadDoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var noiseTextureUnderscoreupdateTextureMethodBind {.threadvar.}: ptr GodotMethodBind
method updateTexture(self: NoiseTexture) =
  if isNil(noiseTextureUnderscoreupdateTextureMethodBind):
    noiseTextureUnderscoreupdateTextureMethodBind = getMethod(
        cstring"NoiseTexture", cstring"_update_texture")
  var ptrCallRet: pointer
  noiseTextureUnderscoreupdateTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
