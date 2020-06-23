
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  AREA_BODY_ADDED* = 0'i64
  AREA_BODY_REMOVED* = 1'i64
  AREA_PARAM_ANGULAR_DAMP* = 6'i64
  AREA_PARAM_GRAVITY* = 0'i64
  AREA_PARAM_GRAVITY_DISTANCE_SCALE* = 3'i64
  AREA_PARAM_GRAVITY_IS_POINT* = 2'i64
  AREA_PARAM_GRAVITY_POINT_ATTENUATION* = 4'i64
  AREA_PARAM_GRAVITY_VECTOR* = 1'i64
  AREA_PARAM_LINEAR_DAMP* = 5'i64
  AREA_PARAM_PRIORITY* = 7'i64
  AREA_SPACE_OVERRIDE_COMBINE* = 1'i64
  AREA_SPACE_OVERRIDE_COMBINE_REPLACE* = 2'i64
  AREA_SPACE_OVERRIDE_DISABLED* = 0'i64
  AREA_SPACE_OVERRIDE_REPLACE* = 3'i64
  AREA_SPACE_OVERRIDE_REPLACE_COMBINE* = 4'i64
  BODY_AXIS_ANGULAR_X* = 8'i64
  BODY_AXIS_ANGULAR_Y* = 16'i64
  BODY_AXIS_ANGULAR_Z* = 32'i64
  BODY_AXIS_LINEAR_X* = 1'i64
  BODY_AXIS_LINEAR_Y* = 2'i64
  BODY_AXIS_LINEAR_Z* = 4'i64
  BODY_MODE_CHARACTER* = 3'i64
  BODY_MODE_KINEMATIC* = 1'i64
  BODY_MODE_RIGID* = 2'i64
  BODY_MODE_STATIC* = 0'i64
  BODY_PARAM_ANGULAR_DAMP* = 5'i64
  BODY_PARAM_BOUNCE* = 0'i64
  BODY_PARAM_FRICTION* = 1'i64
  BODY_PARAM_GRAVITY_SCALE* = 3'i64
  BODY_PARAM_LINEAR_DAMP* = 4'i64
  BODY_PARAM_MASS* = 2'i64
  BODY_PARAM_MAX* = 6'i64
  BODY_STATE_ANGULAR_VELOCITY* = 2'i64
  BODY_STATE_CAN_SLEEP* = 4'i64
  BODY_STATE_LINEAR_VELOCITY* = 1'i64
  BODY_STATE_SLEEPING* = 3'i64
  BODY_STATE_TRANSFORM* = 0'i64
  CONE_TWIST_JOINT_BIAS* = 2'i64
  CONE_TWIST_JOINT_RELAXATION* = 4'i64
  CONE_TWIST_JOINT_SOFTNESS* = 3'i64
  CONE_TWIST_JOINT_SWING_SPAN* = 0'i64
  CONE_TWIST_JOINT_TWIST_SPAN* = 1'i64
  G6DOF_JOINT_ANGULAR_DAMPING* = 13'i64
  G6DOF_JOINT_ANGULAR_ERP* = 16'i64
  G6DOF_JOINT_ANGULAR_FORCE_LIMIT* = 15'i64
  G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS* = 12'i64
  G6DOF_JOINT_ANGULAR_LOWER_LIMIT* = 10'i64
  G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT* = 18'i64
  G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY* = 17'i64
  G6DOF_JOINT_ANGULAR_RESTITUTION* = 14'i64
  G6DOF_JOINT_ANGULAR_UPPER_LIMIT* = 11'i64
  G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT* = 1'i64
  G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT* = 0'i64
  G6DOF_JOINT_FLAG_ENABLE_LINEAR_MOTOR* = 5'i64
  G6DOF_JOINT_FLAG_ENABLE_MOTOR* = 4'i64
  G6DOF_JOINT_LINEAR_DAMPING* = 4'i64
  G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS* = 2'i64
  G6DOF_JOINT_LINEAR_LOWER_LIMIT* = 0'i64
  G6DOF_JOINT_LINEAR_MOTOR_FORCE_LIMIT* = 6'i64
  G6DOF_JOINT_LINEAR_MOTOR_TARGET_VELOCITY* = 5'i64
  G6DOF_JOINT_LINEAR_RESTITUTION* = 3'i64
  G6DOF_JOINT_LINEAR_UPPER_LIMIT* = 1'i64
  HINGE_JOINT_BIAS* = 0'i64
  HINGE_JOINT_FLAG_ENABLE_MOTOR* = 1'i64
  HINGE_JOINT_FLAG_USE_LIMIT* = 0'i64
  HINGE_JOINT_LIMIT_BIAS* = 3'i64
  HINGE_JOINT_LIMIT_LOWER* = 2'i64
  HINGE_JOINT_LIMIT_RELAXATION* = 5'i64
  HINGE_JOINT_LIMIT_SOFTNESS* = 4'i64
  HINGE_JOINT_LIMIT_UPPER* = 1'i64
  HINGE_JOINT_MOTOR_MAX_IMPULSE* = 7'i64
  HINGE_JOINT_MOTOR_TARGET_VELOCITY* = 6'i64
  INFO_ACTIVE_OBJECTS* = 0'i64
  INFO_COLLISION_PAIRS* = 1'i64
  INFO_ISLAND_COUNT* = 2'i64
  JOINT_6DOF* = 4'i64
  JOINT_CONE_TWIST* = 3'i64
  JOINT_HINGE* = 1'i64
  JOINT_PIN* = 0'i64
  JOINT_SLIDER* = 2'i64
  PIN_JOINT_BIAS* = 0'i64
  PIN_JOINT_DAMPING* = 1'i64
  PIN_JOINT_IMPULSE_CLAMP* = 2'i64
  SHAPE_BOX* = 3'i64
  SHAPE_CAPSULE* = 4'i64
  SHAPE_CONCAVE_POLYGON* = 7'i64
  SHAPE_CONVEX_POLYGON* = 6'i64
  SHAPE_CUSTOM* = 9'i64
  SHAPE_CYLINDER* = 5'i64
  SHAPE_HEIGHTMAP* = 8'i64
  SHAPE_PLANE* = 0'i64
  SHAPE_RAY* = 1'i64
  SHAPE_SPHERE* = 2'i64
  SLIDER_JOINT_ANGULAR_LIMIT_DAMPING* = 15'i64
  SLIDER_JOINT_ANGULAR_LIMIT_LOWER* = 12'i64
  SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION* = 14'i64
  SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS* = 13'i64
  SLIDER_JOINT_ANGULAR_LIMIT_UPPER* = 11'i64
  SLIDER_JOINT_ANGULAR_MOTION_DAMPING* = 18'i64
  SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION* = 17'i64
  SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS* = 16'i64
  SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING* = 21'i64
  SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION* = 20'i64
  SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS* = 19'i64
  SLIDER_JOINT_LINEAR_LIMIT_DAMPING* = 4'i64
  SLIDER_JOINT_LINEAR_LIMIT_LOWER* = 1'i64
  SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION* = 3'i64
  SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS* = 2'i64
  SLIDER_JOINT_LINEAR_LIMIT_UPPER* = 0'i64
  SLIDER_JOINT_LINEAR_MOTION_DAMPING* = 7'i64
  SLIDER_JOINT_LINEAR_MOTION_RESTITUTION* = 6'i64
  SLIDER_JOINT_LINEAR_MOTION_SOFTNESS* = 5'i64
  SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING* = 10'i64
  SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION* = 9'i64
  SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS* = 8'i64
  SLIDER_JOINT_MAX* = 22'i64
  SPACE_PARAM_BODY_ANGULAR_VELOCITY_DAMP_RATIO* = 6'i64
  SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD* = 4'i64
  SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD* = 3'i64
  SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION* = 2'i64
  SPACE_PARAM_BODY_TIME_TO_SLEEP* = 5'i64
  SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS* = 7'i64
  SPACE_PARAM_CONTACT_MAX_SEPARATION* = 1'i64
  SPACE_PARAM_CONTACT_RECYCLE_RADIUS* = 0'i64
  SPACE_PARAM_TEST_MOTION_MIN_CONTACT_DEPTH* = 8'i64
type
  PhysicsServer = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
  BulletPhysicsServer = ref object of PhysicsServer
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
registerClass(PhysicsServer, "PhysicsServer", true)
registerClass(BulletPhysicsServer, "BulletPhysicsServer", true)
var singletonPhysicsServer {.threadvar.}: PhysicsServer
proc areaAddShape*(area: RID; shape: RID; transform: Transform = initTransform(
    initBasis(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0), vec3(0.0, 0.0, 0.0));
                  disabled: bool = false) {.gcsafe, locks: 0.}
proc areaAttachObjectInstanceId*(area: RID; id: int64) {.gcsafe, locks: 0.}
proc areaClearShapes*(area: RID) {.gcsafe, locks: 0.}
proc areaCreate*(): RID {.gcsafe, locks: 0.}
proc areaGetObjectInstanceId*(area: RID): int64 {.gcsafe, locks: 0.}
proc areaGetParam*(area: RID; param: int64): Variant {.gcsafe, locks: 0.}
proc areaGetShape*(area: RID; shapeIdx: int64): RID {.gcsafe, locks: 0.}
proc areaGetShapeCount*(area: RID): int64 {.gcsafe, locks: 0.}
proc areaGetShapeTransform*(area: RID; shapeIdx: int64): Transform {.gcsafe, locks: 0.}
proc areaGetSpace*(area: RID): RID {.gcsafe, locks: 0.}
proc areaGetSpaceOverrideMode*(area: RID): int64 {.gcsafe, locks: 0.}
proc areaGetTransform*(area: RID): Transform {.gcsafe, locks: 0.}
proc areaIsRayPickable*(area: RID): bool {.gcsafe, locks: 0.}
proc areaRemoveShape*(area: RID; shapeIdx: int64) {.gcsafe, locks: 0.}
proc areaSetAreaMonitorCallback*(area: RID; receiver: Object; methodd: string) {.
    gcsafe, locks: 0.}
proc areaSetCollisionLayer*(area: RID; layer: int64) {.gcsafe, locks: 0.}
proc areaSetCollisionMask*(area: RID; mask: int64) {.gcsafe, locks: 0.}
proc areaSetMonitorCallback*(area: RID; receiver: Object; methodd: string) {.gcsafe,
    locks: 0.}
proc areaSetMonitorable*(area: RID; monitorable: bool) {.gcsafe, locks: 0.}
proc areaSetParam*(area: RID; param: int64; value: Variant) {.gcsafe, locks: 0.}
proc areaSetRayPickable*(area: RID; enable: bool) {.gcsafe, locks: 0.}
proc areaSetShape*(area: RID; shapeIdx: int64; shape: RID) {.gcsafe, locks: 0.}
proc areaSetShapeDisabled*(area: RID; shapeIdx: int64; disabled: bool) {.gcsafe,
    locks: 0.}
proc areaSetShapeTransform*(area: RID; shapeIdx: int64; transform: Transform) {.gcsafe,
    locks: 0.}
proc areaSetSpace*(area: RID; space: RID) {.gcsafe, locks: 0.}
proc areaSetSpaceOverrideMode*(area: RID; mode: int64) {.gcsafe, locks: 0.}
proc areaSetTransform*(area: RID; transform: Transform) {.gcsafe, locks: 0.}
proc bodyAddCentralForce*(body: RID; force: Vector3) {.gcsafe, locks: 0.}
proc bodyAddCollisionException*(body: RID; exceptedBody: RID) {.gcsafe, locks: 0.}
proc bodyAddForce*(body: RID; force: Vector3; position: Vector3) {.gcsafe, locks: 0.}
proc bodyAddShape*(body: RID; shape: RID; transform: Transform = initTransform(
    initBasis(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0), vec3(0.0, 0.0, 0.0));
                  disabled: bool = false) {.gcsafe, locks: 0.}
proc bodyAddTorque*(body: RID; torque: Vector3) {.gcsafe, locks: 0.}
proc bodyApplyCentralImpulse*(body: RID; impulse: Vector3) {.gcsafe, locks: 0.}
proc bodyApplyImpulse*(body: RID; position: Vector3; impulse: Vector3) {.gcsafe,
    locks: 0.}
proc bodyApplyTorqueImpulse*(body: RID; impulse: Vector3) {.gcsafe, locks: 0.}
proc bodyAttachObjectInstanceId*(body: RID; id: int64) {.gcsafe, locks: 0.}
proc bodyClearShapes*(body: RID) {.gcsafe, locks: 0.}
proc bodyCreate*(mode: int64 = 2'i64; initSleeping: bool = false): RID {.gcsafe, locks: 0.}
proc bodyGetCollisionLayer*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetCollisionMask*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetDirectState*(body: RID): PhysicsDirectBodyState {.gcsafe, locks: 0.}
proc bodyGetKinematicSafeMargin*(body: RID): float64 {.gcsafe, locks: 0.}
proc bodyGetMaxContactsReported*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetMode*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetObjectInstanceId*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetParam*(body: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc bodyGetShape*(body: RID; shapeIdx: int64): RID {.gcsafe, locks: 0.}
proc bodyGetShapeCount*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetShapeTransform*(body: RID; shapeIdx: int64): Transform {.gcsafe, locks: 0.}
proc bodyGetSpace*(body: RID): RID {.gcsafe, locks: 0.}
proc bodyGetState*(body: RID; state: int64): Variant {.gcsafe, locks: 0.}
proc bodyIsAxisLocked*(body: RID; axis: int64): bool {.gcsafe, locks: 0.}
proc bodyIsContinuousCollisionDetectionEnabled*(body: RID): bool {.gcsafe, locks: 0.}
proc bodyIsOmittingForceIntegration*(body: RID): bool {.gcsafe, locks: 0.}
proc bodyIsRayPickable*(body: RID): bool {.gcsafe, locks: 0.}
proc bodyRemoveCollisionException*(body: RID; exceptedBody: RID) {.gcsafe, locks: 0.}
proc bodyRemoveShape*(body: RID; shapeIdx: int64) {.gcsafe, locks: 0.}
proc bodySetAxisLock*(body: RID; axis: int64; lock: bool) {.gcsafe, locks: 0.}
proc bodySetAxisVelocity*(body: RID; axisVelocity: Vector3) {.gcsafe, locks: 0.}
proc bodySetCollisionLayer*(body: RID; layer: int64) {.gcsafe, locks: 0.}
proc bodySetCollisionMask*(body: RID; mask: int64) {.gcsafe, locks: 0.}
proc bodySetEnableContinuousCollisionDetection*(body: RID; enable: bool) {.gcsafe,
    locks: 0.}
proc bodySetForceIntegrationCallback*(body: RID; receiver: Object; methodd: string;
                                     userdata: Variant = newVariant()) {.gcsafe,
    locks: 0.}
proc bodySetKinematicSafeMargin*(body: RID; margin: float64) {.gcsafe, locks: 0.}
proc bodySetMaxContactsReported*(body: RID; amount: int64) {.gcsafe, locks: 0.}
proc bodySetMode*(body: RID; mode: int64) {.gcsafe, locks: 0.}
proc bodySetOmitForceIntegration*(body: RID; enable: bool) {.gcsafe, locks: 0.}
proc bodySetParam*(body: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
proc bodySetRayPickable*(body: RID; enable: bool) {.gcsafe, locks: 0.}
proc bodySetShape*(body: RID; shapeIdx: int64; shape: RID) {.gcsafe, locks: 0.}
proc bodySetShapeDisabled*(body: RID; shapeIdx: int64; disabled: bool) {.gcsafe,
    locks: 0.}
proc bodySetShapeTransform*(body: RID; shapeIdx: int64; transform: Transform) {.gcsafe,
    locks: 0.}
proc bodySetSpace*(body: RID; space: RID) {.gcsafe, locks: 0.}
proc bodySetState*(body: RID; state: int64; value: Variant) {.gcsafe, locks: 0.}
proc coneTwistJointGetParam*(joint: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc coneTwistJointSetParam*(joint: RID; param: int64; value: float64) {.gcsafe,
    locks: 0.}
proc freeRid*(rid: RID) {.gcsafe, locks: 0.}
proc generic6dofJointGetFlag*(joint: RID; axis: int64; flag: int64): bool {.gcsafe,
    locks: 0.}
proc generic6dofJointGetParam*(joint: RID; axis: int64; param: int64): float64 {.gcsafe,
    locks: 0.}
proc generic6dofJointSetFlag*(joint: RID; axis: int64; flag: int64; enable: bool) {.
    gcsafe, locks: 0.}
proc generic6dofJointSetParam*(joint: RID; axis: int64; param: int64; value: float64) {.
    gcsafe, locks: 0.}
proc getProcessInfo*(processInfo: int64): int64 {.gcsafe, locks: 0.}
proc hingeJointGetFlag*(joint: RID; flag: int64): bool {.gcsafe, locks: 0.}
proc hingeJointGetParam*(joint: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc hingeJointSetFlag*(joint: RID; flag: int64; enabled: bool) {.gcsafe, locks: 0.}
proc hingeJointSetParam*(joint: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
proc jointCreateConeTwist*(bodyA: RID; localRefA: Transform; bodyB: RID;
                          localRefB: Transform): RID {.gcsafe, locks: 0.}
proc jointCreateGeneric6dof*(bodyA: RID; localRefA: Transform; bodyB: RID;
                            localRefB: Transform): RID {.gcsafe, locks: 0.}
proc jointCreateHinge*(bodyA: RID; hingeA: Transform; bodyB: RID; hingeB: Transform): RID {.
    gcsafe, locks: 0.}
proc jointCreatePin*(bodyA: RID; localA: Vector3; bodyB: RID; localB: Vector3): RID {.
    gcsafe, locks: 0.}
proc jointCreateSlider*(bodyA: RID; localRefA: Transform; bodyB: RID;
                       localRefB: Transform): RID {.gcsafe, locks: 0.}
proc jointGetSolverPriority*(joint: RID): int64 {.gcsafe, locks: 0.}
proc jointGetType*(joint: RID): int64 {.gcsafe, locks: 0.}
proc jointSetSolverPriority*(joint: RID; priority: int64) {.gcsafe, locks: 0.}
proc pinJointGetLocalA*(joint: RID): Vector3 {.gcsafe, locks: 0.}
proc pinJointGetLocalB*(joint: RID): Vector3 {.gcsafe, locks: 0.}
proc pinJointGetParam*(joint: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc pinJointSetLocalA*(joint: RID; localA: Vector3) {.gcsafe, locks: 0.}
proc pinJointSetLocalB*(joint: RID; localB: Vector3) {.gcsafe, locks: 0.}
proc pinJointSetParam*(joint: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
proc setActive*(active: bool) {.gcsafe, locks: 0.}
proc shapeCreate*(typee: int64): RID {.gcsafe, locks: 0.}
proc shapeGetData*(shape: RID): Variant {.gcsafe, locks: 0.}
proc shapeGetType*(shape: RID): int64 {.gcsafe, locks: 0.}
proc shapeSetData*(shape: RID; data: Variant) {.gcsafe, locks: 0.}
proc sliderJointGetParam*(joint: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc sliderJointSetParam*(joint: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
proc spaceCreate*(): RID {.gcsafe, locks: 0.}
proc spaceGetDirectState*(space: RID): PhysicsDirectSpaceState {.gcsafe, locks: 0.}
proc spaceGetParam*(space: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc spaceIsActive*(space: RID): bool {.gcsafe, locks: 0.}
proc spaceSetActive*(space: RID; active: bool) {.gcsafe, locks: 0.}
proc spaceSetParam*(space: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
var physicsServerAreaAddShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaAddShape(area: RID; shape: RID; transform: Transform = initTransform(
    initBasis(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0), vec3(0.0, 0.0, 0.0));
                 disabled: bool = false) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaAddShapeMethodBind):
    physicsServerAreaAddShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_add_shape")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shape)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  argsToPassToGodot[][3] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physicsServerAreaAddShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaAttachObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaAttachObjectInstanceId(area: RID; id: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaAttachObjectInstanceIdMethodBind):
    physicsServerAreaAttachObjectInstanceIdMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_attach_object_instance_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  physicsServerAreaAttachObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaClearShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaClearShapes(area: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaClearShapesMethodBind):
    physicsServerAreaClearShapesMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_clear_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  physicsServerAreaClearShapesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaCreate(): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaCreateMethodBind):
    physicsServerAreaCreateMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsServerAreaGetObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetObjectInstanceId(area: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetObjectInstanceIdMethodBind):
    physicsServerAreaGetObjectInstanceIdMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_get_object_instance_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaGetObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetParam(area: RID; param: int64): Variant =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetParamMethodBind):
    physicsServerAreaGetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physicsServerAreaGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physicsServerAreaGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetShape(area: RID; shapeIdx: int64): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetShapeMethodBind):
    physicsServerAreaGetShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_get_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaGetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaGetShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetShapeCount(area: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetShapeCountMethodBind):
    physicsServerAreaGetShapeCountMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_get_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaGetShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaGetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetShapeTransform(area: RID; shapeIdx: int64): Transform =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetShapeTransformMethodBind):
    physicsServerAreaGetShapeTransformMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_get_shape_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaGetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaGetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetSpace(area: RID): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetSpaceMethodBind):
    physicsServerAreaGetSpaceMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_get_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaGetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaGetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetSpaceOverrideMode(area: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetSpaceOverrideModeMethodBind):
    physicsServerAreaGetSpaceOverrideModeMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_get_space_override_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaGetSpaceOverrideModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetTransform(area: RID): Transform =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaGetTransformMethodBind):
    physicsServerAreaGetTransformMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_get_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaGetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaIsRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaIsRayPickable(area: RID): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaIsRayPickableMethodBind):
    physicsServerAreaIsRayPickableMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_is_ray_pickable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerAreaIsRayPickableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaRemoveShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaRemoveShape(area: RID; shapeIdx: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaRemoveShapeMethodBind):
    physicsServerAreaRemoveShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_remove_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  physicsServerAreaRemoveShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetAreaMonitorCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetAreaMonitorCallback(area: RID; receiver: Object; methodd: string) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetAreaMonitorCallbackMethodBind):
    physicsServerAreaSetAreaMonitorCallbackMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_set_area_monitor_callback")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  let argToPassToGodot1 = if not receiver.isNil:
    receiver.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(methodd)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  physicsServerAreaSetAreaMonitorCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var physicsServerAreaSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetCollisionLayer(area: RID; layer: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetCollisionLayerMethodBind):
    physicsServerAreaSetCollisionLayerMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_set_collision_layer")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(layer)
  var ptrCallRet: pointer
  physicsServerAreaSetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetCollisionMask(area: RID; mask: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetCollisionMaskMethodBind):
    physicsServerAreaSetCollisionMaskMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_set_collision_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  physicsServerAreaSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetMonitorCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetMonitorCallback(area: RID; receiver: Object; methodd: string) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetMonitorCallbackMethodBind):
    physicsServerAreaSetMonitorCallbackMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_set_monitor_callback")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  let argToPassToGodot1 = if not receiver.isNil:
    receiver.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(methodd)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  physicsServerAreaSetMonitorCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var physicsServerAreaSetMonitorableMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetMonitorable(area: RID; monitorable: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetMonitorableMethodBind):
    physicsServerAreaSetMonitorableMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_set_monitorable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(monitorable)
  var ptrCallRet: pointer
  physicsServerAreaSetMonitorableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetParam(area: RID; param: int64; value: Variant) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetParamMethodBind):
    physicsServerAreaSetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  physicsServerAreaSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetRayPickable(area: RID; enable: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetRayPickableMethodBind):
    physicsServerAreaSetRayPickableMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_set_ray_pickable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  physicsServerAreaSetRayPickableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetShape(area: RID; shapeIdx: int64; shape: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetShapeMethodBind):
    physicsServerAreaSetShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_set_shape")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(shape)
  var ptrCallRet: pointer
  physicsServerAreaSetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetShapeDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetShapeDisabled(area: RID; shapeIdx: int64; disabled: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetShapeDisabledMethodBind):
    physicsServerAreaSetShapeDisabledMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_set_shape_disabled")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physicsServerAreaSetShapeDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetShapeTransform(area: RID; shapeIdx: int64; transform: Transform) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetShapeTransformMethodBind):
    physicsServerAreaSetShapeTransformMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_set_shape_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  physicsServerAreaSetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetSpace(area: RID; space: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetSpaceMethodBind):
    physicsServerAreaSetSpaceMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_set_space")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(space)
  var ptrCallRet: pointer
  physicsServerAreaSetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetSpaceOverrideMode(area: RID; mode: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetSpaceOverrideModeMethodBind):
    physicsServerAreaSetSpaceOverrideModeMethodBind = getMethod(
        cstring"PhysicsServer", cstring"area_set_space_override_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  physicsServerAreaSetSpaceOverrideModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerAreaSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetTransform(area: RID; transform: Transform) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerAreaSetTransformMethodBind):
    physicsServerAreaSetTransformMethodBind = getMethod(cstring"PhysicsServer",
        cstring"area_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  physicsServerAreaSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyAddCentralForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddCentralForce(body: RID; force: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyAddCentralForceMethodBind):
    physicsServerBodyAddCentralForceMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_add_central_force")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(force)
  var ptrCallRet: pointer
  physicsServerBodyAddCentralForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyAddCollisionExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddCollisionException(body: RID; exceptedBody: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyAddCollisionExceptionMethodBind):
    physicsServerBodyAddCollisionExceptionMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_add_collision_exception")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(exceptedBody)
  var ptrCallRet: pointer
  physicsServerBodyAddCollisionExceptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyAddForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddForce(body: RID; force: Vector3; position: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyAddForceMethodBind):
    physicsServerBodyAddForceMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_add_force")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(force)
  argsToPassToGodot[][2] = unsafeAddr(position)
  var ptrCallRet: pointer
  physicsServerBodyAddForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyAddShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddShape(body: RID; shape: RID; transform: Transform = initTransform(
    initBasis(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0), vec3(0.0, 0.0, 0.0));
                 disabled: bool = false) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyAddShapeMethodBind):
    physicsServerBodyAddShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_add_shape")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shape)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  argsToPassToGodot[][3] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physicsServerBodyAddShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyAddTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddTorque(body: RID; torque: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyAddTorqueMethodBind):
    physicsServerBodyAddTorqueMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_add_torque")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(torque)
  var ptrCallRet: pointer
  physicsServerBodyAddTorqueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyApplyCentralImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyApplyCentralImpulse(body: RID; impulse: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyApplyCentralImpulseMethodBind):
    physicsServerBodyApplyCentralImpulseMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_apply_central_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physicsServerBodyApplyCentralImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyApplyImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyApplyImpulse(body: RID; position: Vector3; impulse: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyApplyImpulseMethodBind):
    physicsServerBodyApplyImpulseMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_apply_impulse")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(position)
  argsToPassToGodot[][2] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physicsServerBodyApplyImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyApplyTorqueImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyApplyTorqueImpulse(body: RID; impulse: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyApplyTorqueImpulseMethodBind):
    physicsServerBodyApplyTorqueImpulseMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_apply_torque_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physicsServerBodyApplyTorqueImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyAttachObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAttachObjectInstanceId(body: RID; id: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyAttachObjectInstanceIdMethodBind):
    physicsServerBodyAttachObjectInstanceIdMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_attach_object_instance_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  physicsServerBodyAttachObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyClearShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyClearShapes(body: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyClearShapesMethodBind):
    physicsServerBodyClearShapesMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_clear_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  physicsServerBodyClearShapesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyCreate(mode: int64 = 2'i64; initSleeping: bool = false): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyCreateMethodBind):
    physicsServerBodyCreateMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_create")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  argsToPassToGodot[][1] = unsafeAddr(initSleeping)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyCreateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsServerBodyGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetCollisionLayer(body: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetCollisionLayerMethodBind):
    physicsServerBodyGetCollisionLayerMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_get_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetCollisionMask(body: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetCollisionMaskMethodBind):
    physicsServerBodyGetCollisionMaskMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_get_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetDirectStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetDirectState(body: RID): PhysicsDirectBodyState =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetDirectStateMethodBind):
    physicsServerBodyGetDirectStateMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_get_direct_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physicsServerBodyGetDirectStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physicsServerBodyGetKinematicSafeMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetKinematicSafeMargin(body: RID): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetKinematicSafeMarginMethodBind):
    physicsServerBodyGetKinematicSafeMarginMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_get_kinematic_safe_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetKinematicSafeMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetMaxContactsReported(body: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetMaxContactsReportedMethodBind):
    physicsServerBodyGetMaxContactsReportedMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_get_max_contacts_reported")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetMaxContactsReportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetMode(body: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetModeMethodBind):
    physicsServerBodyGetModeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_get_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsServerBodyGetObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetObjectInstanceId(body: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetObjectInstanceIdMethodBind):
    physicsServerBodyGetObjectInstanceIdMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_get_object_instance_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetParam(body: RID; param: int64): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetParamMethodBind):
    physicsServerBodyGetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetShape(body: RID; shapeIdx: int64): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetShapeMethodBind):
    physicsServerBodyGetShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_get_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetShapeCount(body: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetShapeCountMethodBind):
    physicsServerBodyGetShapeCountMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_get_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetShapeTransform(body: RID; shapeIdx: int64): Transform =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetShapeTransformMethodBind):
    physicsServerBodyGetShapeTransformMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_get_shape_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetSpace(body: RID): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetSpaceMethodBind):
    physicsServerBodyGetSpaceMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_get_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyGetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyGetStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetState(body: RID; state: int64): Variant =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyGetStateMethodBind):
    physicsServerBodyGetStateMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_get_state")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(state)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physicsServerBodyGetStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physicsServerBodyIsAxisLockedMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyIsAxisLocked(body: RID; axis: int64): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyIsAxisLockedMethodBind):
    physicsServerBodyIsAxisLockedMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_is_axis_locked")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(axis)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyIsAxisLockedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyIsContinuousCollisionDetectionEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyIsContinuousCollisionDetectionEnabled(body: RID): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyIsContinuousCollisionDetectionEnabledMethodBind):
    physicsServerBodyIsContinuousCollisionDetectionEnabledMethodBind = getMethod(
        cstring"PhysicsServer",
        cstring"body_is_continuous_collision_detection_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyIsContinuousCollisionDetectionEnabledMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsServerBodyIsOmittingForceIntegrationMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyIsOmittingForceIntegration(body: RID): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyIsOmittingForceIntegrationMethodBind):
    physicsServerBodyIsOmittingForceIntegrationMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_is_omitting_force_integration")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyIsOmittingForceIntegrationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsServerBodyIsRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyIsRayPickable(body: RID): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyIsRayPickableMethodBind):
    physicsServerBodyIsRayPickableMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_is_ray_pickable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerBodyIsRayPickableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyRemoveCollisionExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyRemoveCollisionException(body: RID; exceptedBody: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyRemoveCollisionExceptionMethodBind):
    physicsServerBodyRemoveCollisionExceptionMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_remove_collision_exception")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(exceptedBody)
  var ptrCallRet: pointer
  physicsServerBodyRemoveCollisionExceptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodyRemoveShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyRemoveShape(body: RID; shapeIdx: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodyRemoveShapeMethodBind):
    physicsServerBodyRemoveShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_remove_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  physicsServerBodyRemoveShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetAxisLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetAxisLock(body: RID; axis: int64; lock: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetAxisLockMethodBind):
    physicsServerBodySetAxisLockMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_set_axis_lock")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(axis)
  argsToPassToGodot[][2] = unsafeAddr(lock)
  var ptrCallRet: pointer
  physicsServerBodySetAxisLockMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetAxisVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetAxisVelocity(body: RID; axisVelocity: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetAxisVelocityMethodBind):
    physicsServerBodySetAxisVelocityMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_axis_velocity")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(axisVelocity)
  var ptrCallRet: pointer
  physicsServerBodySetAxisVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetCollisionLayer(body: RID; layer: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetCollisionLayerMethodBind):
    physicsServerBodySetCollisionLayerMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_collision_layer")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(layer)
  var ptrCallRet: pointer
  physicsServerBodySetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetCollisionMask(body: RID; mask: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetCollisionMaskMethodBind):
    physicsServerBodySetCollisionMaskMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_collision_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  physicsServerBodySetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetEnableContinuousCollisionDetectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetEnableContinuousCollisionDetection(body: RID; enable: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetEnableContinuousCollisionDetectionMethodBind):
    physicsServerBodySetEnableContinuousCollisionDetectionMethodBind = getMethod(
        cstring"PhysicsServer",
        cstring"body_set_enable_continuous_collision_detection")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  physicsServerBodySetEnableContinuousCollisionDetectionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsServerBodySetForceIntegrationCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetForceIntegrationCallback(body: RID; receiver: Object; methodd: string;
                                    userdata: Variant = newVariant()) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetForceIntegrationCallbackMethodBind):
    physicsServerBodySetForceIntegrationCallbackMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_force_integration_callback")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  let argToPassToGodot1 = if not receiver.isNil:
    receiver.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(methodd)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = userdata.godotVariant
  var ptrCallRet: pointer
  physicsServerBodySetForceIntegrationCallbackMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var physicsServerBodySetKinematicSafeMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetKinematicSafeMargin(body: RID; margin: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetKinematicSafeMarginMethodBind):
    physicsServerBodySetKinematicSafeMarginMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_kinematic_safe_margin")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(margin)
  var ptrCallRet: pointer
  physicsServerBodySetKinematicSafeMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetMaxContactsReported(body: RID; amount: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetMaxContactsReportedMethodBind):
    physicsServerBodySetMaxContactsReportedMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_max_contacts_reported")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(amount)
  var ptrCallRet: pointer
  physicsServerBodySetMaxContactsReportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetMode(body: RID; mode: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetModeMethodBind):
    physicsServerBodySetModeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_set_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  physicsServerBodySetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsServerBodySetOmitForceIntegrationMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetOmitForceIntegration(body: RID; enable: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetOmitForceIntegrationMethodBind):
    physicsServerBodySetOmitForceIntegrationMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_omit_force_integration")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  physicsServerBodySetOmitForceIntegrationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetParam(body: RID; param: int64; value: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetParamMethodBind):
    physicsServerBodySetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsServerBodySetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetRayPickable(body: RID; enable: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetRayPickableMethodBind):
    physicsServerBodySetRayPickableMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_set_ray_pickable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  physicsServerBodySetRayPickableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShape(body: RID; shapeIdx: int64; shape: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetShapeMethodBind):
    physicsServerBodySetShapeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_set_shape")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(shape)
  var ptrCallRet: pointer
  physicsServerBodySetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetShapeDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShapeDisabled(body: RID; shapeIdx: int64; disabled: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetShapeDisabledMethodBind):
    physicsServerBodySetShapeDisabledMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_shape_disabled")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physicsServerBodySetShapeDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShapeTransform(body: RID; shapeIdx: int64; transform: Transform) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetShapeTransformMethodBind):
    physicsServerBodySetShapeTransformMethodBind = getMethod(
        cstring"PhysicsServer", cstring"body_set_shape_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  physicsServerBodySetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetSpace(body: RID; space: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetSpaceMethodBind):
    physicsServerBodySetSpaceMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_set_space")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(space)
  var ptrCallRet: pointer
  physicsServerBodySetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerBodySetStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetState(body: RID; state: int64; value: Variant) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerBodySetStateMethodBind):
    physicsServerBodySetStateMethodBind = getMethod(cstring"PhysicsServer",
        cstring"body_set_state")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(state)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  physicsServerBodySetStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerConeTwistJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc coneTwistJointGetParam(joint: RID; param: int64): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerConeTwistJointGetParamMethodBind):
    physicsServerConeTwistJointGetParamMethodBind = getMethod(
        cstring"PhysicsServer", cstring"cone_twist_joint_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerConeTwistJointGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerConeTwistJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc coneTwistJointSetParam(joint: RID; param: int64; value: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerConeTwistJointSetParamMethodBind):
    physicsServerConeTwistJointSetParamMethodBind = getMethod(
        cstring"PhysicsServer", cstring"cone_twist_joint_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsServerConeTwistJointSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerFreeRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc freeRid(rid: RID) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerFreeRidMethodBind):
    physicsServerFreeRidMethodBind = getMethod(cstring"PhysicsServer",
        cstring"free_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  physicsServerFreeRidMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsServerGeneric6dofJointGetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc generic6dofJointGetFlag(joint: RID; axis: int64; flag: int64): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerGeneric6dofJointGetFlagMethodBind):
    physicsServerGeneric6dofJointGetFlagMethodBind = getMethod(
        cstring"PhysicsServer", cstring"generic_6dof_joint_get_flag")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(axis)
  argsToPassToGodot[][2] = unsafeAddr(flag)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerGeneric6dofJointGetFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerGeneric6dofJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc generic6dofJointGetParam(joint: RID; axis: int64; param: int64): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerGeneric6dofJointGetParamMethodBind):
    physicsServerGeneric6dofJointGetParamMethodBind = getMethod(
        cstring"PhysicsServer", cstring"generic_6dof_joint_get_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(axis)
  argsToPassToGodot[][2] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerGeneric6dofJointGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerGeneric6dofJointSetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc generic6dofJointSetFlag(joint: RID; axis: int64; flag: int64; enable: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerGeneric6dofJointSetFlagMethodBind):
    physicsServerGeneric6dofJointSetFlagMethodBind = getMethod(
        cstring"PhysicsServer", cstring"generic_6dof_joint_set_flag")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(axis)
  argsToPassToGodot[][2] = unsafeAddr(flag)
  argsToPassToGodot[][3] = unsafeAddr(enable)
  var ptrCallRet: pointer
  physicsServerGeneric6dofJointSetFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerGeneric6dofJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc generic6dofJointSetParam(joint: RID; axis: int64; param: int64; value: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerGeneric6dofJointSetParamMethodBind):
    physicsServerGeneric6dofJointSetParamMethodBind = getMethod(
        cstring"PhysicsServer", cstring"generic_6dof_joint_set_param")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(axis)
  argsToPassToGodot[][2] = unsafeAddr(param)
  argsToPassToGodot[][3] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsServerGeneric6dofJointSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerGetProcessInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProcessInfo(processInfo: int64): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerGetProcessInfoMethodBind):
    physicsServerGetProcessInfoMethodBind = getMethod(cstring"PhysicsServer",
        cstring"get_process_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(processInfo)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerGetProcessInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerHingeJointGetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc hingeJointGetFlag(joint: RID; flag: int64): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerHingeJointGetFlagMethodBind):
    physicsServerHingeJointGetFlagMethodBind = getMethod(cstring"PhysicsServer",
        cstring"hinge_joint_get_flag")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(flag)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerHingeJointGetFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerHingeJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc hingeJointGetParam(joint: RID; param: int64): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerHingeJointGetParamMethodBind):
    physicsServerHingeJointGetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"hinge_joint_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerHingeJointGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerHingeJointSetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc hingeJointSetFlag(joint: RID; flag: int64; enabled: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerHingeJointSetFlagMethodBind):
    physicsServerHingeJointSetFlagMethodBind = getMethod(cstring"PhysicsServer",
        cstring"hinge_joint_set_flag")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(flag)
  argsToPassToGodot[][2] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  physicsServerHingeJointSetFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerHingeJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc hingeJointSetParam(joint: RID; param: int64; value: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerHingeJointSetParamMethodBind):
    physicsServerHingeJointSetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"hinge_joint_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsServerHingeJointSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointCreateConeTwistMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointCreateConeTwist(bodyA: RID; localRefA: Transform; bodyB: RID;
                         localRefB: Transform): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointCreateConeTwistMethodBind):
    physicsServerJointCreateConeTwistMethodBind = getMethod(
        cstring"PhysicsServer", cstring"joint_create_cone_twist")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bodyA)
  argsToPassToGodot[][1] = unsafeAddr(localRefA)
  argsToPassToGodot[][2] = unsafeAddr(bodyB)
  argsToPassToGodot[][3] = unsafeAddr(localRefB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerJointCreateConeTwistMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointCreateGeneric6dofMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointCreateGeneric6dof(bodyA: RID; localRefA: Transform; bodyB: RID;
                           localRefB: Transform): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointCreateGeneric6dofMethodBind):
    physicsServerJointCreateGeneric6dofMethodBind = getMethod(
        cstring"PhysicsServer", cstring"joint_create_generic_6dof")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bodyA)
  argsToPassToGodot[][1] = unsafeAddr(localRefA)
  argsToPassToGodot[][2] = unsafeAddr(bodyB)
  argsToPassToGodot[][3] = unsafeAddr(localRefB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerJointCreateGeneric6dofMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointCreateHingeMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointCreateHinge(bodyA: RID; hingeA: Transform; bodyB: RID; hingeB: Transform): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointCreateHingeMethodBind):
    physicsServerJointCreateHingeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"joint_create_hinge")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bodyA)
  argsToPassToGodot[][1] = unsafeAddr(hingeA)
  argsToPassToGodot[][2] = unsafeAddr(bodyB)
  argsToPassToGodot[][3] = unsafeAddr(hingeB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerJointCreateHingeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointCreatePinMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointCreatePin(bodyA: RID; localA: Vector3; bodyB: RID; localB: Vector3): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointCreatePinMethodBind):
    physicsServerJointCreatePinMethodBind = getMethod(cstring"PhysicsServer",
        cstring"joint_create_pin")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bodyA)
  argsToPassToGodot[][1] = unsafeAddr(localA)
  argsToPassToGodot[][2] = unsafeAddr(bodyB)
  argsToPassToGodot[][3] = unsafeAddr(localB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerJointCreatePinMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointCreateSliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointCreateSlider(bodyA: RID; localRefA: Transform; bodyB: RID;
                      localRefB: Transform): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointCreateSliderMethodBind):
    physicsServerJointCreateSliderMethodBind = getMethod(cstring"PhysicsServer",
        cstring"joint_create_slider")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bodyA)
  argsToPassToGodot[][1] = unsafeAddr(localRefA)
  argsToPassToGodot[][2] = unsafeAddr(bodyB)
  argsToPassToGodot[][3] = unsafeAddr(localRefB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerJointCreateSliderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointGetSolverPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointGetSolverPriority(joint: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointGetSolverPriorityMethodBind):
    physicsServerJointGetSolverPriorityMethodBind = getMethod(
        cstring"PhysicsServer", cstring"joint_get_solver_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerJointGetSolverPriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointGetType(joint: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointGetTypeMethodBind):
    physicsServerJointGetTypeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"joint_get_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerJointGetTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerJointSetSolverPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointSetSolverPriority(joint: RID; priority: int64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerJointSetSolverPriorityMethodBind):
    physicsServerJointSetSolverPriorityMethodBind = getMethod(
        cstring"PhysicsServer", cstring"joint_set_solver_priority")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(priority)
  var ptrCallRet: pointer
  physicsServerJointSetSolverPriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerPinJointGetLocalAMethodBind {.threadvar.}: ptr GodotMethodBind
proc pinJointGetLocalA(joint: RID): Vector3 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerPinJointGetLocalAMethodBind):
    physicsServerPinJointGetLocalAMethodBind = getMethod(cstring"PhysicsServer",
        cstring"pin_joint_get_local_a")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerPinJointGetLocalAMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerPinJointGetLocalBMethodBind {.threadvar.}: ptr GodotMethodBind
proc pinJointGetLocalB(joint: RID): Vector3 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerPinJointGetLocalBMethodBind):
    physicsServerPinJointGetLocalBMethodBind = getMethod(cstring"PhysicsServer",
        cstring"pin_joint_get_local_b")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerPinJointGetLocalBMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerPinJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc pinJointGetParam(joint: RID; param: int64): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerPinJointGetParamMethodBind):
    physicsServerPinJointGetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"pin_joint_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerPinJointGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerPinJointSetLocalAMethodBind {.threadvar.}: ptr GodotMethodBind
proc pinJointSetLocalA(joint: RID; localA: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerPinJointSetLocalAMethodBind):
    physicsServerPinJointSetLocalAMethodBind = getMethod(cstring"PhysicsServer",
        cstring"pin_joint_set_local_a")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(localA)
  var ptrCallRet: pointer
  physicsServerPinJointSetLocalAMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerPinJointSetLocalBMethodBind {.threadvar.}: ptr GodotMethodBind
proc pinJointSetLocalB(joint: RID; localB: Vector3) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerPinJointSetLocalBMethodBind):
    physicsServerPinJointSetLocalBMethodBind = getMethod(cstring"PhysicsServer",
        cstring"pin_joint_set_local_b")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(localB)
  var ptrCallRet: pointer
  physicsServerPinJointSetLocalBMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerPinJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc pinJointSetParam(joint: RID; param: int64; value: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerPinJointSetParamMethodBind):
    physicsServerPinJointSetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"pin_joint_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsServerPinJointSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc setActive(active: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSetActiveMethodBind):
    physicsServerSetActiveMethodBind = getMethod(cstring"PhysicsServer",
        cstring"set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(active)
  var ptrCallRet: pointer
  physicsServerSetActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsServerShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeCreate(typee: int64): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerShapeCreateMethodBind):
    physicsServerShapeCreateMethodBind = getMethod(cstring"PhysicsServer",
        cstring"shape_create")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerShapeCreateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsServerShapeGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeGetData(shape: RID): Variant =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerShapeGetDataMethodBind):
    physicsServerShapeGetDataMethodBind = getMethod(cstring"PhysicsServer",
        cstring"shape_get_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shape)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physicsServerShapeGetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physicsServerShapeGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeGetType(shape: RID): int64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerShapeGetTypeMethodBind):
    physicsServerShapeGetTypeMethodBind = getMethod(cstring"PhysicsServer",
        cstring"shape_get_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shape)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerShapeGetTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerShapeSetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeSetData(shape: RID; data: Variant) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerShapeSetDataMethodBind):
    physicsServerShapeSetDataMethodBind = getMethod(cstring"PhysicsServer",
        cstring"shape_set_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shape)
  argsToPassToGodot[][1] = data.godotVariant
  var ptrCallRet: pointer
  physicsServerShapeSetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerSliderJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc sliderJointGetParam(joint: RID; param: int64): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSliderJointGetParamMethodBind):
    physicsServerSliderJointGetParamMethodBind = getMethod(
        cstring"PhysicsServer", cstring"slider_joint_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerSliderJointGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerSliderJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc sliderJointSetParam(joint: RID; param: int64; value: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSliderJointSetParamMethodBind):
    physicsServerSliderJointSetParamMethodBind = getMethod(
        cstring"PhysicsServer", cstring"slider_joint_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsServerSliderJointSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerSpaceCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceCreate(): RID =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSpaceCreateMethodBind):
    physicsServerSpaceCreateMethodBind = getMethod(cstring"PhysicsServer",
        cstring"space_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerSpaceCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsServerSpaceGetDirectStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceGetDirectState(space: RID): PhysicsDirectSpaceState =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSpaceGetDirectStateMethodBind):
    physicsServerSpaceGetDirectStateMethodBind = getMethod(
        cstring"PhysicsServer", cstring"space_get_direct_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physicsServerSpaceGetDirectStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physicsServerSpaceGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceGetParam(space: RID; param: int64): float64 =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSpaceGetParamMethodBind):
    physicsServerSpaceGetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"space_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerSpaceGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerSpaceIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceIsActive(space: RID): bool =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSpaceIsActiveMethodBind):
    physicsServerSpaceIsActiveMethodBind = getMethod(cstring"PhysicsServer",
        cstring"space_is_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsServerSpaceIsActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerSpaceSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceSetActive(space: RID; active: bool) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSpaceSetActiveMethodBind):
    physicsServerSpaceSetActiveMethodBind = getMethod(cstring"PhysicsServer",
        cstring"space_set_active")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  argsToPassToGodot[][1] = unsafeAddr(active)
  var ptrCallRet: pointer
  physicsServerSpaceSetActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsServerSpaceSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceSetParam(space: RID; param: int64; value: float64) =
  if isNil(singletonPhysicsServer):
    singletonPhysicsServer = getSingleton[PhysicsServer]()
  let self = singletonPhysicsServer
  if isNil(physicsServerSpaceSetParamMethodBind):
    physicsServerSpaceSetParamMethodBind = getMethod(cstring"PhysicsServer",
        cstring"space_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsServerSpaceSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
