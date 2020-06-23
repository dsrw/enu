
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc constant*(self: VisualShaderNodeScalarConstant): float64 {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualShaderNodeScalarConstant; val: float64) {.gcsafe,
    locks: 0.}
var visualShaderNodeScalarConstantGetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualShaderNodeScalarConstant): float64 =
  if isNil(visualShaderNodeScalarConstantGetConstantMethodBind):
    visualShaderNodeScalarConstantGetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeScalarConstant", cstring"get_constant")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeScalarConstantGetConstantMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeScalarConstantSetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualShaderNodeScalarConstant; val: float64) =
  if isNil(visualShaderNodeScalarConstantSetConstantMethodBind):
    visualShaderNodeScalarConstantSetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeScalarConstant", cstring"set_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeScalarConstantSetConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
