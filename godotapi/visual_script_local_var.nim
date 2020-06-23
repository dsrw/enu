
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc typee*(self: VisualScriptLocalVar): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualScriptLocalVar; val: int64) {.gcsafe, locks: 0.}
proc varName*(self: VisualScriptLocalVar): string {.gcsafe, locks: 0.}
proc `varName=`*(self: VisualScriptLocalVar; val: string) {.gcsafe, locks: 0.}
var visualScriptLocalVarGetVarTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualScriptLocalVar): int64 =
  if isNil(visualScriptLocalVarGetVarTypeMethodBind):
    visualScriptLocalVarGetVarTypeMethodBind = getMethod(
        cstring"VisualScriptLocalVar", cstring"get_var_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptLocalVarGetVarTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptLocalVarSetVarTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualScriptLocalVar; val: int64) =
  if isNil(visualScriptLocalVarSetVarTypeMethodBind):
    visualScriptLocalVarSetVarTypeMethodBind = getMethod(
        cstring"VisualScriptLocalVar", cstring"set_var_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptLocalVarSetVarTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptLocalVarGetVarNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc varName(self: VisualScriptLocalVar): string =
  if isNil(visualScriptLocalVarGetVarNameMethodBind):
    visualScriptLocalVarGetVarNameMethodBind = getMethod(
        cstring"VisualScriptLocalVar", cstring"get_var_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptLocalVarGetVarNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptLocalVarSetVarNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `varName=`(self: VisualScriptLocalVar; val: string) =
  if isNil(visualScriptLocalVarSetVarNameMethodBind):
    visualScriptLocalVarSetVarNameMethodBind = getMethod(
        cstring"VisualScriptLocalVar", cstring"set_var_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptLocalVarSetVarNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
