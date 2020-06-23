
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc inputName*(self: VisualShaderNodeInput): string {.gcsafe, locks: 0.}
proc `inputName=`*(self: VisualShaderNodeInput; val: string) {.gcsafe, locks: 0.}
proc getInputRealName*(self: VisualShaderNodeInput): string {.gcsafe, locks: 0.}
var visualShaderNodeInputGetInputNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc inputName(self: VisualShaderNodeInput): string =
  if isNil(visualShaderNodeInputGetInputNameMethodBind):
    visualShaderNodeInputGetInputNameMethodBind = getMethod(
        cstring"VisualShaderNodeInput", cstring"get_input_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeInputGetInputNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeInputSetInputNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inputName=`(self: VisualShaderNodeInput; val: string) =
  if isNil(visualShaderNodeInputSetInputNameMethodBind):
    visualShaderNodeInputSetInputNameMethodBind = getMethod(
        cstring"VisualShaderNodeInput", cstring"set_input_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualShaderNodeInputSetInputNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualShaderNodeInputGetInputRealNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInputRealName(self: VisualShaderNodeInput): string =
  if isNil(visualShaderNodeInputGetInputRealNameMethodBind):
    visualShaderNodeInputGetInputRealNameMethodBind = getMethod(
        cstring"VisualShaderNodeInput", cstring"get_input_real_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeInputGetInputRealNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
