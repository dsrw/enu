
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  CALL_MODE_INSTANCE* = 2'i64
  CALL_MODE_NODE_PATH* = 1'i64
  CALL_MODE_SELF* = 0'i64
proc baseType*(self: VisualScriptYieldSignal): string {.gcsafe, locks: 0.}
proc `baseType=`*(self: VisualScriptYieldSignal; val: string) {.gcsafe, locks: 0.}
proc callMode*(self: VisualScriptYieldSignal): int64 {.gcsafe, locks: 0.}
proc `callMode=`*(self: VisualScriptYieldSignal; val: int64) {.gcsafe, locks: 0.}
proc nodePath*(self: VisualScriptYieldSignal): NodePath {.gcsafe, locks: 0.}
proc `nodePath=`*(self: VisualScriptYieldSignal; val: NodePath) {.gcsafe, locks: 0.}
proc signal*(self: VisualScriptYieldSignal): string {.gcsafe, locks: 0.}
proc `signal=`*(self: VisualScriptYieldSignal; val: string) {.gcsafe, locks: 0.}
var visualScriptYieldSignalGetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseType(self: VisualScriptYieldSignal): string =
  if isNil(visualScriptYieldSignalGetBaseTypeMethodBind):
    visualScriptYieldSignalGetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"get_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptYieldSignalGetBaseTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptYieldSignalSetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseType=`(self: VisualScriptYieldSignal; val: string) =
  if isNil(visualScriptYieldSignalSetBaseTypeMethodBind):
    visualScriptYieldSignalSetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"set_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptYieldSignalSetBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptYieldSignalGetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc callMode(self: VisualScriptYieldSignal): int64 =
  if isNil(visualScriptYieldSignalGetCallModeMethodBind):
    visualScriptYieldSignalGetCallModeMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"get_call_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptYieldSignalGetCallModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptYieldSignalSetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `callMode=`(self: VisualScriptYieldSignal; val: int64) =
  if isNil(visualScriptYieldSignalSetCallModeMethodBind):
    visualScriptYieldSignalSetCallModeMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"set_call_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptYieldSignalSetCallModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptYieldSignalGetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodePath(self: VisualScriptYieldSignal): NodePath =
  if isNil(visualScriptYieldSignalGetBasePathMethodBind):
    visualScriptYieldSignalGetBasePathMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"get_base_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  visualScriptYieldSignalGetBasePathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var visualScriptYieldSignalSetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodePath=`(self: VisualScriptYieldSignal; val: NodePath) =
  if isNil(visualScriptYieldSignalSetBasePathMethodBind):
    visualScriptYieldSignalSetBasePathMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"set_base_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  visualScriptYieldSignalSetBasePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptYieldSignalGetSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc signal(self: VisualScriptYieldSignal): string =
  if isNil(visualScriptYieldSignalGetSignalMethodBind):
    visualScriptYieldSignalGetSignalMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"get_signal")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptYieldSignalGetSignalMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptYieldSignalSetSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `signal=`(self: VisualScriptYieldSignal; val: string) =
  if isNil(visualScriptYieldSignalSetSignalMethodBind):
    visualScriptYieldSignalSetSignalMethodBind = getMethod(
        cstring"VisualScriptYieldSignal", cstring"set_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptYieldSignalSetSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
