
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  OP_BURN* = 6'i64
  OP_DARKEN* = 2'i64
  OP_DIFFERENCE* = 1'i64
  OP_DODGE* = 5'i64
  OP_HARD_LIGHT* = 8'i64
  OP_LIGHTEN* = 3'i64
  OP_OVERLAY* = 4'i64
  OP_SCREEN* = 0'i64
  OP_SOFT_LIGHT* = 7'i64
proc operator*(self: VisualShaderNodeColorOp): int64 {.gcsafe, locks: 0.}
proc `operator=`*(self: VisualShaderNodeColorOp; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeColorOpGetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc operator(self: VisualShaderNodeColorOp): int64 =
  if isNil(visualShaderNodeColorOpGetOperatorMethodBind):
    visualShaderNodeColorOpGetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeColorOp", cstring"get_operator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeColorOpGetOperatorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeColorOpSetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `operator=`(self: VisualShaderNodeColorOp; val: int64) =
  if isNil(visualShaderNodeColorOpSetOperatorMethodBind):
    visualShaderNodeColorOpSetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeColorOp", cstring"set_operator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeColorOpSetOperatorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
