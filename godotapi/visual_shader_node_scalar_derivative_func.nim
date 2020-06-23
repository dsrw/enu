
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  FUNC_SUM* = 0'i64
  FUNC_X* = 1'i64
  FUNC_Y* = 2'i64
proc function*(self: VisualShaderNodeScalarDerivativeFunc): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeScalarDerivativeFunc; val: int64) {.gcsafe,
    locks: 0.}
var visualShaderNodeScalarDerivativeFuncGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeScalarDerivativeFunc): int64 =
  if isNil(visualShaderNodeScalarDerivativeFuncGetFunctionMethodBind):
    visualShaderNodeScalarDerivativeFuncGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeScalarDerivativeFunc", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeScalarDerivativeFuncGetFunctionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeScalarDerivativeFuncSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeScalarDerivativeFunc; val: int64) =
  if isNil(visualShaderNodeScalarDerivativeFuncSetFunctionMethodBind):
    visualShaderNodeScalarDerivativeFuncSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeScalarDerivativeFunc", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeScalarDerivativeFuncSetFunctionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
