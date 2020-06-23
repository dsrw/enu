
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc baseScript*(self: VisualScriptTypeCast): string {.gcsafe, locks: 0.}
proc `baseScript=`*(self: VisualScriptTypeCast; val: string) {.gcsafe, locks: 0.}
proc baseType*(self: VisualScriptTypeCast): string {.gcsafe, locks: 0.}
proc `baseType=`*(self: VisualScriptTypeCast; val: string) {.gcsafe, locks: 0.}
var visualScriptTypeCastGetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseScript(self: VisualScriptTypeCast): string =
  if isNil(visualScriptTypeCastGetBaseScriptMethodBind):
    visualScriptTypeCastGetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptTypeCast", cstring"get_base_script")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptTypeCastGetBaseScriptMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptTypeCastSetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseScript=`(self: VisualScriptTypeCast; val: string) =
  if isNil(visualScriptTypeCastSetBaseScriptMethodBind):
    visualScriptTypeCastSetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptTypeCast", cstring"set_base_script")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptTypeCastSetBaseScriptMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptTypeCastGetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseType(self: VisualScriptTypeCast): string =
  if isNil(visualScriptTypeCastGetBaseTypeMethodBind):
    visualScriptTypeCastGetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptTypeCast", cstring"get_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptTypeCastGetBaseTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptTypeCastSetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseType=`(self: VisualScriptTypeCast; val: string) =
  if isNil(visualScriptTypeCastSetBaseTypeMethodBind):
    visualScriptTypeCastSetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptTypeCast", cstring"set_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptTypeCastSetBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
