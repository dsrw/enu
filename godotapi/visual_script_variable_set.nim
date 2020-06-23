
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc varName*(self: VisualScriptVariableSet): string {.gcsafe, locks: 0.}
proc `varName=`*(self: VisualScriptVariableSet; val: string) {.gcsafe, locks: 0.}
var visualScriptVariableSetGetVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc varName(self: VisualScriptVariableSet): string =
  if isNil(visualScriptVariableSetGetVariableMethodBind):
    visualScriptVariableSetGetVariableMethodBind = getMethod(
        cstring"VisualScriptVariableSet", cstring"get_variable")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptVariableSetGetVariableMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptVariableSetSetVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `varName=`(self: VisualScriptVariableSet; val: string) =
  if isNil(visualScriptVariableSetSetVariableMethodBind):
    visualScriptVariableSetSetVariableMethodBind = getMethod(
        cstring"VisualScriptVariableSet", cstring"set_variable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptVariableSetSetVariableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
