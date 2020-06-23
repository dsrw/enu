
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  FUNC_GRAYSCALE* = 0'i64
  FUNC_SEPIA* = 1'i64
proc function*(self: VisualShaderNodeColorFunc): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeColorFunc; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeColorFuncGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeColorFunc): int64 =
  if isNil(visualShaderNodeColorFuncGetFunctionMethodBind):
    visualShaderNodeColorFuncGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeColorFunc", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeColorFuncGetFunctionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeColorFuncSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeColorFunc; val: int64) =
  if isNil(visualShaderNodeColorFuncSetFunctionMethodBind):
    visualShaderNodeColorFuncSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeColorFunc", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeColorFuncSetFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
