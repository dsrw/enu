
import
  godot, godottypes, godotinternal, input_event_with_modifiers

export
  godottypes, input_event_with_modifiers

proc buttonMask*(self: InputEventMouse): int64 {.gcsafe, locks: 0.}
proc `buttonMask=`*(self: InputEventMouse; val: int64) {.gcsafe, locks: 0.}
proc globalPosition*(self: InputEventMouse): Vector2 {.gcsafe, locks: 0.}
proc `globalPosition=`*(self: InputEventMouse; val: Vector2) {.gcsafe, locks: 0.}
proc position*(self: InputEventMouse): Vector2 {.gcsafe, locks: 0.}
proc `position=`*(self: InputEventMouse; val: Vector2) {.gcsafe, locks: 0.}
var inputEventMouseGetButtonMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc buttonMask(self: InputEventMouse): int64 =
  if isNil(inputEventMouseGetButtonMaskMethodBind):
    inputEventMouseGetButtonMaskMethodBind = getMethod(cstring"InputEventMouse",
        cstring"get_button_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseGetButtonMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMouseSetButtonMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `buttonMask=`(self: InputEventMouse; val: int64) =
  if isNil(inputEventMouseSetButtonMaskMethodBind):
    inputEventMouseSetButtonMaskMethodBind = getMethod(cstring"InputEventMouse",
        cstring"set_button_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseSetButtonMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseGetGlobalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalPosition(self: InputEventMouse): Vector2 =
  if isNil(inputEventMouseGetGlobalPositionMethodBind):
    inputEventMouseGetGlobalPositionMethodBind = getMethod(
        cstring"InputEventMouse", cstring"get_global_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseGetGlobalPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseSetGlobalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalPosition=`(self: InputEventMouse; val: Vector2) =
  if isNil(inputEventMouseSetGlobalPositionMethodBind):
    inputEventMouseSetGlobalPositionMethodBind = getMethod(
        cstring"InputEventMouse", cstring"set_global_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseSetGlobalPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc position(self: InputEventMouse): Vector2 =
  if isNil(inputEventMouseGetPositionMethodBind):
    inputEventMouseGetPositionMethodBind = getMethod(cstring"InputEventMouse",
        cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseGetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMouseSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `position=`(self: InputEventMouse; val: Vector2) =
  if isNil(inputEventMouseSetPositionMethodBind):
    inputEventMouseSetPositionMethodBind = getMethod(cstring"InputEventMouse",
        cstring"set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseSetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
