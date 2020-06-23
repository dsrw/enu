
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  OP_3x3_AxB* = 2'i64
  OP_3x3_BxA* = 3'i64
  OP_AxB* = 0'i64
  OP_BxA* = 1'i64
proc operator*(self: VisualShaderNodeTransformVecMult): int64 {.gcsafe, locks: 0.}
proc `operator=`*(self: VisualShaderNodeTransformVecMult; val: int64) {.gcsafe,
    locks: 0.}
var visualShaderNodeTransformVecMultGetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc operator(self: VisualShaderNodeTransformVecMult): int64 =
  if isNil(visualShaderNodeTransformVecMultGetOperatorMethodBind):
    visualShaderNodeTransformVecMultGetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeTransformVecMult", cstring"get_operator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTransformVecMultGetOperatorMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeTransformVecMultSetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `operator=`(self: VisualShaderNodeTransformVecMult; val: int64) =
  if isNil(visualShaderNodeTransformVecMultSetOperatorMethodBind):
    visualShaderNodeTransformVecMultSetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeTransformVecMult", cstring"set_operator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTransformVecMultSetOperatorMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
