
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  COND_ALL* = 0'i64
  COND_ANY* = 1'i64
  CTYPE_BOOLEAN* = 2'i64
  CTYPE_SCALAR* = 0'i64
  CTYPE_TRANSFORM* = 3'i64
  CTYPE_VECTOR* = 1'i64
  FUNC_EQUAL* = 0'i64
  FUNC_GREATER_THAN* = 2'i64
  FUNC_GREATER_THAN_EQUAL* = 3'i64
  FUNC_LESS_THAN* = 4'i64
  FUNC_LESS_THAN_EQUAL* = 5'i64
  FUNC_NOT_EQUAL* = 1'i64
proc condition*(self: VisualShaderNodeCompare): int64 {.gcsafe, locks: 0.}
proc `condition=`*(self: VisualShaderNodeCompare; val: int64) {.gcsafe, locks: 0.}
proc function*(self: VisualShaderNodeCompare): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeCompare; val: int64) {.gcsafe, locks: 0.}
proc typee*(self: VisualShaderNodeCompare): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualShaderNodeCompare; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeCompareGetConditionMethodBind {.threadvar.}: ptr GodotMethodBind
proc condition(self: VisualShaderNodeCompare): int64 =
  if isNil(visualShaderNodeCompareGetConditionMethodBind):
    visualShaderNodeCompareGetConditionMethodBind = getMethod(
        cstring"VisualShaderNodeCompare", cstring"get_condition")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCompareGetConditionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeCompareSetConditionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `condition=`(self: VisualShaderNodeCompare; val: int64) =
  if isNil(visualShaderNodeCompareSetConditionMethodBind):
    visualShaderNodeCompareSetConditionMethodBind = getMethod(
        cstring"VisualShaderNodeCompare", cstring"set_condition")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeCompareSetConditionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeCompareGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeCompare): int64 =
  if isNil(visualShaderNodeCompareGetFunctionMethodBind):
    visualShaderNodeCompareGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeCompare", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCompareGetFunctionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeCompareSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeCompare; val: int64) =
  if isNil(visualShaderNodeCompareSetFunctionMethodBind):
    visualShaderNodeCompareSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeCompare", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeCompareSetFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeCompareGetComparisonTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualShaderNodeCompare): int64 =
  if isNil(visualShaderNodeCompareGetComparisonTypeMethodBind):
    visualShaderNodeCompareGetComparisonTypeMethodBind = getMethod(
        cstring"VisualShaderNodeCompare", cstring"get_comparison_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCompareGetComparisonTypeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeCompareSetComparisonTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualShaderNodeCompare; val: int64) =
  if isNil(visualShaderNodeCompareSetComparisonTypeMethodBind):
    visualShaderNodeCompareSetComparisonTypeMethodBind = getMethod(
        cstring"VisualShaderNodeCompare", cstring"set_comparison_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeCompareSetComparisonTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
