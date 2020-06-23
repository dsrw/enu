
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc uniformName*(self: VisualShaderNodeUniform): string {.gcsafe, locks: 0.}
proc `uniformName=`*(self: VisualShaderNodeUniform; val: string) {.gcsafe, locks: 0.}
var visualShaderNodeUniformGetUniformNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc uniformName(self: VisualShaderNodeUniform): string =
  if isNil(visualShaderNodeUniformGetUniformNameMethodBind):
    visualShaderNodeUniformGetUniformNameMethodBind = getMethod(
        cstring"VisualShaderNodeUniform", cstring"get_uniform_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeUniformGetUniformNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeUniformSetUniformNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uniformName=`(self: VisualShaderNodeUniform; val: string) =
  if isNil(visualShaderNodeUniformSetUniformNameMethodBind):
    visualShaderNodeUniformSetUniformNameMethodBind = getMethod(
        cstring"VisualShaderNodeUniform", cstring"set_uniform_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualShaderNodeUniformSetUniformNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
