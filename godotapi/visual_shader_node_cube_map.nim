
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  SOURCE_PORT* = 1'i64
  SOURCE_TEXTURE* = 0'i64
  TYPE_COLOR* = 1'i64
  TYPE_DATA* = 0'i64
  TYPE_NORMALMAP* = 2'i64
proc cubeMap*(self: VisualShaderNodeCubeMap): CubeMap {.gcsafe, locks: 0.}
proc `cubeMap=`*(self: VisualShaderNodeCubeMap; val: CubeMap) {.gcsafe, locks: 0.}
proc source*(self: VisualShaderNodeCubeMap): int64 {.gcsafe, locks: 0.}
proc `source=`*(self: VisualShaderNodeCubeMap; val: int64) {.gcsafe, locks: 0.}
proc textureType*(self: VisualShaderNodeCubeMap): int64 {.gcsafe, locks: 0.}
proc `textureType=`*(self: VisualShaderNodeCubeMap; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeCubeMapGetCubeMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc cubeMap(self: VisualShaderNodeCubeMap): CubeMap =
  if isNil(visualShaderNodeCubeMapGetCubeMapMethodBind):
    visualShaderNodeCubeMapGetCubeMapMethodBind = getMethod(
        cstring"VisualShaderNodeCubeMap", cstring"get_cube_map")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCubeMapGetCubeMapMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var visualShaderNodeCubeMapSetCubeMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cubeMap=`(self: VisualShaderNodeCubeMap; val: CubeMap) =
  if isNil(visualShaderNodeCubeMapSetCubeMapMethodBind):
    visualShaderNodeCubeMapSetCubeMapMethodBind = getMethod(
        cstring"VisualShaderNodeCubeMap", cstring"set_cube_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  visualShaderNodeCubeMapSetCubeMapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeCubeMapGetSourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc source(self: VisualShaderNodeCubeMap): int64 =
  if isNil(visualShaderNodeCubeMapGetSourceMethodBind):
    visualShaderNodeCubeMapGetSourceMethodBind = getMethod(
        cstring"VisualShaderNodeCubeMap", cstring"get_source")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCubeMapGetSourceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeCubeMapSetSourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `source=`(self: VisualShaderNodeCubeMap; val: int64) =
  if isNil(visualShaderNodeCubeMapSetSourceMethodBind):
    visualShaderNodeCubeMapSetSourceMethodBind = getMethod(
        cstring"VisualShaderNodeCubeMap", cstring"set_source")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeCubeMapSetSourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeCubeMapGetTextureTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureType(self: VisualShaderNodeCubeMap): int64 =
  if isNil(visualShaderNodeCubeMapGetTextureTypeMethodBind):
    visualShaderNodeCubeMapGetTextureTypeMethodBind = getMethod(
        cstring"VisualShaderNodeCubeMap", cstring"get_texture_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCubeMapGetTextureTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeCubeMapSetTextureTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureType=`(self: VisualShaderNodeCubeMap; val: int64) =
  if isNil(visualShaderNodeCubeMapSetTextureTypeMethodBind):
    visualShaderNodeCubeMapSetTextureTypeMethodBind = getMethod(
        cstring"VisualShaderNodeCubeMap", cstring"set_texture_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeCubeMapSetTextureTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
