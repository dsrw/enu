
import
  godot, godottypes, godotinternal, physics_body

export
  godottypes, physics_body

const
  MODE_CHARACTER* = 2'i64
  MODE_KINEMATIC* = 3'i64
  MODE_RIGID* = 0'i64
  MODE_STATIC* = 1'i64
proc angularDamp*(self: RigidBody): float64 {.gcsafe, locks: 0.}
proc `angularDamp=`*(self: RigidBody; val: float64) {.gcsafe, locks: 0.}
proc angularVelocity*(self: RigidBody): Vector3 {.gcsafe, locks: 0.}
proc `angularVelocity=`*(self: RigidBody; val: Vector3) {.gcsafe, locks: 0.}
proc axisLockAngularX*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `axisLockAngularX=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc axisLockAngularY*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `axisLockAngularY=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc axisLockAngularZ*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `axisLockAngularZ=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc axisLockLinearX*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `axisLockLinearX=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc axisLockLinearY*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `axisLockLinearY=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc axisLockLinearZ*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `axisLockLinearZ=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc bounce*(self: RigidBody): float64 {.gcsafe, locks: 0.}
proc `bounce=`*(self: RigidBody; val: float64) {.gcsafe, locks: 0.}
proc canSleep*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `canSleep=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc contactMonitor*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `contactMonitor=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc contactsReported*(self: RigidBody): int64 {.gcsafe, locks: 0.}
proc `contactsReported=`*(self: RigidBody; val: int64) {.gcsafe, locks: 0.}
proc continuousCd*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `continuousCd=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc customIntegrator*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `customIntegrator=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc friction*(self: RigidBody): float64 {.gcsafe, locks: 0.}
proc `friction=`*(self: RigidBody; val: float64) {.gcsafe, locks: 0.}
proc gravityScale*(self: RigidBody): float64 {.gcsafe, locks: 0.}
proc `gravityScale=`*(self: RigidBody; val: float64) {.gcsafe, locks: 0.}
proc linearDamp*(self: RigidBody): float64 {.gcsafe, locks: 0.}
proc `linearDamp=`*(self: RigidBody; val: float64) {.gcsafe, locks: 0.}
proc linearVelocity*(self: RigidBody): Vector3 {.gcsafe, locks: 0.}
proc `linearVelocity=`*(self: RigidBody; val: Vector3) {.gcsafe, locks: 0.}
proc mass*(self: RigidBody): float64 {.gcsafe, locks: 0.}
proc `mass=`*(self: RigidBody; val: float64) {.gcsafe, locks: 0.}
proc mode*(self: RigidBody): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: RigidBody; val: int64) {.gcsafe, locks: 0.}
proc physicsMaterialOverride*(self: RigidBody): PhysicsMaterial {.gcsafe, locks: 0.}
proc `physicsMaterialOverride=`*(self: RigidBody; val: PhysicsMaterial) {.gcsafe,
    locks: 0.}
proc sleeping*(self: RigidBody): bool {.gcsafe, locks: 0.}
proc `sleeping=`*(self: RigidBody; val: bool) {.gcsafe, locks: 0.}
proc weight*(self: RigidBody): float64 {.gcsafe, locks: 0.}
proc `weight=`*(self: RigidBody; val: float64) {.gcsafe, locks: 0.}
method bodyEnterTree*(self: RigidBody; arg0: int64) {.gcsafe, locks: 0, base.}
method bodyExitTree*(self: RigidBody; arg0: int64) {.gcsafe, locks: 0, base.}
method directStateChanged*(self: RigidBody; arg0: Object) {.gcsafe, locks: 0, base.}
method integrateForces*(self: RigidBody; state: PhysicsDirectBodyState) {.gcsafe,
    locks: 0, base.}
method reloadPhysicsCharacteristics*(self: RigidBody) {.gcsafe, locks: 0, base.}
proc addCentralForce*(self: RigidBody; force: Vector3) {.gcsafe, locks: 0.}
proc addForce*(self: RigidBody; force: Vector3; position: Vector3) {.gcsafe, locks: 0.}
proc addTorque*(self: RigidBody; torque: Vector3) {.gcsafe, locks: 0.}
proc applyCentralImpulse*(self: RigidBody; impulse: Vector3) {.gcsafe, locks: 0.}
proc applyImpulse*(self: RigidBody; position: Vector3; impulse: Vector3) {.gcsafe,
    locks: 0.}
proc applyTorqueImpulse*(self: RigidBody; impulse: Vector3) {.gcsafe, locks: 0.}
proc getCollidingBodies*(self: RigidBody): Array {.gcsafe, locks: 0.}
proc setAxisVelocity*(self: RigidBody; axisVelocity: Vector3) {.gcsafe, locks: 0.}
var rigidBodyGetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularDamp(self: RigidBody): float64 =
  if isNil(rigidBodyGetAngularDampMethodBind):
    rigidBodyGetAngularDampMethodBind = getMethod(cstring"RigidBody",
        cstring"get_angular_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAngularDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularDamp=`(self: RigidBody; val: float64) =
  if isNil(rigidBodySetAngularDampMethodBind):
    rigidBodySetAngularDampMethodBind = getMethod(cstring"RigidBody",
        cstring"set_angular_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAngularDampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyGetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularVelocity(self: RigidBody): Vector3 =
  if isNil(rigidBodyGetAngularVelocityMethodBind):
    rigidBodyGetAngularVelocityMethodBind = getMethod(cstring"RigidBody",
        cstring"get_angular_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAngularVelocityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularVelocity=`(self: RigidBody; val: Vector3) =
  if isNil(rigidBodySetAngularVelocityMethodBind):
    rigidBodySetAngularVelocityMethodBind = getMethod(cstring"RigidBody",
        cstring"set_angular_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAngularVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyGetAxisLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc axisLockAngularX(self: RigidBody): bool =
  if isNil(rigidBodyGetAxisLockMethodBind):
    rigidBodyGetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodySetAxisLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axisLockAngularX=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetAxisLockMethodBind):
    rigidBodySetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc axisLockAngularY(self: RigidBody): bool =
  if isNil(rigidBodyGetAxisLockMethodBind):
    rigidBodyGetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `axisLockAngularY=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetAxisLockMethodBind):
    rigidBodySetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc axisLockAngularZ(self: RigidBody): bool =
  if isNil(rigidBodyGetAxisLockMethodBind):
    rigidBodyGetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `axisLockAngularZ=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetAxisLockMethodBind):
    rigidBodySetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 32'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc axisLockLinearX(self: RigidBody): bool =
  if isNil(rigidBodyGetAxisLockMethodBind):
    rigidBodyGetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `axisLockLinearX=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetAxisLockMethodBind):
    rigidBodySetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc axisLockLinearY(self: RigidBody): bool =
  if isNil(rigidBodyGetAxisLockMethodBind):
    rigidBodyGetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `axisLockLinearY=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetAxisLockMethodBind):
    rigidBodySetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc axisLockLinearZ(self: RigidBody): bool =
  if isNil(rigidBodyGetAxisLockMethodBind):
    rigidBodyGetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `axisLockLinearZ=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetAxisLockMethodBind):
    rigidBodySetAxisLockMethodBind = getMethod(cstring"RigidBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyGetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounce(self: RigidBody): float64 =
  if isNil(rigidBodyGetBounceMethodBind):
    rigidBodyGetBounceMethodBind = getMethod(cstring"RigidBody",
        cstring"get_bounce")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetBounceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounce=`(self: RigidBody; val: float64) =
  if isNil(rigidBodySetBounceMethodBind):
    rigidBodySetBounceMethodBind = getMethod(cstring"RigidBody",
        cstring"set_bounce")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetBounceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var rigidBodyIsAbleToSleepMethodBind {.threadvar.}: ptr GodotMethodBind
proc canSleep(self: RigidBody): bool =
  if isNil(rigidBodyIsAbleToSleepMethodBind):
    rigidBodyIsAbleToSleepMethodBind = getMethod(cstring"RigidBody",
        cstring"is_able_to_sleep")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyIsAbleToSleepMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetCanSleepMethodBind {.threadvar.}: ptr GodotMethodBind
proc `canSleep=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetCanSleepMethodBind):
    rigidBodySetCanSleepMethodBind = getMethod(cstring"RigidBody",
        cstring"set_can_sleep")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetCanSleepMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyIsContactMonitorEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc contactMonitor(self: RigidBody): bool =
  if isNil(rigidBodyIsContactMonitorEnabledMethodBind):
    rigidBodyIsContactMonitorEnabledMethodBind = getMethod(cstring"RigidBody",
        cstring"is_contact_monitor_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyIsContactMonitorEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rigidBodySetContactMonitorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `contactMonitor=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetContactMonitorMethodBind):
    rigidBodySetContactMonitorMethodBind = getMethod(cstring"RigidBody",
        cstring"set_contact_monitor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetContactMonitorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyGetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc contactsReported(self: RigidBody): int64 =
  if isNil(rigidBodyGetMaxContactsReportedMethodBind):
    rigidBodyGetMaxContactsReportedMethodBind = getMethod(cstring"RigidBody",
        cstring"get_max_contacts_reported")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetMaxContactsReportedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rigidBodySetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `contactsReported=`(self: RigidBody; val: int64) =
  if isNil(rigidBodySetMaxContactsReportedMethodBind):
    rigidBodySetMaxContactsReportedMethodBind = getMethod(cstring"RigidBody",
        cstring"set_max_contacts_reported")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetMaxContactsReportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyIsUsingContinuousCollisionDetectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc continuousCd(self: RigidBody): bool =
  if isNil(rigidBodyIsUsingContinuousCollisionDetectionMethodBind):
    rigidBodyIsUsingContinuousCollisionDetectionMethodBind = getMethod(
        cstring"RigidBody", cstring"is_using_continuous_collision_detection")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyIsUsingContinuousCollisionDetectionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var rigidBodySetUseContinuousCollisionDetectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `continuousCd=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetUseContinuousCollisionDetectionMethodBind):
    rigidBodySetUseContinuousCollisionDetectionMethodBind = getMethod(
        cstring"RigidBody", cstring"set_use_continuous_collision_detection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetUseContinuousCollisionDetectionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var rigidBodyIsUsingCustomIntegratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc customIntegrator(self: RigidBody): bool =
  if isNil(rigidBodyIsUsingCustomIntegratorMethodBind):
    rigidBodyIsUsingCustomIntegratorMethodBind = getMethod(cstring"RigidBody",
        cstring"is_using_custom_integrator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyIsUsingCustomIntegratorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rigidBodySetUseCustomIntegratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customIntegrator=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetUseCustomIntegratorMethodBind):
    rigidBodySetUseCustomIntegratorMethodBind = getMethod(cstring"RigidBody",
        cstring"set_use_custom_integrator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetUseCustomIntegratorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyGetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc friction(self: RigidBody): float64 =
  if isNil(rigidBodyGetFrictionMethodBind):
    rigidBodyGetFrictionMethodBind = getMethod(cstring"RigidBody",
        cstring"get_friction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetFrictionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `friction=`(self: RigidBody; val: float64) =
  if isNil(rigidBodySetFrictionMethodBind):
    rigidBodySetFrictionMethodBind = getMethod(cstring"RigidBody",
        cstring"set_friction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetFrictionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyGetGravityScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityScale(self: RigidBody): float64 =
  if isNil(rigidBodyGetGravityScaleMethodBind):
    rigidBodyGetGravityScaleMethodBind = getMethod(cstring"RigidBody",
        cstring"get_gravity_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetGravityScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetGravityScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityScale=`(self: RigidBody; val: float64) =
  if isNil(rigidBodySetGravityScaleMethodBind):
    rigidBodySetGravityScaleMethodBind = getMethod(cstring"RigidBody",
        cstring"set_gravity_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetGravityScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyGetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearDamp(self: RigidBody): float64 =
  if isNil(rigidBodyGetLinearDampMethodBind):
    rigidBodyGetLinearDampMethodBind = getMethod(cstring"RigidBody",
        cstring"get_linear_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetLinearDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearDamp=`(self: RigidBody; val: float64) =
  if isNil(rigidBodySetLinearDampMethodBind):
    rigidBodySetLinearDampMethodBind = getMethod(cstring"RigidBody",
        cstring"set_linear_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetLinearDampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyGetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearVelocity(self: RigidBody): Vector3 =
  if isNil(rigidBodyGetLinearVelocityMethodBind):
    rigidBodyGetLinearVelocityMethodBind = getMethod(cstring"RigidBody",
        cstring"get_linear_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetLinearVelocityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearVelocity=`(self: RigidBody; val: Vector3) =
  if isNil(rigidBodySetLinearVelocityMethodBind):
    rigidBodySetLinearVelocityMethodBind = getMethod(cstring"RigidBody",
        cstring"set_linear_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetLinearVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyGetMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc mass(self: RigidBody): float64 =
  if isNil(rigidBodyGetMassMethodBind):
    rigidBodyGetMassMethodBind = getMethod(cstring"RigidBody", cstring"get_mass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetMassMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mass=`(self: RigidBody; val: float64) =
  if isNil(rigidBodySetMassMethodBind):
    rigidBodySetMassMethodBind = getMethod(cstring"RigidBody", cstring"set_mass")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetMassMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var rigidBodyGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: RigidBody): int64 =
  if isNil(rigidBodyGetModeMethodBind):
    rigidBodyGetModeMethodBind = getMethod(cstring"RigidBody", cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: RigidBody; val: int64) =
  if isNil(rigidBodySetModeMethodBind):
    rigidBodySetModeMethodBind = getMethod(cstring"RigidBody", cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var rigidBodyGetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicsMaterialOverride(self: RigidBody): PhysicsMaterial =
  if isNil(rigidBodyGetPhysicsMaterialOverrideMethodBind):
    rigidBodyGetPhysicsMaterialOverrideMethodBind = getMethod(cstring"RigidBody",
        cstring"get_physics_material_override")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  rigidBodyGetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var rigidBodySetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `physicsMaterialOverride=`(self: RigidBody; val: PhysicsMaterial) =
  if isNil(rigidBodySetPhysicsMaterialOverrideMethodBind):
    rigidBodySetPhysicsMaterialOverrideMethodBind = getMethod(cstring"RigidBody",
        cstring"set_physics_material_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rigidBodySetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyIsSleepingMethodBind {.threadvar.}: ptr GodotMethodBind
proc sleeping(self: RigidBody): bool =
  if isNil(rigidBodyIsSleepingMethodBind):
    rigidBodyIsSleepingMethodBind = getMethod(cstring"RigidBody",
        cstring"is_sleeping")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyIsSleepingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetSleepingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sleeping=`(self: RigidBody; val: bool) =
  if isNil(rigidBodySetSleepingMethodBind):
    rigidBodySetSleepingMethodBind = getMethod(cstring"RigidBody",
        cstring"set_sleeping")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetSleepingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyGetWeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc weight(self: RigidBody): float64 =
  if isNil(rigidBodyGetWeightMethodBind):
    rigidBodyGetWeightMethodBind = getMethod(cstring"RigidBody",
        cstring"get_weight")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rigidBodyGetWeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rigidBodySetWeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `weight=`(self: RigidBody; val: float64) =
  if isNil(rigidBodySetWeightMethodBind):
    rigidBodySetWeightMethodBind = getMethod(cstring"RigidBody",
        cstring"set_weight")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rigidBodySetWeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var rigidBodyUnderscorebodyEnterTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyEnterTree(self: RigidBody; arg0: int64) =
  if isNil(rigidBodyUnderscorebodyEnterTreeMethodBind):
    rigidBodyUnderscorebodyEnterTreeMethodBind = getMethod(cstring"RigidBody",
        cstring"_body_enter_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  rigidBodyUnderscorebodyEnterTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyUnderscorebodyExitTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyExitTree(self: RigidBody; arg0: int64) =
  if isNil(rigidBodyUnderscorebodyExitTreeMethodBind):
    rigidBodyUnderscorebodyExitTreeMethodBind = getMethod(cstring"RigidBody",
        cstring"_body_exit_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  rigidBodyUnderscorebodyExitTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyUnderscoredirectStateChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method directStateChanged(self: RigidBody; arg0: Object) =
  if isNil(rigidBodyUnderscoredirectStateChangedMethodBind):
    rigidBodyUnderscoredirectStateChangedMethodBind = getMethod(
        cstring"RigidBody", cstring"_direct_state_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rigidBodyUnderscoredirectStateChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyUnderscoreintegrateForcesMethodBind {.threadvar.}: ptr GodotMethodBind
method integrateForces(self: RigidBody; state: PhysicsDirectBodyState) =
  if isNil(rigidBodyUnderscoreintegrateForcesMethodBind):
    rigidBodyUnderscoreintegrateForcesMethodBind = getMethod(cstring"RigidBody",
        cstring"_integrate_forces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not state.isNil:
    state.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rigidBodyUnderscoreintegrateForcesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyUnderscorereloadPhysicsCharacteristicsMethodBind {.threadvar.}: ptr GodotMethodBind
method reloadPhysicsCharacteristics(self: RigidBody) =
  if isNil(rigidBodyUnderscorereloadPhysicsCharacteristicsMethodBind):
    rigidBodyUnderscorereloadPhysicsCharacteristicsMethodBind = getMethod(
        cstring"RigidBody", cstring"_reload_physics_characteristics")
  var ptrCallRet: pointer
  rigidBodyUnderscorereloadPhysicsCharacteristicsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var rigidBodyAddCentralForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCentralForce(self: RigidBody; force: Vector3) =
  if isNil(rigidBodyAddCentralForceMethodBind):
    rigidBodyAddCentralForceMethodBind = getMethod(cstring"RigidBody",
        cstring"add_central_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(force)
  var ptrCallRet: pointer
  rigidBodyAddCentralForceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyAddForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addForce(self: RigidBody; force: Vector3; position: Vector3) =
  if isNil(rigidBodyAddForceMethodBind):
    rigidBodyAddForceMethodBind = getMethod(cstring"RigidBody", cstring"add_force")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(force)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  rigidBodyAddForceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var rigidBodyAddTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTorque(self: RigidBody; torque: Vector3) =
  if isNil(rigidBodyAddTorqueMethodBind):
    rigidBodyAddTorqueMethodBind = getMethod(cstring"RigidBody",
        cstring"add_torque")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(torque)
  var ptrCallRet: pointer
  rigidBodyAddTorqueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var rigidBodyApplyCentralImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyCentralImpulse(self: RigidBody; impulse: Vector3) =
  if isNil(rigidBodyApplyCentralImpulseMethodBind):
    rigidBodyApplyCentralImpulseMethodBind = getMethod(cstring"RigidBody",
        cstring"apply_central_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  rigidBodyApplyCentralImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyApplyImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyImpulse(self: RigidBody; position: Vector3; impulse: Vector3) =
  if isNil(rigidBodyApplyImpulseMethodBind):
    rigidBodyApplyImpulseMethodBind = getMethod(cstring"RigidBody",
        cstring"apply_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  rigidBodyApplyImpulseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rigidBodyApplyTorqueImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyTorqueImpulse(self: RigidBody; impulse: Vector3) =
  if isNil(rigidBodyApplyTorqueImpulseMethodBind):
    rigidBodyApplyTorqueImpulseMethodBind = getMethod(cstring"RigidBody",
        cstring"apply_torque_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  rigidBodyApplyTorqueImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rigidBodyGetCollidingBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollidingBodies(self: RigidBody): Array =
  if isNil(rigidBodyGetCollidingBodiesMethodBind):
    rigidBodyGetCollidingBodiesMethodBind = getMethod(cstring"RigidBody",
        cstring"get_colliding_bodies")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  rigidBodyGetCollidingBodiesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var rigidBodySetAxisVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAxisVelocity(self: RigidBody; axisVelocity: Vector3) =
  if isNil(rigidBodySetAxisVelocityMethodBind):
    rigidBodySetAxisVelocityMethodBind = getMethod(cstring"RigidBody",
        cstring"set_axis_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(axisVelocity)
  var ptrCallRet: pointer
  rigidBodySetAxisVelocityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
