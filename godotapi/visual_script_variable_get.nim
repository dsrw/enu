
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc varName*(self: VisualScriptVariableGet): string {.gcsafe, locks: 0.}
proc `varName=`*(self: VisualScriptVariableGet; val: string) {.gcsafe, locks: 0.}
var visualScriptVariableGetGetVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc varName(self: VisualScriptVariableGet): string =
  if isNil(visualScriptVariableGetGetVariableMethodBind):
    visualScriptVariableGetGetVariableMethodBind = getMethod(
        cstring"VisualScriptVariableGet", cstring"get_variable")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptVariableGetGetVariableMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptVariableGetSetVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `varName=`(self: VisualScriptVariableGet; val: string) =
  if isNil(visualScriptVariableGetSetVariableMethodBind):
    visualScriptVariableGetSetVariableMethodBind = getMethod(
        cstring"VisualScriptVariableGet", cstring"set_variable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptVariableGetSetVariableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
