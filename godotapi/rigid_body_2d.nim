
import
  godot, godottypes, godotinternal, physics_body_2d

export
  godottypes, physics_body_2d

const
  CCD_MODE_CAST_RAY* = 1'i64
  CCD_MODE_CAST_SHAPE* = 2'i64
  CCD_MODE_DISABLED* = 0'i64
  MODE_CHARACTER* = 2'i64
  MODE_KINEMATIC* = 3'i64
  MODE_RIGID* = 0'i64
  MODE_STATIC* = 1'i64
proc angularDamp*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `angularDamp=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc angularVelocity*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `angularVelocity=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc appliedForce*(self: RigidBody2D): Vector2 {.gcsafe, locks: 0.}
proc `appliedForce=`*(self: RigidBody2D; val: Vector2) {.gcsafe, locks: 0.}
proc appliedTorque*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `appliedTorque=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc bounce*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `bounce=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc canSleep*(self: RigidBody2D): bool {.gcsafe, locks: 0.}
proc `canSleep=`*(self: RigidBody2D; val: bool) {.gcsafe, locks: 0.}
proc contactMonitor*(self: RigidBody2D): bool {.gcsafe, locks: 0.}
proc `contactMonitor=`*(self: RigidBody2D; val: bool) {.gcsafe, locks: 0.}
proc contactsReported*(self: RigidBody2D): int64 {.gcsafe, locks: 0.}
proc `contactsReported=`*(self: RigidBody2D; val: int64) {.gcsafe, locks: 0.}
proc continuousCd*(self: RigidBody2D): int64 {.gcsafe, locks: 0.}
proc `continuousCd=`*(self: RigidBody2D; val: int64) {.gcsafe, locks: 0.}
proc customIntegrator*(self: RigidBody2D): bool {.gcsafe, locks: 0.}
proc `customIntegrator=`*(self: RigidBody2D; val: bool) {.gcsafe, locks: 0.}
proc friction*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `friction=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc gravityScale*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `gravityScale=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc inertia*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `inertia=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc linearDamp*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `linearDamp=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc linearVelocity*(self: RigidBody2D): Vector2 {.gcsafe, locks: 0.}
proc `linearVelocity=`*(self: RigidBody2D; val: Vector2) {.gcsafe, locks: 0.}
proc mass*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `mass=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
proc mode*(self: RigidBody2D): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: RigidBody2D; val: int64) {.gcsafe, locks: 0.}
proc physicsMaterialOverride*(self: RigidBody2D): PhysicsMaterial {.gcsafe, locks: 0.}
proc `physicsMaterialOverride=`*(self: RigidBody2D; val: PhysicsMaterial) {.gcsafe,
    locks: 0.}
proc sleeping*(self: RigidBody2D): bool {.gcsafe, locks: 0.}
proc `sleeping=`*(self: RigidBody2D; val: bool) {.gcsafe, locks: 0.}
proc weight*(self: RigidBody2D): float64 {.gcsafe, locks: 0.}
proc `weight=`*(self: RigidBody2D; val: float64) {.gcsafe, locks: 0.}
method bodyEnterTree*(self: RigidBody2D; arg0: int64) {.gcsafe, locks: 0, base.}
method bodyExitTree*(self: RigidBody2D; arg0: int64) {.gcsafe, locks: 0, base.}
method directStateChanged*(self: RigidBody2D; arg0: Object) {.gcsafe, locks: 0, base.}
method integrateForces*(self: RigidBody2D; state: Physics2DDirectBodyState) {.gcsafe,
    locks: 0, base.}
method reloadPhysicsCharacteristics*(self: RigidBody2D) {.gcsafe, locks: 0, base.}
proc addCentralForce*(self: RigidBody2D; force: Vector2) {.gcsafe, locks: 0.}
proc addForce*(self: RigidBody2D; offset: Vector2; force: Vector2) {.gcsafe, locks: 0.}
proc addTorque*(self: RigidBody2D; torque: float64) {.gcsafe, locks: 0.}
proc applyCentralImpulse*(self: RigidBody2D; impulse: Vector2) {.gcsafe, locks: 0.}
proc applyImpulse*(self: RigidBody2D; offset: Vector2; impulse: Vector2) {.gcsafe,
    locks: 0.}
proc applyTorqueImpulse*(self: RigidBody2D; torque: float64) {.gcsafe, locks: 0.}
proc getCollidingBodies*(self: RigidBody2D): Array {.gcsafe, locks: 0.}
proc setAxisVelocity*(self: RigidBody2D; axisVelocity: Vector2) {.gcsafe, locks: 0.}
proc testMotion*(self: RigidBody2D; motion: Vector2; infiniteInertia: bool = true;
                margin: float64 = 0.08; resultVal: Physics2DTestMotionResult = nil): bool {.
    gcsafe, locks: 0.}
var rigidBody2DGetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularDamp(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetAngularDampMethodBind):
    rigidBody2DGetAngularDampMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_angular_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetAngularDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularDamp=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetAngularDampMethodBind):
    rigidBody2DSetAngularDampMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_angular_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetAngularDampMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularVelocity(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetAngularVelocityMethodBind):
    rigidBody2DGetAngularVelocityMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_angular_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetAngularVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rigidBody2DSetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularVelocity=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetAngularVelocityMethodBind):
    rigidBody2DSetAngularVelocityMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_angular_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetAngularVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetAppliedForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc appliedForce(self: RigidBody2D): Vector2 =
  if isNil(rigidBody2DGetAppliedForceMethodBind):
    rigidBody2DGetAppliedForceMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_applied_force")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetAppliedForceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetAppliedForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `appliedForce=`(self: RigidBody2D; val: Vector2) =
  if isNil(rigidBody2DSetAppliedForceMethodBind):
    rigidBody2DSetAppliedForceMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_applied_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetAppliedForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetAppliedTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc appliedTorque(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetAppliedTorqueMethodBind):
    rigidBody2DGetAppliedTorqueMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_applied_torque")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetAppliedTorqueMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetAppliedTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `appliedTorque=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetAppliedTorqueMethodBind):
    rigidBody2DSetAppliedTorqueMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_applied_torque")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetAppliedTorqueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounce(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetBounceMethodBind):
    rigidBody2DGetBounceMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_bounce")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetBounceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounce=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetBounceMethodBind):
    rigidBody2DSetBounceMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_bounce")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetBounceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DIsAbleToSleepMethodBind {.threadvar.}: ptr GodotMethodBind
proc canSleep(self: RigidBody2D): bool =
  if isNil(rigidBody2DIsAbleToSleepMethodBind):
    rigidBody2DIsAbleToSleepMethodBind = getMethod(cstring"RigidBody2D",
        cstring"is_able_to_sleep")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DIsAbleToSleepMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetCanSleepMethodBind {.threadvar.}: ptr GodotMethodBind
proc `canSleep=`(self: RigidBody2D; val: bool) =
  if isNil(rigidBody2DSetCanSleepMethodBind):
    rigidBody2DSetCanSleepMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_can_sleep")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetCanSleepMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DIsContactMonitorEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc contactMonitor(self: RigidBody2D): bool =
  if isNil(rigidBody2DIsContactMonitorEnabledMethodBind):
    rigidBody2DIsContactMonitorEnabledMethodBind = getMethod(
        cstring"RigidBody2D", cstring"is_contact_monitor_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DIsContactMonitorEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rigidBody2DSetContactMonitorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `contactMonitor=`(self: RigidBody2D; val: bool) =
  if isNil(rigidBody2DSetContactMonitorMethodBind):
    rigidBody2DSetContactMonitorMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_contact_monitor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetContactMonitorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc contactsReported(self: RigidBody2D): int64 =
  if isNil(rigidBody2DGetMaxContactsReportedMethodBind):
    rigidBody2DGetMaxContactsReportedMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_max_contacts_reported")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetMaxContactsReportedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rigidBody2DSetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `contactsReported=`(self: RigidBody2D; val: int64) =
  if isNil(rigidBody2DSetMaxContactsReportedMethodBind):
    rigidBody2DSetMaxContactsReportedMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_max_contacts_reported")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetMaxContactsReportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetContinuousCollisionDetectionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc continuousCd(self: RigidBody2D): int64 =
  if isNil(rigidBody2DGetContinuousCollisionDetectionModeMethodBind):
    rigidBody2DGetContinuousCollisionDetectionModeMethodBind = getMethod(
        cstring"RigidBody2D", cstring"get_continuous_collision_detection_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetContinuousCollisionDetectionModeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var rigidBody2DSetContinuousCollisionDetectionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `continuousCd=`(self: RigidBody2D; val: int64) =
  if isNil(rigidBody2DSetContinuousCollisionDetectionModeMethodBind):
    rigidBody2DSetContinuousCollisionDetectionModeMethodBind = getMethod(
        cstring"RigidBody2D", cstring"set_continuous_collision_detection_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetContinuousCollisionDetectionModeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var rigidBody2DIsUsingCustomIntegratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc customIntegrator(self: RigidBody2D): bool =
  if isNil(rigidBody2DIsUsingCustomIntegratorMethodBind):
    rigidBody2DIsUsingCustomIntegratorMethodBind = getMethod(
        cstring"RigidBody2D", cstring"is_using_custom_integrator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DIsUsingCustomIntegratorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rigidBody2DSetUseCustomIntegratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customIntegrator=`(self: RigidBody2D; val: bool) =
  if isNil(rigidBody2DSetUseCustomIntegratorMethodBind):
    rigidBody2DSetUseCustomIntegratorMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_use_custom_integrator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetUseCustomIntegratorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc friction(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetFrictionMethodBind):
    rigidBody2DGetFrictionMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_friction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetFrictionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `friction=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetFrictionMethodBind):
    rigidBody2DSetFrictionMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_friction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetFrictionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DGetGravityScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityScale(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetGravityScaleMethodBind):
    rigidBody2DGetGravityScaleMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_gravity_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetGravityScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetGravityScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityScale=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetGravityScaleMethodBind):
    rigidBody2DSetGravityScaleMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_gravity_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetGravityScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetInertiaMethodBind {.threadvar.}: ptr GodotMethodBind
proc inertia(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetInertiaMethodBind):
    rigidBody2DGetInertiaMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_inertia")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetInertiaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetInertiaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inertia=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetInertiaMethodBind):
    rigidBody2DSetInertiaMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_inertia")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetInertiaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DGetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearDamp(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetLinearDampMethodBind):
    rigidBody2DGetLinearDampMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_linear_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetLinearDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearDamp=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetLinearDampMethodBind):
    rigidBody2DSetLinearDampMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_linear_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetLinearDampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DGetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearVelocity(self: RigidBody2D): Vector2 =
  if isNil(rigidBody2DGetLinearVelocityMethodBind):
    rigidBody2DGetLinearVelocityMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_linear_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetLinearVelocityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearVelocity=`(self: RigidBody2D; val: Vector2) =
  if isNil(rigidBody2DSetLinearVelocityMethodBind):
    rigidBody2DSetLinearVelocityMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_linear_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetLinearVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc mass(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetMassMethodBind):
    rigidBody2DGetMassMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_mass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetMassMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mass=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetMassMethodBind):
    rigidBody2DSetMassMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_mass")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetMassMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var rigidBody2DGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: RigidBody2D): int64 =
  if isNil(rigidBody2DGetModeMethodBind):
    rigidBody2DGetModeMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: RigidBody2D; val: int64) =
  if isNil(rigidBody2DSetModeMethodBind):
    rigidBody2DSetModeMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var rigidBody2DGetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicsMaterialOverride(self: RigidBody2D): PhysicsMaterial =
  if isNil(rigidBody2DGetPhysicsMaterialOverrideMethodBind):
    rigidBody2DGetPhysicsMaterialOverrideMethodBind = getMethod(
        cstring"RigidBody2D", cstring"get_physics_material_override")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  rigidBody2DGetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var rigidBody2DSetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `physicsMaterialOverride=`(self: RigidBody2D; val: PhysicsMaterial) =
  if isNil(rigidBody2DSetPhysicsMaterialOverrideMethodBind):
    rigidBody2DSetPhysicsMaterialOverrideMethodBind = getMethod(
        cstring"RigidBody2D", cstring"set_physics_material_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rigidBody2DSetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DIsSleepingMethodBind {.threadvar.}: ptr GodotMethodBind
proc sleeping(self: RigidBody2D): bool =
  if isNil(rigidBody2DIsSleepingMethodBind):
    rigidBody2DIsSleepingMethodBind = getMethod(cstring"RigidBody2D",
        cstring"is_sleeping")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DIsSleepingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetSleepingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sleeping=`(self: RigidBody2D; val: bool) =
  if isNil(rigidBody2DSetSleepingMethodBind):
    rigidBody2DSetSleepingMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_sleeping")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetSleepingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DGetWeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc weight(self: RigidBody2D): float64 =
  if isNil(rigidBody2DGetWeightMethodBind):
    rigidBody2DGetWeightMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_weight")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DGetWeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBody2DSetWeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `weight=`(self: RigidBody2D; val: float64) =
  if isNil(rigidBody2DSetWeightMethodBind):
    rigidBody2DSetWeightMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_weight")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBody2DSetWeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DUnderscorebodyEnterTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyEnterTree(self: RigidBody2D; arg0: int64) =
  if isNil(rigidBody2DUnderscorebodyEnterTreeMethodBind):
    rigidBody2DUnderscorebodyEnterTreeMethodBind = getMethod(
        cstring"RigidBody2D", cstring"_body_enter_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  rigidBody2DUnderscorebodyEnterTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DUnderscorebodyExitTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyExitTree(self: RigidBody2D; arg0: int64) =
  if isNil(rigidBody2DUnderscorebodyExitTreeMethodBind):
    rigidBody2DUnderscorebodyExitTreeMethodBind = getMethod(cstring"RigidBody2D",
        cstring"_body_exit_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  rigidBody2DUnderscorebodyExitTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DUnderscoredirectStateChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method directStateChanged(self: RigidBody2D; arg0: Object) =
  if isNil(rigidBody2DUnderscoredirectStateChangedMethodBind):
    rigidBody2DUnderscoredirectStateChangedMethodBind = getMethod(
        cstring"RigidBody2D", cstring"_direct_state_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rigidBody2DUnderscoredirectStateChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DUnderscoreintegrateForcesMethodBind {.threadvar.}: ptr GodotMethodBind
method integrateForces(self: RigidBody2D; state: Physics2DDirectBodyState) =
  if isNil(rigidBody2DUnderscoreintegrateForcesMethodBind):
    rigidBody2DUnderscoreintegrateForcesMethodBind = getMethod(
        cstring"RigidBody2D", cstring"_integrate_forces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not state.isNil:
    state.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rigidBody2DUnderscoreintegrateForcesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DUnderscorereloadPhysicsCharacteristicsMethodBind {.threadvar.}: ptr GodotMethodBind
method reloadPhysicsCharacteristics(self: RigidBody2D) =
  if isNil(rigidBody2DUnderscorereloadPhysicsCharacteristicsMethodBind):
    rigidBody2DUnderscorereloadPhysicsCharacteristicsMethodBind = getMethod(
        cstring"RigidBody2D", cstring"_reload_physics_characteristics")
  var ptrCallRet: pointer
  rigidBody2DUnderscorereloadPhysicsCharacteristicsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var rigidBody2DAddCentralForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCentralForce(self: RigidBody2D; force: Vector2) =
  if isNil(rigidBody2DAddCentralForceMethodBind):
    rigidBody2DAddCentralForceMethodBind = getMethod(cstring"RigidBody2D",
        cstring"add_central_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(force)
  var ptrCallRet: pointer
  rigidBody2DAddCentralForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DAddForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addForce(self: RigidBody2D; offset: Vector2; force: Vector2) =
  if isNil(rigidBody2DAddForceMethodBind):
    rigidBody2DAddForceMethodBind = getMethod(cstring"RigidBody2D",
        cstring"add_force")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(force)
  var ptrCallRet: pointer
  rigidBody2DAddForceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var rigidBody2DAddTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTorque(self: RigidBody2D; torque: float64) =
  if isNil(rigidBody2DAddTorqueMethodBind):
    rigidBody2DAddTorqueMethodBind = getMethod(cstring"RigidBody2D",
        cstring"add_torque")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(torque)
  var ptrCallRet: pointer
  rigidBody2DAddTorqueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DApplyCentralImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyCentralImpulse(self: RigidBody2D; impulse: Vector2) =
  if isNil(rigidBody2DApplyCentralImpulseMethodBind):
    rigidBody2DApplyCentralImpulseMethodBind = getMethod(cstring"RigidBody2D",
        cstring"apply_central_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  rigidBody2DApplyCentralImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DApplyImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyImpulse(self: RigidBody2D; offset: Vector2; impulse: Vector2) =
  if isNil(rigidBody2DApplyImpulseMethodBind):
    rigidBody2DApplyImpulseMethodBind = getMethod(cstring"RigidBody2D",
        cstring"apply_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  rigidBody2DApplyImpulseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBody2DApplyTorqueImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyTorqueImpulse(self: RigidBody2D; torque: float64) =
  if isNil(rigidBody2DApplyTorqueImpulseMethodBind):
    rigidBody2DApplyTorqueImpulseMethodBind = getMethod(cstring"RigidBody2D",
        cstring"apply_torque_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(torque)
  var ptrCallRet: pointer
  rigidBody2DApplyTorqueImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DGetCollidingBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollidingBodies(self: RigidBody2D): Array =
  if isNil(rigidBody2DGetCollidingBodiesMethodBind):
    rigidBody2DGetCollidingBodiesMethodBind = getMethod(cstring"RigidBody2D",
        cstring"get_colliding_bodies")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  rigidBody2DGetCollidingBodiesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var rigidBody2DSetAxisVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAxisVelocity(self: RigidBody2D; axisVelocity: Vector2) =
  if isNil(rigidBody2DSetAxisVelocityMethodBind):
    rigidBody2DSetAxisVelocityMethodBind = getMethod(cstring"RigidBody2D",
        cstring"set_axis_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(axisVelocity)
  var ptrCallRet: pointer
  rigidBody2DSetAxisVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBody2DTestMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc testMotion(self: RigidBody2D; motion: Vector2; infiniteInertia: bool = true;
               margin: float64 = 0.08; resultVal: Physics2DTestMotionResult = nil): bool =
  if isNil(rigidBody2DTestMotionMethodBind):
    rigidBody2DTestMotionMethodBind = getMethod(cstring"RigidBody2D",
        cstring"test_motion")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(motion)
  argsToPassToGodot[][1] = unsafeAddr(infiniteInertia)
  argsToPassToGodot[][2] = unsafeAddr(margin)
  let argToPassToGodot3 = if not resultVal.isNil:
    resultVal.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBody2DTestMotionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
