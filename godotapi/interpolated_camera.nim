
import
  godot, godottypes, godotinternal, camera

export
  godottypes, camera

proc enabled*(self: InterpolatedCamera): bool {.gcsafe, locks: 0.}
proc `enabled=`*(self: InterpolatedCamera; val: bool) {.gcsafe, locks: 0.}
proc speed*(self: InterpolatedCamera): float64 {.gcsafe, locks: 0.}
proc `speed=`*(self: InterpolatedCamera; val: float64) {.gcsafe, locks: 0.}
proc target*(self: InterpolatedCamera): NodePath {.gcsafe, locks: 0.}
proc `target=`*(self: InterpolatedCamera; val: NodePath) {.gcsafe, locks: 0.}
proc setTarget*(self: InterpolatedCamera; target: Object) {.gcsafe, locks: 0.}
var interpolatedCameraIsInterpolationEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc enabled(self: InterpolatedCamera): bool =
  if isNil(interpolatedCameraIsInterpolationEnabledMethodBind):
    interpolatedCameraIsInterpolationEnabledMethodBind = getMethod(
        cstring"InterpolatedCamera", cstring"is_interpolation_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  interpolatedCameraIsInterpolationEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var interpolatedCameraSetInterpolationEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enabled=`(self: InterpolatedCamera; val: bool) =
  if isNil(interpolatedCameraSetInterpolationEnabledMethodBind):
    interpolatedCameraSetInterpolationEnabledMethodBind = getMethod(
        cstring"InterpolatedCamera", cstring"set_interpolation_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  interpolatedCameraSetInterpolationEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var interpolatedCameraGetSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc speed(self: InterpolatedCamera): float64 =
  if isNil(interpolatedCameraGetSpeedMethodBind):
    interpolatedCameraGetSpeedMethodBind = getMethod(cstring"InterpolatedCamera",
        cstring"get_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  interpolatedCameraGetSpeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var interpolatedCameraSetSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speed=`(self: InterpolatedCamera; val: float64) =
  if isNil(interpolatedCameraSetSpeedMethodBind):
    interpolatedCameraSetSpeedMethodBind = getMethod(cstring"InterpolatedCamera",
        cstring"set_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  interpolatedCameraSetSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var interpolatedCameraGetTargetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc target(self: InterpolatedCamera): NodePath =
  if isNil(interpolatedCameraGetTargetPathMethodBind):
    interpolatedCameraGetTargetPathMethodBind = getMethod(
        cstring"InterpolatedCamera", cstring"get_target_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  interpolatedCameraGetTargetPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var interpolatedCameraSetTargetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `target=`(self: InterpolatedCamera; val: NodePath) =
  if isNil(interpolatedCameraSetTargetPathMethodBind):
    interpolatedCameraSetTargetPathMethodBind = getMethod(
        cstring"InterpolatedCamera", cstring"set_target_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  interpolatedCameraSetTargetPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var interpolatedCameraSetTargetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTarget(self: InterpolatedCamera; target: Object) =
  if isNil(interpolatedCameraSetTargetMethodBind):
    interpolatedCameraSetTargetMethodBind = getMethod(
        cstring"InterpolatedCamera", cstring"set_target")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  interpolatedCameraSetTargetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
