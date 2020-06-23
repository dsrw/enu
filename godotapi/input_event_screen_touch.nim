
import
  godot, godottypes, godotinternal, input_event

export
  godottypes, input_event

proc index*(self: InputEventScreenTouch): int64 {.gcsafe, locks: 0.}
proc `index=`*(self: InputEventScreenTouch; val: int64) {.gcsafe, locks: 0.}
proc position*(self: InputEventScreenTouch): Vector2 {.gcsafe, locks: 0.}
proc `position=`*(self: InputEventScreenTouch; val: Vector2) {.gcsafe, locks: 0.}
proc pressed*(self: InputEventScreenTouch): bool {.gcsafe, locks: 0.}
proc `pressed=`*(self: InputEventScreenTouch; val: bool) {.gcsafe, locks: 0.}
var inputEventScreenTouchGetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc index(self: InputEventScreenTouch): int64 =
  if isNil(inputEventScreenTouchGetIndexMethodBind):
    inputEventScreenTouchGetIndexMethodBind = getMethod(
        cstring"InputEventScreenTouch", cstring"get_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventScreenTouchGetIndexMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventScreenTouchSetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `index=`(self: InputEventScreenTouch; val: int64) =
  if isNil(inputEventScreenTouchSetIndexMethodBind):
    inputEventScreenTouchSetIndexMethodBind = getMethod(
        cstring"InputEventScreenTouch", cstring"set_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventScreenTouchSetIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventScreenTouchGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc position(self: InputEventScreenTouch): Vector2 =
  if isNil(inputEventScreenTouchGetPositionMethodBind):
    inputEventScreenTouchGetPositionMethodBind = getMethod(
        cstring"InputEventScreenTouch", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventScreenTouchGetPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventScreenTouchSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `position=`(self: InputEventScreenTouch; val: Vector2) =
  if isNil(inputEventScreenTouchSetPositionMethodBind):
    inputEventScreenTouchSetPositionMethodBind = getMethod(
        cstring"InputEventScreenTouch", cstring"set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventScreenTouchSetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventScreenTouchIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressed(self: InputEventScreenTouch): bool =
  if isNil(inputEventScreenTouchIsPressedMethodBind):
    inputEventScreenTouchIsPressedMethodBind = getMethod(
        cstring"InputEventScreenTouch", cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventScreenTouchIsPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventScreenTouchSetPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressed=`(self: InputEventScreenTouch; val: bool) =
  if isNil(inputEventScreenTouchSetPressedMethodBind):
    inputEventScreenTouchSetPressedMethodBind = getMethod(
        cstring"InputEventScreenTouch", cstring"set_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventScreenTouchSetPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
