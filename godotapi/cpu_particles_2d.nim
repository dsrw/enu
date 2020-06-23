
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  DRAW_ORDER_INDEX* = 0'i64
  DRAW_ORDER_LIFETIME* = 1'i64
  EMISSION_SHAPE_DIRECTED_POINTS* = 4'i64
  EMISSION_SHAPE_MAX* = 5'i64
  EMISSION_SHAPE_POINT* = 0'i64
  EMISSION_SHAPE_POINTS* = 3'i64
  EMISSION_SHAPE_RECTANGLE* = 2'i64
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
proc amount*(self: CPUParticles2D): int64 {.gcsafe, locks: 0.}
proc `amount=`*(self: CPUParticles2D; val: int64) {.gcsafe, locks: 0.}
proc angle*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `angle=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc angleCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `angleCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc angleRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `angleRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc angularVelocity*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `angularVelocity=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc angularVelocityCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `angularVelocityCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc angularVelocityRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `angularVelocityRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc animOffset*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `animOffset=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc animOffsetCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `animOffsetCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc animOffsetRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `animOffsetRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc animSpeed*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `animSpeed=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc animSpeedCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `animSpeedCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc animSpeedRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `animSpeedRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc color*(self: CPUParticles2D): Color {.gcsafe, locks: 0.}
proc `color=`*(self: CPUParticles2D; val: Color) {.gcsafe, locks: 0.}
proc colorRamp*(self: CPUParticles2D): Gradient {.gcsafe, locks: 0.}
proc `colorRamp=`*(self: CPUParticles2D; val: Gradient) {.gcsafe, locks: 0.}
proc damping*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `damping=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc dampingCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `dampingCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc dampingRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `dampingRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc direction*(self: CPUParticles2D): Vector2 {.gcsafe, locks: 0.}
proc `direction=`*(self: CPUParticles2D; val: Vector2) {.gcsafe, locks: 0.}
proc drawOrder*(self: CPUParticles2D): int64 {.gcsafe, locks: 0.}
proc `drawOrder=`*(self: CPUParticles2D; val: int64) {.gcsafe, locks: 0.}
proc emissionColors*(self: CPUParticles2D): PoolColorArray {.gcsafe, locks: 0.}
proc `emissionColors=`*(self: CPUParticles2D; val: PoolColorArray) {.gcsafe, locks: 0.}
proc emissionNormals*(self: CPUParticles2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `emissionNormals=`*(self: CPUParticles2D; val: PoolVector2Array) {.gcsafe,
    locks: 0.}
proc emissionPoints*(self: CPUParticles2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `emissionPoints=`*(self: CPUParticles2D; val: PoolVector2Array) {.gcsafe,
    locks: 0.}
proc emissionRectExtents*(self: CPUParticles2D): Vector2 {.gcsafe, locks: 0.}
proc `emissionRectExtents=`*(self: CPUParticles2D; val: Vector2) {.gcsafe, locks: 0.}
proc emissionShape*(self: CPUParticles2D): int64 {.gcsafe, locks: 0.}
proc `emissionShape=`*(self: CPUParticles2D; val: int64) {.gcsafe, locks: 0.}
proc emissionSphereRadius*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `emissionSphereRadius=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc emitting*(self: CPUParticles2D): bool {.gcsafe, locks: 0.}
proc `emitting=`*(self: CPUParticles2D; val: bool) {.gcsafe, locks: 0.}
proc explosiveness*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `explosiveness=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc fixedFps*(self: CPUParticles2D): int64 {.gcsafe, locks: 0.}
proc `fixedFps=`*(self: CPUParticles2D; val: int64) {.gcsafe, locks: 0.}
proc flagAlignY*(self: CPUParticles2D): bool {.gcsafe, locks: 0.}
proc `flagAlignY=`*(self: CPUParticles2D; val: bool) {.gcsafe, locks: 0.}
proc fractDelta*(self: CPUParticles2D): bool {.gcsafe, locks: 0.}
proc `fractDelta=`*(self: CPUParticles2D; val: bool) {.gcsafe, locks: 0.}
proc gravity*(self: CPUParticles2D): Vector2 {.gcsafe, locks: 0.}
proc `gravity=`*(self: CPUParticles2D; val: Vector2) {.gcsafe, locks: 0.}
proc hueVariation*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `hueVariation=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc hueVariationCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `hueVariationCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc hueVariationRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `hueVariationRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc initialVelocity*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `initialVelocity=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc initialVelocityRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `initialVelocityRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc lifetime*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `lifetime=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc lifetimeRandomness*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `lifetimeRandomness=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc linearAccel*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `linearAccel=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc linearAccelCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `linearAccelCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc linearAccelRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `linearAccelRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc localCoords*(self: CPUParticles2D): bool {.gcsafe, locks: 0.}
proc `localCoords=`*(self: CPUParticles2D; val: bool) {.gcsafe, locks: 0.}
proc normalmap*(self: CPUParticles2D): Texture {.gcsafe, locks: 0.}
proc `normalmap=`*(self: CPUParticles2D; val: Texture) {.gcsafe, locks: 0.}
proc oneShot*(self: CPUParticles2D): bool {.gcsafe, locks: 0.}
proc `oneShot=`*(self: CPUParticles2D; val: bool) {.gcsafe, locks: 0.}
proc orbitVelocity*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `orbitVelocity=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc orbitVelocityCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `orbitVelocityCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc orbitVelocityRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `orbitVelocityRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc preprocess*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `preprocess=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc radialAccel*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `radialAccel=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc radialAccelCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `radialAccelCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc radialAccelRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `radialAccelRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc randomness*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `randomness=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc scaleAmount*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `scaleAmount=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc scaleAmountCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `scaleAmountCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc scaleAmountRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `scaleAmountRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc speedScale*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `speedScale=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc spread*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `spread=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc tangentialAccel*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `tangentialAccel=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc tangentialAccelCurve*(self: CPUParticles2D): Curve {.gcsafe, locks: 0.}
proc `tangentialAccelCurve=`*(self: CPUParticles2D; val: Curve) {.gcsafe, locks: 0.}
proc tangentialAccelRandom*(self: CPUParticles2D): float64 {.gcsafe, locks: 0.}
proc `tangentialAccelRandom=`*(self: CPUParticles2D; val: float64) {.gcsafe, locks: 0.}
proc texture*(self: CPUParticles2D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: CPUParticles2D; val: Texture) {.gcsafe, locks: 0.}
method textureChanged*(self: CPUParticles2D) {.gcsafe, locks: 0, base.}
method updateRenderThread*(self: CPUParticles2D) {.gcsafe, locks: 0, base.}
proc convertFromParticles*(self: CPUParticles2D; particles: Node) {.gcsafe, locks: 0.}
proc restart*(self: CPUParticles2D) {.gcsafe, locks: 0.}
var cPUParticles2DGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc amount(self: CPUParticles2D): int64 =
  if isNil(cPUParticles2DGetAmountMethodBind):
    cPUParticles2DGetAmountMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetAmountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `amount=`(self: CPUParticles2D; val: int64) =
  if isNil(cPUParticles2DSetAmountMethodBind):
    cPUParticles2DSetAmountMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetAmountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticles2DGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc angle(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticles2DSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angle=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticles2DGetParamCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc angleCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cPUParticles2DSetParamCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angleCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetParamRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc angleRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DSetParamRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angleRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularVelocity(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularVelocity=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularVelocityCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `angularVelocityCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularVelocityRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularVelocityRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animOffset(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `animOffset=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc animOffsetCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `animOffsetCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animOffsetRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animOffsetRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animSpeed(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `animSpeed=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc animSpeedCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `animSpeedCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animSpeedRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animSpeedRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: CPUParticles2D): Color =
  if isNil(cPUParticles2DGetColorMethodBind):
    cPUParticles2DGetColorMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: CPUParticles2D; val: Color) =
  if isNil(cPUParticles2DSetColorMethodBind):
    cPUParticles2DSetColorMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticles2DGetColorRampMethodBind {.threadvar.}: ptr GodotMethodBind
proc colorRamp(self: CPUParticles2D): Gradient =
  if isNil(cPUParticles2DGetColorRampMethodBind):
    cPUParticles2DGetColorRampMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_color_ramp")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetColorRampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cPUParticles2DSetColorRampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `colorRamp=`(self: CPUParticles2D; val: Gradient) =
  if isNil(cPUParticles2DSetColorRampMethodBind):
    cPUParticles2DSetColorRampMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetColorRampMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc damping(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `damping=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc dampingCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `dampingCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc dampingRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `dampingRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc direction(self: CPUParticles2D): Vector2 =
  if isNil(cPUParticles2DGetDirectionMethodBind):
    cPUParticles2DGetDirectionMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_direction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetDirectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `direction=`(self: CPUParticles2D; val: Vector2) =
  if isNil(cPUParticles2DSetDirectionMethodBind):
    cPUParticles2DSetDirectionMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_direction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetDirectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawOrder(self: CPUParticles2D): int64 =
  if isNil(cPUParticles2DGetDrawOrderMethodBind):
    cPUParticles2DGetDrawOrderMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_draw_order")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetDrawOrderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawOrder=`(self: CPUParticles2D; val: int64) =
  if isNil(cPUParticles2DSetDrawOrderMethodBind):
    cPUParticles2DSetDrawOrderMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_draw_order")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetDrawOrderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetEmissionColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionColors(self: CPUParticles2D): PoolColorArray =
  if isNil(cPUParticles2DGetEmissionColorsMethodBind):
    cPUParticles2DGetEmissionColorsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_emission_colors")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolColorArray
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetEmissionColorsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolColorArray(ptrCallVal)

var cPUParticles2DSetEmissionColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionColors=`(self: CPUParticles2D; val: PoolColorArray) =
  if isNil(cPUParticles2DSetEmissionColorsMethodBind):
    cPUParticles2DSetEmissionColorsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_emission_colors")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolColorArray
  var ptrCallRet: pointer
  cPUParticles2DSetEmissionColorsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetEmissionNormalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionNormals(self: CPUParticles2D): PoolVector2Array =
  if isNil(cPUParticles2DGetEmissionNormalsMethodBind):
    cPUParticles2DGetEmissionNormalsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_emission_normals")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetEmissionNormalsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var cPUParticles2DSetEmissionNormalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionNormals=`(self: CPUParticles2D; val: PoolVector2Array) =
  if isNil(cPUParticles2DSetEmissionNormalsMethodBind):
    cPUParticles2DSetEmissionNormalsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_emission_normals")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  cPUParticles2DSetEmissionNormalsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetEmissionPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionPoints(self: CPUParticles2D): PoolVector2Array =
  if isNil(cPUParticles2DGetEmissionPointsMethodBind):
    cPUParticles2DGetEmissionPointsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_emission_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetEmissionPointsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var cPUParticles2DSetEmissionPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionPoints=`(self: CPUParticles2D; val: PoolVector2Array) =
  if isNil(cPUParticles2DSetEmissionPointsMethodBind):
    cPUParticles2DSetEmissionPointsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_emission_points")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  cPUParticles2DSetEmissionPointsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetEmissionRectExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionRectExtents(self: CPUParticles2D): Vector2 =
  if isNil(cPUParticles2DGetEmissionRectExtentsMethodBind):
    cPUParticles2DGetEmissionRectExtentsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_emission_rect_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetEmissionRectExtentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetEmissionRectExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionRectExtents=`(self: CPUParticles2D; val: Vector2) =
  if isNil(cPUParticles2DSetEmissionRectExtentsMethodBind):
    cPUParticles2DSetEmissionRectExtentsMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_emission_rect_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetEmissionRectExtentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetEmissionShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionShape(self: CPUParticles2D): int64 =
  if isNil(cPUParticles2DGetEmissionShapeMethodBind):
    cPUParticles2DGetEmissionShapeMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_emission_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetEmissionShapeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetEmissionShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionShape=`(self: CPUParticles2D; val: int64) =
  if isNil(cPUParticles2DSetEmissionShapeMethodBind):
    cPUParticles2DSetEmissionShapeMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_emission_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetEmissionShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetEmissionSphereRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionSphereRadius(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetEmissionSphereRadiusMethodBind):
    cPUParticles2DGetEmissionSphereRadiusMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_emission_sphere_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetEmissionSphereRadiusMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetEmissionSphereRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionSphereRadius=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetEmissionSphereRadiusMethodBind):
    cPUParticles2DSetEmissionSphereRadiusMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_emission_sphere_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetEmissionSphereRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DIsEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc emitting(self: CPUParticles2D): bool =
  if isNil(cPUParticles2DIsEmittingMethodBind):
    cPUParticles2DIsEmittingMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"is_emitting")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DIsEmittingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emitting=`(self: CPUParticles2D; val: bool) =
  if isNil(cPUParticles2DSetEmittingMethodBind):
    cPUParticles2DSetEmittingMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_emitting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetEmittingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc explosiveness(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetExplosivenessRatioMethodBind):
    cPUParticles2DGetExplosivenessRatioMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_explosiveness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetExplosivenessRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `explosiveness=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetExplosivenessRatioMethodBind):
    cPUParticles2DSetExplosivenessRatioMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_explosiveness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetExplosivenessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixedFps(self: CPUParticles2D): int64 =
  if isNil(cPUParticles2DGetFixedFpsMethodBind):
    cPUParticles2DGetFixedFpsMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_fixed_fps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetFixedFpsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fixedFps=`(self: CPUParticles2D; val: int64) =
  if isNil(cPUParticles2DSetFixedFpsMethodBind):
    cPUParticles2DSetFixedFpsMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_fixed_fps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetFixedFpsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetParticleFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc flagAlignY(self: CPUParticles2D): bool =
  if isNil(cPUParticles2DGetParticleFlagMethodBind):
    cPUParticles2DGetParticleFlagMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_particle_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DSetParticleFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flagAlignY=`(self: CPUParticles2D; val: bool) =
  if isNil(cPUParticles2DSetParticleFlagMethodBind):
    cPUParticles2DSetParticleFlagMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_particle_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParticleFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc fractDelta(self: CPUParticles2D): bool =
  if isNil(cPUParticles2DGetFractionalDeltaMethodBind):
    cPUParticles2DGetFractionalDeltaMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_fractional_delta")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetFractionalDeltaMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fractDelta=`(self: CPUParticles2D; val: bool) =
  if isNil(cPUParticles2DSetFractionalDeltaMethodBind):
    cPUParticles2DSetFractionalDeltaMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_fractional_delta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetFractionalDeltaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravity(self: CPUParticles2D): Vector2 =
  if isNil(cPUParticles2DGetGravityMethodBind):
    cPUParticles2DGetGravityMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetGravityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravity=`(self: CPUParticles2D; val: Vector2) =
  if isNil(cPUParticles2DSetGravityMethodBind):
    cPUParticles2DSetGravityMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_gravity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetGravityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc hueVariation(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `hueVariation=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc hueVariationCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `hueVariationCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc hueVariationRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `hueVariationRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc initialVelocity(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `initialVelocity=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc initialVelocityRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `initialVelocityRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lifetime(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetLifetimeMethodBind):
    cPUParticles2DGetLifetimeMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_lifetime")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetLifetimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lifetime=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetLifetimeMethodBind):
    cPUParticles2DSetLifetimeMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_lifetime")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetLifetimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetLifetimeRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc lifetimeRandomness(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetLifetimeRandomnessMethodBind):
    cPUParticles2DGetLifetimeRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_lifetime_randomness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetLifetimeRandomnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetLifetimeRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lifetimeRandomness=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetLifetimeRandomnessMethodBind):
    cPUParticles2DSetLifetimeRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_lifetime_randomness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetLifetimeRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearAccel(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearAccel=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearAccelCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `linearAccelCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearAccelRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearAccelRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc localCoords(self: CPUParticles2D): bool =
  if isNil(cPUParticles2DGetUseLocalCoordinatesMethodBind):
    cPUParticles2DGetUseLocalCoordinatesMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_use_local_coordinates")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `localCoords=`(self: CPUParticles2D; val: bool) =
  if isNil(cPUParticles2DSetUseLocalCoordinatesMethodBind):
    cPUParticles2DSetUseLocalCoordinatesMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_use_local_coordinates")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetNormalmapMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalmap(self: CPUParticles2D): Texture =
  if isNil(cPUParticles2DGetNormalmapMethodBind):
    cPUParticles2DGetNormalmapMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_normalmap")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetNormalmapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cPUParticles2DSetNormalmapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalmap=`(self: CPUParticles2D; val: Texture) =
  if isNil(cPUParticles2DSetNormalmapMethodBind):
    cPUParticles2DSetNormalmapMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_normalmap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cPUParticles2DSetNormalmapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneShot(self: CPUParticles2D): bool =
  if isNil(cPUParticles2DGetOneShotMethodBind):
    cPUParticles2DGetOneShotMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_one_shot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetOneShotMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneShot=`(self: CPUParticles2D; val: bool) =
  if isNil(cPUParticles2DSetOneShotMethodBind):
    cPUParticles2DSetOneShotMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_one_shot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetOneShotMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc orbitVelocity(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `orbitVelocity=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc orbitVelocityCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `orbitVelocityCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc orbitVelocityRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `orbitVelocityRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc preprocess(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetPreProcessTimeMethodBind):
    cPUParticles2DGetPreProcessTimeMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_pre_process_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetPreProcessTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `preprocess=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetPreProcessTimeMethodBind):
    cPUParticles2DSetPreProcessTimeMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_pre_process_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetPreProcessTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc radialAccel(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `radialAccel=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc radialAccelCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `radialAccelCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc radialAccelRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `radialAccelRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc randomness(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetRandomnessRatioMethodBind):
    cPUParticles2DGetRandomnessRatioMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_randomness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetRandomnessRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DSetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `randomness=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetRandomnessRatioMethodBind):
    cPUParticles2DSetRandomnessRatioMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_randomness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetRandomnessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc scaleAmount(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `scaleAmount=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc scaleAmountCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `scaleAmountCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc scaleAmountRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `scaleAmountRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc speedScale(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetSpeedScaleMethodBind):
    cPUParticles2DGetSpeedScaleMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_speed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetSpeedScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speedScale=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetSpeedScaleMethodBind):
    cPUParticles2DSetSpeedScaleMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_speed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetSpeedScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc spread(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetSpreadMethodBind):
    cPUParticles2DGetSpreadMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_spread")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetSpreadMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cPUParticles2DSetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spread=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetSpreadMethodBind):
    cPUParticles2DSetSpreadMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_spread")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetSpreadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc tangentialAccel(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamMethodBind):
    cPUParticles2DGetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `tangentialAccel=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamMethodBind):
    cPUParticles2DSetParamMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc tangentialAccelCurve(self: CPUParticles2D): Curve =
  if isNil(cPUParticles2DGetParamCurveMethodBind):
    cPUParticles2DGetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_param_curve")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `tangentialAccelCurve=`(self: CPUParticles2D; val: Curve) =
  if isNil(cPUParticles2DSetParamCurveMethodBind):
    cPUParticles2DSetParamCurveMethodBind = getMethod(cstring"CPUParticles2D",
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
  cPUParticles2DSetParamCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc tangentialAccelRandom(self: CPUParticles2D): float64 =
  if isNil(cPUParticles2DGetParamRandomnessMethodBind):
    cPUParticles2DGetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"get_param_randomness")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cPUParticles2DGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `tangentialAccelRandom=`(self: CPUParticles2D; val: float64) =
  if isNil(cPUParticles2DSetParamRandomnessMethodBind):
    cPUParticles2DSetParamRandomnessMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"set_param_randomness")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  cPUParticles2DSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: CPUParticles2D): Texture =
  if isNil(cPUParticles2DGetTextureMethodBind):
    cPUParticles2DGetTextureMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cPUParticles2DGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cPUParticles2DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: CPUParticles2D; val: Texture) =
  if isNil(cPUParticles2DSetTextureMethodBind):
    cPUParticles2DSetTextureMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cPUParticles2DSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cPUParticles2DUnderscoretextureChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method textureChanged(self: CPUParticles2D) =
  if isNil(cPUParticles2DUnderscoretextureChangedMethodBind):
    cPUParticles2DUnderscoretextureChangedMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"_texture_changed")
  var ptrCallRet: pointer
  cPUParticles2DUnderscoretextureChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cPUParticles2DUnderscoreupdateRenderThreadMethodBind {.threadvar.}: ptr GodotMethodBind
method updateRenderThread(self: CPUParticles2D) =
  if isNil(cPUParticles2DUnderscoreupdateRenderThreadMethodBind):
    cPUParticles2DUnderscoreupdateRenderThreadMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"_update_render_thread")
  var ptrCallRet: pointer
  cPUParticles2DUnderscoreupdateRenderThreadMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var cPUParticles2DConvertFromParticlesMethodBind {.threadvar.}: ptr GodotMethodBind
proc convertFromParticles(self: CPUParticles2D; particles: Node) =
  if isNil(cPUParticles2DConvertFromParticlesMethodBind):
    cPUParticles2DConvertFromParticlesMethodBind = getMethod(
        cstring"CPUParticles2D", cstring"convert_from_particles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not particles.isNil:
    particles.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cPUParticles2DConvertFromParticlesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cPUParticles2DRestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc restart(self: CPUParticles2D) =
  if isNil(cPUParticles2DRestartMethodBind):
    cPUParticles2DRestartMethodBind = getMethod(cstring"CPUParticles2D",
        cstring"restart")
  var ptrCallRet: pointer
  cPUParticles2DRestartMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
