
import
  godot, godottypes, godotinternal, base_button

export
  godottypes, base_button

const
  STRETCH_KEEP* = 2'i64
  STRETCH_KEEP_ASPECT* = 4'i64
  STRETCH_KEEP_ASPECT_CENTERED* = 5'i64
  STRETCH_KEEP_ASPECT_COVERED* = 6'i64
  STRETCH_KEEP_CENTERED* = 3'i64
  STRETCH_SCALE* = 0'i64
  STRETCH_TILE* = 1'i64
proc expand*(self: TextureButton): bool {.gcsafe, locks: 0.}
proc `expand=`*(self: TextureButton; val: bool) {.gcsafe, locks: 0.}
proc stretchMode*(self: TextureButton): int64 {.gcsafe, locks: 0.}
proc `stretchMode=`*(self: TextureButton; val: int64) {.gcsafe, locks: 0.}
proc textureClickMask*(self: TextureButton): BitMap {.gcsafe, locks: 0.}
proc `textureClickMask=`*(self: TextureButton; val: BitMap) {.gcsafe, locks: 0.}
proc textureDisabled*(self: TextureButton): Texture {.gcsafe, locks: 0.}
proc `textureDisabled=`*(self: TextureButton; val: Texture) {.gcsafe, locks: 0.}
proc textureFocused*(self: TextureButton): Texture {.gcsafe, locks: 0.}
proc `textureFocused=`*(self: TextureButton; val: Texture) {.gcsafe, locks: 0.}
proc textureHover*(self: TextureButton): Texture {.gcsafe, locks: 0.}
proc `textureHover=`*(self: TextureButton; val: Texture) {.gcsafe, locks: 0.}
proc textureNormal*(self: TextureButton): Texture {.gcsafe, locks: 0.}
proc `textureNormal=`*(self: TextureButton; val: Texture) {.gcsafe, locks: 0.}
proc texturePressed*(self: TextureButton): Texture {.gcsafe, locks: 0.}
proc `texturePressed=`*(self: TextureButton; val: Texture) {.gcsafe, locks: 0.}
var textureButtonGetExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc expand(self: TextureButton): bool =
  if isNil(textureButtonGetExpandMethodBind):
    textureButtonGetExpandMethodBind = getMethod(cstring"TextureButton",
        cstring"get_expand")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureButtonGetExpandMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureButtonSetExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expand=`(self: TextureButton; val: bool) =
  if isNil(textureButtonSetExpandMethodBind):
    textureButtonSetExpandMethodBind = getMethod(cstring"TextureButton",
        cstring"set_expand")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureButtonSetExpandMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textureButtonGetStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc stretchMode(self: TextureButton): int64 =
  if isNil(textureButtonGetStretchModeMethodBind):
    textureButtonGetStretchModeMethodBind = getMethod(cstring"TextureButton",
        cstring"get_stretch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureButtonGetStretchModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureButtonSetStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stretchMode=`(self: TextureButton; val: int64) =
  if isNil(textureButtonSetStretchModeMethodBind):
    textureButtonSetStretchModeMethodBind = getMethod(cstring"TextureButton",
        cstring"set_stretch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureButtonSetStretchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureButtonGetClickMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureClickMask(self: TextureButton): BitMap =
  if isNil(textureButtonGetClickMaskMethodBind):
    textureButtonGetClickMaskMethodBind = getMethod(cstring"TextureButton",
        cstring"get_click_mask")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureButtonGetClickMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureButtonSetClickMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureClickMask=`(self: TextureButton; val: BitMap) =
  if isNil(textureButtonSetClickMaskMethodBind):
    textureButtonSetClickMaskMethodBind = getMethod(cstring"TextureButton",
        cstring"set_click_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureButtonSetClickMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureButtonGetDisabledTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureDisabled(self: TextureButton): Texture =
  if isNil(textureButtonGetDisabledTextureMethodBind):
    textureButtonGetDisabledTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"get_disabled_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureButtonGetDisabledTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureButtonSetDisabledTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureDisabled=`(self: TextureButton; val: Texture) =
  if isNil(textureButtonSetDisabledTextureMethodBind):
    textureButtonSetDisabledTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"set_disabled_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureButtonSetDisabledTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureButtonGetFocusedTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureFocused(self: TextureButton): Texture =
  if isNil(textureButtonGetFocusedTextureMethodBind):
    textureButtonGetFocusedTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"get_focused_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureButtonGetFocusedTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureButtonSetFocusedTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureFocused=`(self: TextureButton; val: Texture) =
  if isNil(textureButtonSetFocusedTextureMethodBind):
    textureButtonSetFocusedTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"set_focused_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureButtonSetFocusedTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureButtonGetHoverTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureHover(self: TextureButton): Texture =
  if isNil(textureButtonGetHoverTextureMethodBind):
    textureButtonGetHoverTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"get_hover_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureButtonGetHoverTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureButtonSetHoverTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureHover=`(self: TextureButton; val: Texture) =
  if isNil(textureButtonSetHoverTextureMethodBind):
    textureButtonSetHoverTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"set_hover_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureButtonSetHoverTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureButtonGetNormalTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureNormal(self: TextureButton): Texture =
  if isNil(textureButtonGetNormalTextureMethodBind):
    textureButtonGetNormalTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"get_normal_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureButtonGetNormalTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureButtonSetNormalTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureNormal=`(self: TextureButton; val: Texture) =
  if isNil(textureButtonSetNormalTextureMethodBind):
    textureButtonSetNormalTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"set_normal_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureButtonSetNormalTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureButtonGetPressedTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texturePressed(self: TextureButton): Texture =
  if isNil(textureButtonGetPressedTextureMethodBind):
    textureButtonGetPressedTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"get_pressed_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureButtonGetPressedTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureButtonSetPressedTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texturePressed=`(self: TextureButton; val: Texture) =
  if isNil(textureButtonSetPressedTextureMethodBind):
    textureButtonSetPressedTextureMethodBind = getMethod(cstring"TextureButton",
        cstring"set_pressed_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureButtonSetPressedTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
