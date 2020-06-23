
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc signal*(self: VisualScriptEmitSignal): string {.gcsafe, locks: 0.}
proc `signal=`*(self: VisualScriptEmitSignal; val: string) {.gcsafe, locks: 0.}
var visualScriptEmitSignalGetSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc signal(self: VisualScriptEmitSignal): string =
  if isNil(visualScriptEmitSignalGetSignalMethodBind):
    visualScriptEmitSignalGetSignalMethodBind = getMethod(
        cstring"VisualScriptEmitSignal", cstring"get_signal")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptEmitSignalGetSignalMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptEmitSignalSetSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `signal=`(self: VisualScriptEmitSignal; val: string) =
  if isNil(visualScriptEmitSignalSetSignalMethodBind):
    visualScriptEmitSignalSetSignalMethodBind = getMethod(
        cstring"VisualScriptEmitSignal", cstring"set_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptEmitSignalSetSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
