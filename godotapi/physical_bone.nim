
import
  godot, godottypes, godotinternal, physics_body

export
  godottypes, physics_body

const
  JOINT_TYPE_6DOF* = 5'i64
  JOINT_TYPE_CONE* = 2'i64
  JOINT_TYPE_HINGE* = 3'i64
  JOINT_TYPE_NONE* = 0'i64
  JOINT_TYPE_PIN* = 1'i64
  JOINT_TYPE_SLIDER* = 4'i64
proc bodyOffset*(self: PhysicalBone): Transform {.gcsafe, locks: 0.}
proc `bodyOffset=`*(self: PhysicalBone; val: Transform) {.gcsafe, locks: 0.}
proc bounce*(self: PhysicalBone): float64 {.gcsafe, locks: 0.}
proc `bounce=`*(self: PhysicalBone; val: float64) {.gcsafe, locks: 0.}
proc friction*(self: PhysicalBone): float64 {.gcsafe, locks: 0.}
proc `friction=`*(self: PhysicalBone; val: float64) {.gcsafe, locks: 0.}
proc gravityScale*(self: PhysicalBone): float64 {.gcsafe, locks: 0.}
proc `gravityScale=`*(self: PhysicalBone; val: float64) {.gcsafe, locks: 0.}
proc jointOffset*(self: PhysicalBone): Transform {.gcsafe, locks: 0.}
proc `jointOffset=`*(self: PhysicalBone; val: Transform) {.gcsafe, locks: 0.}
proc jointType*(self: PhysicalBone): int64 {.gcsafe, locks: 0.}
proc `jointType=`*(self: PhysicalBone; val: int64) {.gcsafe, locks: 0.}
proc mass*(self: PhysicalBone): float64 {.gcsafe, locks: 0.}
proc `mass=`*(self: PhysicalBone; val: float64) {.gcsafe, locks: 0.}
proc weight*(self: PhysicalBone): float64 {.gcsafe, locks: 0.}
proc `weight=`*(self: PhysicalBone; val: float64) {.gcsafe, locks: 0.}
method directStateChanged*(self: PhysicalBone; arg0: Object) {.gcsafe, locks: 0, base.}
proc applyCentralImpulse*(self: PhysicalBone; impulse: Vector3) {.gcsafe, locks: 0.}
proc applyImpulse*(self: PhysicalBone; position: Vector3; impulse: Vector3) {.gcsafe,
    locks: 0.}
proc getBoneId*(self: PhysicalBone): int64 {.gcsafe, locks: 0.}
proc getSimulatePhysics*(self: PhysicalBone): bool {.gcsafe, locks: 0.}
proc isSimulatingPhysics*(self: PhysicalBone): bool {.gcsafe, locks: 0.}
proc isStaticBody*(self: PhysicalBone): bool {.gcsafe, locks: 0.}
var physicalBoneGetBodyOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyOffset(self: PhysicalBone): Transform =
  if isNil(physicalBoneGetBodyOffsetMethodBind):
    physicalBoneGetBodyOffsetMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_body_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetBodyOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetBodyOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bodyOffset=`(self: PhysicalBone; val: Transform) =
  if isNil(physicalBoneSetBodyOffsetMethodBind):
    physicalBoneSetBodyOffsetMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_body_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetBodyOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicalBoneGetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounce(self: PhysicalBone): float64 =
  if isNil(physicalBoneGetBounceMethodBind):
    physicalBoneGetBounceMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_bounce")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetBounceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounce=`(self: PhysicalBone; val: float64) =
  if isNil(physicalBoneSetBounceMethodBind):
    physicalBoneSetBounceMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_bounce")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetBounceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicalBoneGetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc friction(self: PhysicalBone): float64 =
  if isNil(physicalBoneGetFrictionMethodBind):
    physicalBoneGetFrictionMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_friction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetFrictionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `friction=`(self: PhysicalBone; val: float64) =
  if isNil(physicalBoneSetFrictionMethodBind):
    physicalBoneSetFrictionMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_friction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetFrictionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicalBoneGetGravityScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityScale(self: PhysicalBone): float64 =
  if isNil(physicalBoneGetGravityScaleMethodBind):
    physicalBoneGetGravityScaleMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_gravity_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetGravityScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetGravityScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityScale=`(self: PhysicalBone; val: float64) =
  if isNil(physicalBoneSetGravityScaleMethodBind):
    physicalBoneSetGravityScaleMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_gravity_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetGravityScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicalBoneGetJointOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointOffset(self: PhysicalBone): Transform =
  if isNil(physicalBoneGetJointOffsetMethodBind):
    physicalBoneGetJointOffsetMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_joint_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetJointOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetJointOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `jointOffset=`(self: PhysicalBone; val: Transform) =
  if isNil(physicalBoneSetJointOffsetMethodBind):
    physicalBoneSetJointOffsetMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_joint_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetJointOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicalBoneGetJointTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointType(self: PhysicalBone): int64 =
  if isNil(physicalBoneGetJointTypeMethodBind):
    physicalBoneGetJointTypeMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_joint_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetJointTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetJointTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `jointType=`(self: PhysicalBone; val: int64) =
  if isNil(physicalBoneSetJointTypeMethodBind):
    physicalBoneSetJointTypeMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_joint_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetJointTypeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicalBoneGetMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc mass(self: PhysicalBone): float64 =
  if isNil(physicalBoneGetMassMethodBind):
    physicalBoneGetMassMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_mass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetMassMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mass=`(self: PhysicalBone; val: float64) =
  if isNil(physicalBoneSetMassMethodBind):
    physicalBoneSetMassMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_mass")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetMassMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var physicalBoneGetWeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc weight(self: PhysicalBone): float64 =
  if isNil(physicalBoneGetWeightMethodBind):
    physicalBoneGetWeightMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_weight")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetWeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneSetWeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `weight=`(self: PhysicalBone; val: float64) =
  if isNil(physicalBoneSetWeightMethodBind):
    physicalBoneSetWeightMethodBind = getMethod(cstring"PhysicalBone",
        cstring"set_weight")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicalBoneSetWeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicalBoneUnderscoredirectStateChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method directStateChanged(self: PhysicalBone; arg0: Object) =
  if isNil(physicalBoneUnderscoredirectStateChangedMethodBind):
    physicalBoneUnderscoredirectStateChangedMethodBind = getMethod(
        cstring"PhysicalBone", cstring"_direct_state_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicalBoneUnderscoredirectStateChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicalBoneApplyCentralImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyCentralImpulse(self: PhysicalBone; impulse: Vector3) =
  if isNil(physicalBoneApplyCentralImpulseMethodBind):
    physicalBoneApplyCentralImpulseMethodBind = getMethod(cstring"PhysicalBone",
        cstring"apply_central_impulse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physicalBoneApplyCentralImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicalBoneApplyImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyImpulse(self: PhysicalBone; position: Vector3; impulse: Vector3) =
  if isNil(physicalBoneApplyImpulseMethodBind):
    physicalBoneApplyImpulseMethodBind = getMethod(cstring"PhysicalBone",
        cstring"apply_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physicalBoneApplyImpulseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicalBoneGetBoneIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneId(self: PhysicalBone): int64 =
  if isNil(physicalBoneGetBoneIdMethodBind):
    physicalBoneGetBoneIdMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_bone_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetBoneIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicalBoneGetSimulatePhysicsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSimulatePhysics(self: PhysicalBone): bool =
  if isNil(physicalBoneGetSimulatePhysicsMethodBind):
    physicalBoneGetSimulatePhysicsMethodBind = getMethod(cstring"PhysicalBone",
        cstring"get_simulate_physics")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneGetSimulatePhysicsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicalBoneIsSimulatingPhysicsMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSimulatingPhysics(self: PhysicalBone): bool =
  if isNil(physicalBoneIsSimulatingPhysicsMethodBind):
    physicalBoneIsSimulatingPhysicsMethodBind = getMethod(cstring"PhysicalBone",
        cstring"is_simulating_physics")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneIsSimulatingPhysicsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicalBoneIsStaticBodyMethodBind {.threadvar.}: ptr GodotMethodBind
proc isStaticBody(self: PhysicalBone): bool =
  if isNil(physicalBoneIsStaticBodyMethodBind):
    physicalBoneIsStaticBodyMethodBind = getMethod(cstring"PhysicalBone",
        cstring"is_static_body")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicalBoneIsStaticBodyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
