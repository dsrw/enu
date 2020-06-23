
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  BYTES_TO_VAR* = 62'i64
  COLORN* = 63'i64
  FUNC_FUNCREF* = 50'i64
  FUNC_MAX* = 68'i64
  LOGIC_CLAMP* = 47'i64
  LOGIC_MAX* = 45'i64
  LOGIC_MIN* = 46'i64
  LOGIC_NEAREST_PO2* = 48'i64
  MATH_ABS* = 16'i64
  MATH_ACOS* = 7'i64
  MATH_ASIN* = 6'i64
  MATH_ATAN* = 8'i64
  MATH_ATAN2* = 9'i64
  MATH_CARTESIAN2POLAR* = 42'i64
  MATH_CEIL* = 14'i64
  MATH_COS* = 1'i64
  MATH_COSH* = 4'i64
  MATH_DB2LINEAR* = 40'i64
  MATH_DECIMALS* = 24'i64
  MATH_DECTIME* = 30'i64
  MATH_DEG2RAD* = 37'i64
  MATH_EASE* = 23'i64
  MATH_EXP* = 20'i64
  MATH_FLOOR* = 13'i64
  MATH_FMOD* = 11'i64
  MATH_FPOSMOD* = 12'i64
  MATH_INVERSE_LERP* = 27'i64
  MATH_ISINF* = 22'i64
  MATH_ISNAN* = 21'i64
  MATH_LERP* = 26'i64
  MATH_LERP_ANGLE* = 66'i64
  MATH_LINEAR2DB* = 39'i64
  MATH_LOG* = 19'i64
  MATH_MOVE_TOWARD* = 29'i64
  MATH_POLAR2CARTESIAN* = 41'i64
  MATH_POSMOD* = 65'i64
  MATH_POW* = 18'i64
  MATH_RAD2DEG* = 38'i64
  MATH_RAND* = 32'i64
  MATH_RANDF* = 33'i64
  MATH_RANDOM* = 34'i64
  MATH_RANDOMIZE* = 31'i64
  MATH_RANDSEED* = 36'i64
  MATH_RANGE_LERP* = 28'i64
  MATH_ROUND* = 15'i64
  MATH_SEED* = 35'i64
  MATH_SIGN* = 17'i64
  MATH_SIN* = 0'i64
  MATH_SINH* = 3'i64
  MATH_SMOOTHSTEP* = 64'i64
  MATH_SQRT* = 10'i64
  MATH_STEPIFY* = 25'i64
  MATH_TAN* = 2'i64
  MATH_TANH* = 5'i64
  MATH_WRAP* = 43'i64
  MATH_WRAPF* = 44'i64
  OBJ_WEAKREF* = 49'i64
  STR_TO_VAR* = 60'i64
  TEXT_CHAR* = 54'i64
  TEXT_ORD* = 67'i64
  TEXT_PRINT* = 56'i64
  TEXT_PRINTERR* = 57'i64
  TEXT_PRINTRAW* = 58'i64
  TEXT_STR* = 55'i64
  TYPE_CONVERT* = 51'i64
  TYPE_EXISTS* = 53'i64
  TYPE_OF* = 52'i64
  VAR_TO_BYTES* = 61'i64
  VAR_TO_STR* = 59'i64
proc function*(self: VisualScriptBuiltinFunc): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualScriptBuiltinFunc; val: int64) {.gcsafe, locks: 0.}
var visualScriptBuiltinFuncGetFuncMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualScriptBuiltinFunc): int64 =
  if isNil(visualScriptBuiltinFuncGetFuncMethodBind):
    visualScriptBuiltinFuncGetFuncMethodBind = getMethod(
        cstring"VisualScriptBuiltinFunc", cstring"get_func")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptBuiltinFuncGetFuncMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptBuiltinFuncSetFuncMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualScriptBuiltinFunc; val: int64) =
  if isNil(visualScriptBuiltinFuncSetFuncMethodBind):
    visualScriptBuiltinFuncSetFuncMethodBind = getMethod(
        cstring"VisualScriptBuiltinFunc", cstring"set_func")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptBuiltinFuncSetFuncMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
