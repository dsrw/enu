
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  MODE_JUST_PRESSED* = 2'i64
  MODE_JUST_RELEASED* = 3'i64
  MODE_PRESSED* = 0'i64
  MODE_RELEASED* = 1'i64
proc action*(self: VisualScriptInputAction): string {.gcsafe, locks: 0.}
proc `action=`*(self: VisualScriptInputAction; val: string) {.gcsafe, locks: 0.}
proc mode*(self: VisualScriptInputAction): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: VisualScriptInputAction; val: int64) {.gcsafe, locks: 0.}
var visualScriptInputActionGetActionNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc action(self: VisualScriptInputAction): string =
  if isNil(visualScriptInputActionGetActionNameMethodBind):
    visualScriptInputActionGetActionNameMethodBind = getMethod(
        cstring"VisualScriptInputAction", cstring"get_action_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptInputActionGetActionNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptInputActionSetActionNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `action=`(self: VisualScriptInputAction; val: string) =
  if isNil(visualScriptInputActionSetActionNameMethodBind):
    visualScriptInputActionSetActionNameMethodBind = getMethod(
        cstring"VisualScriptInputAction", cstring"set_action_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptInputActionSetActionNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptInputActionGetActionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: VisualScriptInputAction): int64 =
  if isNil(visualScriptInputActionGetActionModeMethodBind):
    visualScriptInputActionGetActionModeMethodBind = getMethod(
        cstring"VisualScriptInputAction", cstring"get_action_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptInputActionGetActionModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptInputActionSetActionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: VisualScriptInputAction; val: int64) =
  if isNil(visualScriptInputActionSetActionModeMethodBind):
    visualScriptInputActionSetActionModeMethodBind = getMethod(
        cstring"VisualScriptInputAction", cstring"set_action_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptInputActionSetActionModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
