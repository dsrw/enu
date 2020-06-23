
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  FUNC_ABS* = 6'i64
  FUNC_ACOS* = 7'i64
  FUNC_ACOSH* = 8'i64
  FUNC_ASIN* = 9'i64
  FUNC_ASINH* = 10'i64
  FUNC_ATAN* = 11'i64
  FUNC_ATANH* = 12'i64
  FUNC_CEIL* = 13'i64
  FUNC_COS* = 14'i64
  FUNC_COSH* = 15'i64
  FUNC_DEGREES* = 16'i64
  FUNC_EXP* = 17'i64
  FUNC_EXP2* = 18'i64
  FUNC_FLOOR* = 19'i64
  FUNC_FRAC* = 20'i64
  FUNC_HSV2RGB* = 5'i64
  FUNC_INVERSE_SQRT* = 21'i64
  FUNC_LOG* = 22'i64
  FUNC_LOG2* = 23'i64
  FUNC_NEGATE* = 2'i64
  FUNC_NORMALIZE* = 0'i64
  FUNC_ONEMINUS* = 34'i64
  FUNC_RADIANS* = 24'i64
  FUNC_RECIPROCAL* = 3'i64
  FUNC_RGB2HSV* = 4'i64
  FUNC_ROUND* = 25'i64
  FUNC_ROUNDEVEN* = 26'i64
  FUNC_SATURATE* = 1'i64
  FUNC_SIGN* = 27'i64
  FUNC_SIN* = 28'i64
  FUNC_SINH* = 29'i64
  FUNC_SQRT* = 30'i64
  FUNC_TAN* = 31'i64
  FUNC_TANH* = 32'i64
  FUNC_TRUNC* = 33'i64
proc function*(self: VisualShaderNodeVectorFunc): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeVectorFunc; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeVectorFuncGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeVectorFunc): int64 =
  if isNil(visualShaderNodeVectorFuncGetFunctionMethodBind):
    visualShaderNodeVectorFuncGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeVectorFunc", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeVectorFuncGetFunctionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeVectorFuncSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeVectorFunc; val: int64) =
  if isNil(visualShaderNodeVectorFuncSetFunctionMethodBind):
    visualShaderNodeVectorFuncSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeVectorFunc", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeVectorFuncSetFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
