
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc constant*(self: VisualScriptGlobalConstant): int64 {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualScriptGlobalConstant; val: int64) {.gcsafe, locks: 0.}
var visualScriptGlobalConstantGetGlobalConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualScriptGlobalConstant): int64 =
  if isNil(visualScriptGlobalConstantGetGlobalConstantMethodBind):
    visualScriptGlobalConstantGetGlobalConstantMethodBind = getMethod(
        cstring"VisualScriptGlobalConstant", cstring"get_global_constant")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptGlobalConstantGetGlobalConstantMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptGlobalConstantSetGlobalConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualScriptGlobalConstant; val: int64) =
  if isNil(visualScriptGlobalConstantSetGlobalConstantMethodBind):
    visualScriptGlobalConstantSetGlobalConstantMethodBind = getMethod(
        cstring"VisualScriptGlobalConstant", cstring"set_global_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptGlobalConstantSetGlobalConstantMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
