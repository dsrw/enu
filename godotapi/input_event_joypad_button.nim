
import
  godot, godottypes, godotinternal, input_event

export
  godottypes, input_event

proc buttonIndex*(self: InputEventJoypadButton): int64 {.gcsafe, locks: 0.}
proc `buttonIndex=`*(self: InputEventJoypadButton; val: int64) {.gcsafe, locks: 0.}
proc pressed*(self: InputEventJoypadButton): bool {.gcsafe, locks: 0.}
proc `pressed=`*(self: InputEventJoypadButton; val: bool) {.gcsafe, locks: 0.}
proc pressure*(self: InputEventJoypadButton): float64 {.gcsafe, locks: 0.}
proc `pressure=`*(self: InputEventJoypadButton; val: float64) {.gcsafe, locks: 0.}
var inputEventJoypadButtonGetButtonIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc buttonIndex(self: InputEventJoypadButton): int64 =
  if isNil(inputEventJoypadButtonGetButtonIndexMethodBind):
    inputEventJoypadButtonGetButtonIndexMethodBind = getMethod(
        cstring"InputEventJoypadButton", cstring"get_button_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventJoypadButtonGetButtonIndexMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventJoypadButtonSetButtonIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `buttonIndex=`(self: InputEventJoypadButton; val: int64) =
  if isNil(inputEventJoypadButtonSetButtonIndexMethodBind):
    inputEventJoypadButtonSetButtonIndexMethodBind = getMethod(
        cstring"InputEventJoypadButton", cstring"set_button_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventJoypadButtonSetButtonIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventJoypadButtonIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressed(self: InputEventJoypadButton): bool =
  if isNil(inputEventJoypadButtonIsPressedMethodBind):
    inputEventJoypadButtonIsPressedMethodBind = getMethod(
        cstring"InputEventJoypadButton", cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventJoypadButtonIsPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventJoypadButtonSetPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressed=`(self: InputEventJoypadButton; val: bool) =
  if isNil(inputEventJoypadButtonSetPressedMethodBind):
    inputEventJoypadButtonSetPressedMethodBind = getMethod(
        cstring"InputEventJoypadButton", cstring"set_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventJoypadButtonSetPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventJoypadButtonGetPressureMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressure(self: InputEventJoypadButton): float64 =
  if isNil(inputEventJoypadButtonGetPressureMethodBind):
    inputEventJoypadButtonGetPressureMethodBind = getMethod(
        cstring"InputEventJoypadButton", cstring"get_pressure")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventJoypadButtonGetPressureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventJoypadButtonSetPressureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressure=`(self: InputEventJoypadButton; val: float64) =
  if isNil(inputEventJoypadButtonSetPressureMethodBind):
    inputEventJoypadButtonSetPressureMethodBind = getMethod(
        cstring"InputEventJoypadButton", cstring"set_pressure")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventJoypadButtonSetPressureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
