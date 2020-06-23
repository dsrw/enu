
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  OP_ADD* = 0'i64
  OP_ATAN2* = 8'i64
  OP_DIV* = 3'i64
  OP_MAX* = 6'i64
  OP_MIN* = 7'i64
  OP_MOD* = 4'i64
  OP_MUL* = 2'i64
  OP_POW* = 5'i64
  OP_STEP* = 9'i64
  OP_SUB* = 1'i64
proc operator*(self: VisualShaderNodeScalarOp): int64 {.gcsafe, locks: 0.}
proc `operator=`*(self: VisualShaderNodeScalarOp; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeScalarOpGetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc operator(self: VisualShaderNodeScalarOp): int64 =
  if isNil(visualShaderNodeScalarOpGetOperatorMethodBind):
    visualShaderNodeScalarOpGetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeScalarOp", cstring"get_operator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeScalarOpGetOperatorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeScalarOpSetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `operator=`(self: VisualShaderNodeScalarOp; val: int64) =
  if isNil(visualShaderNodeScalarOpSetOperatorMethodBind):
    visualShaderNodeScalarOpSetOperatorMethodBind = getMethod(
        cstring"VisualShaderNodeScalarOp", cstring"set_operator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeScalarOpSetOperatorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
