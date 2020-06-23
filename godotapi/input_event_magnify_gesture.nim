
import
  godot, godottypes, godotinternal, input_event_gesture

export
  godottypes, input_event_gesture

proc factor*(self: InputEventMagnifyGesture): float64 {.gcsafe, locks: 0.}
proc `factor=`*(self: InputEventMagnifyGesture; val: float64) {.gcsafe, locks: 0.}
var inputEventMagnifyGestureGetFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc factor(self: InputEventMagnifyGesture): float64 =
  if isNil(inputEventMagnifyGestureGetFactorMethodBind):
    inputEventMagnifyGestureGetFactorMethodBind = getMethod(
        cstring"InputEventMagnifyGesture", cstring"get_factor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMagnifyGestureGetFactorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMagnifyGestureSetFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `factor=`(self: InputEventMagnifyGesture; val: float64) =
  if isNil(inputEventMagnifyGestureSetFactorMethodBind):
    inputEventMagnifyGestureSetFactorMethodBind = getMethod(
        cstring"InputEventMagnifyGesture", cstring"set_factor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMagnifyGestureSetFactorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
