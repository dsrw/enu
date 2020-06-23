
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc typee*(self: VisualScriptConstant): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualScriptConstant; val: int64) {.gcsafe, locks: 0.}
proc value*(self: VisualScriptConstant): Variant {.gcsafe, locks: 0.}
proc `value=`*(self: VisualScriptConstant; val: Variant) {.gcsafe, locks: 0.}
var visualScriptConstantGetConstantTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualScriptConstant): int64 =
  if isNil(visualScriptConstantGetConstantTypeMethodBind):
    visualScriptConstantGetConstantTypeMethodBind = getMethod(
        cstring"VisualScriptConstant", cstring"get_constant_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptConstantGetConstantTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptConstantSetConstantTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualScriptConstant; val: int64) =
  if isNil(visualScriptConstantSetConstantTypeMethodBind):
    visualScriptConstantSetConstantTypeMethodBind = getMethod(
        cstring"VisualScriptConstant", cstring"set_constant_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptConstantSetConstantTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptConstantGetConstantValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc value(self: VisualScriptConstant): Variant =
  if isNil(visualScriptConstantGetConstantValueMethodBind):
    visualScriptConstantGetConstantValueMethodBind = getMethod(
        cstring"VisualScriptConstant", cstring"get_constant_value")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualScriptConstantGetConstantValueMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newVariant(ptrCallVal)

var visualScriptConstantSetConstantValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `value=`(self: VisualScriptConstant; val: Variant) =
  if isNil(visualScriptConstantSetConstantValueMethodBind):
    visualScriptConstantSetConstantValueMethodBind = getMethod(
        cstring"VisualScriptConstant", cstring"set_constant_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotVariant
  var ptrCallRet: pointer
  visualScriptConstantSetConstantValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
