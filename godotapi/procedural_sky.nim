
import
  godot, godottypes, godotinternal, sky

export
  godottypes, sky

const
  TEXTURE_SIZE_1024* = 2'i64
  TEXTURE_SIZE_2048* = 3'i64
  TEXTURE_SIZE_256* = 0'i64
  TEXTURE_SIZE_4096* = 4'i64
  TEXTURE_SIZE_512* = 1'i64
  TEXTURE_SIZE_MAX* = 5'i64
proc groundBottomColor*(self: ProceduralSky): Color {.gcsafe, locks: 0.}
proc `groundBottomColor=`*(self: ProceduralSky; val: Color) {.gcsafe, locks: 0.}
proc groundCurve*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `groundCurve=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc groundEnergy*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `groundEnergy=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc groundHorizonColor*(self: ProceduralSky): Color {.gcsafe, locks: 0.}
proc `groundHorizonColor=`*(self: ProceduralSky; val: Color) {.gcsafe, locks: 0.}
proc skyCurve*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `skyCurve=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc skyEnergy*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `skyEnergy=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc skyHorizonColor*(self: ProceduralSky): Color {.gcsafe, locks: 0.}
proc `skyHorizonColor=`*(self: ProceduralSky; val: Color) {.gcsafe, locks: 0.}
proc skyTopColor*(self: ProceduralSky): Color {.gcsafe, locks: 0.}
proc `skyTopColor=`*(self: ProceduralSky; val: Color) {.gcsafe, locks: 0.}
proc sunAngleMax*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `sunAngleMax=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc sunAngleMin*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `sunAngleMin=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc sunColor*(self: ProceduralSky): Color {.gcsafe, locks: 0.}
proc `sunColor=`*(self: ProceduralSky; val: Color) {.gcsafe, locks: 0.}
proc sunCurve*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `sunCurve=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc sunEnergy*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `sunEnergy=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc sunLatitude*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `sunLatitude=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc sunLongitude*(self: ProceduralSky): float64 {.gcsafe, locks: 0.}
proc `sunLongitude=`*(self: ProceduralSky; val: float64) {.gcsafe, locks: 0.}
proc textureSize*(self: ProceduralSky): int64 {.gcsafe, locks: 0.}
proc `textureSize=`*(self: ProceduralSky; val: int64) {.gcsafe, locks: 0.}
method threadDone*(self: ProceduralSky; image: Image) {.gcsafe, locks: 0, base.}
method updateSky*(self: ProceduralSky) {.gcsafe, locks: 0, base.}
var proceduralSkyGetGroundBottomColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc groundBottomColor(self: ProceduralSky): Color =
  if isNil(proceduralSkyGetGroundBottomColorMethodBind):
    proceduralSkyGetGroundBottomColorMethodBind = getMethod(
        cstring"ProceduralSky", cstring"get_ground_bottom_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetGroundBottomColorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var proceduralSkySetGroundBottomColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `groundBottomColor=`(self: ProceduralSky; val: Color) =
  if isNil(proceduralSkySetGroundBottomColorMethodBind):
    proceduralSkySetGroundBottomColorMethodBind = getMethod(
        cstring"ProceduralSky", cstring"set_ground_bottom_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetGroundBottomColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetGroundCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc groundCurve(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetGroundCurveMethodBind):
    proceduralSkyGetGroundCurveMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_ground_curve")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetGroundCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetGroundCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `groundCurve=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetGroundCurveMethodBind):
    proceduralSkySetGroundCurveMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_ground_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetGroundCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetGroundEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc groundEnergy(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetGroundEnergyMethodBind):
    proceduralSkyGetGroundEnergyMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_ground_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetGroundEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetGroundEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `groundEnergy=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetGroundEnergyMethodBind):
    proceduralSkySetGroundEnergyMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_ground_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetGroundEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetGroundHorizonColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc groundHorizonColor(self: ProceduralSky): Color =
  if isNil(proceduralSkyGetGroundHorizonColorMethodBind):
    proceduralSkyGetGroundHorizonColorMethodBind = getMethod(
        cstring"ProceduralSky", cstring"get_ground_horizon_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetGroundHorizonColorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var proceduralSkySetGroundHorizonColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `groundHorizonColor=`(self: ProceduralSky; val: Color) =
  if isNil(proceduralSkySetGroundHorizonColorMethodBind):
    proceduralSkySetGroundHorizonColorMethodBind = getMethod(
        cstring"ProceduralSky", cstring"set_ground_horizon_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetGroundHorizonColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSkyCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc skyCurve(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSkyCurveMethodBind):
    proceduralSkyGetSkyCurveMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sky_curve")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSkyCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSkyCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skyCurve=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSkyCurveMethodBind):
    proceduralSkySetSkyCurveMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sky_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSkyCurveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var proceduralSkyGetSkyEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc skyEnergy(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSkyEnergyMethodBind):
    proceduralSkyGetSkyEnergyMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sky_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSkyEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSkyEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skyEnergy=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSkyEnergyMethodBind):
    proceduralSkySetSkyEnergyMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sky_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSkyEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSkyHorizonColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc skyHorizonColor(self: ProceduralSky): Color =
  if isNil(proceduralSkyGetSkyHorizonColorMethodBind):
    proceduralSkyGetSkyHorizonColorMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sky_horizon_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSkyHorizonColorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var proceduralSkySetSkyHorizonColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skyHorizonColor=`(self: ProceduralSky; val: Color) =
  if isNil(proceduralSkySetSkyHorizonColorMethodBind):
    proceduralSkySetSkyHorizonColorMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sky_horizon_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSkyHorizonColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSkyTopColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc skyTopColor(self: ProceduralSky): Color =
  if isNil(proceduralSkyGetSkyTopColorMethodBind):
    proceduralSkyGetSkyTopColorMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sky_top_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSkyTopColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSkyTopColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skyTopColor=`(self: ProceduralSky; val: Color) =
  if isNil(proceduralSkySetSkyTopColorMethodBind):
    proceduralSkySetSkyTopColorMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sky_top_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSkyTopColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSunAngleMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc sunAngleMax(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSunAngleMaxMethodBind):
    proceduralSkyGetSunAngleMaxMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sun_angle_max")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSunAngleMaxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSunAngleMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sunAngleMax=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSunAngleMaxMethodBind):
    proceduralSkySetSunAngleMaxMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sun_angle_max")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSunAngleMaxMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSunAngleMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc sunAngleMin(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSunAngleMinMethodBind):
    proceduralSkyGetSunAngleMinMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sun_angle_min")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSunAngleMinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSunAngleMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sunAngleMin=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSunAngleMinMethodBind):
    proceduralSkySetSunAngleMinMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sun_angle_min")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSunAngleMinMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSunColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc sunColor(self: ProceduralSky): Color =
  if isNil(proceduralSkyGetSunColorMethodBind):
    proceduralSkyGetSunColorMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sun_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSunColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSunColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sunColor=`(self: ProceduralSky; val: Color) =
  if isNil(proceduralSkySetSunColorMethodBind):
    proceduralSkySetSunColorMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sun_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSunColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var proceduralSkyGetSunCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc sunCurve(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSunCurveMethodBind):
    proceduralSkyGetSunCurveMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sun_curve")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSunCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSunCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sunCurve=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSunCurveMethodBind):
    proceduralSkySetSunCurveMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sun_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSunCurveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var proceduralSkyGetSunEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc sunEnergy(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSunEnergyMethodBind):
    proceduralSkyGetSunEnergyMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sun_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSunEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSunEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sunEnergy=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSunEnergyMethodBind):
    proceduralSkySetSunEnergyMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sun_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSunEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSunLatitudeMethodBind {.threadvar.}: ptr GodotMethodBind
proc sunLatitude(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSunLatitudeMethodBind):
    proceduralSkyGetSunLatitudeMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sun_latitude")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSunLatitudeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSunLatitudeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sunLatitude=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSunLatitudeMethodBind):
    proceduralSkySetSunLatitudeMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sun_latitude")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSunLatitudeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetSunLongitudeMethodBind {.threadvar.}: ptr GodotMethodBind
proc sunLongitude(self: ProceduralSky): float64 =
  if isNil(proceduralSkyGetSunLongitudeMethodBind):
    proceduralSkyGetSunLongitudeMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_sun_longitude")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetSunLongitudeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetSunLongitudeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sunLongitude=`(self: ProceduralSky; val: float64) =
  if isNil(proceduralSkySetSunLongitudeMethodBind):
    proceduralSkySetSunLongitudeMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_sun_longitude")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetSunLongitudeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyGetTextureSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureSize(self: ProceduralSky): int64 =
  if isNil(proceduralSkyGetTextureSizeMethodBind):
    proceduralSkyGetTextureSizeMethodBind = getMethod(cstring"ProceduralSky",
        cstring"get_texture_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proceduralSkyGetTextureSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proceduralSkySetTextureSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureSize=`(self: ProceduralSky; val: int64) =
  if isNil(proceduralSkySetTextureSizeMethodBind):
    proceduralSkySetTextureSizeMethodBind = getMethod(cstring"ProceduralSky",
        cstring"set_texture_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proceduralSkySetTextureSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyUnderscorethreadDoneMethodBind {.threadvar.}: ptr GodotMethodBind
method threadDone(self: ProceduralSky; image: Image) =
  if isNil(proceduralSkyUnderscorethreadDoneMethodBind):
    proceduralSkyUnderscorethreadDoneMethodBind = getMethod(
        cstring"ProceduralSky", cstring"_thread_done")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  proceduralSkyUnderscorethreadDoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proceduralSkyUnderscoreupdateSkyMethodBind {.threadvar.}: ptr GodotMethodBind
method updateSky(self: ProceduralSky) =
  if isNil(proceduralSkyUnderscoreupdateSkyMethodBind):
    proceduralSkyUnderscoreupdateSkyMethodBind = getMethod(
        cstring"ProceduralSky", cstring"_update_sky")
  var ptrCallRet: pointer
  proceduralSkyUnderscoreupdateSkyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
