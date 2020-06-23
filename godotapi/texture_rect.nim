
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  STRETCH_KEEP* = 3'i64
  STRETCH_KEEP_ASPECT* = 5'i64
  STRETCH_KEEP_ASPECT_CENTERED* = 6'i64
  STRETCH_KEEP_ASPECT_COVERED* = 7'i64
  STRETCH_KEEP_CENTERED* = 4'i64
  STRETCH_SCALE* = 1'i64
  STRETCH_SCALE_ON_EXPAND* = 0'i64
  STRETCH_TILE* = 2'i64
proc expand*(self: TextureRect): bool {.gcsafe, locks: 0.}
proc `expand=`*(self: TextureRect; val: bool) {.gcsafe, locks: 0.}
proc flipH*(self: TextureRect): bool {.gcsafe, locks: 0.}
proc `flipH=`*(self: TextureRect; val: bool) {.gcsafe, locks: 0.}
proc flipV*(self: TextureRect): bool {.gcsafe, locks: 0.}
proc `flipV=`*(self: TextureRect; val: bool) {.gcsafe, locks: 0.}
proc stretchMode*(self: TextureRect): int64 {.gcsafe, locks: 0.}
proc `stretchMode=`*(self: TextureRect; val: int64) {.gcsafe, locks: 0.}
proc texture*(self: TextureRect): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: TextureRect; val: Texture) {.gcsafe, locks: 0.}
method textureChanged*(self: TextureRect) {.gcsafe, locks: 0, base.}
var textureRectHasExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc expand(self: TextureRect): bool =
  if isNil(textureRectHasExpandMethodBind):
    textureRectHasExpandMethodBind = getMethod(cstring"TextureRect",
        cstring"has_expand")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureRectHasExpandMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureRectSetExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expand=`(self: TextureRect; val: bool) =
  if isNil(textureRectSetExpandMethodBind):
    textureRectSetExpandMethodBind = getMethod(cstring"TextureRect",
        cstring"set_expand")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureRectSetExpandMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textureRectIsFlippedHMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipH(self: TextureRect): bool =
  if isNil(textureRectIsFlippedHMethodBind):
    textureRectIsFlippedHMethodBind = getMethod(cstring"TextureRect",
        cstring"is_flipped_h")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureRectIsFlippedHMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureRectSetFlipHMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipH=`(self: TextureRect; val: bool) =
  if isNil(textureRectSetFlipHMethodBind):
    textureRectSetFlipHMethodBind = getMethod(cstring"TextureRect",
        cstring"set_flip_h")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureRectSetFlipHMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var textureRectIsFlippedVMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipV(self: TextureRect): bool =
  if isNil(textureRectIsFlippedVMethodBind):
    textureRectIsFlippedVMethodBind = getMethod(cstring"TextureRect",
        cstring"is_flipped_v")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureRectIsFlippedVMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureRectSetFlipVMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipV=`(self: TextureRect; val: bool) =
  if isNil(textureRectSetFlipVMethodBind):
    textureRectSetFlipVMethodBind = getMethod(cstring"TextureRect",
        cstring"set_flip_v")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureRectSetFlipVMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var textureRectGetStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc stretchMode(self: TextureRect): int64 =
  if isNil(textureRectGetStretchModeMethodBind):
    textureRectGetStretchModeMethodBind = getMethod(cstring"TextureRect",
        cstring"get_stretch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureRectGetStretchModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureRectSetStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stretchMode=`(self: TextureRect; val: int64) =
  if isNil(textureRectSetStretchModeMethodBind):
    textureRectSetStretchModeMethodBind = getMethod(cstring"TextureRect",
        cstring"set_stretch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureRectSetStretchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureRectGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: TextureRect): Texture =
  if isNil(textureRectGetTextureMethodBind):
    textureRectGetTextureMethodBind = getMethod(cstring"TextureRect",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureRectGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureRectSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: TextureRect; val: Texture) =
  if isNil(textureRectSetTextureMethodBind):
    textureRectSetTextureMethodBind = getMethod(cstring"TextureRect",
        cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureRectSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textureRectUnderscoretextureChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method textureChanged(self: TextureRect) =
  if isNil(textureRectUnderscoretextureChangedMethodBind):
    textureRectUnderscoretextureChangedMethodBind = getMethod(
        cstring"TextureRect", cstring"_texture_changed")
  var ptrCallRet: pointer
  textureRectUnderscoretextureChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
