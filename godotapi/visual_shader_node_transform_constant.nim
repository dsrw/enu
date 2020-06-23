
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc constant*(self: VisualShaderNodeTransformConstant): Transform {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualShaderNodeTransformConstant; val: Transform) {.gcsafe,
    locks: 0.}
var visualShaderNodeTransformConstantGetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualShaderNodeTransformConstant): Transform =
  if isNil(visualShaderNodeTransformConstantGetConstantMethodBind):
    visualShaderNodeTransformConstantGetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeTransformConstant", cstring"get_constant")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTransformConstantGetConstantMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeTransformConstantSetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualShaderNodeTransformConstant; val: Transform) =
  if isNil(visualShaderNodeTransformConstantSetConstantMethodBind):
    visualShaderNodeTransformConstantSetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeTransformConstant", cstring"set_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTransformConstantSetConstantMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
