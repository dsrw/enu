
import
  godot, godottypes, godotinternal, font

export
  godottypes, font

proc ascent*(self: BitmapFont): float64 {.gcsafe, locks: 0.}
proc `ascent=`*(self: BitmapFont; val: float64) {.gcsafe, locks: 0.}
proc chars*(self: BitmapFont): PoolIntArray {.gcsafe, locks: 0.}
proc `chars=`*(self: BitmapFont; val: PoolIntArray) {.gcsafe, locks: 0.}
proc distanceField*(self: BitmapFont): bool {.gcsafe, locks: 0.}
proc `distanceField=`*(self: BitmapFont; val: bool) {.gcsafe, locks: 0.}
proc fallback*(self: BitmapFont): BitmapFont {.gcsafe, locks: 0.}
proc `fallback=`*(self: BitmapFont; val: BitmapFont) {.gcsafe, locks: 0.}
proc height*(self: BitmapFont): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: BitmapFont; val: float64) {.gcsafe, locks: 0.}
proc kernings*(self: BitmapFont): PoolIntArray {.gcsafe, locks: 0.}
proc `kernings=`*(self: BitmapFont; val: PoolIntArray) {.gcsafe, locks: 0.}
proc textures*(self: BitmapFont): Array {.gcsafe, locks: 0.}
proc `textures=`*(self: BitmapFont; val: Array) {.gcsafe, locks: 0.}
proc addChar*(self: BitmapFont; character: int64; texture: int64; rect: Rect2;
             align: Vector2 = vec2(0.0, 0.0); advance: float64 = -1.0) {.gcsafe, locks: 0.}
proc addKerningPair*(self: BitmapFont; charA: int64; charB: int64; kerning: int64) {.
    gcsafe, locks: 0.}
proc addTexture*(self: BitmapFont; texture: Texture) {.gcsafe, locks: 0.}
proc clear*(self: BitmapFont) {.gcsafe, locks: 0.}
proc createFromFnt*(self: BitmapFont; path: string): Error {.gcsafe, locks: 0.}
proc getKerningPair*(self: BitmapFont; charA: int64; charB: int64): int64 {.gcsafe,
    locks: 0.}
proc getTexture*(self: BitmapFont; idx: int64): Texture {.gcsafe, locks: 0.}
proc getTextureCount*(self: BitmapFont): int64 {.gcsafe, locks: 0.}
var bitmapFontGetAscentMethodBind {.threadvar.}: ptr GodotMethodBind
proc ascent(self: BitmapFont): float64 =
  if isNil(bitmapFontGetAscentMethodBind):
    bitmapFontGetAscentMethodBind = getMethod(cstring"BitmapFont",
        cstring"get_ascent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitmapFontGetAscentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bitmapFontSetAscentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ascent=`(self: BitmapFont; val: float64) =
  if isNil(bitmapFontSetAscentMethodBind):
    bitmapFontSetAscentMethodBind = getMethod(cstring"BitmapFont",
        cstring"set_ascent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bitmapFontSetAscentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var bitmapFontUnderscoregetCharsMethodBind {.threadvar.}: ptr GodotMethodBind
proc chars(self: BitmapFont): PoolIntArray =
  if isNil(bitmapFontUnderscoregetCharsMethodBind):
    bitmapFontUnderscoregetCharsMethodBind = getMethod(cstring"BitmapFont",
        cstring"_get_chars")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  bitmapFontUnderscoregetCharsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var bitmapFontUnderscoresetCharsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `chars=`(self: BitmapFont; val: PoolIntArray) =
  if isNil(bitmapFontUnderscoresetCharsMethodBind):
    bitmapFontUnderscoresetCharsMethodBind = getMethod(cstring"BitmapFont",
        cstring"_set_chars")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  bitmapFontUnderscoresetCharsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bitmapFontIsDistanceFieldHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc distanceField(self: BitmapFont): bool =
  if isNil(bitmapFontIsDistanceFieldHintMethodBind):
    bitmapFontIsDistanceFieldHintMethodBind = getMethod(cstring"BitmapFont",
        cstring"is_distance_field_hint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitmapFontIsDistanceFieldHintMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bitmapFontSetDistanceFieldHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc `distanceField=`(self: BitmapFont; val: bool) =
  if isNil(bitmapFontSetDistanceFieldHintMethodBind):
    bitmapFontSetDistanceFieldHintMethodBind = getMethod(cstring"BitmapFont",
        cstring"set_distance_field_hint")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bitmapFontSetDistanceFieldHintMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bitmapFontGetFallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc fallback(self: BitmapFont): BitmapFont =
  if isNil(bitmapFontGetFallbackMethodBind):
    bitmapFontGetFallbackMethodBind = getMethod(cstring"BitmapFont",
        cstring"get_fallback")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  bitmapFontGetFallbackMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var bitmapFontSetFallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fallback=`(self: BitmapFont; val: BitmapFont) =
  if isNil(bitmapFontSetFallbackMethodBind):
    bitmapFontSetFallbackMethodBind = getMethod(cstring"BitmapFont",
        cstring"set_fallback")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  bitmapFontSetFallbackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bitmapFontGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: BitmapFont): float64 =
  if isNil(bitmapFontGetHeightMethodBind):
    bitmapFontGetHeightMethodBind = getMethod(cstring"BitmapFont",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitmapFontGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bitmapFontSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: BitmapFont; val: float64) =
  if isNil(bitmapFontSetHeightMethodBind):
    bitmapFontSetHeightMethodBind = getMethod(cstring"BitmapFont",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bitmapFontSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var bitmapFontUnderscoregetKerningsMethodBind {.threadvar.}: ptr GodotMethodBind
proc kernings(self: BitmapFont): PoolIntArray =
  if isNil(bitmapFontUnderscoregetKerningsMethodBind):
    bitmapFontUnderscoregetKerningsMethodBind = getMethod(cstring"BitmapFont",
        cstring"_get_kernings")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  bitmapFontUnderscoregetKerningsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var bitmapFontUnderscoresetKerningsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `kernings=`(self: BitmapFont; val: PoolIntArray) =
  if isNil(bitmapFontUnderscoresetKerningsMethodBind):
    bitmapFontUnderscoresetKerningsMethodBind = getMethod(cstring"BitmapFont",
        cstring"_set_kernings")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  bitmapFontUnderscoresetKerningsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bitmapFontUnderscoregetTexturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc textures(self: BitmapFont): Array =
  if isNil(bitmapFontUnderscoregetTexturesMethodBind):
    bitmapFontUnderscoregetTexturesMethodBind = getMethod(cstring"BitmapFont",
        cstring"_get_textures")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  bitmapFontUnderscoregetTexturesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var bitmapFontUnderscoresetTexturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textures=`(self: BitmapFont; val: Array) =
  if isNil(bitmapFontUnderscoresetTexturesMethodBind):
    bitmapFontUnderscoresetTexturesMethodBind = getMethod(cstring"BitmapFont",
        cstring"_set_textures")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  bitmapFontUnderscoresetTexturesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bitmapFontAddCharMethodBind {.threadvar.}: ptr GodotMethodBind
proc addChar(self: BitmapFont; character: int64; texture: int64; rect: Rect2;
            align: Vector2 = vec2(0.0, 0.0); advance: float64 = -1.0) =
  if isNil(bitmapFontAddCharMethodBind):
    bitmapFontAddCharMethodBind = getMethod(cstring"BitmapFont", cstring"add_char")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(character)
  argsToPassToGodot[][1] = unsafeAddr(texture)
  argsToPassToGodot[][2] = unsafeAddr(rect)
  argsToPassToGodot[][3] = unsafeAddr(align)
  argsToPassToGodot[][4] = unsafeAddr(advance)
  var ptrCallRet: pointer
  bitmapFontAddCharMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var bitmapFontAddKerningPairMethodBind {.threadvar.}: ptr GodotMethodBind
proc addKerningPair(self: BitmapFont; charA: int64; charB: int64; kerning: int64) =
  if isNil(bitmapFontAddKerningPairMethodBind):
    bitmapFontAddKerningPairMethodBind = getMethod(cstring"BitmapFont",
        cstring"add_kerning_pair")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(charA)
  argsToPassToGodot[][1] = unsafeAddr(charB)
  argsToPassToGodot[][2] = unsafeAddr(kerning)
  var ptrCallRet: pointer
  bitmapFontAddKerningPairMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bitmapFontAddTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTexture(self: BitmapFont; texture: Texture) =
  if isNil(bitmapFontAddTextureMethodBind):
    bitmapFontAddTextureMethodBind = getMethod(cstring"BitmapFont",
        cstring"add_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  bitmapFontAddTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bitmapFontClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: BitmapFont) =
  if isNil(bitmapFontClearMethodBind):
    bitmapFontClearMethodBind = getMethod(cstring"BitmapFont", cstring"clear")
  var ptrCallRet: pointer
  bitmapFontClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bitmapFontCreateFromFntMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFromFnt(self: BitmapFont; path: string): Error =
  if isNil(bitmapFontCreateFromFntMethodBind):
    bitmapFontCreateFromFntMethodBind = getMethod(cstring"BitmapFont",
        cstring"create_from_fnt")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  bitmapFontCreateFromFntMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var bitmapFontGetKerningPairMethodBind {.threadvar.}: ptr GodotMethodBind
proc getKerningPair(self: BitmapFont; charA: int64; charB: int64): int64 =
  if isNil(bitmapFontGetKerningPairMethodBind):
    bitmapFontGetKerningPairMethodBind = getMethod(cstring"BitmapFont",
        cstring"get_kerning_pair")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(charA)
  argsToPassToGodot[][1] = unsafeAddr(charB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitmapFontGetKerningPairMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bitmapFontGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTexture(self: BitmapFont; idx: int64): Texture =
  if isNil(bitmapFontGetTextureMethodBind):
    bitmapFontGetTextureMethodBind = getMethod(cstring"BitmapFont",
        cstring"get_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  bitmapFontGetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var bitmapFontGetTextureCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTextureCount(self: BitmapFont): int64 =
  if isNil(bitmapFontGetTextureCountMethodBind):
    bitmapFontGetTextureCountMethodBind = getMethod(cstring"BitmapFont",
        cstring"get_texture_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitmapFontGetTextureCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
