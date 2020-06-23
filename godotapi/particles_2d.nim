
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  DRAW_ORDER_INDEX* = 0'i64
  DRAW_ORDER_LIFETIME* = 1'i64
proc amount*(self: Particles2D): int64 {.gcsafe, locks: 0.}
proc `amount=`*(self: Particles2D; val: int64) {.gcsafe, locks: 0.}
proc drawOrder*(self: Particles2D): int64 {.gcsafe, locks: 0.}
proc `drawOrder=`*(self: Particles2D; val: int64) {.gcsafe, locks: 0.}
proc emitting*(self: Particles2D): bool {.gcsafe, locks: 0.}
proc `emitting=`*(self: Particles2D; val: bool) {.gcsafe, locks: 0.}
proc explosiveness*(self: Particles2D): float64 {.gcsafe, locks: 0.}
proc `explosiveness=`*(self: Particles2D; val: float64) {.gcsafe, locks: 0.}
proc fixedFps*(self: Particles2D): int64 {.gcsafe, locks: 0.}
proc `fixedFps=`*(self: Particles2D; val: int64) {.gcsafe, locks: 0.}
proc fractDelta*(self: Particles2D): bool {.gcsafe, locks: 0.}
proc `fractDelta=`*(self: Particles2D; val: bool) {.gcsafe, locks: 0.}
proc lifetime*(self: Particles2D): float64 {.gcsafe, locks: 0.}
proc `lifetime=`*(self: Particles2D; val: float64) {.gcsafe, locks: 0.}
proc localCoords*(self: Particles2D): bool {.gcsafe, locks: 0.}
proc `localCoords=`*(self: Particles2D; val: bool) {.gcsafe, locks: 0.}
proc normalMap*(self: Particles2D): Texture {.gcsafe, locks: 0.}
proc `normalMap=`*(self: Particles2D; val: Texture) {.gcsafe, locks: 0.}
proc oneShot*(self: Particles2D): bool {.gcsafe, locks: 0.}
proc `oneShot=`*(self: Particles2D; val: bool) {.gcsafe, locks: 0.}
proc preprocess*(self: Particles2D): float64 {.gcsafe, locks: 0.}
proc `preprocess=`*(self: Particles2D; val: float64) {.gcsafe, locks: 0.}
proc processMaterial*(self: Particles2D): Material {.gcsafe, locks: 0.}
proc `processMaterial=`*(self: Particles2D; val: Material) {.gcsafe, locks: 0.}
proc randomness*(self: Particles2D): float64 {.gcsafe, locks: 0.}
proc `randomness=`*(self: Particles2D; val: float64) {.gcsafe, locks: 0.}
proc speedScale*(self: Particles2D): float64 {.gcsafe, locks: 0.}
proc `speedScale=`*(self: Particles2D; val: float64) {.gcsafe, locks: 0.}
proc texture*(self: Particles2D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: Particles2D; val: Texture) {.gcsafe, locks: 0.}
proc visibilityRect*(self: Particles2D): Rect2 {.gcsafe, locks: 0.}
proc `visibilityRect=`*(self: Particles2D; val: Rect2) {.gcsafe, locks: 0.}
proc captureRect*(self: Particles2D): Rect2 {.gcsafe, locks: 0.}
proc restart*(self: Particles2D) {.gcsafe, locks: 0.}
var particles2DGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc amount(self: Particles2D): int64 =
  if isNil(particles2DGetAmountMethodBind):
    particles2DGetAmountMethodBind = getMethod(cstring"Particles2D",
        cstring"get_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetAmountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `amount=`(self: Particles2D; val: int64) =
  if isNil(particles2DSetAmountMethodBind):
    particles2DSetAmountMethodBind = getMethod(cstring"Particles2D",
        cstring"set_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetAmountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawOrder(self: Particles2D): int64 =
  if isNil(particles2DGetDrawOrderMethodBind):
    particles2DGetDrawOrderMethodBind = getMethod(cstring"Particles2D",
        cstring"get_draw_order")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetDrawOrderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawOrder=`(self: Particles2D; val: int64) =
  if isNil(particles2DSetDrawOrderMethodBind):
    particles2DSetDrawOrderMethodBind = getMethod(cstring"Particles2D",
        cstring"set_draw_order")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetDrawOrderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DIsEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc emitting(self: Particles2D): bool =
  if isNil(particles2DIsEmittingMethodBind):
    particles2DIsEmittingMethodBind = getMethod(cstring"Particles2D",
        cstring"is_emitting")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DIsEmittingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emitting=`(self: Particles2D; val: bool) =
  if isNil(particles2DSetEmittingMethodBind):
    particles2DSetEmittingMethodBind = getMethod(cstring"Particles2D",
        cstring"set_emitting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetEmittingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc explosiveness(self: Particles2D): float64 =
  if isNil(particles2DGetExplosivenessRatioMethodBind):
    particles2DGetExplosivenessRatioMethodBind = getMethod(cstring"Particles2D",
        cstring"get_explosiveness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetExplosivenessRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particles2DSetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `explosiveness=`(self: Particles2D; val: float64) =
  if isNil(particles2DSetExplosivenessRatioMethodBind):
    particles2DSetExplosivenessRatioMethodBind = getMethod(cstring"Particles2D",
        cstring"set_explosiveness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetExplosivenessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particles2DGetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixedFps(self: Particles2D): int64 =
  if isNil(particles2DGetFixedFpsMethodBind):
    particles2DGetFixedFpsMethodBind = getMethod(cstring"Particles2D",
        cstring"get_fixed_fps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetFixedFpsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fixedFps=`(self: Particles2D; val: int64) =
  if isNil(particles2DSetFixedFpsMethodBind):
    particles2DSetFixedFpsMethodBind = getMethod(cstring"Particles2D",
        cstring"set_fixed_fps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetFixedFpsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc fractDelta(self: Particles2D): bool =
  if isNil(particles2DGetFractionalDeltaMethodBind):
    particles2DGetFractionalDeltaMethodBind = getMethod(cstring"Particles2D",
        cstring"get_fractional_delta")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetFractionalDeltaMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particles2DSetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fractDelta=`(self: Particles2D; val: bool) =
  if isNil(particles2DSetFractionalDeltaMethodBind):
    particles2DSetFractionalDeltaMethodBind = getMethod(cstring"Particles2D",
        cstring"set_fractional_delta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetFractionalDeltaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particles2DGetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lifetime(self: Particles2D): float64 =
  if isNil(particles2DGetLifetimeMethodBind):
    particles2DGetLifetimeMethodBind = getMethod(cstring"Particles2D",
        cstring"get_lifetime")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetLifetimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lifetime=`(self: Particles2D; val: float64) =
  if isNil(particles2DSetLifetimeMethodBind):
    particles2DSetLifetimeMethodBind = getMethod(cstring"Particles2D",
        cstring"set_lifetime")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetLifetimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc localCoords(self: Particles2D): bool =
  if isNil(particles2DGetUseLocalCoordinatesMethodBind):
    particles2DGetUseLocalCoordinatesMethodBind = getMethod(cstring"Particles2D",
        cstring"get_use_local_coordinates")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particles2DSetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `localCoords=`(self: Particles2D; val: bool) =
  if isNil(particles2DSetUseLocalCoordinatesMethodBind):
    particles2DSetUseLocalCoordinatesMethodBind = getMethod(cstring"Particles2D",
        cstring"set_use_local_coordinates")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetUseLocalCoordinatesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particles2DGetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalMap(self: Particles2D): Texture =
  if isNil(particles2DGetNormalMapMethodBind):
    particles2DGetNormalMapMethodBind = getMethod(cstring"Particles2D",
        cstring"get_normal_map")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particles2DGetNormalMapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particles2DSetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalMap=`(self: Particles2D; val: Texture) =
  if isNil(particles2DSetNormalMapMethodBind):
    particles2DSetNormalMapMethodBind = getMethod(cstring"Particles2D",
        cstring"set_normal_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  particles2DSetNormalMapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneShot(self: Particles2D): bool =
  if isNil(particles2DGetOneShotMethodBind):
    particles2DGetOneShotMethodBind = getMethod(cstring"Particles2D",
        cstring"get_one_shot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetOneShotMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneShot=`(self: Particles2D; val: bool) =
  if isNil(particles2DSetOneShotMethodBind):
    particles2DSetOneShotMethodBind = getMethod(cstring"Particles2D",
        cstring"set_one_shot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetOneShotMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc preprocess(self: Particles2D): float64 =
  if isNil(particles2DGetPreProcessTimeMethodBind):
    particles2DGetPreProcessTimeMethodBind = getMethod(cstring"Particles2D",
        cstring"get_pre_process_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetPreProcessTimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `preprocess=`(self: Particles2D; val: float64) =
  if isNil(particles2DSetPreProcessTimeMethodBind):
    particles2DSetPreProcessTimeMethodBind = getMethod(cstring"Particles2D",
        cstring"set_pre_process_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetPreProcessTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particles2DGetProcessMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc processMaterial(self: Particles2D): Material =
  if isNil(particles2DGetProcessMaterialMethodBind):
    particles2DGetProcessMaterialMethodBind = getMethod(cstring"Particles2D",
        cstring"get_process_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particles2DGetProcessMaterialMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particles2DSetProcessMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `processMaterial=`(self: Particles2D; val: Material) =
  if isNil(particles2DSetProcessMaterialMethodBind):
    particles2DSetProcessMaterialMethodBind = getMethod(cstring"Particles2D",
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
  particles2DSetProcessMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particles2DGetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc randomness(self: Particles2D): float64 =
  if isNil(particles2DGetRandomnessRatioMethodBind):
    particles2DGetRandomnessRatioMethodBind = getMethod(cstring"Particles2D",
        cstring"get_randomness_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetRandomnessRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var particles2DSetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `randomness=`(self: Particles2D; val: float64) =
  if isNil(particles2DSetRandomnessRatioMethodBind):
    particles2DSetRandomnessRatioMethodBind = getMethod(cstring"Particles2D",
        cstring"set_randomness_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetRandomnessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particles2DGetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc speedScale(self: Particles2D): float64 =
  if isNil(particles2DGetSpeedScaleMethodBind):
    particles2DGetSpeedScaleMethodBind = getMethod(cstring"Particles2D",
        cstring"get_speed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetSpeedScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speedScale=`(self: Particles2D; val: float64) =
  if isNil(particles2DSetSpeedScaleMethodBind):
    particles2DSetSpeedScaleMethodBind = getMethod(cstring"Particles2D",
        cstring"set_speed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetSpeedScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: Particles2D): Texture =
  if isNil(particles2DGetTextureMethodBind):
    particles2DGetTextureMethodBind = getMethod(cstring"Particles2D",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  particles2DGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var particles2DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: Particles2D; val: Texture) =
  if isNil(particles2DSetTextureMethodBind):
    particles2DSetTextureMethodBind = getMethod(cstring"Particles2D",
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
  particles2DSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var particles2DGetVisibilityRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc visibilityRect(self: Particles2D): Rect2 =
  if isNil(particles2DGetVisibilityRectMethodBind):
    particles2DGetVisibilityRectMethodBind = getMethod(cstring"Particles2D",
        cstring"get_visibility_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DGetVisibilityRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DSetVisibilityRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visibilityRect=`(self: Particles2D; val: Rect2) =
  if isNil(particles2DSetVisibilityRectMethodBind):
    particles2DSetVisibilityRectMethodBind = getMethod(cstring"Particles2D",
        cstring"set_visibility_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  particles2DSetVisibilityRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var particles2DCaptureRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureRect(self: Particles2D): Rect2 =
  if isNil(particles2DCaptureRectMethodBind):
    particles2DCaptureRectMethodBind = getMethod(cstring"Particles2D",
        cstring"capture_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  particles2DCaptureRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var particles2DRestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc restart(self: Particles2D) =
  if isNil(particles2DRestartMethodBind):
    particles2DRestartMethodBind = getMethod(cstring"Particles2D",
        cstring"restart")
  var ptrCallRet: pointer
  particles2DRestartMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
