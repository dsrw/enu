
import
  godot, godottypes, godotinternal, material

export
  godottypes, material

const
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
proc angle*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `angle=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc angleCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `angleCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc angleRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `angleRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc angularVelocity*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `angularVelocity=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc angularVelocityCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `angularVelocityCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe,
    locks: 0.}
proc angularVelocityRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `angularVelocityRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc animOffset*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `animOffset=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc animOffsetCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `animOffsetCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc animOffsetRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `animOffsetRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc animSpeed*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `animSpeed=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc animSpeedCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `animSpeedCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc animSpeedRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `animSpeedRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc color*(self: ParticlesMaterial): Color {.gcsafe, locks: 0.}
proc `color=`*(self: ParticlesMaterial; val: Color) {.gcsafe, locks: 0.}
proc colorRamp*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `colorRamp=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc damping*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `damping=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc dampingCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `dampingCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc dampingRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `dampingRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc direction*(self: ParticlesMaterial): Vector3 {.gcsafe, locks: 0.}
proc `direction=`*(self: ParticlesMaterial; val: Vector3) {.gcsafe, locks: 0.}
proc emissionBoxExtents*(self: ParticlesMaterial): Vector3 {.gcsafe, locks: 0.}
proc `emissionBoxExtents=`*(self: ParticlesMaterial; val: Vector3) {.gcsafe, locks: 0.}
proc emissionColorTexture*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `emissionColorTexture=`*(self: ParticlesMaterial; val: Texture) {.gcsafe,
    locks: 0.}
proc emissionNormalTexture*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `emissionNormalTexture=`*(self: ParticlesMaterial; val: Texture) {.gcsafe,
    locks: 0.}
proc emissionPointCount*(self: ParticlesMaterial): int64 {.gcsafe, locks: 0.}
proc `emissionPointCount=`*(self: ParticlesMaterial; val: int64) {.gcsafe, locks: 0.}
proc emissionPointTexture*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `emissionPointTexture=`*(self: ParticlesMaterial; val: Texture) {.gcsafe,
    locks: 0.}
proc emissionShape*(self: ParticlesMaterial): int64 {.gcsafe, locks: 0.}
proc `emissionShape=`*(self: ParticlesMaterial; val: int64) {.gcsafe, locks: 0.}
proc emissionSphereRadius*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `emissionSphereRadius=`*(self: ParticlesMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc flagAlignY*(self: ParticlesMaterial): bool {.gcsafe, locks: 0.}
proc `flagAlignY=`*(self: ParticlesMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagDisableZ*(self: ParticlesMaterial): bool {.gcsafe, locks: 0.}
proc `flagDisableZ=`*(self: ParticlesMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagRotateY*(self: ParticlesMaterial): bool {.gcsafe, locks: 0.}
proc `flagRotateY=`*(self: ParticlesMaterial; val: bool) {.gcsafe, locks: 0.}
proc flatness*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `flatness=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc gravity*(self: ParticlesMaterial): Vector3 {.gcsafe, locks: 0.}
proc `gravity=`*(self: ParticlesMaterial; val: Vector3) {.gcsafe, locks: 0.}
proc hueVariation*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `hueVariation=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc hueVariationCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `hueVariationCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc hueVariationRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `hueVariationRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc initialVelocity*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `initialVelocity=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc initialVelocityRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `initialVelocityRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc lifetimeRandomness*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `lifetimeRandomness=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc linearAccel*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `linearAccel=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc linearAccelCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `linearAccelCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc linearAccelRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `linearAccelRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc orbitVelocity*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `orbitVelocity=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc orbitVelocityCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `orbitVelocityCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc orbitVelocityRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `orbitVelocityRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc radialAccel*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `radialAccel=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc radialAccelCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `radialAccelCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc radialAccelRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `radialAccelRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc scale*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `scale=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc scaleCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `scaleCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe, locks: 0.}
proc scaleRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `scaleRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc spread*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `spread=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc tangentialAccel*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `tangentialAccel=`*(self: ParticlesMaterial; val: float64) {.gcsafe, locks: 0.}
proc tangentialAccelCurve*(self: ParticlesMaterial): Texture {.gcsafe, locks: 0.}
proc `tangentialAccelCurve=`*(self: ParticlesMaterial; val: Texture) {.gcsafe,
    locks: 0.}
proc tangentialAccelRandom*(self: ParticlesMaterial): float64 {.gcsafe, locks: 0.}
proc `tangentialAccelRandom=`*(self: ParticlesMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc trailColorModifier*(self: ParticlesMaterial): GradientTexture {.gcsafe, locks: 0.}
proc `trailColorModifier=`*(self: ParticlesMaterial; val: GradientTexture) {.gcsafe,
    locks: 0.}
proc trailDivisor*(self: ParticlesMaterial): int64 {.gcsafe, locks: 0.}
proc `trailDivisor=`*(self: ParticlesMaterial; val: int64) {.gcsafe, locks: 0.}
proc trailSizeModifier*(self: ParticlesMaterial): CurveTexture {.gcsafe, locks: 0.}
proc `trailSizeModifier=`*(self: ParticlesMaterial; val: CurveTexture) {.gcsafe,
    locks: 0.}
var particlesMaterialGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc angle(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angle=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetParamTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc angleCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesMaterialSetParamTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angleCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetParamRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc angleRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialSetParamRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angleRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularVelocity(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularVelocity=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularVelocityCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `angularVelocityCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularVelocityRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularVelocityRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animOffset(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animOffset=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animOffsetCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `animOffsetCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animOffsetRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animOffsetRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animSpeed(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animSpeed=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animSpeedCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `animSpeedCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc animSpeedRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `animSpeedRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: ParticlesMaterial): Color =
  if isNil(particlesMaterialGetColorMethodBind):
    particlesMaterialGetColorMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesMaterialSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: ParticlesMaterial; val: Color) =
  if isNil(particlesMaterialSetColorMethodBind):
    particlesMaterialSetColorMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetColorRampMethodBind {.threadvar.}: ptr GodotMethodBind
proc colorRamp(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetColorRampMethodBind):
    particlesMaterialGetColorRampMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_color_ramp")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetColorRampMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesMaterialSetColorRampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `colorRamp=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetColorRampMethodBind):
    particlesMaterialSetColorRampMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_color_ramp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particlesMaterialSetColorRampMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc damping(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `damping=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc dampingCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `dampingCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc dampingRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `dampingRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc direction(self: ParticlesMaterial): Vector3 =
  if isNil(particlesMaterialGetDirectionMethodBind):
    particlesMaterialGetDirectionMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_direction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetDirectionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesMaterialSetDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `direction=`(self: ParticlesMaterial; val: Vector3) =
  if isNil(particlesMaterialSetDirectionMethodBind):
    particlesMaterialSetDirectionMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_direction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetDirectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetEmissionBoxExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionBoxExtents(self: ParticlesMaterial): Vector3 =
  if isNil(particlesMaterialGetEmissionBoxExtentsMethodBind):
    particlesMaterialGetEmissionBoxExtentsMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_emission_box_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetEmissionBoxExtentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesMaterialSetEmissionBoxExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionBoxExtents=`(self: ParticlesMaterial; val: Vector3) =
  if isNil(particlesMaterialSetEmissionBoxExtentsMethodBind):
    particlesMaterialSetEmissionBoxExtentsMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_emission_box_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetEmissionBoxExtentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetEmissionColorTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionColorTexture(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetEmissionColorTextureMethodBind):
    particlesMaterialGetEmissionColorTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_emission_color_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetEmissionColorTextureMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesMaterialSetEmissionColorTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionColorTexture=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetEmissionColorTextureMethodBind):
    particlesMaterialSetEmissionColorTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_emission_color_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particlesMaterialSetEmissionColorTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetEmissionNormalTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionNormalTexture(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetEmissionNormalTextureMethodBind):
    particlesMaterialGetEmissionNormalTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_emission_normal_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetEmissionNormalTextureMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesMaterialSetEmissionNormalTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionNormalTexture=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetEmissionNormalTextureMethodBind):
    particlesMaterialSetEmissionNormalTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_emission_normal_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particlesMaterialSetEmissionNormalTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetEmissionPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionPointCount(self: ParticlesMaterial): int64 =
  if isNil(particlesMaterialGetEmissionPointCountMethodBind):
    particlesMaterialGetEmissionPointCountMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_emission_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetEmissionPointCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesMaterialSetEmissionPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionPointCount=`(self: ParticlesMaterial; val: int64) =
  if isNil(particlesMaterialSetEmissionPointCountMethodBind):
    particlesMaterialSetEmissionPointCountMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_emission_point_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetEmissionPointCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetEmissionPointTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionPointTexture(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetEmissionPointTextureMethodBind):
    particlesMaterialGetEmissionPointTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_emission_point_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetEmissionPointTextureMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesMaterialSetEmissionPointTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionPointTexture=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetEmissionPointTextureMethodBind):
    particlesMaterialSetEmissionPointTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_emission_point_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particlesMaterialSetEmissionPointTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetEmissionShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionShape(self: ParticlesMaterial): int64 =
  if isNil(particlesMaterialGetEmissionShapeMethodBind):
    particlesMaterialGetEmissionShapeMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_emission_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetEmissionShapeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesMaterialSetEmissionShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionShape=`(self: ParticlesMaterial; val: int64) =
  if isNil(particlesMaterialSetEmissionShapeMethodBind):
    particlesMaterialSetEmissionShapeMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_emission_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetEmissionShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetEmissionSphereRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionSphereRadius(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetEmissionSphereRadiusMethodBind):
    particlesMaterialGetEmissionSphereRadiusMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_emission_sphere_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetEmissionSphereRadiusMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var particlesMaterialSetEmissionSphereRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionSphereRadius=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetEmissionSphereRadiusMethodBind):
    particlesMaterialSetEmissionSphereRadiusMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_emission_sphere_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetEmissionSphereRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc flagAlignY(self: ParticlesMaterial): bool =
  if isNil(particlesMaterialGetFlagMethodBind):
    particlesMaterialGetFlagMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesMaterialSetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flagAlignY=`(self: ParticlesMaterial; val: bool) =
  if isNil(particlesMaterialSetFlagMethodBind):
    particlesMaterialSetFlagMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagDisableZ(self: ParticlesMaterial): bool =
  if isNil(particlesMaterialGetFlagMethodBind):
    particlesMaterialGetFlagMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagDisableZ=`(self: ParticlesMaterial; val: bool) =
  if isNil(particlesMaterialSetFlagMethodBind):
    particlesMaterialSetFlagMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagRotateY(self: ParticlesMaterial): bool =
  if isNil(particlesMaterialGetFlagMethodBind):
    particlesMaterialGetFlagMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagRotateY=`(self: ParticlesMaterial; val: bool) =
  if isNil(particlesMaterialSetFlagMethodBind):
    particlesMaterialSetFlagMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesMaterialGetFlatnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc flatness(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetFlatnessMethodBind):
    particlesMaterialGetFlatnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_flatness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetFlatnessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesMaterialSetFlatnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flatness=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetFlatnessMethodBind):
    particlesMaterialSetFlatnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_flatness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetFlatnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravity(self: ParticlesMaterial): Vector3 =
  if isNil(particlesMaterialGetGravityMethodBind):
    particlesMaterialGetGravityMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetGravityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesMaterialSetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravity=`(self: ParticlesMaterial; val: Vector3) =
  if isNil(particlesMaterialSetGravityMethodBind):
    particlesMaterialSetGravityMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_gravity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetGravityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc hueVariation(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `hueVariation=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc hueVariationCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `hueVariationCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc hueVariationRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `hueVariationRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc initialVelocity(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `initialVelocity=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc initialVelocityRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `initialVelocityRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetLifetimeRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc lifetimeRandomness(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetLifetimeRandomnessMethodBind):
    particlesMaterialGetLifetimeRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_lifetime_randomness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetLifetimeRandomnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesMaterialSetLifetimeRandomnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lifetimeRandomness=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetLifetimeRandomnessMethodBind):
    particlesMaterialSetLifetimeRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_lifetime_randomness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetLifetimeRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearAccel(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearAccel=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearAccelCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `linearAccelCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearAccelRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearAccelRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc orbitVelocity(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `orbitVelocity=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc orbitVelocityCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `orbitVelocityCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc orbitVelocityRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `orbitVelocityRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc radialAccel(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `radialAccel=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc radialAccelCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `radialAccelCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc radialAccelRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `radialAccelRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc scale(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `scale=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc scaleCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `scaleCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc scaleRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `scaleRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc spread(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetSpreadMethodBind):
    particlesMaterialGetSpreadMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_spread")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetSpreadMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesMaterialSetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spread=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetSpreadMethodBind):
    particlesMaterialSetSpreadMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_spread")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetSpreadMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc tangentialAccel(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamMethodBind):
    particlesMaterialGetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"get_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `tangentialAccel=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamMethodBind):
    particlesMaterialSetParamMethodBind = getMethod(cstring"ParticlesMaterial",
        cstring"set_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc tangentialAccelCurve(self: ParticlesMaterial): Texture =
  if isNil(particlesMaterialGetParamTextureMethodBind):
    particlesMaterialGetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_texture")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `tangentialAccelCurve=`(self: ParticlesMaterial; val: Texture) =
  if isNil(particlesMaterialSetParamTextureMethodBind):
    particlesMaterialSetParamTextureMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_texture")
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
  particlesMaterialSetParamTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc tangentialAccelRandom(self: ParticlesMaterial): float64 =
  if isNil(particlesMaterialGetParamRandomnessMethodBind):
    particlesMaterialGetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_param_randomness")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `tangentialAccelRandom=`(self: ParticlesMaterial; val: float64) =
  if isNil(particlesMaterialSetParamRandomnessMethodBind):
    particlesMaterialSetParamRandomnessMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_param_randomness")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetParamRandomnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetTrailColorModifierMethodBind {.threadvar.}: ptr GodotMethodBind
proc trailColorModifier(self: ParticlesMaterial): GradientTexture =
  if isNil(particlesMaterialGetTrailColorModifierMethodBind):
    particlesMaterialGetTrailColorModifierMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_trail_color_modifier")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetTrailColorModifierMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesMaterialSetTrailColorModifierMethodBind {.threadvar.}: ptr GodotMethodBind
proc `trailColorModifier=`(self: ParticlesMaterial; val: GradientTexture) =
  if isNil(particlesMaterialSetTrailColorModifierMethodBind):
    particlesMaterialSetTrailColorModifierMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_trail_color_modifier")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particlesMaterialSetTrailColorModifierMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetTrailDivisorMethodBind {.threadvar.}: ptr GodotMethodBind
proc trailDivisor(self: ParticlesMaterial): int64 =
  if isNil(particlesMaterialGetTrailDivisorMethodBind):
    particlesMaterialGetTrailDivisorMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_trail_divisor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesMaterialGetTrailDivisorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesMaterialSetTrailDivisorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `trailDivisor=`(self: ParticlesMaterial; val: int64) =
  if isNil(particlesMaterialSetTrailDivisorMethodBind):
    particlesMaterialSetTrailDivisorMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_trail_divisor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesMaterialSetTrailDivisorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesMaterialGetTrailSizeModifierMethodBind {.threadvar.}: ptr GodotMethodBind
proc trailSizeModifier(self: ParticlesMaterial): CurveTexture =
  if isNil(particlesMaterialGetTrailSizeModifierMethodBind):
    particlesMaterialGetTrailSizeModifierMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"get_trail_size_modifier")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesMaterialGetTrailSizeModifierMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesMaterialSetTrailSizeModifierMethodBind {.threadvar.}: ptr GodotMethodBind
proc `trailSizeModifier=`(self: ParticlesMaterial; val: CurveTexture) =
  if isNil(particlesMaterialSetTrailSizeModifierMethodBind):
    particlesMaterialSetTrailSizeModifierMethodBind = getMethod(
        cstring"ParticlesMaterial", cstring"set_trail_size_modifier")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particlesMaterialSetTrailSizeModifierMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
