
import
  godot, godottypes, godotinternal, input_event_mouse

export
  godottypes, input_event_mouse

proc pressure*(self: InputEventMouseMotion): float64 {.gcsafe, locks: 0.}
proc `pressure=`*(self: InputEventMouseMotion; val: float64) {.gcsafe, locks: 0.}
proc relative*(self: InputEventMouseMotion): Vector2 {.gcsafe, locks: 0.}
proc `relative=`*(self: InputEventMouseMotion; val: Vector2) {.gcsafe, locks: 0.}
proc speed*(self: InputEventMouseMotion): Vector2 {.gcsafe, locks: 0.}
proc `speed=`*(self: InputEventMouseMotion; val: Vector2) {.gcsafe, locks: 0.}
proc tilt*(self: InputEventMouseMotion): Vector2 {.gcsafe, locks: 0.}
proc `tilt=`*(self: InputEventMouseMotion; val: Vector2) {.gcsafe, locks: 0.}
var inputEventMouseMotionGetPressureMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressure(self: InputEventMouseMotion): float64 =
  if isNil(inputEventMouseMotionGetPressureMethodBind):
    inputEventMouseMotionGetPressureMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"get_pressure")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseMotionGetPressureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseMotionSetPressureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressure=`(self: InputEventMouseMotion; val: float64) =
  if isNil(inputEventMouseMotionSetPressureMethodBind):
    inputEventMouseMotionSetPressureMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"set_pressure")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseMotionSetPressureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseMotionGetRelativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc relative(self: InputEventMouseMotion): Vector2 =
  if isNil(inputEventMouseMotionGetRelativeMethodBind):
    inputEventMouseMotionGetRelativeMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"get_relative")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseMotionGetRelativeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseMotionSetRelativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `relative=`(self: InputEventMouseMotion; val: Vector2) =
  if isNil(inputEventMouseMotionSetRelativeMethodBind):
    inputEventMouseMotionSetRelativeMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"set_relative")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseMotionSetRelativeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseMotionGetSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc speed(self: InputEventMouseMotion): Vector2 =
  if isNil(inputEventMouseMotionGetSpeedMethodBind):
    inputEventMouseMotionGetSpeedMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"get_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseMotionGetSpeedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMouseMotionSetSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speed=`(self: InputEventMouseMotion; val: Vector2) =
  if isNil(inputEventMouseMotionSetSpeedMethodBind):
    inputEventMouseMotionSetSpeedMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"set_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseMotionSetSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMouseMotionGetTiltMethodBind {.threadvar.}: ptr GodotMethodBind
proc tilt(self: InputEventMouseMotion): Vector2 =
  if isNil(inputEventMouseMotionGetTiltMethodBind):
    inputEventMouseMotionGetTiltMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"get_tilt")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMouseMotionGetTiltMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMouseMotionSetTiltMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tilt=`(self: InputEventMouseMotion; val: Vector2) =
  if isNil(inputEventMouseMotionSetTiltMethodBind):
    inputEventMouseMotionSetTiltMethodBind = getMethod(
        cstring"InputEventMouseMotion", cstring"set_tilt")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMouseMotionSetTiltMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
