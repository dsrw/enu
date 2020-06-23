
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc constant*(self: VisualScriptEngineSingleton): string {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualScriptEngineSingleton; val: string) {.gcsafe, locks: 0.}
var visualScriptEngineSingletonGetSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualScriptEngineSingleton): string =
  if isNil(visualScriptEngineSingletonGetSingletonMethodBind):
    visualScriptEngineSingletonGetSingletonMethodBind = getMethod(
        cstring"VisualScriptEngineSingleton", cstring"get_singleton")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptEngineSingletonGetSingletonMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptEngineSingletonSetSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualScriptEngineSingleton; val: string) =
  if isNil(visualScriptEngineSingletonSetSingletonMethodBind):
    visualScriptEngineSingletonSetSingletonMethodBind = getMethod(
        cstring"VisualScriptEngineSingleton", cstring"set_singleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptEngineSingletonSetSingletonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
