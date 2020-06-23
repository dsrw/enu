
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  MODE_CANVAS_ITEM* = 1'i64
  MODE_PARTICLES* = 2'i64
  MODE_SPATIAL* = 0'i64
proc code*(self: Shader): string {.gcsafe, locks: 0.}
proc `code=`*(self: Shader; val: string) {.gcsafe, locks: 0.}
proc customDefines*(self: Shader): string {.gcsafe, locks: 0.}
proc `customDefines=`*(self: Shader; val: string) {.gcsafe, locks: 0.}
proc getDefaultTextureParam*(self: Shader; param: string): Texture {.gcsafe, locks: 0.}
proc getMode*(self: Shader): int64 {.gcsafe, locks: 0.}
proc hasParam*(self: Shader; name: string): bool {.gcsafe, locks: 0.}
proc setDefaultTextureParam*(self: Shader; param: string; texture: Texture) {.gcsafe,
    locks: 0.}
var shaderGetCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc code(self: Shader): string =
  if isNil(shaderGetCodeMethodBind):
    shaderGetCodeMethodBind = getMethod(cstring"Shader", cstring"get_code")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  shaderGetCodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var shaderSetCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `code=`(self: Shader; val: string) =
  if isNil(shaderSetCodeMethodBind):
    shaderSetCodeMethodBind = getMethod(cstring"Shader", cstring"set_code")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  shaderSetCodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var shaderGetCustomDefinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc customDefines(self: Shader): string =
  if isNil(shaderGetCustomDefinesMethodBind):
    shaderGetCustomDefinesMethodBind = getMethod(cstring"Shader",
        cstring"get_custom_defines")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  shaderGetCustomDefinesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var shaderSetCustomDefinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customDefines=`(self: Shader; val: string) =
  if isNil(shaderSetCustomDefinesMethodBind):
    shaderSetCustomDefinesMethodBind = getMethod(cstring"Shader",
        cstring"set_custom_defines")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  shaderSetCustomDefinesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var shaderGetDefaultTextureParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDefaultTextureParam(self: Shader; param: string): Texture =
  if isNil(shaderGetDefaultTextureParamMethodBind):
    shaderGetDefaultTextureParamMethodBind = getMethod(cstring"Shader",
        cstring"get_default_texture_param")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(param)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  shaderGetDefaultTextureParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var shaderGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMode(self: Shader): int64 =
  if isNil(shaderGetModeMethodBind):
    shaderGetModeMethodBind = getMethod(cstring"Shader", cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shaderGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var shaderHasParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasParam(self: Shader; name: string): bool =
  if isNil(shaderHasParamMethodBind):
    shaderHasParamMethodBind = getMethod(cstring"Shader", cstring"has_param")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shaderHasParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var shaderSetDefaultTextureParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDefaultTextureParam(self: Shader; param: string; texture: Texture) =
  if isNil(shaderSetDefaultTextureParamMethodBind):
    shaderSetDefaultTextureParamMethodBind = getMethod(cstring"Shader",
        cstring"set_default_texture_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(param)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  shaderSetDefaultTextureParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
