
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
  BODY_MODE_CHARACTER* = 3'i64
  BODY_MODE_KINEMATIC* = 1'i64
  BODY_MODE_RIGID* = 2'i64
  BODY_MODE_STATIC* = 0'i64
  BODY_PARAM_ANGULAR_DAMP* = 6'i64
  BODY_PARAM_BOUNCE* = 0'i64
  BODY_PARAM_FRICTION* = 1'i64
  BODY_PARAM_GRAVITY_SCALE* = 4'i64
  BODY_PARAM_INERTIA* = 3'i64
  BODY_PARAM_LINEAR_DAMP* = 5'i64
  BODY_PARAM_MASS* = 2'i64
  BODY_PARAM_MAX* = 7'i64
  BODY_STATE_ANGULAR_VELOCITY* = 2'i64
  BODY_STATE_CAN_SLEEP* = 4'i64
  BODY_STATE_LINEAR_VELOCITY* = 1'i64
  BODY_STATE_SLEEPING* = 3'i64
  BODY_STATE_TRANSFORM* = 0'i64
  CCD_MODE_CAST_RAY* = 1'i64
  CCD_MODE_CAST_SHAPE* = 2'i64
  CCD_MODE_DISABLED* = 0'i64
  DAMPED_STRING_DAMPING* = 2'i64
  DAMPED_STRING_REST_LENGTH* = 0'i64
  DAMPED_STRING_STIFFNESS* = 1'i64
  INFO_ACTIVE_OBJECTS* = 0'i64
  INFO_COLLISION_PAIRS* = 1'i64
  INFO_ISLAND_COUNT* = 2'i64
  JOINT_DAMPED_SPRING* = 2'i64
  JOINT_GROOVE* = 1'i64
  JOINT_PARAM_BIAS* = 0'i64
  JOINT_PARAM_MAX_BIAS* = 1'i64
  JOINT_PARAM_MAX_FORCE* = 2'i64
  JOINT_PIN* = 0'i64
  SHAPE_CAPSULE* = 5'i64
  SHAPE_CIRCLE* = 3'i64
  SHAPE_CONCAVE_POLYGON* = 7'i64
  SHAPE_CONVEX_POLYGON* = 6'i64
  SHAPE_CUSTOM* = 8'i64
  SHAPE_LINE* = 0'i64
  SHAPE_RAY* = 1'i64
  SHAPE_RECTANGLE* = 4'i64
  SHAPE_SEGMENT* = 2'i64
  SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD* = 4'i64
  SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD* = 3'i64
  SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION* = 2'i64
  SPACE_PARAM_BODY_TIME_TO_SLEEP* = 5'i64
  SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS* = 6'i64
  SPACE_PARAM_CONTACT_MAX_SEPARATION* = 1'i64
  SPACE_PARAM_CONTACT_RECYCLE_RADIUS* = 0'i64
  SPACE_PARAM_TEST_MOTION_MIN_CONTACT_DEPTH* = 7'i64
type
  Physics2DServer = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
  Physics2DServerSW = ref object of Physics2DServer
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
registerClass(Physics2DServer, "Physics2DServer", true)
registerClass(Physics2DServerSW, "Physics2DServerSW", true)
var singletonPhysics2DServer {.threadvar.}: Physics2DServer
proc areaAddShape*(area: RID; shape: RID; transform: Transform2D = initTransform2D(
    vec2(1.0, 0.0), vec2(0.0, 1.0), vec2(0.0, 0.0)); disabled: bool = false) {.gcsafe,
    locks: 0.}
proc areaAttachCanvasInstanceId*(area: RID; id: int64) {.gcsafe, locks: 0.}
proc areaAttachObjectInstanceId*(area: RID; id: int64) {.gcsafe, locks: 0.}
proc areaClearShapes*(area: RID) {.gcsafe, locks: 0.}
proc areaCreate*(): RID {.gcsafe, locks: 0.}
proc areaGetCanvasInstanceId*(area: RID): int64 {.gcsafe, locks: 0.}
proc areaGetObjectInstanceId*(area: RID): int64 {.gcsafe, locks: 0.}
proc areaGetParam*(area: RID; param: int64): Variant {.gcsafe, locks: 0.}
proc areaGetShape*(area: RID; shapeIdx: int64): RID {.gcsafe, locks: 0.}
proc areaGetShapeCount*(area: RID): int64 {.gcsafe, locks: 0.}
proc areaGetShapeTransform*(area: RID; shapeIdx: int64): Transform2D {.gcsafe, locks: 0.}
proc areaGetSpace*(area: RID): RID {.gcsafe, locks: 0.}
proc areaGetSpaceOverrideMode*(area: RID): int64 {.gcsafe, locks: 0.}
proc areaGetTransform*(area: RID): Transform2D {.gcsafe, locks: 0.}
proc areaRemoveShape*(area: RID; shapeIdx: int64) {.gcsafe, locks: 0.}
proc areaSetAreaMonitorCallback*(area: RID; receiver: Object; methodd: string) {.
    gcsafe, locks: 0.}
proc areaSetCollisionLayer*(area: RID; layer: int64) {.gcsafe, locks: 0.}
proc areaSetCollisionMask*(area: RID; mask: int64) {.gcsafe, locks: 0.}
proc areaSetMonitorCallback*(area: RID; receiver: Object; methodd: string) {.gcsafe,
    locks: 0.}
proc areaSetMonitorable*(area: RID; monitorable: bool) {.gcsafe, locks: 0.}
proc areaSetParam*(area: RID; param: int64; value: Variant) {.gcsafe, locks: 0.}
proc areaSetShape*(area: RID; shapeIdx: int64; shape: RID) {.gcsafe, locks: 0.}
proc areaSetShapeDisabled*(area: RID; shapeIdx: int64; disabled: bool) {.gcsafe,
    locks: 0.}
proc areaSetShapeTransform*(area: RID; shapeIdx: int64; transform: Transform2D) {.
    gcsafe, locks: 0.}
proc areaSetSpace*(area: RID; space: RID) {.gcsafe, locks: 0.}
proc areaSetSpaceOverrideMode*(area: RID; mode: int64) {.gcsafe, locks: 0.}
proc areaSetTransform*(area: RID; transform: Transform2D) {.gcsafe, locks: 0.}
proc bodyAddCentralForce*(body: RID; force: Vector2) {.gcsafe, locks: 0.}
proc bodyAddCollisionException*(body: RID; exceptedBody: RID) {.gcsafe, locks: 0.}
proc bodyAddForce*(body: RID; offset: Vector2; force: Vector2) {.gcsafe, locks: 0.}
proc bodyAddShape*(body: RID; shape: RID; transform: Transform2D = initTransform2D(
    vec2(1.0, 0.0), vec2(0.0, 1.0), vec2(0.0, 0.0)); disabled: bool = false) {.gcsafe,
    locks: 0.}
proc bodyAddTorque*(body: RID; torque: float64) {.gcsafe, locks: 0.}
proc bodyApplyCentralImpulse*(body: RID; impulse: Vector2) {.gcsafe, locks: 0.}
proc bodyApplyImpulse*(body: RID; position: Vector2; impulse: Vector2) {.gcsafe,
    locks: 0.}
proc bodyApplyTorqueImpulse*(body: RID; impulse: float64) {.gcsafe, locks: 0.}
proc bodyAttachCanvasInstanceId*(body: RID; id: int64) {.gcsafe, locks: 0.}
proc bodyAttachObjectInstanceId*(body: RID; id: int64) {.gcsafe, locks: 0.}
proc bodyClearShapes*(body: RID) {.gcsafe, locks: 0.}
proc bodyCreate*(): RID {.gcsafe, locks: 0.}
proc bodyGetCanvasInstanceId*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetCollisionLayer*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetCollisionMask*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetContinuousCollisionDetectionMode*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetDirectState*(body: RID): Physics2DDirectBodyState {.gcsafe, locks: 0.}
proc bodyGetMaxContactsReported*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetMode*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetObjectInstanceId*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetParam*(body: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc bodyGetShape*(body: RID; shapeIdx: int64): RID {.gcsafe, locks: 0.}
proc bodyGetShapeCount*(body: RID): int64 {.gcsafe, locks: 0.}
proc bodyGetShapeMetadata*(body: RID; shapeIdx: int64): Variant {.gcsafe, locks: 0.}
proc bodyGetShapeTransform*(body: RID; shapeIdx: int64): Transform2D {.gcsafe, locks: 0.}
proc bodyGetSpace*(body: RID): RID {.gcsafe, locks: 0.}
proc bodyGetState*(body: RID; state: int64): Variant {.gcsafe, locks: 0.}
proc bodyIsOmittingForceIntegration*(body: RID): bool {.gcsafe, locks: 0.}
proc bodyRemoveCollisionException*(body: RID; exceptedBody: RID) {.gcsafe, locks: 0.}
proc bodyRemoveShape*(body: RID; shapeIdx: int64) {.gcsafe, locks: 0.}
proc bodySetAxisVelocity*(body: RID; axisVelocity: Vector2) {.gcsafe, locks: 0.}
proc bodySetCollisionLayer*(body: RID; layer: int64) {.gcsafe, locks: 0.}
proc bodySetCollisionMask*(body: RID; mask: int64) {.gcsafe, locks: 0.}
proc bodySetContinuousCollisionDetectionMode*(body: RID; mode: int64) {.gcsafe,
    locks: 0.}
proc bodySetForceIntegrationCallback*(body: RID; receiver: Object; methodd: string;
                                     userdata: Variant = newVariant()) {.gcsafe,
    locks: 0.}
proc bodySetMaxContactsReported*(body: RID; amount: int64) {.gcsafe, locks: 0.}
proc bodySetMode*(body: RID; mode: int64) {.gcsafe, locks: 0.}
proc bodySetOmitForceIntegration*(body: RID; enable: bool) {.gcsafe, locks: 0.}
proc bodySetParam*(body: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
proc bodySetShape*(body: RID; shapeIdx: int64; shape: RID) {.gcsafe, locks: 0.}
proc bodySetShapeAsOneWayCollision*(body: RID; shapeIdx: int64; enable: bool;
                                   margin: float64) {.gcsafe, locks: 0.}
proc bodySetShapeDisabled*(body: RID; shapeIdx: int64; disabled: bool) {.gcsafe,
    locks: 0.}
proc bodySetShapeMetadata*(body: RID; shapeIdx: int64; metadata: Variant) {.gcsafe,
    locks: 0.}
proc bodySetShapeTransform*(body: RID; shapeIdx: int64; transform: Transform2D) {.
    gcsafe, locks: 0.}
proc bodySetSpace*(body: RID; space: RID) {.gcsafe, locks: 0.}
proc bodySetState*(body: RID; state: int64; value: Variant) {.gcsafe, locks: 0.}
proc bodyTestMotion*(body: RID; fromm: Transform2D; motion: Vector2;
                    infiniteInertia: bool; margin: float64 = 0.08;
                    resultVal: Physics2DTestMotionResult = nil): bool {.gcsafe,
    locks: 0.}
proc capsuleShapeCreate*(): RID {.gcsafe, locks: 0.}
proc circleShapeCreate*(): RID {.gcsafe, locks: 0.}
proc concavePolygonShapeCreate*(): RID {.gcsafe, locks: 0.}
proc convexPolygonShapeCreate*(): RID {.gcsafe, locks: 0.}
proc dampedSpringJointCreate*(anchorA: Vector2; anchorB: Vector2; bodyA: RID;
                             bodyB: RID = initRID()): RID {.gcsafe, locks: 0.}
proc dampedStringJointGetParam*(joint: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc dampedStringJointSetParam*(joint: RID; param: int64; value: float64) {.gcsafe,
    locks: 0.}
proc freeRid*(rid: RID) {.gcsafe, locks: 0.}
proc getProcessInfo*(processInfo: int64): int64 {.gcsafe, locks: 0.}
proc grooveJointCreate*(groove1A: Vector2; groove2A: Vector2; anchorB: Vector2;
                       bodyA: RID = initRID(); bodyB: RID = initRID()): RID {.gcsafe,
    locks: 0.}
proc jointGetParam*(joint: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc jointGetType*(joint: RID): int64 {.gcsafe, locks: 0.}
proc jointSetParam*(joint: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
proc lineShapeCreate*(): RID {.gcsafe, locks: 0.}
proc pinJointCreate*(anchor: Vector2; bodyA: RID; bodyB: RID = initRID()): RID {.gcsafe,
    locks: 0.}
proc rayShapeCreate*(): RID {.gcsafe, locks: 0.}
proc rectangleShapeCreate*(): RID {.gcsafe, locks: 0.}
proc segmentShapeCreate*(): RID {.gcsafe, locks: 0.}
proc setActive*(active: bool) {.gcsafe, locks: 0.}
proc shapeGetData*(shape: RID): Variant {.gcsafe, locks: 0.}
proc shapeGetType*(shape: RID): int64 {.gcsafe, locks: 0.}
proc shapeSetData*(shape: RID; data: Variant) {.gcsafe, locks: 0.}
proc spaceCreate*(): RID {.gcsafe, locks: 0.}
proc spaceGetDirectState*(space: RID): Physics2DDirectSpaceState {.gcsafe, locks: 0.}
proc spaceGetParam*(space: RID; param: int64): float64 {.gcsafe, locks: 0.}
proc spaceIsActive*(space: RID): bool {.gcsafe, locks: 0.}
proc spaceSetActive*(space: RID; active: bool) {.gcsafe, locks: 0.}
proc spaceSetParam*(space: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
var physics2DServerAreaAddShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaAddShape(area: RID; shape: RID; transform: Transform2D = initTransform2D(
    vec2(1.0, 0.0), vec2(0.0, 1.0), vec2(0.0, 0.0)); disabled: bool = false) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaAddShapeMethodBind):
    physics2DServerAreaAddShapeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_add_shape")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shape)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  argsToPassToGodot[][3] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physics2DServerAreaAddShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaAttachCanvasInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaAttachCanvasInstanceId(area: RID; id: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaAttachCanvasInstanceIdMethodBind):
    physics2DServerAreaAttachCanvasInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_attach_canvas_instance_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  physics2DServerAreaAttachCanvasInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaAttachObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaAttachObjectInstanceId(area: RID; id: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaAttachObjectInstanceIdMethodBind):
    physics2DServerAreaAttachObjectInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_attach_object_instance_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  physics2DServerAreaAttachObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaClearShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaClearShapes(area: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaClearShapesMethodBind):
    physics2DServerAreaClearShapesMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_clear_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  physics2DServerAreaClearShapesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaCreateMethodBind):
    physics2DServerAreaCreateMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physics2DServerAreaGetCanvasInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetCanvasInstanceId(area: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetCanvasInstanceIdMethodBind):
    physics2DServerAreaGetCanvasInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_get_canvas_instance_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetCanvasInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaGetObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetObjectInstanceId(area: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetObjectInstanceIdMethodBind):
    physics2DServerAreaGetObjectInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_get_object_instance_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetParam(area: RID; param: int64): Variant =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetParamMethodBind):
    physics2DServerAreaGetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physics2DServerAreaGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physics2DServerAreaGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetShape(area: RID; shapeIdx: int64): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetShapeMethodBind):
    physics2DServerAreaGetShapeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_get_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaGetShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetShapeCount(area: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetShapeCountMethodBind):
    physics2DServerAreaGetShapeCountMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_get_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaGetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetShapeTransform(area: RID; shapeIdx: int64): Transform2D =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetShapeTransformMethodBind):
    physics2DServerAreaGetShapeTransformMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_get_shape_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaGetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetSpace(area: RID): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetSpaceMethodBind):
    physics2DServerAreaGetSpaceMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_get_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaGetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetSpaceOverrideMode(area: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetSpaceOverrideModeMethodBind):
    physics2DServerAreaGetSpaceOverrideModeMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_get_space_override_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetSpaceOverrideModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaGetTransform(area: RID): Transform2D =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaGetTransformMethodBind):
    physics2DServerAreaGetTransformMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_get_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerAreaGetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaRemoveShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaRemoveShape(area: RID; shapeIdx: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaRemoveShapeMethodBind):
    physics2DServerAreaRemoveShapeMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_remove_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  physics2DServerAreaRemoveShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetAreaMonitorCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetAreaMonitorCallback(area: RID; receiver: Object; methodd: string) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetAreaMonitorCallbackMethodBind):
    physics2DServerAreaSetAreaMonitorCallbackMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_area_monitor_callback")
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
  physics2DServerAreaSetAreaMonitorCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var physics2DServerAreaSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetCollisionLayer(area: RID; layer: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetCollisionLayerMethodBind):
    physics2DServerAreaSetCollisionLayerMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_collision_layer")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(layer)
  var ptrCallRet: pointer
  physics2DServerAreaSetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetCollisionMask(area: RID; mask: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetCollisionMaskMethodBind):
    physics2DServerAreaSetCollisionMaskMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_collision_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  physics2DServerAreaSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetMonitorCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetMonitorCallback(area: RID; receiver: Object; methodd: string) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetMonitorCallbackMethodBind):
    physics2DServerAreaSetMonitorCallbackMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_monitor_callback")
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
  physics2DServerAreaSetMonitorCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var physics2DServerAreaSetMonitorableMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetMonitorable(area: RID; monitorable: bool) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetMonitorableMethodBind):
    physics2DServerAreaSetMonitorableMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_monitorable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(monitorable)
  var ptrCallRet: pointer
  physics2DServerAreaSetMonitorableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetParam(area: RID; param: int64; value: Variant) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetParamMethodBind):
    physics2DServerAreaSetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  physics2DServerAreaSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetShape(area: RID; shapeIdx: int64; shape: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetShapeMethodBind):
    physics2DServerAreaSetShapeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_set_shape")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(shape)
  var ptrCallRet: pointer
  physics2DServerAreaSetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetShapeDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetShapeDisabled(area: RID; shapeIdx: int64; disabled: bool) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetShapeDisabledMethodBind):
    physics2DServerAreaSetShapeDisabledMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_shape_disabled")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physics2DServerAreaSetShapeDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetShapeTransform(area: RID; shapeIdx: int64; transform: Transform2D) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetShapeTransformMethodBind):
    physics2DServerAreaSetShapeTransformMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_shape_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  physics2DServerAreaSetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetSpace(area: RID; space: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetSpaceMethodBind):
    physics2DServerAreaSetSpaceMethodBind = getMethod(cstring"Physics2DServer",
        cstring"area_set_space")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(space)
  var ptrCallRet: pointer
  physics2DServerAreaSetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetSpaceOverrideMode(area: RID; mode: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetSpaceOverrideModeMethodBind):
    physics2DServerAreaSetSpaceOverrideModeMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_space_override_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  physics2DServerAreaSetSpaceOverrideModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerAreaSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaSetTransform(area: RID; transform: Transform2D) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerAreaSetTransformMethodBind):
    physics2DServerAreaSetTransformMethodBind = getMethod(
        cstring"Physics2DServer", cstring"area_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(area)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  physics2DServerAreaSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyAddCentralForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddCentralForce(body: RID; force: Vector2) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyAddCentralForceMethodBind):
    physics2DServerBodyAddCentralForceMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_add_central_force")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(force)
  var ptrCallRet: pointer
  physics2DServerBodyAddCentralForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyAddCollisionExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddCollisionException(body: RID; exceptedBody: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyAddCollisionExceptionMethodBind):
    physics2DServerBodyAddCollisionExceptionMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_add_collision_exception")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(exceptedBody)
  var ptrCallRet: pointer
  physics2DServerBodyAddCollisionExceptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyAddForceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddForce(body: RID; offset: Vector2; force: Vector2) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyAddForceMethodBind):
    physics2DServerBodyAddForceMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_add_force")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  argsToPassToGodot[][2] = unsafeAddr(force)
  var ptrCallRet: pointer
  physics2DServerBodyAddForceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyAddShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddShape(body: RID; shape: RID; transform: Transform2D = initTransform2D(
    vec2(1.0, 0.0), vec2(0.0, 1.0), vec2(0.0, 0.0)); disabled: bool = false) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyAddShapeMethodBind):
    physics2DServerBodyAddShapeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_add_shape")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shape)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  argsToPassToGodot[][3] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physics2DServerBodyAddShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyAddTorqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAddTorque(body: RID; torque: float64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyAddTorqueMethodBind):
    physics2DServerBodyAddTorqueMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_add_torque")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(torque)
  var ptrCallRet: pointer
  physics2DServerBodyAddTorqueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyApplyCentralImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyApplyCentralImpulse(body: RID; impulse: Vector2) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyApplyCentralImpulseMethodBind):
    physics2DServerBodyApplyCentralImpulseMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_apply_central_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physics2DServerBodyApplyCentralImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyApplyImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyApplyImpulse(body: RID; position: Vector2; impulse: Vector2) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyApplyImpulseMethodBind):
    physics2DServerBodyApplyImpulseMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_apply_impulse")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(position)
  argsToPassToGodot[][2] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physics2DServerBodyApplyImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyApplyTorqueImpulseMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyApplyTorqueImpulse(body: RID; impulse: float64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyApplyTorqueImpulseMethodBind):
    physics2DServerBodyApplyTorqueImpulseMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_apply_torque_impulse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(impulse)
  var ptrCallRet: pointer
  physics2DServerBodyApplyTorqueImpulseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyAttachCanvasInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAttachCanvasInstanceId(body: RID; id: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyAttachCanvasInstanceIdMethodBind):
    physics2DServerBodyAttachCanvasInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_attach_canvas_instance_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  physics2DServerBodyAttachCanvasInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyAttachObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyAttachObjectInstanceId(body: RID; id: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyAttachObjectInstanceIdMethodBind):
    physics2DServerBodyAttachObjectInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_attach_object_instance_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  physics2DServerBodyAttachObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyClearShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyClearShapes(body: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyClearShapesMethodBind):
    physics2DServerBodyClearShapesMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_clear_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  physics2DServerBodyClearShapesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyCreateMethodBind):
    physics2DServerBodyCreateMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physics2DServerBodyGetCanvasInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetCanvasInstanceId(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetCanvasInstanceIdMethodBind):
    physics2DServerBodyGetCanvasInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_canvas_instance_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetCanvasInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetCollisionLayer(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetCollisionLayerMethodBind):
    physics2DServerBodyGetCollisionLayerMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetCollisionMask(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetCollisionMaskMethodBind):
    physics2DServerBodyGetCollisionMaskMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetContinuousCollisionDetectionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetContinuousCollisionDetectionMode(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetContinuousCollisionDetectionModeMethodBind):
    physics2DServerBodyGetContinuousCollisionDetectionModeMethodBind = getMethod(
        cstring"Physics2DServer",
        cstring"body_get_continuous_collision_detection_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetContinuousCollisionDetectionModeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetDirectStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetDirectState(body: RID): Physics2DDirectBodyState =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetDirectStateMethodBind):
    physics2DServerBodyGetDirectStateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_direct_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physics2DServerBodyGetDirectStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physics2DServerBodyGetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetMaxContactsReported(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetMaxContactsReportedMethodBind):
    physics2DServerBodyGetMaxContactsReportedMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_max_contacts_reported")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetMaxContactsReportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetMode(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetModeMethodBind):
    physics2DServerBodyGetModeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_get_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetObjectInstanceId(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetObjectInstanceIdMethodBind):
    physics2DServerBodyGetObjectInstanceIdMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_object_instance_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetParam(body: RID; param: int64): float64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetParamMethodBind):
    physics2DServerBodyGetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetShape(body: RID; shapeIdx: int64): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetShapeMethodBind):
    physics2DServerBodyGetShapeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_get_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetShapeCount(body: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetShapeCountMethodBind):
    physics2DServerBodyGetShapeCountMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetShapeMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetShapeMetadata(body: RID; shapeIdx: int64): Variant =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetShapeMetadataMethodBind):
    physics2DServerBodyGetShapeMetadataMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_shape_metadata")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physics2DServerBodyGetShapeMetadataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physics2DServerBodyGetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetShapeTransform(body: RID; shapeIdx: int64): Transform2D =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetShapeTransformMethodBind):
    physics2DServerBodyGetShapeTransformMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_get_shape_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetSpace(body: RID): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetSpaceMethodBind):
    physics2DServerBodyGetSpaceMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_get_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyGetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyGetStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyGetState(body: RID; state: int64): Variant =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyGetStateMethodBind):
    physics2DServerBodyGetStateMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_get_state")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(state)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physics2DServerBodyGetStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physics2DServerBodyIsOmittingForceIntegrationMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyIsOmittingForceIntegration(body: RID): bool =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyIsOmittingForceIntegrationMethodBind):
    physics2DServerBodyIsOmittingForceIntegrationMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_is_omitting_force_integration")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyIsOmittingForceIntegrationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DServerBodyRemoveCollisionExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyRemoveCollisionException(body: RID; exceptedBody: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyRemoveCollisionExceptionMethodBind):
    physics2DServerBodyRemoveCollisionExceptionMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_remove_collision_exception")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(exceptedBody)
  var ptrCallRet: pointer
  physics2DServerBodyRemoveCollisionExceptionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DServerBodyRemoveShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyRemoveShape(body: RID; shapeIdx: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyRemoveShapeMethodBind):
    physics2DServerBodyRemoveShapeMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_remove_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  physics2DServerBodyRemoveShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetAxisVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetAxisVelocity(body: RID; axisVelocity: Vector2) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetAxisVelocityMethodBind):
    physics2DServerBodySetAxisVelocityMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_axis_velocity")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(axisVelocity)
  var ptrCallRet: pointer
  physics2DServerBodySetAxisVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetCollisionLayer(body: RID; layer: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetCollisionLayerMethodBind):
    physics2DServerBodySetCollisionLayerMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_collision_layer")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(layer)
  var ptrCallRet: pointer
  physics2DServerBodySetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetCollisionMask(body: RID; mask: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetCollisionMaskMethodBind):
    physics2DServerBodySetCollisionMaskMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_collision_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  physics2DServerBodySetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetContinuousCollisionDetectionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetContinuousCollisionDetectionMode(body: RID; mode: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetContinuousCollisionDetectionModeMethodBind):
    physics2DServerBodySetContinuousCollisionDetectionModeMethodBind = getMethod(
        cstring"Physics2DServer",
        cstring"body_set_continuous_collision_detection_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  physics2DServerBodySetContinuousCollisionDetectionModeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetForceIntegrationCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetForceIntegrationCallback(body: RID; receiver: Object; methodd: string;
                                    userdata: Variant = newVariant()) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetForceIntegrationCallbackMethodBind):
    physics2DServerBodySetForceIntegrationCallbackMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_force_integration_callback")
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
  physics2DServerBodySetForceIntegrationCallbackMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var physics2DServerBodySetMaxContactsReportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetMaxContactsReported(body: RID; amount: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetMaxContactsReportedMethodBind):
    physics2DServerBodySetMaxContactsReportedMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_max_contacts_reported")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(amount)
  var ptrCallRet: pointer
  physics2DServerBodySetMaxContactsReportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetMode(body: RID; mode: int64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetModeMethodBind):
    physics2DServerBodySetModeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_set_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  physics2DServerBodySetModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetOmitForceIntegrationMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetOmitForceIntegration(body: RID; enable: bool) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetOmitForceIntegrationMethodBind):
    physics2DServerBodySetOmitForceIntegrationMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_omit_force_integration")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  physics2DServerBodySetOmitForceIntegrationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetParam(body: RID; param: int64; value: float64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetParamMethodBind):
    physics2DServerBodySetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physics2DServerBodySetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShape(body: RID; shapeIdx: int64; shape: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetShapeMethodBind):
    physics2DServerBodySetShapeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_set_shape")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(shape)
  var ptrCallRet: pointer
  physics2DServerBodySetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetShapeAsOneWayCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShapeAsOneWayCollision(body: RID; shapeIdx: int64; enable: bool;
                                  margin: float64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetShapeAsOneWayCollisionMethodBind):
    physics2DServerBodySetShapeAsOneWayCollisionMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_shape_as_one_way_collision")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(enable)
  argsToPassToGodot[][3] = unsafeAddr(margin)
  var ptrCallRet: pointer
  physics2DServerBodySetShapeAsOneWayCollisionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetShapeDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShapeDisabled(body: RID; shapeIdx: int64; disabled: bool) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetShapeDisabledMethodBind):
    physics2DServerBodySetShapeDisabledMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_shape_disabled")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  physics2DServerBodySetShapeDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetShapeMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShapeMetadata(body: RID; shapeIdx: int64; metadata: Variant) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetShapeMetadataMethodBind):
    physics2DServerBodySetShapeMetadataMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_shape_metadata")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = metadata.godotVariant
  var ptrCallRet: pointer
  physics2DServerBodySetShapeMetadataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetShapeTransform(body: RID; shapeIdx: int64; transform: Transform2D) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetShapeTransformMethodBind):
    physics2DServerBodySetShapeTransformMethodBind = getMethod(
        cstring"Physics2DServer", cstring"body_set_shape_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(shapeIdx)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  physics2DServerBodySetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetSpace(body: RID; space: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetSpaceMethodBind):
    physics2DServerBodySetSpaceMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_set_space")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(space)
  var ptrCallRet: pointer
  physics2DServerBodySetSpaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodySetStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySetState(body: RID; state: int64; value: Variant) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodySetStateMethodBind):
    physics2DServerBodySetStateMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_set_state")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(state)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  physics2DServerBodySetStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerBodyTestMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodyTestMotion(body: RID; fromm: Transform2D; motion: Vector2;
                   infiniteInertia: bool; margin: float64 = 0.08;
                   resultVal: Physics2DTestMotionResult = nil): bool =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerBodyTestMotionMethodBind):
    physics2DServerBodyTestMotionMethodBind = getMethod(cstring"Physics2DServer",
        cstring"body_test_motion")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(body)
  argsToPassToGodot[][1] = unsafeAddr(fromm)
  argsToPassToGodot[][2] = unsafeAddr(motion)
  argsToPassToGodot[][3] = unsafeAddr(infiniteInertia)
  argsToPassToGodot[][4] = unsafeAddr(margin)
  let argToPassToGodot5 = if not resultVal.isNil:
    resultVal.godotObject
  else:
    nil
  argsToPassToGodot[][5] = argToPassToGodot5
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerBodyTestMotionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerCapsuleShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc capsuleShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerCapsuleShapeCreateMethodBind):
    physics2DServerCapsuleShapeCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"capsule_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerCapsuleShapeCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DServerCircleShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc circleShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerCircleShapeCreateMethodBind):
    physics2DServerCircleShapeCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"circle_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerCircleShapeCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DServerConcavePolygonShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc concavePolygonShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerConcavePolygonShapeCreateMethodBind):
    physics2DServerConcavePolygonShapeCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"concave_polygon_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerConcavePolygonShapeCreateMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DServerConvexPolygonShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc convexPolygonShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerConvexPolygonShapeCreateMethodBind):
    physics2DServerConvexPolygonShapeCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"convex_polygon_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerConvexPolygonShapeCreateMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DServerDampedSpringJointCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc dampedSpringJointCreate(anchorA: Vector2; anchorB: Vector2; bodyA: RID;
                            bodyB: RID = initRID()): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerDampedSpringJointCreateMethodBind):
    physics2DServerDampedSpringJointCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"damped_spring_joint_create")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(anchorA)
  argsToPassToGodot[][1] = unsafeAddr(anchorB)
  argsToPassToGodot[][2] = unsafeAddr(bodyA)
  argsToPassToGodot[][3] = unsafeAddr(bodyB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerDampedSpringJointCreateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerDampedStringJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc dampedStringJointGetParam(joint: RID; param: int64): float64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerDampedStringJointGetParamMethodBind):
    physics2DServerDampedStringJointGetParamMethodBind = getMethod(
        cstring"Physics2DServer", cstring"damped_string_joint_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerDampedStringJointGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerDampedStringJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc dampedStringJointSetParam(joint: RID; param: int64; value: float64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerDampedStringJointSetParamMethodBind):
    physics2DServerDampedStringJointSetParamMethodBind = getMethod(
        cstring"Physics2DServer", cstring"damped_string_joint_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physics2DServerDampedStringJointSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerFreeRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc freeRid(rid: RID) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerFreeRidMethodBind):
    physics2DServerFreeRidMethodBind = getMethod(cstring"Physics2DServer",
        cstring"free_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  physics2DServerFreeRidMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DServerGetProcessInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProcessInfo(processInfo: int64): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerGetProcessInfoMethodBind):
    physics2DServerGetProcessInfoMethodBind = getMethod(cstring"Physics2DServer",
        cstring"get_process_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(processInfo)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerGetProcessInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerGrooveJointCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc grooveJointCreate(groove1A: Vector2; groove2A: Vector2; anchorB: Vector2;
                      bodyA: RID = initRID(); bodyB: RID = initRID()): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerGrooveJointCreateMethodBind):
    physics2DServerGrooveJointCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"groove_joint_create")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(groove1A)
  argsToPassToGodot[][1] = unsafeAddr(groove2A)
  argsToPassToGodot[][2] = unsafeAddr(anchorB)
  argsToPassToGodot[][3] = unsafeAddr(bodyA)
  argsToPassToGodot[][4] = unsafeAddr(bodyB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerGrooveJointCreateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointGetParam(joint: RID; param: int64): float64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerJointGetParamMethodBind):
    physics2DServerJointGetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"joint_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerJointGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerJointGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointGetType(joint: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerJointGetTypeMethodBind):
    physics2DServerJointGetTypeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"joint_get_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerJointGetTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointSetParam(joint: RID; param: int64; value: float64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerJointSetParamMethodBind):
    physics2DServerJointSetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"joint_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joint)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physics2DServerJointSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerLineShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc lineShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerLineShapeCreateMethodBind):
    physics2DServerLineShapeCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"line_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerLineShapeCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DServerPinJointCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc pinJointCreate(anchor: Vector2; bodyA: RID; bodyB: RID = initRID()): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerPinJointCreateMethodBind):
    physics2DServerPinJointCreateMethodBind = getMethod(cstring"Physics2DServer",
        cstring"pin_joint_create")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(anchor)
  argsToPassToGodot[][1] = unsafeAddr(bodyA)
  argsToPassToGodot[][2] = unsafeAddr(bodyB)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerPinJointCreateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerRayShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc rayShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerRayShapeCreateMethodBind):
    physics2DServerRayShapeCreateMethodBind = getMethod(cstring"Physics2DServer",
        cstring"ray_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerRayShapeCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DServerRectangleShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectangleShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerRectangleShapeCreateMethodBind):
    physics2DServerRectangleShapeCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"rectangle_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerRectangleShapeCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DServerSegmentShapeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc segmentShapeCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSegmentShapeCreateMethodBind):
    physics2DServerSegmentShapeCreateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"segment_shape_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerSegmentShapeCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DServerSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc setActive(active: bool) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSetActiveMethodBind):
    physics2DServerSetActiveMethodBind = getMethod(cstring"Physics2DServer",
        cstring"set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(active)
  var ptrCallRet: pointer
  physics2DServerSetActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physics2DServerShapeGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeGetData(shape: RID): Variant =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerShapeGetDataMethodBind):
    physics2DServerShapeGetDataMethodBind = getMethod(cstring"Physics2DServer",
        cstring"shape_get_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shape)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  physics2DServerShapeGetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var physics2DServerShapeGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeGetType(shape: RID): int64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerShapeGetTypeMethodBind):
    physics2DServerShapeGetTypeMethodBind = getMethod(cstring"Physics2DServer",
        cstring"shape_get_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shape)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerShapeGetTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerShapeSetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeSetData(shape: RID; data: Variant) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerShapeSetDataMethodBind):
    physics2DServerShapeSetDataMethodBind = getMethod(cstring"Physics2DServer",
        cstring"shape_set_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shape)
  argsToPassToGodot[][1] = data.godotVariant
  var ptrCallRet: pointer
  physics2DServerShapeSetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerSpaceCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceCreate(): RID =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSpaceCreateMethodBind):
    physics2DServerSpaceCreateMethodBind = getMethod(cstring"Physics2DServer",
        cstring"space_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerSpaceCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physics2DServerSpaceGetDirectStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceGetDirectState(space: RID): Physics2DDirectSpaceState =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSpaceGetDirectStateMethodBind):
    physics2DServerSpaceGetDirectStateMethodBind = getMethod(
        cstring"Physics2DServer", cstring"space_get_direct_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physics2DServerSpaceGetDirectStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physics2DServerSpaceGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceGetParam(space: RID; param: int64): float64 =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSpaceGetParamMethodBind):
    physics2DServerSpaceGetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"space_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  argsToPassToGodot[][1] = unsafeAddr(param)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerSpaceGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerSpaceIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceIsActive(space: RID): bool =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSpaceIsActiveMethodBind):
    physics2DServerSpaceIsActiveMethodBind = getMethod(cstring"Physics2DServer",
        cstring"space_is_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DServerSpaceIsActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerSpaceSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceSetActive(space: RID; active: bool) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSpaceSetActiveMethodBind):
    physics2DServerSpaceSetActiveMethodBind = getMethod(cstring"Physics2DServer",
        cstring"space_set_active")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  argsToPassToGodot[][1] = unsafeAddr(active)
  var ptrCallRet: pointer
  physics2DServerSpaceSetActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DServerSpaceSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceSetParam(space: RID; param: int64; value: float64) =
  if isNil(singletonPhysics2DServer):
    singletonPhysics2DServer = getSingleton[Physics2DServer]()
  let self = singletonPhysics2DServer
  if isNil(physics2DServerSpaceSetParamMethodBind):
    physics2DServerSpaceSetParamMethodBind = getMethod(cstring"Physics2DServer",
        cstring"space_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(space)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  physics2DServerSpaceSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
