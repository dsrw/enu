
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

method subcall*(self: VisualScriptSubCall; arguments: Variant): Variant {.gcsafe,
    locks: 0, base.}
var visualScriptSubCallUnderscoresubcallMethodBind {.threadvar.}: ptr GodotMethodBind
method subcall(self: VisualScriptSubCall; arguments: Variant): Variant =
  if isNil(visualScriptSubCallUnderscoresubcallMethodBind):
    visualScriptSubCallUnderscoresubcallMethodBind = getMethod(
        cstring"VisualScriptSubCall", cstring"_subcall")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arguments.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualScriptSubCallUnderscoresubcallMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)
