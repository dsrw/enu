
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  FUNC_SUM* = 0'i64
  FUNC_X* = 1'i64
  FUNC_Y* = 2'i64
proc function*(self: VisualShaderNodeVectorDerivativeFunc): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeVectorDerivativeFunc; val: int64) {.gcsafe,
    locks: 0.}
var visualShaderNodeVectorDerivativeFuncGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeVectorDerivativeFunc): int64 =
  if isNil(visualShaderNodeVectorDerivativeFuncGetFunctionMethodBind):
    visualShaderNodeVectorDerivativeFuncGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeVectorDerivativeFunc", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeVectorDerivativeFuncGetFunctionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeVectorDerivativeFuncSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeVectorDerivativeFunc; val: int64) =
  if isNil(visualShaderNodeVectorDerivativeFuncSetFunctionMethodBind):
    visualShaderNodeVectorDerivativeFuncSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeVectorDerivativeFunc", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeVectorDerivativeFuncSetFunctionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
