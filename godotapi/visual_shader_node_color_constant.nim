
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc constant*(self: VisualShaderNodeColorConstant): Color {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualShaderNodeColorConstant; val: Color) {.gcsafe, locks: 0.}
var visualShaderNodeColorConstantGetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualShaderNodeColorConstant): Color =
  if isNil(visualShaderNodeColorConstantGetConstantMethodBind):
    visualShaderNodeColorConstantGetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeColorConstant", cstring"get_constant")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeColorConstantGetConstantMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeColorConstantSetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualShaderNodeColorConstant; val: Color) =
  if isNil(visualShaderNodeColorConstantSetConstantMethodBind):
    visualShaderNodeColorConstantSetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeColorConstant", cstring"set_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeColorConstantSetConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
