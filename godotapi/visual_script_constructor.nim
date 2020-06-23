
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc constructor*(self: VisualScriptConstructor): Dictionary {.gcsafe, locks: 0.}
proc `constructor=`*(self: VisualScriptConstructor; val: Dictionary) {.gcsafe,
    locks: 0.}
proc typee*(self: VisualScriptConstructor): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualScriptConstructor; val: int64) {.gcsafe, locks: 0.}
var visualScriptConstructorGetConstructorMethodBind {.threadvar.}: ptr GodotMethodBind
proc constructor(self: VisualScriptConstructor): Dictionary =
  if isNil(visualScriptConstructorGetConstructorMethodBind):
    visualScriptConstructorGetConstructorMethodBind = getMethod(
        cstring"VisualScriptConstructor", cstring"get_constructor")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  visualScriptConstructorGetConstructorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var visualScriptConstructorSetConstructorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constructor=`(self: VisualScriptConstructor; val: Dictionary) =
  if isNil(visualScriptConstructorSetConstructorMethodBind):
    visualScriptConstructorSetConstructorMethodBind = getMethod(
        cstring"VisualScriptConstructor", cstring"set_constructor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  visualScriptConstructorSetConstructorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptConstructorGetConstructorTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualScriptConstructor): int64 =
  if isNil(visualScriptConstructorGetConstructorTypeMethodBind):
    visualScriptConstructorGetConstructorTypeMethodBind = getMethod(
        cstring"VisualScriptConstructor", cstring"get_constructor_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptConstructorGetConstructorTypeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualScriptConstructorSetConstructorTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualScriptConstructor; val: int64) =
  if isNil(visualScriptConstructorSetConstructorTypeMethodBind):
    visualScriptConstructorSetConstructorTypeMethodBind = getMethod(
        cstring"VisualScriptConstructor", cstring"set_constructor_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptConstructorSetConstructorTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
