
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc typee*(self: VisualScriptLocalVarSet): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualScriptLocalVarSet; val: int64) {.gcsafe, locks: 0.}
proc varName*(self: VisualScriptLocalVarSet): string {.gcsafe, locks: 0.}
proc `varName=`*(self: VisualScriptLocalVarSet; val: string) {.gcsafe, locks: 0.}
var visualScriptLocalVarSetGetVarTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualScriptLocalVarSet): int64 =
  if isNil(visualScriptLocalVarSetGetVarTypeMethodBind):
    visualScriptLocalVarSetGetVarTypeMethodBind = getMethod(
        cstring"VisualScriptLocalVarSet", cstring"get_var_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptLocalVarSetGetVarTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptLocalVarSetSetVarTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualScriptLocalVarSet; val: int64) =
  if isNil(visualScriptLocalVarSetSetVarTypeMethodBind):
    visualScriptLocalVarSetSetVarTypeMethodBind = getMethod(
        cstring"VisualScriptLocalVarSet", cstring"set_var_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptLocalVarSetSetVarTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptLocalVarSetGetVarNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc varName(self: VisualScriptLocalVarSet): string =
  if isNil(visualScriptLocalVarSetGetVarNameMethodBind):
    visualScriptLocalVarSetGetVarNameMethodBind = getMethod(
        cstring"VisualScriptLocalVarSet", cstring"get_var_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptLocalVarSetGetVarNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptLocalVarSetSetVarNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `varName=`(self: VisualScriptLocalVarSet; val: string) =
  if isNil(visualScriptLocalVarSetSetVarNameMethodBind):
    visualScriptLocalVarSetSetVarNameMethodBind = getMethod(
        cstring"VisualScriptLocalVarSet", cstring"set_var_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptLocalVarSetSetVarNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
