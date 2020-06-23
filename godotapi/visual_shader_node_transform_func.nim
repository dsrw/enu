
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  FUNC_INVERSE* = 0'i64
  FUNC_TRANSPOSE* = 1'i64
proc function*(self: VisualShaderNodeTransformFunc): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeTransformFunc; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeTransformFuncGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeTransformFunc): int64 =
  if isNil(visualShaderNodeTransformFuncGetFunctionMethodBind):
    visualShaderNodeTransformFuncGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeTransformFunc", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeTransformFuncGetFunctionMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeTransformFuncSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeTransformFunc; val: int64) =
  if isNil(visualShaderNodeTransformFuncSetFunctionMethodBind):
    visualShaderNodeTransformFuncSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeTransformFunc", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeTransformFuncSetFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
