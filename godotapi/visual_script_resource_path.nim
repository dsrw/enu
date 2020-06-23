
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc path*(self: VisualScriptResourcePath): string {.gcsafe, locks: 0.}
proc `path=`*(self: VisualScriptResourcePath; val: string) {.gcsafe, locks: 0.}
var visualScriptResourcePathGetResourcePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc path(self: VisualScriptResourcePath): string =
  if isNil(visualScriptResourcePathGetResourcePathMethodBind):
    visualScriptResourcePathGetResourcePathMethodBind = getMethod(
        cstring"VisualScriptResourcePath", cstring"get_resource_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptResourcePathGetResourcePathMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptResourcePathSetResourcePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `path=`(self: VisualScriptResourcePath; val: string) =
  if isNil(visualScriptResourcePathSetResourcePathMethodBind):
    visualScriptResourcePathSetResourcePathMethodBind = getMethod(
        cstring"VisualScriptResourcePath", cstring"set_resource_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptResourcePathSetResourcePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
