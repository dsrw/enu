
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc resource*(self: VisualScriptPreload): Resource {.gcsafe, locks: 0.}
proc `resource=`*(self: VisualScriptPreload; val: Resource) {.gcsafe, locks: 0.}
var visualScriptPreloadGetPreloadMethodBind {.threadvar.}: ptr GodotMethodBind
proc resource(self: VisualScriptPreload): Resource =
  if isNil(visualScriptPreloadGetPreloadMethodBind):
    visualScriptPreloadGetPreloadMethodBind = getMethod(
        cstring"VisualScriptPreload", cstring"get_preload")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  visualScriptPreloadGetPreloadMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var visualScriptPreloadSetPreloadMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resource=`(self: VisualScriptPreload; val: Resource) =
  if isNil(visualScriptPreloadSetPreloadMethodBind):
    visualScriptPreloadSetPreloadMethodBind = getMethod(
        cstring"VisualScriptPreload", cstring"set_preload")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  visualScriptPreloadSetPreloadMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
