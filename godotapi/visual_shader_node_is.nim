
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

const
  FUNC_IS_INF* = 0'i64
  FUNC_IS_NAN* = 1'i64
proc function*(self: VisualShaderNodeIs): int64 {.gcsafe, locks: 0.}
proc `function=`*(self: VisualShaderNodeIs; val: int64) {.gcsafe, locks: 0.}
var visualShaderNodeIsGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualShaderNodeIs): int64 =
  if isNil(visualShaderNodeIsGetFunctionMethodBind):
    visualShaderNodeIsGetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeIs", cstring"get_function")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeIsGetFunctionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeIsSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualShaderNodeIs; val: int64) =
  if isNil(visualShaderNodeIsSetFunctionMethodBind):
    visualShaderNodeIsSetFunctionMethodBind = getMethod(
        cstring"VisualShaderNodeIs", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeIsSetFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
