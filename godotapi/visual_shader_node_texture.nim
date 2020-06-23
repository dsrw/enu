
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  SOURCE_2D_NORMAL* = 3'i64
  SOURCE_2D_TEXTURE* = 2'i64
  SOURCE_DEPTH* = 4'i64
  SOURCE_PORT* = 5'i64
  SOURCE_SCREEN* = 1'i64
  SOURCE_TEXTURE* = 0'i64
  TYPE_COLOR* = 1'i64
  TYPE_DATA* = 0'i64
  TYPE_NORMALMAP* = 2'i64
proc source*(self: VisualShaderNodeTexture): int64 {.gcsafe, locks: 0.}
proc `source=`*(self: VisualShaderNodeTexture; val: int64) {.gcsafe, locks: 0.}
proc texture*(self: VisualShaderNodeTexture): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: VisualShaderNodeTexture; val: Texture) {.gcsafe, locks: 0.}
proc textureType*(self: VisualShaderNodeTexture): int64 {.gcsafe, locks: 0.}
proc `textureType=`*(self: VisualShaderNodeTexture; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeTextureGetSourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc source(self: VisualShaderNodeTexture): int64 =
  if isNil(visualShaderNodeTextureGetSourceMethodBind):
    visualShaderNodeTextureGetSourceMethodBind = getMethod(
        cstring"VisualShaderNodeTexture", cstring"get_source")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTextureGetSourceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeTextureSetSourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `source=`(self: VisualShaderNodeTexture; val: int64) =
  if isNil(visualShaderNodeTextureSetSourceMethodBind):
    visualShaderNodeTextureSetSourceMethodBind = getMethod(
        cstring"VisualShaderNodeTexture", cstring"set_source")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTextureSetSourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeTextureGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: VisualShaderNodeTexture): Texture =
  if isNil(visualShaderNodeTextureGetTextureMethodBind):
    visualShaderNodeTextureGetTextureMethodBind = getMethod(
        cstring"VisualShaderNodeTexture", cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeTextureGetTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var visualShaderNodeTextureSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: VisualShaderNodeTexture; val: Texture) =
  if isNil(visualShaderNodeTextureSetTextureMethodBind):
    visualShaderNodeTextureSetTextureMethodBind = getMethod(
        cstring"VisualShaderNodeTexture", cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  visualShaderNodeTextureSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeTextureGetTextureTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureType(self: VisualShaderNodeTexture): int64 =
  if isNil(visualShaderNodeTextureGetTextureTypeMethodBind):
    visualShaderNodeTextureGetTextureTypeMethodBind = getMethod(
        cstring"VisualShaderNodeTexture", cstring"get_texture_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTextureGetTextureTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeTextureSetTextureTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureType=`(self: VisualShaderNodeTexture; val: int64) =
  if isNil(visualShaderNodeTextureSetTextureTypeMethodBind):
    visualShaderNodeTextureSetTextureTypeMethodBind = getMethod(
        cstring"VisualShaderNodeTexture", cstring"set_texture_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTextureSetTextureTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
