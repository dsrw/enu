
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc typee*(self: VisualScriptSelect): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualScriptSelect; val: int64) {.gcsafe, locks: 0.}
var visualScriptSelectGetTypedMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualScriptSelect): int64 =
  if isNil(visualScriptSelectGetTypedMethodBind):
    visualScriptSelectGetTypedMethodBind = getMethod(cstring"VisualScriptSelect",
        cstring"get_typed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptSelectGetTypedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualScriptSelectSetTypedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualScriptSelect; val: int64) =
  if isNil(visualScriptSelectSetTypedMethodBind):
    visualScriptSelectSetTypedMethodBind = getMethod(cstring"VisualScriptSelect",
        cstring"set_typed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptSelectSetTypedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
