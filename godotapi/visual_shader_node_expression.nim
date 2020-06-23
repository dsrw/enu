
import
  godot, godottypes, godotinternal, visual_shader_node_group_base

export
  godottypes, visual_shader_node_group_base

proc expression*(self: VisualShaderNodeExpression): string {.gcsafe, locks: 0.}
proc `expression=`*(self: VisualShaderNodeExpression; val: string) {.gcsafe, locks: 0.}
var visualShaderNodeExpressionGetExpressionMethodBind {.threadvar.}: ptr GodotMethodBind
proc expression(self: VisualShaderNodeExpression): string =
  if isNil(visualShaderNodeExpressionGetExpressionMethodBind):
    visualShaderNodeExpressionGetExpressionMethodBind = getMethod(
        cstring"VisualShaderNodeExpression", cstring"get_expression")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeExpressionGetExpressionMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeExpressionSetExpressionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expression=`(self: VisualShaderNodeExpression; val: string) =
  if isNil(visualShaderNodeExpressionSetExpressionMethodBind):
    visualShaderNodeExpressionSetExpressionMethodBind = getMethod(
        cstring"VisualShaderNodeExpression", cstring"set_expression")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualShaderNodeExpressionSetExpressionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
