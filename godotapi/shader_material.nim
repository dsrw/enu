
import
  godot, godottypes, godotinternal, material

export
  godottypes, material

proc shader*(self: ShaderMaterial): Shader {.gcsafe, locks: 0.}
proc `shader=`*(self: ShaderMaterial; val: Shader) {.gcsafe, locks: 0.}
method shaderChanged*(self: ShaderMaterial) {.gcsafe, locks: 0, base.}
proc getShaderParam*(self: ShaderMaterial; param: string): Variant {.gcsafe, locks: 0.}
proc propertyCanRevert*(self: ShaderMaterial; name: string): bool {.gcsafe, locks: 0.}
proc propertyGetRevert*(self: ShaderMaterial; name: string): Variant {.gcsafe, locks: 0.}
proc setShaderParam*(self: ShaderMaterial; param: string; value: Variant) {.gcsafe,
    locks: 0.}
var shaderMaterialGetShaderMethodBind {.threadvar.}: ptr GodotMethodBind
proc shader(self: ShaderMaterial): Shader =
  if isNil(shaderMaterialGetShaderMethodBind):
    shaderMaterialGetShaderMethodBind = getMethod(cstring"ShaderMaterial",
        cstring"get_shader")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  shaderMaterialGetShaderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var shaderMaterialSetShaderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shader=`(self: ShaderMaterial; val: Shader) =
  if isNil(shaderMaterialSetShaderMethodBind):
    shaderMaterialSetShaderMethodBind = getMethod(cstring"ShaderMaterial",
        cstring"set_shader")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  shaderMaterialSetShaderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var shaderMaterialUnderscoreshaderChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method shaderChanged(self: ShaderMaterial) =
  if isNil(shaderMaterialUnderscoreshaderChangedMethodBind):
    shaderMaterialUnderscoreshaderChangedMethodBind = getMethod(
        cstring"ShaderMaterial", cstring"_shader_changed")
  var ptrCallRet: pointer
  shaderMaterialUnderscoreshaderChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var shaderMaterialGetShaderParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc getShaderParam(self: ShaderMaterial; param: string): Variant =
  if isNil(shaderMaterialGetShaderParamMethodBind):
    shaderMaterialGetShaderParamMethodBind = getMethod(cstring"ShaderMaterial",
        cstring"get_shader_param")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(param)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  shaderMaterialGetShaderParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var shaderMaterialPropertyCanRevertMethodBind {.threadvar.}: ptr GodotMethodBind
proc propertyCanRevert(self: ShaderMaterial; name: string): bool =
  if isNil(shaderMaterialPropertyCanRevertMethodBind):
    shaderMaterialPropertyCanRevertMethodBind = getMethod(
        cstring"ShaderMaterial", cstring"property_can_revert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shaderMaterialPropertyCanRevertMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var shaderMaterialPropertyGetRevertMethodBind {.threadvar.}: ptr GodotMethodBind
proc propertyGetRevert(self: ShaderMaterial; name: string): Variant =
  if isNil(shaderMaterialPropertyGetRevertMethodBind):
    shaderMaterialPropertyGetRevertMethodBind = getMethod(
        cstring"ShaderMaterial", cstring"property_get_revert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  shaderMaterialPropertyGetRevertMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var shaderMaterialSetShaderParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc setShaderParam(self: ShaderMaterial; param: string; value: Variant) =
  if isNil(shaderMaterialSetShaderParamMethodBind):
    shaderMaterialSetShaderParamMethodBind = getMethod(cstring"ShaderMaterial",
        cstring"set_shader_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(param)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  shaderMaterialSetShaderParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
