
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc brake*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `brake=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc dampingCompression*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `dampingCompression=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc dampingRelaxation*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `dampingRelaxation=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc engineForce*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `engineForce=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc steering*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `steering=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc suspensionMaxForce*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `suspensionMaxForce=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc suspensionStiffness*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `suspensionStiffness=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc suspensionTravel*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `suspensionTravel=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc useAsSteering*(self: VehicleWheel): bool {.gcsafe, locks: 0.}
proc `useAsSteering=`*(self: VehicleWheel; val: bool) {.gcsafe, locks: 0.}
proc useAsTraction*(self: VehicleWheel): bool {.gcsafe, locks: 0.}
proc `useAsTraction=`*(self: VehicleWheel; val: bool) {.gcsafe, locks: 0.}
proc wheelFrictionSlip*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `wheelFrictionSlip=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc wheelRadius*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `wheelRadius=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc wheelRestLength*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `wheelRestLength=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc wheelRollInfluence*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc `wheelRollInfluence=`*(self: VehicleWheel; val: float64) {.gcsafe, locks: 0.}
proc getRpm*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc getSkidinfo*(self: VehicleWheel): float64 {.gcsafe, locks: 0.}
proc isInContact*(self: VehicleWheel): bool {.gcsafe, locks: 0.}
var vehicleWheelGetBrakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc brake(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetBrakeMethodBind):
    vehicleWheelGetBrakeMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_brake")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetBrakeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetBrakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `brake=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetBrakeMethodBind):
    vehicleWheelSetBrakeMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_brake")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetBrakeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var vehicleWheelGetDampingCompressionMethodBind {.threadvar.}: ptr GodotMethodBind
proc dampingCompression(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetDampingCompressionMethodBind):
    vehicleWheelGetDampingCompressionMethodBind = getMethod(
        cstring"VehicleWheel", cstring"get_damping_compression")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetDampingCompressionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var vehicleWheelSetDampingCompressionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dampingCompression=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetDampingCompressionMethodBind):
    vehicleWheelSetDampingCompressionMethodBind = getMethod(
        cstring"VehicleWheel", cstring"set_damping_compression")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetDampingCompressionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetDampingRelaxationMethodBind {.threadvar.}: ptr GodotMethodBind
proc dampingRelaxation(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetDampingRelaxationMethodBind):
    vehicleWheelGetDampingRelaxationMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_damping_relaxation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetDampingRelaxationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var vehicleWheelSetDampingRelaxationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dampingRelaxation=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetDampingRelaxationMethodBind):
    vehicleWheelSetDampingRelaxationMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_damping_relaxation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetDampingRelaxationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetEngineForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc engineForce(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetEngineForceMethodBind):
    vehicleWheelGetEngineForceMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_engine_force")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetEngineForceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetEngineForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `engineForce=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetEngineForceMethodBind):
    vehicleWheelSetEngineForceMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_engine_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetEngineForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetSteeringMethodBind {.threadvar.}: ptr GodotMethodBind
proc steering(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetSteeringMethodBind):
    vehicleWheelGetSteeringMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_steering")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetSteeringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetSteeringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `steering=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetSteeringMethodBind):
    vehicleWheelSetSteeringMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_steering")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetSteeringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var vehicleWheelGetSuspensionMaxForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc suspensionMaxForce(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetSuspensionMaxForceMethodBind):
    vehicleWheelGetSuspensionMaxForceMethodBind = getMethod(
        cstring"VehicleWheel", cstring"get_suspension_max_force")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetSuspensionMaxForceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var vehicleWheelSetSuspensionMaxForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `suspensionMaxForce=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetSuspensionMaxForceMethodBind):
    vehicleWheelSetSuspensionMaxForceMethodBind = getMethod(
        cstring"VehicleWheel", cstring"set_suspension_max_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetSuspensionMaxForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetSuspensionStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc suspensionStiffness(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetSuspensionStiffnessMethodBind):
    vehicleWheelGetSuspensionStiffnessMethodBind = getMethod(
        cstring"VehicleWheel", cstring"get_suspension_stiffness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetSuspensionStiffnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var vehicleWheelSetSuspensionStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `suspensionStiffness=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetSuspensionStiffnessMethodBind):
    vehicleWheelSetSuspensionStiffnessMethodBind = getMethod(
        cstring"VehicleWheel", cstring"set_suspension_stiffness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetSuspensionStiffnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetSuspensionTravelMethodBind {.threadvar.}: ptr GodotMethodBind
proc suspensionTravel(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetSuspensionTravelMethodBind):
    vehicleWheelGetSuspensionTravelMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_suspension_travel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetSuspensionTravelMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var vehicleWheelSetSuspensionTravelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `suspensionTravel=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetSuspensionTravelMethodBind):
    vehicleWheelSetSuspensionTravelMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_suspension_travel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetSuspensionTravelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelIsUsedAsSteeringMethodBind {.threadvar.}: ptr GodotMethodBind
proc useAsSteering(self: VehicleWheel): bool =
  if isNil(vehicleWheelIsUsedAsSteeringMethodBind):
    vehicleWheelIsUsedAsSteeringMethodBind = getMethod(cstring"VehicleWheel",
        cstring"is_used_as_steering")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelIsUsedAsSteeringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetUseAsSteeringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useAsSteering=`(self: VehicleWheel; val: bool) =
  if isNil(vehicleWheelSetUseAsSteeringMethodBind):
    vehicleWheelSetUseAsSteeringMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_use_as_steering")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetUseAsSteeringMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelIsUsedAsTractionMethodBind {.threadvar.}: ptr GodotMethodBind
proc useAsTraction(self: VehicleWheel): bool =
  if isNil(vehicleWheelIsUsedAsTractionMethodBind):
    vehicleWheelIsUsedAsTractionMethodBind = getMethod(cstring"VehicleWheel",
        cstring"is_used_as_traction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelIsUsedAsTractionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetUseAsTractionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useAsTraction=`(self: VehicleWheel; val: bool) =
  if isNil(vehicleWheelSetUseAsTractionMethodBind):
    vehicleWheelSetUseAsTractionMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_use_as_traction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetUseAsTractionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetFrictionSlipMethodBind {.threadvar.}: ptr GodotMethodBind
proc wheelFrictionSlip(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetFrictionSlipMethodBind):
    vehicleWheelGetFrictionSlipMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_friction_slip")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetFrictionSlipMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetFrictionSlipMethodBind {.threadvar.}: ptr GodotMethodBind
proc `wheelFrictionSlip=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetFrictionSlipMethodBind):
    vehicleWheelSetFrictionSlipMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_friction_slip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetFrictionSlipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc wheelRadius(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetRadiusMethodBind):
    vehicleWheelGetRadiusMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `wheelRadius=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetRadiusMethodBind):
    vehicleWheelSetRadiusMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var vehicleWheelGetSuspensionRestLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc wheelRestLength(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetSuspensionRestLengthMethodBind):
    vehicleWheelGetSuspensionRestLengthMethodBind = getMethod(
        cstring"VehicleWheel", cstring"get_suspension_rest_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetSuspensionRestLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var vehicleWheelSetSuspensionRestLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `wheelRestLength=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetSuspensionRestLengthMethodBind):
    vehicleWheelSetSuspensionRestLengthMethodBind = getMethod(
        cstring"VehicleWheel", cstring"set_suspension_rest_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetSuspensionRestLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetRollInfluenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc wheelRollInfluence(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetRollInfluenceMethodBind):
    vehicleWheelGetRollInfluenceMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_roll_influence")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetRollInfluenceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelSetRollInfluenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `wheelRollInfluence=`(self: VehicleWheel; val: float64) =
  if isNil(vehicleWheelSetRollInfluenceMethodBind):
    vehicleWheelSetRollInfluenceMethodBind = getMethod(cstring"VehicleWheel",
        cstring"set_roll_influence")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  vehicleWheelSetRollInfluenceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var vehicleWheelGetRpmMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRpm(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetRpmMethodBind):
    vehicleWheelGetRpmMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_rpm")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetRpmMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelGetSkidinfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSkidinfo(self: VehicleWheel): float64 =
  if isNil(vehicleWheelGetSkidinfoMethodBind):
    vehicleWheelGetSkidinfoMethodBind = getMethod(cstring"VehicleWheel",
        cstring"get_skidinfo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelGetSkidinfoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var vehicleWheelIsInContactMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInContact(self: VehicleWheel): bool =
  if isNil(vehicleWheelIsInContactMethodBind):
    vehicleWheelIsInContactMethodBind = getMethod(cstring"VehicleWheel",
        cstring"is_in_contact")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  vehicleWheelIsInContactMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
