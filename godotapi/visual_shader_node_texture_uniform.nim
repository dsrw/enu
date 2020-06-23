
import
  godot, godottypes, godotinternal, visual_shader_node_uniform

export
  godottypes, visual_shader_node_uniform

const
  COLOR_DEFAULT_BLACK* = 1'i64
  COLOR_DEFAULT_WHITE* = 0'i64
  TYPE_ANISO* = 3'i64
  TYPE_COLOR* = 1'i64
  TYPE_DATA* = 0'i64
  TYPE_NORMALMAP* = 2'i64
proc colorDefault*(self: VisualShaderNodeTextureUniform): int64 {.gcsafe, locks: 0.}
proc `colorDefault=`*(self: VisualShaderNodeTextureUniform; val: int64) {.gcsafe,
    locks: 0.}
proc textureType*(self: VisualShaderNodeTextureUniform): int64 {.gcsafe, locks: 0.}
proc `textureType=`*(self: VisualShaderNodeTextureUniform; val: int64) {.gcsafe,
    locks: 0.}
var visualShaderNodeTextureUniformGetColorDefaultMethodBind {.threadvar.}: ptr GodotMethodBind
proc colorDefault(self: VisualShaderNodeTextureUniform): int64 =
  if isNil(visualShaderNodeTextureUniformGetColorDefaultMethodBind):
    visualShaderNodeTextureUniformGetColorDefaultMethodBind = getMethod(
        cstring"VisualShaderNodeTextureUniform", cstring"get_color_default")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTextureUniformGetColorDefaultMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeTextureUniformSetColorDefaultMethodBind {.threadvar.}: ptr GodotMethodBind
proc `colorDefault=`(self: VisualShaderNodeTextureUniform; val: int64) =
  if isNil(visualShaderNodeTextureUniformSetColorDefaultMethodBind):
    visualShaderNodeTextureUniformSetColorDefaultMethodBind = getMethod(
        cstring"VisualShaderNodeTextureUniform", cstring"set_color_default")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTextureUniformSetColorDefaultMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualShaderNodeTextureUniformGetTextureTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureType(self: VisualShaderNodeTextureUniform): int64 =
  if isNil(visualShaderNodeTextureUniformGetTextureTypeMethodBind):
    visualShaderNodeTextureUniformGetTextureTypeMethodBind = getMethod(
        cstring"VisualShaderNodeTextureUniform", cstring"get_texture_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTextureUniformGetTextureTypeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeTextureUniformSetTextureTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureType=`(self: VisualShaderNodeTextureUniform; val: int64) =
  if isNil(visualShaderNodeTextureUniformSetTextureTypeMethodBind):
    visualShaderNodeTextureUniformSetTextureTypeMethodBind = getMethod(
        cstring"VisualShaderNodeTextureUniform", cstring"set_texture_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTextureUniformSetTextureTypeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
