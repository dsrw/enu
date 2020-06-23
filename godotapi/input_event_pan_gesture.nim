
import
  godot, godottypes, godotinternal, input_event_gesture

export
  godottypes, input_event_gesture

proc delta*(self: InputEventPanGesture): Vector2 {.gcsafe, locks: 0.}
proc `delta=`*(self: InputEventPanGesture; val: Vector2) {.gcsafe, locks: 0.}
var inputEventPanGestureGetDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc delta(self: InputEventPanGesture): Vector2 =
  if isNil(inputEventPanGestureGetDeltaMethodBind):
    inputEventPanGestureGetDeltaMethodBind = getMethod(
        cstring"InputEventPanGesture", cstring"get_delta")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventPanGestureGetDeltaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventPanGestureSetDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `delta=`(self: InputEventPanGesture; val: Vector2) =
  if isNil(inputEventPanGestureSetDeltaMethodBind):
    inputEventPanGestureSetDeltaMethodBind = getMethod(
        cstring"InputEventPanGesture", cstring"set_delta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventPanGestureSetDeltaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
