
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

proc angularVelocity*(self: Physics2DDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `angularVelocity=`*(self: Physics2DDirectBodyState; val: float64) {.gcsafe,
    locks: 0.}
proc inverseInertia*(self: Physics2DDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `inverseInertia=`*(self: Physics2DDirectBodyState; val: float64) {.gcsafe,
    locks: 0.}
proc inverseMass*(self: Physics2DDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `inverseMass=`*(self: Physics2DDirectBodyState; val: float64) {.gcsafe, locks: 0.}
proc linearVelocity*(self: Physics2DDirectBodyState): Vector2 {.gcsafe, locks: 0.}
proc `linearVelocity=`*(self: Physics2DDirectBodyState; val: Vector2) {.gcsafe,
    locks: 0.}
proc sleeping*(self: Physics2DDirectBodyState): bool {.gcsafe, locks: 0.}
proc `sleeping=`*(self: Physics2DDirectBodyState; val: bool) {.gcsafe, locks: 0.}
proc step*(self: Physics2DDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `step=`*(self: Physics2DDirectBodyState; val: float64) {.gcsafe, locks: 0.}
proc totalAngularDamp*(self: Physics2DDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `totalAngularDamp=`*(self: Physics2DDirectBodyState; val: float64) {.gcsafe,
    locks: 0.}
proc totalGravity*(self: Physics2DDirectBodyState): Vector2 {.gcsafe, locks: 0.}
proc `totalGravity=`*(self: Physics2DDirectBodyState; val: Vector2) {.gcsafe, locks: 0.}
proc totalLinearDamp*(self: Physics2DDirectBodyState): float64 {.gcsafe, locks: 0.}
proc `totalLinearDamp=`*(self: Physics2DDirectBodyState; val: float64) {.gcsafe,
    locks: 0.}
proc transform*(self: Physics2DDirectBodyState): Transform2D {.gcsafe, locks: 0.}
proc `transform=`*(self: Physics2DDirectBodyState; val: Transform2D) {.gcsafe,
    locks: 0.}
proc addCentralForce*(self: Physics2DDirectBodyState; force: Vector2) {.gcsafe,
    locks: 0.}
proc addForce*(self: Physics2DDirectBodyState; offset: Vector2; force: Vector2) {.
    gcsafe, locks: 0.}
proc addTorque*(self: Physics2DDirectBodyState; torque: float64) {.gcsafe, locks: 0.}
proc applyCentralImpulse*(self: Physics2DDirectBodyState; impulse: Vector2) {.gcsafe,
    locks: 0.}
proc applyImpulse*(self: Physics2DDirectBodyState; offset: Vector2; impulse: Vector2) {.
    gcsafe, locks: 0.}
proc applyTorqueImpulse*(self: Physics2DDirectBodyState; impulse: float64) {.gcsafe,
    locks: 0.}
proc getContactCollider*(self: Physics2DDirectBodyState; contactIdx: int64): RID {.
    gcsafe, locks: 0.}
proc getContactColliderId*(self: Physics2DDirectBodyState; contactIdx: int64): int64 {.
    gcsafe, locks: 0.}
proc getContactColliderObject*(self: Physics2DDirectBodyState; contactIdx: int64): Object {.
    gcsafe, locks: 0.}
proc getContactColliderPosition*(self: Physics2DDirectBodyState; contactIdx: int64): Vector2 {.
    gcsafe, locks: 0.}
proc getContactColliderShape*(self: Physics2DDirectBodyState; contactIdx: int64): int64 {.
    gcsafe, locks: 0.}
proc getContactColliderShapeMetadata*(self: Physics2DDirectBodyState;
                                     contactIdx: int64): Variant {.gcsafe, locks: 0.}
proc getContactColliderVelocityAtPosition*(self: Physics2DDirectBodyState;
    contactIdx: int64): Vector2 {.gcsafe, locks: 0.}
proc getContactCount*(self: Physics2DDirectBodyState): int64 {.gcsafe, locks: 0.}
proc getContactLocalNormal*(self: Physics2DDirectBodyState; contactIdx: int64): Vector2 {.
    gcsafe, locks: 0.}
proc getContactLocalPosition*(self: Physics2DDirectBodyState; contactIdx: int64): Vector2 {.
    gcsafe, locks: 0.}
proc getContactLocalShape*(self: Physics2DDirectBodyState; contactIdx: int64): int64 {.
    gcsafe, locks: 0.}
proc getSpaceState*(self: Physics2DDirectBodyState): Physics2DDirectSpaceState {.
    gcsafe, locks: 0.}
proc integrateForces*(self: Physics2DDirectBodyState) {.gcsafe, locks: 0.}
var physics2DDirectBodyStateGetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularVelocity(self: Physics2DDirectBodyState): float64 =
  if isNil(physics2DDirectBodyStateGetAngularVelocityMethodBind):
    physics2DDirectBodyStateGetAngularVelocityMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_angular_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetAngularVelocityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DDirectBodyStateSetAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularVelocity=`(self: Physics2DDirectBodyState; val: float64) =
  if isNil(physics2DDirectBodyStateSetAngularVelocityMethodBind):
    physics2DDirectBodyStateSetAngularVelocityMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"set_angular_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateSetAngularVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetInverseInertiaMethodBind {.threadvar.}: ptr GodotMethodBind
proc inverseInertia(self: Physics2DDirectBodyState): float64 =
  if isNil(physics2DDirectBodyStateGetInverseInertiaMethodBind):
    physics2DDirectBodyStateGetInverseInertiaMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_inverse_inertia")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetInverseInertiaMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DDirectBodyStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inverseInertia=`(self: Physics2DDirectBodyState; val: float64) =
  if isNil(physics2DDirectBodyStateMethodBind):
    physics2DDirectBodyStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DDirectBodyStateGetInverseMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc inverseMass(self: Physics2DDirectBodyState): float64 =
  if isNil(physics2DDirectBodyStateGetInverseMassMethodBind):
    physics2DDirectBodyStateGetInverseMassMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_inverse_mass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetInverseMassMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `inverseMass=`(self: Physics2DDirectBodyState; val: float64) =
  if isNil(physics2DDirectBodyStateMethodBind):
    physics2DDirectBodyStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DDirectBodyStateGetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearVelocity(self: Physics2DDirectBodyState): Vector2 =
  if isNil(physics2DDirectBodyStateGetLinearVelocityMethodBind):
    physics2DDirectBodyStateGetLinearVelocityMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_linear_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetLinearVelocityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DDirectBodyStateSetLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearVelocity=`(self: Physics2DDirectBodyState; val: Vector2) =
  if isNil(physics2DDirectBodyStateSetLinearVelocityMethodBind):
    physics2DDirectBodyStateSetLinearVelocityMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"set_linear_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateSetLinearVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateIsSleepingMethodBind {.threadvar.}: ptr GodotMethodBind
proc sleeping(self: Physics2DDirectBodyState): bool =
  if isNil(physics2DDirectBodyStateIsSleepingMethodBind):
    physics2DDirectBodyStateIsSleepingMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"is_sleeping")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateIsSleepingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DDirectBodyStateSetSleepStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sleeping=`(self: Physics2DDirectBodyState; val: bool) =
  if isNil(physics2DDirectBodyStateSetSleepStateMethodBind):
    physics2DDirectBodyStateSetSleepStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"set_sleep_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateSetSleepStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc step(self: Physics2DDirectBodyState): float64 =
  if isNil(physics2DDirectBodyStateGetStepMethodBind):
    physics2DDirectBodyStateGetStepMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_step")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetStepMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `step=`(self: Physics2DDirectBodyState; val: float64) =
  if isNil(physics2DDirectBodyStateMethodBind):
    physics2DDirectBodyStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DDirectBodyStateGetTotalAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc totalAngularDamp(self: Physics2DDirectBodyState): float64 =
  if isNil(physics2DDirectBodyStateGetTotalAngularDampMethodBind):
    physics2DDirectBodyStateGetTotalAngularDampMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_total_angular_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetTotalAngularDampMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

proc `totalAngularDamp=`(self: Physics2DDirectBodyState; val: float64) =
  if isNil(physics2DDirectBodyStateMethodBind):
    physics2DDirectBodyStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DDirectBodyStateGetTotalGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc totalGravity(self: Physics2DDirectBodyState): Vector2 =
  if isNil(physics2DDirectBodyStateGetTotalGravityMethodBind):
    physics2DDirectBodyStateGetTotalGravityMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_total_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetTotalGravityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `totalGravity=`(self: Physics2DDirectBodyState; val: Vector2) =
  if isNil(physics2DDirectBodyStateMethodBind):
    physics2DDirectBodyStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DDirectBodyStateGetTotalLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc totalLinearDamp(self: Physics2DDirectBodyState): float64 =
  if isNil(physics2DDirectBodyStateGetTotalLinearDampMethodBind):
    physics2DDirectBodyStateGetTotalLinearDampMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_total_linear_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetTotalLinearDampMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `totalLinearDamp=`(self: Physics2DDirectBodyState; val: float64) =
  if isNil(physics2DDirectBodyStateMethodBind):
    physics2DDirectBodyStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DDirectBodyStateGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform(self: Physics2DDirectBodyState): Transform2D =
  if isNil(physics2DDirectBodyStateGetTransformMethodBind):
    physics2DDirectBodyStateGetTransformMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DDirectBodyStateSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform=`(self: Physics2DDirectBodyState; val: Transform2D) =
  if isNil(physics2DDirectBodyStateSetTransformMethodBind):
    physics2DDirectBodyStateSetTransformMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DDirectBodyStateSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateAddCentralForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCentralForce(self: Physics2DDirectBodyState; force: Vector2) =
  if isNil(physics2DDirectBodyStateAddCentralForceMethodBind):
    physics2DDirectBodyStateAddCentralForceMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"add_central_force")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(force)
  var ptrCallRet: pointer
  physics2DDirectBodyStateAddCentralForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateAddForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addForce(self: Physics2DDirectBodyState; offset: Vector2; force: Vector2) =
  if isNil(physics2DDirectBodyStateAddForceMethodBind):
    physics2DDirectBodyStateAddForceMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"add_force")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(force)
  var ptrCallRet: pointer
  physics2DDirectBodyStateAddForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateAddTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTorque(self: Physics2DDirectBodyState; torque: float64) =
  if isNil(physics2DDirectBodyStateAddTorqueMethodBind):
    physics2DDirectBodyStateAddTorqueMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"add_torque")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(torque)
  var ptrCallRet: pointer
  physics2DDirectBodyStateAddTorqueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateApplyCentralImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyCentralImpulse(self: Physics2DDirectBodyState; impulse: Vector2) =
  if isNil(physics2DDirectBodyStateApplyCentralImpulseMethodBind):
    physics2DDirectBodyStateApplyCentralImpulseMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"apply_central_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physics2DDirectBodyStateApplyCentralImpulseMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateApplyImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyImpulse(self: Physics2DDirectBodyState; offset: Vector2; impulse: Vector2) =
  if isNil(physics2DDirectBodyStateApplyImpulseMethodBind):
    physics2DDirectBodyStateApplyImpulseMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"apply_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physics2DDirectBodyStateApplyImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateApplyTorqueImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyTorqueImpulse(self: Physics2DDirectBodyState; impulse: float64) =
  if isNil(physics2DDirectBodyStateApplyTorqueImpulseMethodBind):
    physics2DDirectBodyStateApplyTorqueImpulseMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"apply_torque_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physics2DDirectBodyStateApplyTorqueImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactCollider(self: Physics2DDirectBodyState; contactIdx: int64): RID =
  if isNil(physics2DDirectBodyStateGetContactColliderMethodBind):
    physics2DDirectBodyStateGetContactColliderMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_collider")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactColliderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactColliderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderId(self: Physics2DDirectBodyState; contactIdx: int64): int64 =
  if isNil(physics2DDirectBodyStateGetContactColliderIdMethodBind):
    physics2DDirectBodyStateGetContactColliderIdMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_collider_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactColliderIdMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactColliderObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderObject(self: Physics2DDirectBodyState; contactIdx: int64): Object =
  if isNil(physics2DDirectBodyStateGetContactColliderObjectMethodBind):
    physics2DDirectBodyStateGetContactColliderObjectMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_collider_object")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectBodyStateGetContactColliderObjectMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physics2DDirectBodyStateGetContactColliderPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderPosition(self: Physics2DDirectBodyState; contactIdx: int64): Vector2 =
  if isNil(physics2DDirectBodyStateGetContactColliderPositionMethodBind):
    physics2DDirectBodyStateGetContactColliderPositionMethodBind = getMethod(
        cstring"Physics2DDirectBodyState",
        cstring"get_contact_collider_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactColliderPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactColliderShape(self: Physics2DDirectBodyState; contactIdx: int64): int64 =
  if isNil(physics2DDirectBodyStateGetContactColliderShapeMethodBind):
    physics2DDirectBodyStateGetContactColliderShapeMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_collider_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactColliderShapeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactColliderShapeMetadataMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc getContactColliderShapeMetadata(self: Physics2DDirectBodyState;
                                    contactIdx: int64): Variant =
  if isNil(physics2DDirectBodyStateGetContactColliderShapeMetadataMethodBind):
    physics2DDirectBodyStateGetContactColliderShapeMetadataMethodBind = getMethod(
        cstring"Physics2DDirectBodyState",
        cstring"get_contact_collider_shape_metadata")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectBodyStateGetContactColliderShapeMetadataMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physics2DDirectBodyStateGetContactColliderVelocityAtPositionMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc getContactColliderVelocityAtPosition(self: Physics2DDirectBodyState;
    contactIdx: int64): Vector2 =
  if isNil(physics2DDirectBodyStateGetContactColliderVelocityAtPositionMethodBind):
    physics2DDirectBodyStateGetContactColliderVelocityAtPositionMethodBind = getMethod(
        cstring"Physics2DDirectBodyState",
        cstring"get_contact_collider_velocity_at_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactColliderVelocityAtPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactCount(self: Physics2DDirectBodyState): int64 =
  if isNil(physics2DDirectBodyStateGetContactCountMethodBind):
    physics2DDirectBodyStateGetContactCountMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactCountMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DDirectBodyStateGetContactLocalNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactLocalNormal(self: Physics2DDirectBodyState; contactIdx: int64): Vector2 =
  if isNil(physics2DDirectBodyStateGetContactLocalNormalMethodBind):
    physics2DDirectBodyStateGetContactLocalNormalMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_local_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactLocalNormalMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactLocalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactLocalPosition(self: Physics2DDirectBodyState; contactIdx: int64): Vector2 =
  if isNil(physics2DDirectBodyStateGetContactLocalPositionMethodBind):
    physics2DDirectBodyStateGetContactLocalPositionMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_local_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactLocalPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetContactLocalShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContactLocalShape(self: Physics2DDirectBodyState; contactIdx: int64): int64 =
  if isNil(physics2DDirectBodyStateGetContactLocalShapeMethodBind):
    physics2DDirectBodyStateGetContactLocalShapeMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_contact_local_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(contactIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DDirectBodyStateGetContactLocalShapeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DDirectBodyStateGetSpaceStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSpaceState(self: Physics2DDirectBodyState): Physics2DDirectSpaceState =
  if isNil(physics2DDirectBodyStateGetSpaceStateMethodBind):
    physics2DDirectBodyStateGetSpaceStateMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"get_space_state")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectBodyStateGetSpaceStateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physics2DDirectBodyStateIntegrateForcesMethodBind {.threadvar.}: ptr GodotMethodBind
proc integrateForces(self: Physics2DDirectBodyState) =
  if isNil(physics2DDirectBodyStateIntegrateForcesMethodBind):
    physics2DDirectBodyStateIntegrateForcesMethodBind = getMethod(
        cstring"Physics2DDirectBodyState", cstring"integrate_forces")
  var ptrCallRet: pointer
  physics2DDirectBodyStateIntegrateForcesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
