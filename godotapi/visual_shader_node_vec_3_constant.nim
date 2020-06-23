
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc constant*(self: VisualShaderNodeVec3Constant): Vector3 {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualShaderNodeVec3Constant; val: Vector3) {.gcsafe, locks: 0.}
var visualShaderNodeVec3ConstantGetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualShaderNodeVec3Constant): Vector3 =
  if isNil(visualShaderNodeVec3ConstantGetConstantMethodBind):
    visualShaderNodeVec3ConstantGetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeVec3Constant", cstring"get_constant")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeVec3ConstantGetConstantMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeVec3ConstantSetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualShaderNodeVec3Constant; val: Vector3) =
  if isNil(visualShaderNodeVec3ConstantSetConstantMethodBind):
    visualShaderNodeVec3ConstantSetConstantMethodBind = getMethod(
        cstring"VisualShaderNodeVec3Constant", cstring"set_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeVec3ConstantSetConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
