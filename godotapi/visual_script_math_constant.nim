
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  MATH_CONSTANT_E* = 4'i64
  MATH_CONSTANT_HALF_PI* = 2'i64
  MATH_CONSTANT_INF* = 6'i64
  MATH_CONSTANT_MAX* = 8'i64
  MATH_CONSTANT_NAN* = 7'i64
  MATH_CONSTANT_ONE* = 0'i64
  MATH_CONSTANT_PI* = 1'i64
  MATH_CONSTANT_SQRT2* = 5'i64
  MATH_CONSTANT_TAU* = 3'i64
proc constant*(self: VisualScriptMathConstant): int64 {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualScriptMathConstant; val: int64) {.gcsafe, locks: 0.}
var visualScriptMathConstantGetMathConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualScriptMathConstant): int64 =
  if isNil(visualScriptMathConstantGetMathConstantMethodBind):
    visualScriptMathConstantGetMathConstantMethodBind = getMethod(
        cstring"VisualScriptMathConstant", cstring"get_math_constant")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptMathConstantGetMathConstantMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualScriptMathConstantSetMathConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualScriptMathConstant; val: int64) =
  if isNil(visualScriptMathConstantSetMathConstantMethodBind):
    visualScriptMathConstantSetMathConstantMethodBind = getMethod(
        cstring"VisualScriptMathConstant", cstring"set_math_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptMathConstantSetMathConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
