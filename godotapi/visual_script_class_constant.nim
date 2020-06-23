
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc baseType*(self: VisualScriptClassConstant): string {.gcsafe, locks: 0.}
proc `baseType=`*(self: VisualScriptClassConstant; val: string) {.gcsafe, locks: 0.}
proc constant*(self: VisualScriptClassConstant): string {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualScriptClassConstant; val: string) {.gcsafe, locks: 0.}
var visualScriptClassConstantGetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseType(self: VisualScriptClassConstant): string =
  if isNil(visualScriptClassConstantGetBaseTypeMethodBind):
    visualScriptClassConstantGetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptClassConstant", cstring"get_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptClassConstantGetBaseTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptClassConstantSetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseType=`(self: VisualScriptClassConstant; val: string) =
  if isNil(visualScriptClassConstantSetBaseTypeMethodBind):
    visualScriptClassConstantSetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptClassConstant", cstring"set_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptClassConstantSetBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptClassConstantGetClassConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualScriptClassConstant): string =
  if isNil(visualScriptClassConstantGetClassConstantMethodBind):
    visualScriptClassConstantGetClassConstantMethodBind = getMethod(
        cstring"VisualScriptClassConstant", cstring"get_class_constant")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptClassConstantGetClassConstantMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptClassConstantSetClassConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualScriptClassConstant; val: string) =
  if isNil(visualScriptClassConstantSetClassConstantMethodBind):
    visualScriptClassConstantSetClassConstantMethodBind = getMethod(
        cstring"VisualScriptClassConstant", cstring"set_class_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptClassConstantSetClassConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
