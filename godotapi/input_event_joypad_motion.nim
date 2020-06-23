
import
  godot, godottypes, godotinternal, input_event

export
  godottypes, input_event

proc axis*(self: InputEventJoypadMotion): int64 {.gcsafe, locks: 0.}
proc `axis=`*(self: InputEventJoypadMotion; val: int64) {.gcsafe, locks: 0.}
proc axisValue*(self: InputEventJoypadMotion): float64 {.gcsafe, locks: 0.}
proc `axisValue=`*(self: InputEventJoypadMotion; val: float64) {.gcsafe, locks: 0.}
var inputEventJoypadMotionGetAxisMethodBind {.threadvar.}: ptr GodotMethodBind
proc axis(self: InputEventJoypadMotion): int64 =
  if isNil(inputEventJoypadMotionGetAxisMethodBind):
    inputEventJoypadMotionGetAxisMethodBind = getMethod(
        cstring"InputEventJoypadMotion", cstring"get_axis")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventJoypadMotionGetAxisMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventJoypadMotionSetAxisMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axis=`(self: InputEventJoypadMotion; val: int64) =
  if isNil(inputEventJoypadMotionSetAxisMethodBind):
    inputEventJoypadMotionSetAxisMethodBind = getMethod(
        cstring"InputEventJoypadMotion", cstring"set_axis")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventJoypadMotionSetAxisMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventJoypadMotionGetAxisValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc axisValue(self: InputEventJoypadMotion): float64 =
  if isNil(inputEventJoypadMotionGetAxisValueMethodBind):
    inputEventJoypadMotionGetAxisValueMethodBind = getMethod(
        cstring"InputEventJoypadMotion", cstring"get_axis_value")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventJoypadMotionGetAxisValueMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventJoypadMotionSetAxisValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axisValue=`(self: InputEventJoypadMotion; val: float64) =
  if isNil(inputEventJoypadMotionSetAxisValueMethodBind):
    inputEventJoypadMotionSetAxisValueMethodBind = getMethod(
        cstring"InputEventJoypadMotion", cstring"set_axis_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventJoypadMotionSetAxisValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
