
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  OP_AxB* = 0'i64
  OP_AxB_COMP* = 2'i64
  OP_BxA* = 1'i64
  OP_BxA_COMP* = 3'i64
proc operator*(self: VisualShaderNodeTransformMult): int64 {.gcsafe, locks: 0.}
proc `operator=`*(self: VisualShaderNodeTransformMult; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeTransformMultGetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc operator(self: VisualShaderNodeTransformMult): int64 =
  if isNil(visualShaderNodeTransformMultGetOperatorMethodBind):
    visualShaderNodeTransformMultGetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeTransformMult", cstring"get_operator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTransformMultGetOperatorMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeTransformMultSetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `operator=`(self: VisualShaderNodeTransformMult; val: int64) =
  if isNil(visualShaderNodeTransformMultSetOperatorMethodBind):
    visualShaderNodeTransformMultSetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeTransformMult", cstring"set_operator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTransformMultSetOperatorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
