
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc returnEnabled*(self: VisualScriptReturn): bool {.gcsafe, locks: 0.}
proc `returnEnabled=`*(self: VisualScriptReturn; val: bool) {.gcsafe, locks: 0.}
proc returnType*(self: VisualScriptReturn): int64 {.gcsafe, locks: 0.}
proc `returnType=`*(self: VisualScriptReturn; val: int64) {.gcsafe, locks: 0.}
var visualScriptReturnIsReturnValueEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc returnEnabled(self: VisualScriptReturn): bool =
  if isNil(visualScriptReturnIsReturnValueEnabledMethodBind):
    visualScriptReturnIsReturnValueEnabledMethodBind = getMethod(
        cstring"VisualScriptReturn", cstring"is_return_value_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptReturnIsReturnValueEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptReturnSetEnableReturnValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `returnEnabled=`(self: VisualScriptReturn; val: bool) =
  if isNil(visualScriptReturnSetEnableReturnValueMethodBind):
    visualScriptReturnSetEnableReturnValueMethodBind = getMethod(
        cstring"VisualScriptReturn", cstring"set_enable_return_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptReturnSetEnableReturnValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptReturnGetReturnTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc returnType(self: VisualScriptReturn): int64 =
  if isNil(visualScriptReturnGetReturnTypeMethodBind):
    visualScriptReturnGetReturnTypeMethodBind = getMethod(
        cstring"VisualScriptReturn", cstring"get_return_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptReturnGetReturnTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptReturnSetReturnTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `returnType=`(self: VisualScriptReturn; val: int64) =
  if isNil(visualScriptReturnSetReturnTypeMethodBind):
    visualScriptReturnSetReturnTypeMethodBind = getMethod(
        cstring"VisualScriptReturn", cstring"set_return_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptReturnSetReturnTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
