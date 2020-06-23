
import
  godot, godottypes, godotinternal, geometry_instance

export
  godottypes, geometry_instance

const
  DRAW_ORDER_INDEX* = 0'i64
  DRAW_ORDER_LIFETIME* = 1'i64
  DRAW_ORDER_VIEW_DEPTH* = 2'i64
  EMISSION_SHAPE_BOX* = 2'i64
  EMISSION_SHAPE_DIRECTED_POINTS* = 4'i64
  EMISSION_SHAPE_MAX* = 5'i64
  EMISSION_SHAPE_POINT* = 0'i64
  EMISSION_SHAPE_POINTS* = 3'i64
  EMISSION_SHAPE_SPHERE* = 1'i64
  FLAG_ALIGN_Y_TO_VELOCITY* = 0'i64
  FLAG_DISABLE_Z* = 2'i64
  FLAG_MAX* = 3'i64
  FLAG_ROTATE_Y* = 1'i64
  PARAM_ANGLE* = 7'i64
  PARAM_ANGULAR_VELOCITY* = 1'i64
  PARAM_ANIM_OFFSET* = 11'i64
  PARAM_ANIM_SPEED* = 10'i64
  PARAM_DAMPING* = 6'i64
  PARAM_HUE_VARIATION* = 9'i64
  PARAM_INITIAL_LINEAR_VELOCITY* = 0'i64
  PARAM_LINEAR_ACCEL* = 3'i64
  PARAM_MAX* = 12'i64
  PARAM_ORBIT_VELOCITY* = 2'i64
  PARAM_RADIAL_ACCEL* = 4'i64
  PARAM_SCALE* = 8'i64
  PARAM_TANGENTIAL_ACCEL* = 5'i64
proc amount*(self: CPUParticles): int64 {.gcsafe, locks: 0.}
proc `amount=`*(self: CPUParticles; val: int64) {.gcsafe, locks: 0.}
proc angle*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `angle=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc angleCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `angleCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc angleRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `angleRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc angularVelocity*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `angularVelocity=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc angularVelocityCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `angularVelocityCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc angularVelocityRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `angularVelocityRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc animOffset*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `animOffset=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc animOffsetCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `animOffsetCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc animOffsetRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `animOffsetRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc animSpeed*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `animSpeed=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc animSpeedCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `animSpeedCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc animSpeedRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `animSpeedRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc color*(self: CPUParticles): Color {.gcsafe, locks: 0.}
proc `color=`*(self: CPUParticles; val: Color) {.gcsafe, locks: 0.}
proc colorRamp*(self: CPUParticles): Gradient {.gcsafe, locks: 0.}
proc `colorRamp=`*(self: CPUParticles; val: Gradient) {.gcsafe, locks: 0.}
proc damping*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `damping=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc dampingCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `dampingCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc dampingRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `dampingRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc direction*(self: CPUParticles): Vector3 {.gcsafe, locks: 0.}
proc `direction=`*(self: CPUParticles; val: Vector3) {.gcsafe, locks: 0.}
proc drawOrder*(self: CPUParticles): int64 {.gcsafe, locks: 0.}
proc `drawOrder=`*(self: CPUParticles; val: int64) {.gcsafe, locks: 0.}
proc emissionBoxExtents*(self: CPUParticles): Vector3 {.gcsafe, locks: 0.}
proc `emissionBoxExtents=`*(self: CPUParticles; val: Vector3) {.gcsafe, locks: 0.}
proc emissionColors*(self: CPUParticles): PoolColorArray {.gcsafe, locks: 0.}
proc `emissionColors=`*(self: CPUParticles; val: PoolColorArray) {.gcsafe, locks: 0.}
proc emissionNormals*(self: CPUParticles): PoolVector3Array {.gcsafe, locks: 0.}
proc `emissionNormals=`*(self: CPUParticles; val: PoolVector3Array) {.gcsafe, locks: 0.}
proc emissionPoints*(self: CPUParticles): PoolVector3Array {.gcsafe, locks: 0.}
proc `emissionPoints=`*(self: CPUParticles; val: PoolVector3Array) {.gcsafe, locks: 0.}
proc emissionShape*(self: CPUParticles): int64 {.gcsafe, locks: 0.}
proc `emissionShape=`*(self: CPUParticles; val: int64) {.gcsafe, locks: 0.}
proc emissionSphereRadius*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `emissionSphereRadius=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc emitting*(self: CPUParticles): bool {.gcsafe, locks: 0.}
proc `emitting=`*(self: CPUParticles; val: bool) {.gcsafe, locks: 0.}
proc explosiveness*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `explosiveness=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc fixedFps*(self: CPUParticles): int64 {.gcsafe, locks: 0.}
proc `fixedFps=`*(self: CPUParticles; val: int64) {.gcsafe, locks: 0.}
proc flagAlignY*(self: CPUParticles): bool {.gcsafe, locks: 0.}
proc `flagAlignY=`*(self: CPUParticles; val: bool) {.gcsafe, locks: 0.}
proc flagDisableZ*(self: CPUParticles): bool {.gcsafe, locks: 0.}
proc `flagDisableZ=`*(self: CPUParticles; val: bool) {.gcsafe, locks: 0.}
proc flagRotateY*(self: CPUParticles): bool {.gcsafe, locks: 0.}
proc `flagRotateY=`*(self: CPUParticles; val: bool) {.gcsafe, locks: 0.}
proc flatness*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `flatness=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc fractDelta*(self: CPUParticles): bool {.gcsafe, locks: 0.}
proc `fractDelta=`*(self: CPUParticles; val: bool) {.gcsafe, locks: 0.}
proc gravity*(self: CPUParticles): Vector3 {.gcsafe, locks: 0.}
proc `gravity=`*(self: CPUParticles; val: Vector3) {.gcsafe, locks: 0.}
proc hueVariation*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `hueVariation=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc hueVariationCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `hueVariationCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc hueVariationRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `hueVariationRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc initialVelocity*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `initialVelocity=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc initialVelocityRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `initialVelocityRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc lifetime*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `lifetime=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc lifetimeRandomness*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `lifetimeRandomness=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc linearAccel*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `linearAccel=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc linearAccelCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `linearAccelCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc linearAccelRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `linearAccelRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc localCoords*(self: CPUParticles): bool {.gcsafe, locks: 0.}
proc `localCoords=`*(self: CPUParticles; val: bool) {.gcsafe, locks: 0.}
proc mesh*(self: CPUParticles): Mesh {.gcsafe, locks: 0.}
proc `mesh=`*(self: CPUParticles; val: Mesh) {.gcsafe, locks: 0.}
proc oneShot*(self: CPUParticles): bool {.gcsafe, locks: 0.}
proc `oneShot=`*(self: CPUParticles; val: bool) {.gcsafe, locks: 0.}
proc orbitVelocity*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `orbitVelocity=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc orbitVelocityCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `orbitVelocityCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc orbitVelocityRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `orbitVelocityRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc preprocess*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `preprocess=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc radialAccel*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `radialAccel=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc radialAccelCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `radialAccelCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc radialAccelRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `radialAccelRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc randomness*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `randomness=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc scaleAmount*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `scaleAmount=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc scaleAmountCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `scaleAmountCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc scaleAmountRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `scaleAmountRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc speedScale*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `speedScale=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc spread*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `spread=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc tangentialAccel*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `tangentialAccel=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
proc tangentialAccelCurve*(self: CPUParticles): Curve {.gcsafe, locks: 0.}
proc `tangentialAccelCurve=`*(self: CPUParticles; val: Curve) {.gcsafe, locks: 0.}
proc tangentialAccelRandom*(self: CPUParticles): float64 {.gcsafe, locks: 0.}
proc `tangentialAccelRandom=`*(self: CPUParticles; val: float64) {.gcsafe, locks: 0.}
method updateRenderThread*(self: CPUParticles) {.gcsafe, locks: 0, base.}
proc convertFromParticles*(self: CPUParticles; particles: Node) {.gcsafe, locks: 0.}
proc restart*(self: CPUParticles) {.gcsafe, locks: 0.}
var cPUParticlesGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc amount(self: CPUParticles): int64 =
  if isNil(cPUParticlesGetAmountMethodBind):
    cPUParticlesGetAmountMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetAmountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `amount=`(self: CPUParticles; val: int64) =
  if isNil(cPUParticlesSetAmountMethodBind):
    cPUParticlesSetAmountMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetAmountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc angle(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angle=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetParamCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc angleCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cPUParticlesSetParamCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angleCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetParamRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc angleRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesSetParamRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angleRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularVelocity(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularVelocity=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularVelocityCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `angularVelocityCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularVelocityRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularVelocityRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animOffset(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `animOffset=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc animOffsetCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `animOffsetCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animOffsetRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animOffsetRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animSpeed(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `animSpeed=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc animSpeedCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `animSpeedCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animSpeedRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animSpeedRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: CPUParticles): Color =
  if isNil(cPUParticlesGetColorMethodBind):
    cPUParticlesGetColorMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: CPUParticles; val: Color) =
  if isNil(cPUParticlesSetColorMethodBind):
    cPUParticlesSetColorMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetColorRampMethodBind {.threadvar.}: ptr GodotMethodBind
proc colorRamp(self: CPUParticles): Gradient =
  if isNil(cPUParticlesGetColorRampMethodBind):
    cPUParticlesGetColorRampMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_color_ramp")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetColorRampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cPUParticlesSetColorRampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `colorRamp=`(self: CPUParticles; val: Gradient) =
  if isNil(cPUParticlesSetColorRampMethodBind):
    cPUParticlesSetColorRampMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_color_ramp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cPUParticlesSetColorRampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc damping(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `damping=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc dampingCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `dampingCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc dampingRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `dampingRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc direction(self: CPUParticles): Vector3 =
  if isNil(cPUParticlesGetDirectionMethodBind):
    cPUParticlesGetDirectionMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_direction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetDirectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `direction=`(self: CPUParticles; val: Vector3) =
  if isNil(cPUParticlesSetDirectionMethodBind):
    cPUParticlesSetDirectionMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_direction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetDirectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawOrder(self: CPUParticles): int64 =
  if isNil(cPUParticlesGetDrawOrderMethodBind):
    cPUParticlesGetDrawOrderMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_draw_order")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetDrawOrderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawOrder=`(self: CPUParticles; val: int64) =
  if isNil(cPUParticlesSetDrawOrderMethodBind):
    cPUParticlesSetDrawOrderMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_draw_order")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetDrawOrderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetEmissionBoxExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionBoxExtents(self: CPUParticles): Vector3 =
  if isNil(cPUParticlesGetEmissionBoxExtentsMethodBind):
    cPUParticlesGetEmissionBoxExtentsMethodBind = getMethod(
        cstring"CPUParticles", cstring"get_emission_box_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetEmissionBoxExtentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetEmissionBoxExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionBoxExtents=`(self: CPUParticles; val: Vector3) =
  if isNil(cPUParticlesSetEmissionBoxExtentsMethodBind):
    cPUParticlesSetEmissionBoxExtentsMethodBind = getMethod(
        cstring"CPUParticles", cstring"set_emission_box_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetEmissionBoxExtentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetEmissionColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionColors(self: CPUParticles): PoolColorArray =
  if isNil(cPUParticlesGetEmissionColorsMethodBind):
    cPUParticlesGetEmissionColorsMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_emission_colors")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolColorArray
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetEmissionColorsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolColorArray(ptrCallVal)

var cPUParticlesSetEmissionColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionColors=`(self: CPUParticles; val: PoolColorArray) =
  if isNil(cPUParticlesSetEmissionColorsMethodBind):
    cPUParticlesSetEmissionColorsMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_emission_colors")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolColorArray
  var ptrCallRet: pointer
  cPUParticlesSetEmissionColorsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetEmissionNormalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionNormals(self: CPUParticles): PoolVector3Array =
  if isNil(cPUParticlesGetEmissionNormalsMethodBind):
    cPUParticlesGetEmissionNormalsMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_emission_normals")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetEmissionNormalsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var cPUParticlesSetEmissionNormalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionNormals=`(self: CPUParticles; val: PoolVector3Array) =
  if isNil(cPUParticlesSetEmissionNormalsMethodBind):
    cPUParticlesSetEmissionNormalsMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_emission_normals")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  cPUParticlesSetEmissionNormalsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetEmissionPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionPoints(self: CPUParticles): PoolVector3Array =
  if isNil(cPUParticlesGetEmissionPointsMethodBind):
    cPUParticlesGetEmissionPointsMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_emission_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetEmissionPointsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var cPUParticlesSetEmissionPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionPoints=`(self: CPUParticles; val: PoolVector3Array) =
  if isNil(cPUParticlesSetEmissionPointsMethodBind):
    cPUParticlesSetEmissionPointsMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_emission_points")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  cPUParticlesSetEmissionPointsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetEmissionShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionShape(self: CPUParticles): int64 =
  if isNil(cPUParticlesGetEmissionShapeMethodBind):
    cPUParticlesGetEmissionShapeMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_emission_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetEmissionShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetEmissionShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionShape=`(self: CPUParticles; val: int64) =
  if isNil(cPUParticlesSetEmissionShapeMethodBind):
    cPUParticlesSetEmissionShapeMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_emission_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetEmissionShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetEmissionSphereRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionSphereRadius(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetEmissionSphereRadiusMethodBind):
    cPUParticlesGetEmissionSphereRadiusMethodBind = getMethod(
        cstring"CPUParticles", cstring"get_emission_sphere_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetEmissionSphereRadiusMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetEmissionSphereRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionSphereRadius=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetEmissionSphereRadiusMethodBind):
    cPUParticlesSetEmissionSphereRadiusMethodBind = getMethod(
        cstring"CPUParticles", cstring"set_emission_sphere_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetEmissionSphereRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesIsEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc emitting(self: CPUParticles): bool =
  if isNil(cPUParticlesIsEmittingMethodBind):
    cPUParticlesIsEmittingMethodBind = getMethod(cstring"CPUParticles",
        cstring"is_emitting")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesIsEmittingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emitting=`(self: CPUParticles; val: bool) =
  if isNil(cPUParticlesSetEmittingMethodBind):
    cPUParticlesSetEmittingMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_emitting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetEmittingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc explosiveness(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetExplosivenessRatioMethodBind):
    cPUParticlesGetExplosivenessRatioMethodBind = getMethod(
        cstring"CPUParticles", cstring"get_explosiveness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetExplosivenessRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `explosiveness=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetExplosivenessRatioMethodBind):
    cPUParticlesSetExplosivenessRatioMethodBind = getMethod(
        cstring"CPUParticles", cstring"set_explosiveness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetExplosivenessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixedFps(self: CPUParticles): int64 =
  if isNil(cPUParticlesGetFixedFpsMethodBind):
    cPUParticlesGetFixedFpsMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_fixed_fps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetFixedFpsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fixedFps=`(self: CPUParticles; val: int64) =
  if isNil(cPUParticlesSetFixedFpsMethodBind):
    cPUParticlesSetFixedFpsMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_fixed_fps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetFixedFpsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetParticleFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc flagAlignY(self: CPUParticles): bool =
  if isNil(cPUParticlesGetParticleFlagMethodBind):
    cPUParticlesGetParticleFlagMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_particle_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesSetParticleFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flagAlignY=`(self: CPUParticles; val: bool) =
  if isNil(cPUParticlesSetParticleFlagMethodBind):
    cPUParticlesSetParticleFlagMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_particle_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc flagDisableZ(self: CPUParticles): bool =
  if isNil(cPUParticlesGetParticleFlagMethodBind):
    cPUParticlesGetParticleFlagMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_particle_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `flagDisableZ=`(self: CPUParticles; val: bool) =
  if isNil(cPUParticlesSetParticleFlagMethodBind):
    cPUParticlesSetParticleFlagMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_particle_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc flagRotateY(self: CPUParticles): bool =
  if isNil(cPUParticlesGetParticleFlagMethodBind):
    cPUParticlesGetParticleFlagMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_particle_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `flagRotateY=`(self: CPUParticles; val: bool) =
  if isNil(cPUParticlesSetParticleFlagMethodBind):
    cPUParticlesSetParticleFlagMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_particle_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetFlatnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc flatness(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetFlatnessMethodBind):
    cPUParticlesGetFlatnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_flatness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetFlatnessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetFlatnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flatness=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetFlatnessMethodBind):
    cPUParticlesSetFlatnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_flatness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetFlatnessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc fractDelta(self: CPUParticles): bool =
  if isNil(cPUParticlesGetFractionalDeltaMethodBind):
    cPUParticlesGetFractionalDeltaMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_fractional_delta")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetFractionalDeltaMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fractDelta=`(self: CPUParticles; val: bool) =
  if isNil(cPUParticlesSetFractionalDeltaMethodBind):
    cPUParticlesSetFractionalDeltaMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_fractional_delta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetFractionalDeltaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravity(self: CPUParticles): Vector3 =
  if isNil(cPUParticlesGetGravityMethodBind):
    cPUParticlesGetGravityMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetGravityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravity=`(self: CPUParticles; val: Vector3) =
  if isNil(cPUParticlesSetGravityMethodBind):
    cPUParticlesSetGravityMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_gravity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetGravityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc hueVariation(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `hueVariation=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc hueVariationCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `hueVariationCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc hueVariationRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `hueVariationRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc initialVelocity(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `initialVelocity=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc initialVelocityRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `initialVelocityRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lifetime(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetLifetimeMethodBind):
    cPUParticlesGetLifetimeMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_lifetime")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetLifetimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lifetime=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetLifetimeMethodBind):
    cPUParticlesSetLifetimeMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_lifetime")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetLifetimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticlesGetLifetimeRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc lifetimeRandomness(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetLifetimeRandomnessMethodBind):
    cPUParticlesGetLifetimeRandomnessMethodBind = getMethod(
        cstring"CPUParticles", cstring"get_lifetime_randomness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetLifetimeRandomnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetLifetimeRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lifetimeRandomness=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetLifetimeRandomnessMethodBind):
    cPUParticlesSetLifetimeRandomnessMethodBind = getMethod(
        cstring"CPUParticles", cstring"set_lifetime_randomness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetLifetimeRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearAccel(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearAccel=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearAccelCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `linearAccelCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearAccelRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearAccelRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc localCoords(self: CPUParticles): bool =
  if isNil(cPUParticlesGetUseLocalCoordinatesMethodBind):
    cPUParticlesGetUseLocalCoordinatesMethodBind = getMethod(
        cstring"CPUParticles", cstring"get_use_local_coordinates")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `localCoords=`(self: CPUParticles; val: bool) =
  if isNil(cPUParticlesSetUseLocalCoordinatesMethodBind):
    cPUParticlesSetUseLocalCoordinatesMethodBind = getMethod(
        cstring"CPUParticles", cstring"set_use_local_coordinates")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: CPUParticles): Mesh =
  if isNil(cPUParticlesGetMeshMethodBind):
    cPUParticlesGetMeshMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cPUParticlesSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: CPUParticles; val: Mesh) =
  if isNil(cPUParticlesSetMeshMethodBind):
    cPUParticlesSetMeshMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cPUParticlesSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var cPUParticlesGetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneShot(self: CPUParticles): bool =
  if isNil(cPUParticlesGetOneShotMethodBind):
    cPUParticlesGetOneShotMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_one_shot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetOneShotMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneShot=`(self: CPUParticles; val: bool) =
  if isNil(cPUParticlesSetOneShotMethodBind):
    cPUParticlesSetOneShotMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_one_shot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetOneShotMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc orbitVelocity(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `orbitVelocity=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc orbitVelocityCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `orbitVelocityCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc orbitVelocityRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `orbitVelocityRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc preprocess(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetPreProcessTimeMethodBind):
    cPUParticlesGetPreProcessTimeMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_pre_process_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetPreProcessTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `preprocess=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetPreProcessTimeMethodBind):
    cPUParticlesSetPreProcessTimeMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_pre_process_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetPreProcessTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc radialAccel(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `radialAccel=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc radialAccelCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `radialAccelCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc radialAccelRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `radialAccelRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc randomness(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetRandomnessRatioMethodBind):
    cPUParticlesGetRandomnessRatioMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_randomness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetRandomnessRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticlesSetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `randomness=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetRandomnessRatioMethodBind):
    cPUParticlesSetRandomnessRatioMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_randomness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetRandomnessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc scaleAmount(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `scaleAmount=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc scaleAmountCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `scaleAmountCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc scaleAmountRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `scaleAmountRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc speedScale(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetSpeedScaleMethodBind):
    cPUParticlesGetSpeedScaleMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_speed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetSpeedScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speedScale=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetSpeedScaleMethodBind):
    cPUParticlesSetSpeedScaleMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_speed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetSpeedScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesGetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc spread(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetSpreadMethodBind):
    cPUParticlesGetSpreadMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_spread")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetSpreadMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticlesSetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spread=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetSpreadMethodBind):
    cPUParticlesSetSpreadMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_spread")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetSpreadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc tangentialAccel(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamMethodBind):
    cPUParticlesGetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `tangentialAccel=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamMethodBind):
    cPUParticlesSetParamMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc tangentialAccelCurve(self: CPUParticles): Curve =
  if isNil(cPUParticlesGetParamCurveMethodBind):
    cPUParticlesGetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticlesGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `tangentialAccelCurve=`(self: CPUParticles; val: Curve) =
  if isNil(cPUParticlesSetParamCurveMethodBind):
    cPUParticlesSetParamCurveMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_curve")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cPUParticlesSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc tangentialAccelRandom(self: CPUParticles): float64 =
  if isNil(cPUParticlesGetParamRandomnessMethodBind):
    cPUParticlesGetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"get_param_randomness")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticlesGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `tangentialAccelRandom=`(self: CPUParticles; val: float64) =
  if isNil(cPUParticlesSetParamRandomnessMethodBind):
    cPUParticlesSetParamRandomnessMethodBind = getMethod(cstring"CPUParticles",
        cstring"set_param_randomness")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticlesSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesUnderscoreupdateRenderThreadMethodBind {.threadvar.}: ptr GodotMethodBind
method updateRenderThread(self: CPUParticles) =
  if isNil(cPUParticlesUnderscoreupdateRenderThreadMethodBind):
    cPUParticlesUnderscoreupdateRenderThreadMethodBind = getMethod(
        cstring"CPUParticles", cstring"_update_render_thread")
  var ptrCallRet: pointer
  cPUParticlesUnderscoreupdateRenderThreadMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var cPUParticlesConvertFromParticlesMethodBind {.threadvar.}: ptr GodotMethodBind
proc convertFromParticles(self: CPUParticles; particles: Node) =
  if isNil(cPUParticlesConvertFromParticlesMethodBind):
    cPUParticlesConvertFromParticlesMethodBind = getMethod(cstring"CPUParticles",
        cstring"convert_from_particles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not particles.isNil:
    particles.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cPUParticlesConvertFromParticlesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticlesRestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc restart(self: CPUParticles) =
  if isNil(cPUParticlesRestartMethodBind):
    cPUParticlesRestartMethodBind = getMethod(cstring"CPUParticles",
        cstring"restart")
  var ptrCallRet: pointer
  cPUParticlesRestartMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
