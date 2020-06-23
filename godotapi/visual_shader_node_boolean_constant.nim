
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc constant*(self: VisualShaderNodeBooleanConstant): bool {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualShaderNodeBooleanConstant; val: bool) {.gcsafe, locks: 0.}
var visualShaderNodeBooleanConstantGetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualShaderNodeBooleanConstant): bool =
  if isNil(visualShaderNodeBooleanConstantGetConstantMethodBind):
    visualShaderNodeBooleanConstantGetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeBooleanConstant", cstring"get_constant")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeBooleanConstantGetConstantMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeBooleanConstantSetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualShaderNodeBooleanConstant; val: bool) =
  if isNil(visualShaderNodeBooleanConstantSetConstantMethodBind):
    visualShaderNodeBooleanConstantSetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeBooleanConstant", cstring"set_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeBooleanConstantSetConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
