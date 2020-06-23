
import
  godot, godottypes, godotinternal, rigid_body

export
  godottypes, rigid_body

proc brake*(self: VehicleBody): float64 {.gcsafe, locks: 0.}
proc `brake=`*(self: VehicleBody; val: float64) {.gcsafe, locks: 0.}
proc engineForce*(self: VehicleBody): float64 {.gcsafe, locks: 0.}
proc `engineForce=`*(self: VehicleBody; val: float64) {.gcsafe, locks: 0.}
proc steering*(self: VehicleBody): float64 {.gcsafe, locks: 0.}
proc `steering=`*(self: VehicleBody; val: float64) {.gcsafe, locks: 0.}
var vehicleBodyGetBrakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc brake(self: VehicleBody): float64 =
  if isNil(vehicleBodyGetBrakeMethodBind):
    vehicleBodyGetBrakeMethodBind = getMethod(cstring"VehicleBody",
        cstring"get_brake")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleBodyGetBrakeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleBodySetBrakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `brake=`(self: VehicleBody; val: float64) =
  if isNil(vehicleBodySetBrakeMethodBind):
    vehicleBodySetBrakeMethodBind = getMethod(cstring"VehicleBody",
        cstring"set_brake")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleBodySetBrakeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var vehicleBodyGetEngineForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc engineForce(self: VehicleBody): float64 =
  if isNil(vehicleBodyGetEngineForceMethodBind):
    vehicleBodyGetEngineForceMethodBind = getMethod(cstring"VehicleBody",
        cstring"get_engine_force")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleBodyGetEngineForceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleBodySetEngineForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `engineForce=`(self: VehicleBody; val: float64) =
  if isNil(vehicleBodySetEngineForceMethodBind):
    vehicleBodySetEngineForceMethodBind = getMethod(cstring"VehicleBody",
        cstring"set_engine_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleBodySetEngineForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleBodyGetSteeringMethodBind {.threadvar.}: ptr GodotMethodBind
proc steering(self: VehicleBody): float64 =
  if isNil(vehicleBodyGetSteeringMethodBind):
    vehicleBodyGetSteeringMethodBind = getMethod(cstring"VehicleBody",
        cstring"get_steering")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleBodyGetSteeringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleBodySetSteeringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `steering=`(self: VehicleBody; val: float64) =
  if isNil(vehicleBodySetSteeringMethodBind):
    vehicleBodySetSteeringMethodBind = getMethod(cstring"VehicleBody",
        cstring"set_steering")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleBodySetSteeringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
