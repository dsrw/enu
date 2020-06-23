
import
  godot, godottypes, godotinternal, input_event_with_modifiers

export
  godottypes, input_event_with_modifiers

proc position*(self: InputEventGesture): Vector2 {.gcsafe, locks: 0.}
proc `position=`*(self: InputEventGesture; val: Vector2) {.gcsafe, locks: 0.}
var inputEventGestureGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc position(self: InputEventGesture): Vector2 =
  if isNil(inputEventGestureGetPositionMethodBind):
    inputEventGestureGetPositionMethodBind = getMethod(
        cstring"InputEventGesture", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventGestureGetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventGestureSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `position=`(self: InputEventGesture; val: Vector2) =
  if isNil(inputEventGestureSetPositionMethodBind):
    inputEventGestureSetPositionMethodBind = getMethod(
        cstring"InputEventGesture", cstring"set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventGestureSetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
