
import
  godot, godottypes, godotinternal, geometry_instance

export
  godottypes, geometry_instance

const
  DRAW_ORDER_INDEX* = 0'i64
  DRAW_ORDER_LIFETIME* = 1'i64
  DRAW_ORDER_VIEW_DEPTH* = 2'i64
  MAX_DRAW_PASSES* = 4'i64
proc amount*(self: Particles): int64 {.gcsafe, locks: 0.}
proc `amount=`*(self: Particles; val: int64) {.gcsafe, locks: 0.}
proc drawOrder*(self: Particles): int64 {.gcsafe, locks: 0.}
proc `drawOrder=`*(self: Particles; val: int64) {.gcsafe, locks: 0.}
proc drawPass1*(self: Particles): Mesh {.gcsafe, locks: 0.}
proc `drawPass1=`*(self: Particles; val: Mesh) {.gcsafe, locks: 0.}
proc drawPass2*(self: Particles): Mesh {.gcsafe, locks: 0.}
proc `drawPass2=`*(self: Particles; val: Mesh) {.gcsafe, locks: 0.}
proc drawPass3*(self: Particles): Mesh {.gcsafe, locks: 0.}
proc `drawPass3=`*(self: Particles; val: Mesh) {.gcsafe, locks: 0.}
proc drawPass4*(self: Particles): Mesh {.gcsafe, locks: 0.}
proc `drawPass4=`*(self: Particles; val: Mesh) {.gcsafe, locks: 0.}
proc drawPasses*(self: Particles): int64 {.gcsafe, locks: 0.}
proc `drawPasses=`*(self: Particles; val: int64) {.gcsafe, locks: 0.}
proc emitting*(self: Particles): bool {.gcsafe, locks: 0.}
proc `emitting=`*(self: Particles; val: bool) {.gcsafe, locks: 0.}
proc explosiveness*(self: Particles): float64 {.gcsafe, locks: 0.}
proc `explosiveness=`*(self: Particles; val: float64) {.gcsafe, locks: 0.}
proc fixedFps*(self: Particles): int64 {.gcsafe, locks: 0.}
proc `fixedFps=`*(self: Particles; val: int64) {.gcsafe, locks: 0.}
proc fractDelta*(self: Particles): bool {.gcsafe, locks: 0.}
proc `fractDelta=`*(self: Particles; val: bool) {.gcsafe, locks: 0.}
proc lifetime*(self: Particles): float64 {.gcsafe, locks: 0.}
proc `lifetime=`*(self: Particles; val: float64) {.gcsafe, locks: 0.}
proc localCoords*(self: Particles): bool {.gcsafe, locks: 0.}
proc `localCoords=`*(self: Particles; val: bool) {.gcsafe, locks: 0.}
proc oneShot*(self: Particles): bool {.gcsafe, locks: 0.}
proc `oneShot=`*(self: Particles; val: bool) {.gcsafe, locks: 0.}
proc preprocess*(self: Particles): float64 {.gcsafe, locks: 0.}
proc `preprocess=`*(self: Particles; val: float64) {.gcsafe, locks: 0.}
proc processMaterial*(self: Particles): Material {.gcsafe, locks: 0.}
proc `processMaterial=`*(self: Particles; val: Material) {.gcsafe, locks: 0.}
proc randomness*(self: Particles): float64 {.gcsafe, locks: 0.}
proc `randomness=`*(self: Particles; val: float64) {.gcsafe, locks: 0.}
proc speedScale*(self: Particles): float64 {.gcsafe, locks: 0.}
proc `speedScale=`*(self: Particles; val: float64) {.gcsafe, locks: 0.}
proc visibilityAabb*(self: Particles): AABB {.gcsafe, locks: 0.}
proc `visibilityAabb=`*(self: Particles; val: AABB) {.gcsafe, locks: 0.}
proc captureAabb*(self: Particles): AABB {.gcsafe, locks: 0.}
proc restart*(self: Particles) {.gcsafe, locks: 0.}
var particlesGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc amount(self: Particles): int64 =
  if isNil(particlesGetAmountMethodBind):
    particlesGetAmountMethodBind = getMethod(cstring"Particles",
        cstring"get_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetAmountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `amount=`(self: Particles; val: int64) =
  if isNil(particlesSetAmountMethodBind):
    particlesSetAmountMethodBind = getMethod(cstring"Particles",
        cstring"set_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetAmountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var particlesGetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawOrder(self: Particles): int64 =
  if isNil(particlesGetDrawOrderMethodBind):
    particlesGetDrawOrderMethodBind = getMethod(cstring"Particles",
        cstring"get_draw_order")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetDrawOrderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawOrder=`(self: Particles; val: int64) =
  if isNil(particlesSetDrawOrderMethodBind):
    particlesSetDrawOrderMethodBind = getMethod(cstring"Particles",
        cstring"set_draw_order")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetDrawOrderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesGetDrawPassMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawPass1(self: Particles): Mesh =
  if isNil(particlesGetDrawPassMeshMethodBind):
    particlesGetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"get_draw_pass_mesh")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesGetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesSetDrawPassMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawPass1=`(self: Particles; val: Mesh) =
  if isNil(particlesSetDrawPassMeshMethodBind):
    particlesSetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"set_draw_pass_mesh")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  particlesSetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc drawPass2(self: Particles): Mesh =
  if isNil(particlesGetDrawPassMeshMethodBind):
    particlesGetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"get_draw_pass_mesh")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesGetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `drawPass2=`(self: Particles; val: Mesh) =
  if isNil(particlesSetDrawPassMeshMethodBind):
    particlesSetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"set_draw_pass_mesh")
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
  particlesSetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc drawPass3(self: Particles): Mesh =
  if isNil(particlesGetDrawPassMeshMethodBind):
    particlesGetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"get_draw_pass_mesh")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesGetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `drawPass3=`(self: Particles; val: Mesh) =
  if isNil(particlesSetDrawPassMeshMethodBind):
    particlesSetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"set_draw_pass_mesh")
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
  particlesSetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc drawPass4(self: Particles): Mesh =
  if isNil(particlesGetDrawPassMeshMethodBind):
    particlesGetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"get_draw_pass_mesh")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesGetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `drawPass4=`(self: Particles; val: Mesh) =
  if isNil(particlesSetDrawPassMeshMethodBind):
    particlesSetDrawPassMeshMethodBind = getMethod(cstring"Particles",
        cstring"set_draw_pass_mesh")
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
  particlesSetDrawPassMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesGetDrawPassesMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawPasses(self: Particles): int64 =
  if isNil(particlesGetDrawPassesMethodBind):
    particlesGetDrawPassesMethodBind = getMethod(cstring"Particles",
        cstring"get_draw_passes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetDrawPassesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetDrawPassesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawPasses=`(self: Particles; val: int64) =
  if isNil(particlesSetDrawPassesMethodBind):
    particlesSetDrawPassesMethodBind = getMethod(cstring"Particles",
        cstring"set_draw_passes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetDrawPassesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesIsEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc emitting(self: Particles): bool =
  if isNil(particlesIsEmittingMethodBind):
    particlesIsEmittingMethodBind = getMethod(cstring"Particles",
        cstring"is_emitting")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesIsEmittingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emitting=`(self: Particles; val: bool) =
  if isNil(particlesSetEmittingMethodBind):
    particlesSetEmittingMethodBind = getMethod(cstring"Particles",
        cstring"set_emitting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetEmittingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesGetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc explosiveness(self: Particles): float64 =
  if isNil(particlesGetExplosivenessRatioMethodBind):
    particlesGetExplosivenessRatioMethodBind = getMethod(cstring"Particles",
        cstring"get_explosiveness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetExplosivenessRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesSetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `explosiveness=`(self: Particles; val: float64) =
  if isNil(particlesSetExplosivenessRatioMethodBind):
    particlesSetExplosivenessRatioMethodBind = getMethod(cstring"Particles",
        cstring"set_explosiveness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetExplosivenessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesGetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixedFps(self: Particles): int64 =
  if isNil(particlesGetFixedFpsMethodBind):
    particlesGetFixedFpsMethodBind = getMethod(cstring"Particles",
        cstring"get_fixed_fps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetFixedFpsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fixedFps=`(self: Particles; val: int64) =
  if isNil(particlesSetFixedFpsMethodBind):
    particlesSetFixedFpsMethodBind = getMethod(cstring"Particles",
        cstring"set_fixed_fps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetFixedFpsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesGetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc fractDelta(self: Particles): bool =
  if isNil(particlesGetFractionalDeltaMethodBind):
    particlesGetFractionalDeltaMethodBind = getMethod(cstring"Particles",
        cstring"get_fractional_delta")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetFractionalDeltaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fractDelta=`(self: Particles; val: bool) =
  if isNil(particlesSetFractionalDeltaMethodBind):
    particlesSetFractionalDeltaMethodBind = getMethod(cstring"Particles",
        cstring"set_fractional_delta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetFractionalDeltaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesGetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lifetime(self: Particles): float64 =
  if isNil(particlesGetLifetimeMethodBind):
    particlesGetLifetimeMethodBind = getMethod(cstring"Particles",
        cstring"get_lifetime")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetLifetimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lifetime=`(self: Particles; val: float64) =
  if isNil(particlesSetLifetimeMethodBind):
    particlesSetLifetimeMethodBind = getMethod(cstring"Particles",
        cstring"set_lifetime")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetLifetimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesGetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc localCoords(self: Particles): bool =
  if isNil(particlesGetUseLocalCoordinatesMethodBind):
    particlesGetUseLocalCoordinatesMethodBind = getMethod(cstring"Particles",
        cstring"get_use_local_coordinates")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particlesSetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `localCoords=`(self: Particles; val: bool) =
  if isNil(particlesSetUseLocalCoordinatesMethodBind):
    particlesSetUseLocalCoordinatesMethodBind = getMethod(cstring"Particles",
        cstring"set_use_local_coordinates")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesGetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneShot(self: Particles): bool =
  if isNil(particlesGetOneShotMethodBind):
    particlesGetOneShotMethodBind = getMethod(cstring"Particles",
        cstring"get_one_shot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetOneShotMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneShot=`(self: Particles; val: bool) =
  if isNil(particlesSetOneShotMethodBind):
    particlesSetOneShotMethodBind = getMethod(cstring"Particles",
        cstring"set_one_shot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetOneShotMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var particlesGetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc preprocess(self: Particles): float64 =
  if isNil(particlesGetPreProcessTimeMethodBind):
    particlesGetPreProcessTimeMethodBind = getMethod(cstring"Particles",
        cstring"get_pre_process_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetPreProcessTimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `preprocess=`(self: Particles; val: float64) =
  if isNil(particlesSetPreProcessTimeMethodBind):
    particlesSetPreProcessTimeMethodBind = getMethod(cstring"Particles",
        cstring"set_pre_process_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetPreProcessTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesGetProcessMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc processMaterial(self: Particles): Material =
  if isNil(particlesGetProcessMaterialMethodBind):
    particlesGetProcessMaterialMethodBind = getMethod(cstring"Particles",
        cstring"get_process_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particlesGetProcessMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particlesSetProcessMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `processMaterial=`(self: Particles; val: Material) =
  if isNil(particlesSetProcessMaterialMethodBind):
    particlesSetProcessMaterialMethodBind = getMethod(cstring"Particles",
        cstring"set_process_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particlesSetProcessMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesGetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc randomness(self: Particles): float64 =
  if isNil(particlesGetRandomnessRatioMethodBind):
    particlesGetRandomnessRatioMethodBind = getMethod(cstring"Particles",
        cstring"get_randomness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetRandomnessRatioMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `randomness=`(self: Particles; val: float64) =
  if isNil(particlesSetRandomnessRatioMethodBind):
    particlesSetRandomnessRatioMethodBind = getMethod(cstring"Particles",
        cstring"set_randomness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetRandomnessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesGetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc speedScale(self: Particles): float64 =
  if isNil(particlesGetSpeedScaleMethodBind):
    particlesGetSpeedScaleMethodBind = getMethod(cstring"Particles",
        cstring"get_speed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetSpeedScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speedScale=`(self: Particles; val: float64) =
  if isNil(particlesSetSpeedScaleMethodBind):
    particlesSetSpeedScaleMethodBind = getMethod(cstring"Particles",
        cstring"set_speed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetSpeedScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particlesGetVisibilityAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc visibilityAabb(self: Particles): AABB =
  if isNil(particlesGetVisibilityAabbMethodBind):
    particlesGetVisibilityAabbMethodBind = getMethod(cstring"Particles",
        cstring"get_visibility_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesGetVisibilityAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesSetVisibilityAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visibilityAabb=`(self: Particles; val: AABB) =
  if isNil(particlesSetVisibilityAabbMethodBind):
    particlesSetVisibilityAabbMethodBind = getMethod(cstring"Particles",
        cstring"set_visibility_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particlesSetVisibilityAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particlesCaptureAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureAabb(self: Particles): AABB =
  if isNil(particlesCaptureAabbMethodBind):
    particlesCaptureAabbMethodBind = getMethod(cstring"Particles",
        cstring"capture_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particlesCaptureAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particlesRestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc restart(self: Particles) =
  if isNil(particlesRestartMethodBind):
    particlesRestartMethodBind = getMethod(cstring"Particles", cstring"restart")
  var ptrCallRet: pointer
  particlesRestartMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
