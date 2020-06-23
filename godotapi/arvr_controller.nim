
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc controllerId*(self: ARVRController): int64 {.gcsafe, locks: 0.}
proc `controllerId=`*(self: ARVRController; val: int64) {.gcsafe, locks: 0.}
proc rumble*(self: ARVRController): float64 {.gcsafe, locks: 0.}
proc `rumble=`*(self: ARVRController; val: float64) {.gcsafe, locks: 0.}
proc getControllerName*(self: ARVRController): string {.gcsafe, locks: 0.}
proc getHand*(self: ARVRController): int64 {.gcsafe, locks: 0.}
proc getIsActive*(self: ARVRController): bool {.gcsafe, locks: 0.}
proc getJoystickAxis*(self: ARVRController; axis: int64): float64 {.gcsafe, locks: 0.}
proc getJoystickId*(self: ARVRController): int64 {.gcsafe, locks: 0.}
proc getMesh*(self: ARVRController): Mesh {.gcsafe, locks: 0.}
proc isButtonPressed*(self: ARVRController; button: int64): int64 {.gcsafe, locks: 0.}
var aRVRControllerGetControllerIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc controllerId(self: ARVRController): int64 =
  if isNil(aRVRControllerGetControllerIdMethodBind):
    aRVRControllerGetControllerIdMethodBind = getMethod(cstring"ARVRController",
        cstring"get_controller_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRControllerGetControllerIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRControllerSetControllerIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `controllerId=`(self: ARVRController; val: int64) =
  if isNil(aRVRControllerSetControllerIdMethodBind):
    aRVRControllerSetControllerIdMethodBind = getMethod(cstring"ARVRController",
        cstring"set_controller_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVRControllerSetControllerIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRControllerGetRumbleMethodBind {.threadvar.}: ptr GodotMethodBind
proc rumble(self: ARVRController): float64 =
  if isNil(aRVRControllerGetRumbleMethodBind):
    aRVRControllerGetRumbleMethodBind = getMethod(cstring"ARVRController",
        cstring"get_rumble")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRControllerGetRumbleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRControllerSetRumbleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rumble=`(self: ARVRController; val: float64) =
  if isNil(aRVRControllerSetRumbleMethodBind):
    aRVRControllerSetRumbleMethodBind = getMethod(cstring"ARVRController",
        cstring"set_rumble")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVRControllerSetRumbleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aRVRControllerGetControllerNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getControllerName(self: ARVRController): string =
  if isNil(aRVRControllerGetControllerNameMethodBind):
    aRVRControllerGetControllerNameMethodBind = getMethod(
        cstring"ARVRController", cstring"get_controller_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  aRVRControllerGetControllerNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var aRVRControllerGetHandMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHand(self: ARVRController): int64 =
  if isNil(aRVRControllerGetHandMethodBind):
    aRVRControllerGetHandMethodBind = getMethod(cstring"ARVRController",
        cstring"get_hand")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRControllerGetHandMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRControllerGetIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIsActive(self: ARVRController): bool =
  if isNil(aRVRControllerGetIsActiveMethodBind):
    aRVRControllerGetIsActiveMethodBind = getMethod(cstring"ARVRController",
        cstring"get_is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRControllerGetIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRControllerGetJoystickAxisMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoystickAxis(self: ARVRController; axis: int64): float64 =
  if isNil(aRVRControllerGetJoystickAxisMethodBind):
    aRVRControllerGetJoystickAxisMethodBind = getMethod(cstring"ARVRController",
        cstring"get_joystick_axis")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(axis)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRControllerGetJoystickAxisMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRControllerGetJoystickIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoystickId(self: ARVRController): int64 =
  if isNil(aRVRControllerGetJoystickIdMethodBind):
    aRVRControllerGetJoystickIdMethodBind = getMethod(cstring"ARVRController",
        cstring"get_joystick_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRControllerGetJoystickIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRControllerGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMesh(self: ARVRController): Mesh =
  if isNil(aRVRControllerGetMeshMethodBind):
    aRVRControllerGetMeshMethodBind = getMethod(cstring"ARVRController",
        cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  aRVRControllerGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var aRVRControllerIsButtonPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isButtonPressed(self: ARVRController; button: int64): int64 =
  if isNil(aRVRControllerIsButtonPressedMethodBind):
    aRVRControllerIsButtonPressedMethodBind = getMethod(cstring"ARVRController",
        cstring"is_button_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(button)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRControllerIsButtonPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
