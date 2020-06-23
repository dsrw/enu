
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  FUNC_ABS* = 12'i64
  FUNC_ACOS* = 4'i64
  FUNC_ACOSH* = 20'i64
  FUNC_ASIN* = 3'i64
  FUNC_ASINH* = 21'i64
  FUNC_ATAN* = 5'i64
  FUNC_ATANH* = 22'i64
  FUNC_CEIL* = 16'i64
  FUNC_COS* = 1'i64
  FUNC_COSH* = 7'i64
  FUNC_DEGREES* = 23'i64
  FUNC_EXP* = 10'i64
  FUNC_EXP2* = 24'i64
  FUNC_FLOOR* = 14'i64
  FUNC_FRAC* = 17'i64
  FUNC_INVERSE_SQRT* = 25'i64
  FUNC_LOG* = 9'i64
  FUNC_LOG2* = 26'i64
  FUNC_NEGATE* = 19'i64
  FUNC_ONEMINUS* = 31'i64
  FUNC_RADIANS* = 27'i64
  FUNC_RECIPROCAL* = 28'i64
  FUNC_ROUND* = 15'i64
  FUNC_ROUNDEVEN* = 29'i64
  FUNC_SATURATE* = 18'i64
  FUNC_SIGN* = 13'i64
  FUNC_SIN* = 0'i64
  FUNC_SINH* = 6'i64
  FUNC_SQRT* = 11'i64
  FUNC_TAN* = 2'i64
  FUNC_TANH* = 8'i64
  FUNC_TRUNC* = 30'i64
proc function*(self: VisualShaderNodeScalarFunc): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeScalarFunc; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeScalarFuncGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeScalarFunc): int64 =
  if isNil(visualShaderNodeScalarFuncGetFunctionMethodBind):
    visualShaderNodeScalarFuncGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeScalarFunc", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeScalarFuncGetFunctionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeScalarFuncSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeScalarFunc; val: int64) =
  if isNil(visualShaderNodeScalarFuncSetFunctionMethodBind):
    visualShaderNodeScalarFuncSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeScalarFunc", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeScalarFuncSetFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
