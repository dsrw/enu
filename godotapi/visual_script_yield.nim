
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  YIELD_FRAME* = 1'i64
  YIELD_PHYSICS_FRAME* = 2'i64
  YIELD_WAIT* = 3'i64
proc mode*(self: VisualScriptYield): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: VisualScriptYield; val: int64) {.gcsafe, locks: 0.}
proc waitTime*(self: VisualScriptYield): float64 {.gcsafe, locks: 0.}
proc `waitTime=`*(self: VisualScriptYield; val: float64) {.gcsafe, locks: 0.}
var visualScriptYieldGetYieldModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: VisualScriptYield): int64 =
  if isNil(visualScriptYieldGetYieldModeMethodBind):
    visualScriptYieldGetYieldModeMethodBind = getMethod(
        cstring"VisualScriptYield", cstring"get_yield_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptYieldGetYieldModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptYieldSetYieldModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: VisualScriptYield; val: int64) =
  if isNil(visualScriptYieldSetYieldModeMethodBind):
    visualScriptYieldSetYieldModeMethodBind = getMethod(
        cstring"VisualScriptYield", cstring"set_yield_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptYieldSetYieldModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptYieldGetWaitTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc waitTime(self: VisualScriptYield): float64 =
  if isNil(visualScriptYieldGetWaitTimeMethodBind):
    visualScriptYieldGetWaitTimeMethodBind = getMethod(
        cstring"VisualScriptYield", cstring"get_wait_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptYieldGetWaitTimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualScriptYieldSetWaitTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `waitTime=`(self: VisualScriptYield; val: float64) =
  if isNil(visualScriptYieldSetWaitTimeMethodBind):
    visualScriptYieldSetWaitTimeMethodBind = getMethod(
        cstring"VisualScriptYield", cstring"set_wait_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptYieldSetWaitTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
