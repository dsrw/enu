
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

proc angularVelocity*(self: PhysicsDirectBodyState): Vector3 {.gcsafe, locks: 0.}
proc `angularVelocity=`*(self: PhysicsDirectBodyState; val: Vector3) {.gcsafe,
    locks: 0.}
proc centerOfMass*(self: PhysicsDirectBodyState): Vector3 {.gcsafe, locks: 0.}
proc `centerOfMass=`*(self: PhysicsDirectBodyState; val: Vector3) {.gcsafe, locks: 0.}
proc inverseInertia*(self: PhysicsDirectBodyState): Vector3 {.gcsafe, locks: 0.}
proc `inverseInertia=`*(self: PhysicsDirectBodyState; val: Vector3) {.gcsafe, locks: 0.}
proc inverseMass*(self: PhysicsDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `inverseMass=`*(self: PhysicsDirectBodyState; val: float64) {.gcsafe, locks: 0.}
proc linearVelocity*(self: PhysicsDirectBodyState): Vector3 {.gcsafe, locks: 0.}
proc `linearVelocity=`*(self: PhysicsDirectBodyState; val: Vector3) {.gcsafe, locks: 0.}
proc principalInertiaAxes*(self: PhysicsDirectBodyState): Basis {.gcsafe, locks: 0.}
proc `principalInertiaAxes=`*(self: PhysicsDirectBodyState; val: Basis) {.gcsafe,
    locks: 0.}
proc sleeping*(self: PhysicsDirectBodyState): bool {.gcsafe, locks: 0.}
proc `sleeping=`*(self: PhysicsDirectBodyState; val: bool) {.gcsafe, locks: 0.}
proc step*(self: PhysicsDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `step=`*(self: PhysicsDirectBodyState; val: float64) {.gcsafe, locks: 0.}
proc totalAngularDamp*(self: PhysicsDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `totalAngularDamp=`*(self: PhysicsDirectBodyState; val: float64) {.gcsafe,
    locks: 0.}
proc totalGravity*(self: PhysicsDirectBodyState): Vector3 {.gcsafe, locks: 0.}
proc `totalGravity=`*(self: PhysicsDirectBodyState; val: Vector3) {.gcsafe, locks: 0.}
proc totalLinearDamp*(self: PhysicsDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `totalLinearDamp=`*(self: PhysicsDirectBodyState; val: float64) {.gcsafe,
    locks: 0.}
proc transform*(self: PhysicsDirectBodyState): Transform {.gcsafe, locks: 0.}
proc `transform=`*(self: PhysicsDirectBodyState; val: Transform) {.gcsafe, locks: 0.}
proc addCentralForce*(self: PhysicsDirectBodyState; force: Vector3) {.gcsafe, locks: 0.}
proc addForce*(self: PhysicsDirectBodyState; force: Vector3; position: Vector3) {.
    gcsafe, locks: 0.}
proc addTorque*(self: PhysicsDirectBodyState; torque: Vector3) {.gcsafe, locks: 0.}
proc applyCentralImpulse*(self: PhysicsDirectBodyState; j: Vector3) {.gcsafe, locks: 0.}
proc applyImpulse*(self: PhysicsDirectBodyState; position: Vector3; j: Vector3) {.
    gcsafe, locks: 0.}
proc applyTorqueImpulse*(self: PhysicsDirectBodyState; j: Vector3) {.gcsafe, locks: 0.}
proc getContactCollider*(self: PhysicsDirectBodyState; contactIdx: int64): RID {.
    gcsafe, locks: 0.}
proc getContactColliderId*(self: PhysicsDirectBodyState; contactIdx: int64): int64 {.
    gcsafe, locks: 0.}
proc getContactColliderObject*(self: PhysicsDirectBodyState; contactIdx: int64): Object {.
    gcsafe, locks: 0.}
proc getContactColliderPosition*(self: PhysicsDirectBodyState; contactIdx: int64): Vector3 {.
    gcsafe, locks: 0.}
proc getContactColliderShape*(self: PhysicsDirectBodyState; contactIdx: int64): int64 {.
    gcsafe, locks: 0.}
proc getContactColliderVelocityAtPosition*(self: PhysicsDirectBodyState;
    contactIdx: int64): Vector3 {.gcsafe, locks: 0.}
proc getContactCount*(self: PhysicsDirectBodyState): int64 {.gcsafe, locks: 0.}
proc getContactImpulse*(self: PhysicsDirectBodyState; contactIdx: int64): float64 {.
    gcsafe, locks: 0.}
proc getContactLocalNormal*(self: PhysicsDirectBodyState; contactIdx: int64): Vector3 {.
    gcsafe, locks: 0.}
proc getContactLocalPosition*(self: PhysicsDirectBodyState; contactIdx: int64): Vector3 {.
    gcsafe, locks: 0.}
proc getContactLocalShape*(self: PhysicsDirectBodyState; contactIdx: int64): int64 {.
    gcsafe, locks: 0.}
proc getSpaceState*(self: PhysicsDirectBodyState): PhysicsDirectSpaceState {.gcsafe,
    locks: 0.}
proc integrateForces*(self: PhysicsDirectBodyState) {.gcsafe, locks: 0.}
var physicsDirectBodyStateGetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularVelocity(self: PhysicsDirectBodyState): Vector3 =
  if isNil(physicsDirectBodyStateGetAngularVelocityMethodBind):
    physicsDirectBodyStateGetAngularVelocityMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_angular_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetAngularVelocityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physicsDirectBodyStateSetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularVelocity=`(self: PhysicsDirectBodyState; val: Vector3) =
  if isNil(physicsDirectBodyStateSetAngularVelocityMethodBind):
    physicsDirectBodyStateSetAngularVelocityMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"set_angular_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateSetAngularVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetCenterOfMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc centerOfMass(self: PhysicsDirectBodyState): Vector3 =
  if isNil(physicsDirectBodyStateGetCenterOfMassMethodBind):
    physicsDirectBodyStateGetCenterOfMassMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_center_of_mass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetCenterOfMassMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsDirectBodyStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `centerOfMass=`(self: PhysicsDirectBodyState; val: Vector3) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateGetInverseInertiaMethodBind {.threadvar.}: ptr GodotMethodBind
proc inverseInertia(self: PhysicsDirectBodyState): Vector3 =
  if isNil(physicsDirectBodyStateGetInverseInertiaMethodBind):
    physicsDirectBodyStateGetInverseInertiaMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_inverse_inertia")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetInverseInertiaMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `inverseInertia=`(self: PhysicsDirectBodyState; val: Vector3) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateGetInverseMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc inverseMass(self: PhysicsDirectBodyState): float64 =
  if isNil(physicsDirectBodyStateGetInverseMassMethodBind):
    physicsDirectBodyStateGetInverseMassMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_inverse_mass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetInverseMassMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `inverseMass=`(self: PhysicsDirectBodyState; val: float64) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateGetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearVelocity(self: PhysicsDirectBodyState): Vector3 =
  if isNil(physicsDirectBodyStateGetLinearVelocityMethodBind):
    physicsDirectBodyStateGetLinearVelocityMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_linear_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetLinearVelocityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physicsDirectBodyStateSetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearVelocity=`(self: PhysicsDirectBodyState; val: Vector3) =
  if isNil(physicsDirectBodyStateSetLinearVelocityMethodBind):
    physicsDirectBodyStateSetLinearVelocityMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"set_linear_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateSetLinearVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetPrincipalInertiaAxesMethodBind {.threadvar.}: ptr GodotMethodBind
proc principalInertiaAxes(self: PhysicsDirectBodyState): Basis =
  if isNil(physicsDirectBodyStateGetPrincipalInertiaAxesMethodBind):
    physicsDirectBodyStateGetPrincipalInertiaAxesMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_principal_inertia_axes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetPrincipalInertiaAxesMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

proc `principalInertiaAxes=`(self: PhysicsDirectBodyState; val: Basis) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateIsSleepingMethodBind {.threadvar.}: ptr GodotMethodBind
proc sleeping(self: PhysicsDirectBodyState): bool =
  if isNil(physicsDirectBodyStateIsSleepingMethodBind):
    physicsDirectBodyStateIsSleepingMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"is_sleeping")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateIsSleepingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsDirectBodyStateSetSleepStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sleeping=`(self: PhysicsDirectBodyState; val: bool) =
  if isNil(physicsDirectBodyStateSetSleepStateMethodBind):
    physicsDirectBodyStateSetSleepStateMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"set_sleep_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateSetSleepStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc step(self: PhysicsDirectBodyState): float64 =
  if isNil(physicsDirectBodyStateGetStepMethodBind):
    physicsDirectBodyStateGetStepMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_step")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetStepMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `step=`(self: PhysicsDirectBodyState; val: float64) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateGetTotalAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc totalAngularDamp(self: PhysicsDirectBodyState): float64 =
  if isNil(physicsDirectBodyStateGetTotalAngularDampMethodBind):
    physicsDirectBodyStateGetTotalAngularDampMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_total_angular_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetTotalAngularDampMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `totalAngularDamp=`(self: PhysicsDirectBodyState; val: float64) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateGetTotalGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc totalGravity(self: PhysicsDirectBodyState): Vector3 =
  if isNil(physicsDirectBodyStateGetTotalGravityMethodBind):
    physicsDirectBodyStateGetTotalGravityMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_total_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetTotalGravityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `totalGravity=`(self: PhysicsDirectBodyState; val: Vector3) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateGetTotalLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc totalLinearDamp(self: PhysicsDirectBodyState): float64 =
  if isNil(physicsDirectBodyStateGetTotalLinearDampMethodBind):
    physicsDirectBodyStateGetTotalLinearDampMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_total_linear_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetTotalLinearDampMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `totalLinearDamp=`(self: PhysicsDirectBodyState; val: float64) =
  if isNil(physicsDirectBodyStateMethodBind):
    physicsDirectBodyStateMethodBind = getMethod(cstring"PhysicsDirectBodyState",
        cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsDirectBodyStateGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform(self: PhysicsDirectBodyState): Transform =
  if isNil(physicsDirectBodyStateGetTransformMethodBind):
    physicsDirectBodyStateGetTransformMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsDirectBodyStateSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform=`(self: PhysicsDirectBodyState; val: Transform) =
  if isNil(physicsDirectBodyStateSetTransformMethodBind):
    physicsDirectBodyStateSetTransformMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsDirectBodyStateSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateAddCentralForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCentralForce(self: PhysicsDirectBodyState; force: Vector3) =
  if isNil(physicsDirectBodyStateAddCentralForceMethodBind):
    physicsDirectBodyStateAddCentralForceMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"add_central_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(force)
  var ptrCallRet: pointer
  physicsDirectBodyStateAddCentralForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateAddForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addForce(self: PhysicsDirectBodyState; force: Vector3; position: Vector3) =
  if isNil(physicsDirectBodyStateAddForceMethodBind):
    physicsDirectBodyStateAddForceMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"add_force")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(force)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  physicsDirectBodyStateAddForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateAddTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTorque(self: PhysicsDirectBodyState; torque: Vector3) =
  if isNil(physicsDirectBodyStateAddTorqueMethodBind):
    physicsDirectBodyStateAddTorqueMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"add_torque")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(torque)
  var ptrCallRet: pointer
  physicsDirectBodyStateAddTorqueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateApplyCentralImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyCentralImpulse(self: PhysicsDirectBodyState; j: Vector3) =
  if isNil(physicsDirectBodyStateApplyCentralImpulseMethodBind):
    physicsDirectBodyStateApplyCentralImpulseMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"apply_central_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(j)
  var ptrCallRet: pointer
  physicsDirectBodyStateApplyCentralImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateApplyImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyImpulse(self: PhysicsDirectBodyState; position: Vector3; j: Vector3) =
  if isNil(physicsDirectBodyStateApplyImpulseMethodBind):
    physicsDirectBodyStateApplyImpulseMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"apply_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(j)
  var ptrCallRet: pointer
  physicsDirectBodyStateApplyImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateApplyTorqueImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyTorqueImpulse(self: PhysicsDirectBodyState; j: Vector3) =
  if isNil(physicsDirectBodyStateApplyTorqueImpulseMethodBind):
    physicsDirectBodyStateApplyTorqueImpulseMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"apply_torque_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(j)
  var ptrCallRet: pointer
  physicsDirectBodyStateApplyTorqueImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactCollider(self: PhysicsDirectBodyState; contactIdx: int64): RID =
  if isNil(physicsDirectBodyStateGetContactColliderMethodBind):
    physicsDirectBodyStateGetContactColliderMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_collider")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactColliderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactColliderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderId(self: PhysicsDirectBodyState; contactIdx: int64): int64 =
  if isNil(physicsDirectBodyStateGetContactColliderIdMethodBind):
    physicsDirectBodyStateGetContactColliderIdMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_collider_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactColliderIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactColliderObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderObject(self: PhysicsDirectBodyState; contactIdx: int64): Object =
  if isNil(physicsDirectBodyStateGetContactColliderObjectMethodBind):
    physicsDirectBodyStateGetContactColliderObjectMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_collider_object")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physicsDirectBodyStateGetContactColliderObjectMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physicsDirectBodyStateGetContactColliderPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderPosition(self: PhysicsDirectBodyState; contactIdx: int64): Vector3 =
  if isNil(physicsDirectBodyStateGetContactColliderPositionMethodBind):
    physicsDirectBodyStateGetContactColliderPositionMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_collider_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactColliderPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderShape(self: PhysicsDirectBodyState; contactIdx: int64): int64 =
  if isNil(physicsDirectBodyStateGetContactColliderShapeMethodBind):
    physicsDirectBodyStateGetContactColliderShapeMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_collider_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactColliderShapeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactColliderVelocityAtPositionMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc getContactColliderVelocityAtPosition(self: PhysicsDirectBodyState;
    contactIdx: int64): Vector3 =
  if isNil(physicsDirectBodyStateGetContactColliderVelocityAtPositionMethodBind):
    physicsDirectBodyStateGetContactColliderVelocityAtPositionMethodBind = getMethod(
        cstring"PhysicsDirectBodyState",
        cstring"get_contact_collider_velocity_at_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactColliderVelocityAtPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactCount(self: PhysicsDirectBodyState): int64 =
  if isNil(physicsDirectBodyStateGetContactCountMethodBind):
    physicsDirectBodyStateGetContactCountMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsDirectBodyStateGetContactImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactImpulse(self: PhysicsDirectBodyState; contactIdx: int64): float64 =
  if isNil(physicsDirectBodyStateGetContactImpulseMethodBind):
    physicsDirectBodyStateGetContactImpulseMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactLocalNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactLocalNormal(self: PhysicsDirectBodyState; contactIdx: int64): Vector3 =
  if isNil(physicsDirectBodyStateGetContactLocalNormalMethodBind):
    physicsDirectBodyStateGetContactLocalNormalMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_local_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactLocalNormalMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactLocalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactLocalPosition(self: PhysicsDirectBodyState; contactIdx: int64): Vector3 =
  if isNil(physicsDirectBodyStateGetContactLocalPositionMethodBind):
    physicsDirectBodyStateGetContactLocalPositionMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_local_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactLocalPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetContactLocalShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactLocalShape(self: PhysicsDirectBodyState; contactIdx: int64): int64 =
  if isNil(physicsDirectBodyStateGetContactLocalShapeMethodBind):
    physicsDirectBodyStateGetContactLocalShapeMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_contact_local_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsDirectBodyStateGetContactLocalShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsDirectBodyStateGetSpaceStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSpaceState(self: PhysicsDirectBodyState): PhysicsDirectSpaceState =
  if isNil(physicsDirectBodyStateGetSpaceStateMethodBind):
    physicsDirectBodyStateGetSpaceStateMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"get_space_state")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physicsDirectBodyStateGetSpaceStateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physicsDirectBodyStateIntegrateForcesMethodBind {.threadvar.}: ptr GodotMethodBind
proc integrateForces(self: PhysicsDirectBodyState) =
  if isNil(physicsDirectBodyStateIntegrateForcesMethodBind):
    physicsDirectBodyStateIntegrateForcesMethodBind = getMethod(
        cstring"PhysicsDirectBodyState", cstring"integrate_forces")
  var ptrCallRet: pointer
  physicsDirectBodyStateIntegrateForcesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
