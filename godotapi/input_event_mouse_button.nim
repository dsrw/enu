
import
  godot, godottypes, godotinternal, input_event_mouse

export
  godottypes, input_event_mouse

proc buttonIndex*(self: InputEventMouseButton): int64 {.gcsafe, locks: 0.}
proc `buttonIndex=`*(self: InputEventMouseButton; val: int64) {.gcsafe, locks: 0.}
proc doubleclick*(self: InputEventMouseButton): bool {.gcsafe, locks: 0.}
proc `doubleclick=`*(self: InputEventMouseButton; val: bool) {.gcsafe, locks: 0.}
proc factor*(self: InputEventMouseButton): float64 {.gcsafe, locks: 0.}
proc `factor=`*(self: InputEventMouseButton; val: float64) {.gcsafe, locks: 0.}
proc pressed*(self: InputEventMouseButton): bool {.gcsafe, locks: 0.}
proc `pressed=`*(self: InputEventMouseButton; val: bool) {.gcsafe, locks: 0.}
var inputEventMouseButtonGetButtonIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc buttonIndex(self: InputEventMouseButton): int64 =
  if isNil(inputEventMouseButtonGetButtonIndexMethodBind):
    inputEventMouseButtonGetButtonIndexMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"get_button_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseButtonGetButtonIndexMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseButtonSetButtonIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `buttonIndex=`(self: InputEventMouseButton; val: int64) =
  if isNil(inputEventMouseButtonSetButtonIndexMethodBind):
    inputEventMouseButtonSetButtonIndexMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"set_button_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseButtonSetButtonIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseButtonIsDoubleclickMethodBind {.threadvar.}: ptr GodotMethodBind
proc doubleclick(self: InputEventMouseButton): bool =
  if isNil(inputEventMouseButtonIsDoubleclickMethodBind):
    inputEventMouseButtonIsDoubleclickMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"is_doubleclick")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseButtonIsDoubleclickMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseButtonSetDoubleclickMethodBind {.threadvar.}: ptr GodotMethodBind
proc `doubleclick=`(self: InputEventMouseButton; val: bool) =
  if isNil(inputEventMouseButtonSetDoubleclickMethodBind):
    inputEventMouseButtonSetDoubleclickMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"set_doubleclick")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseButtonSetDoubleclickMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseButtonGetFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc factor(self: InputEventMouseButton): float64 =
  if isNil(inputEventMouseButtonGetFactorMethodBind):
    inputEventMouseButtonGetFactorMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"get_factor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseButtonGetFactorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseButtonSetFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `factor=`(self: InputEventMouseButton; val: float64) =
  if isNil(inputEventMouseButtonSetFactorMethodBind):
    inputEventMouseButtonSetFactorMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"set_factor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseButtonSetFactorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseButtonIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressed(self: InputEventMouseButton): bool =
  if isNil(inputEventMouseButtonIsPressedMethodBind):
    inputEventMouseButtonIsPressedMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseButtonIsPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseButtonSetPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressed=`(self: InputEventMouseButton; val: bool) =
  if isNil(inputEventMouseButtonSetPressedMethodBind):
    inputEventMouseButtonSetPressedMethodBind = getMethod(
        cstring"InputEventMouseButton", cstring"set_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseButtonSetPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
