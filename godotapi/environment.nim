
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  BG_CAMERA_FEED* = 6'i64
  BG_CANVAS* = 4'i64
  BG_CLEAR_COLOR* = 0'i64
  BG_COLOR* = 1'i64
  BG_COLOR_SKY* = 3'i64
  BG_KEEP* = 5'i64
  BG_MAX* = 7'i64
  BG_SKY* = 2'i64
  DOF_BLUR_QUALITY_HIGH* = 2'i64
  DOF_BLUR_QUALITY_LOW* = 0'i64
  DOF_BLUR_QUALITY_MEDIUM* = 1'i64
  GLOW_BLEND_MODE_ADDITIVE* = 0'i64
  GLOW_BLEND_MODE_REPLACE* = 3'i64
  GLOW_BLEND_MODE_SCREEN* = 1'i64
  GLOW_BLEND_MODE_SOFTLIGHT* = 2'i64
  SSAO_BLUR_1x1* = 1'i64
  SSAO_BLUR_2x2* = 2'i64
  SSAO_BLUR_3x3* = 3'i64
  SSAO_BLUR_DISABLED* = 0'i64
  SSAO_QUALITY_HIGH* = 2'i64
  SSAO_QUALITY_LOW* = 0'i64
  SSAO_QUALITY_MEDIUM* = 1'i64
  TONE_MAPPER_ACES* = 3'i64
  TONE_MAPPER_FILMIC* = 2'i64
  TONE_MAPPER_LINEAR* = 0'i64
  TONE_MAPPER_REINHARDT* = 1'i64
proc adjustmentBrightness*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `adjustmentBrightness=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc adjustmentColorCorrection*(self: Environment): Texture {.gcsafe, locks: 0.}
proc `adjustmentColorCorrection=`*(self: Environment; val: Texture) {.gcsafe, locks: 0.}
proc adjustmentContrast*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `adjustmentContrast=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc adjustmentEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `adjustmentEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc adjustmentSaturation*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `adjustmentSaturation=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ambientLightColor*(self: Environment): Color {.gcsafe, locks: 0.}
proc `ambientLightColor=`*(self: Environment; val: Color) {.gcsafe, locks: 0.}
proc ambientLightEnergy*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ambientLightEnergy=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ambientLightSkyContribution*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ambientLightSkyContribution=`*(self: Environment; val: float64) {.gcsafe,
    locks: 0.}
proc autoExposureEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `autoExposureEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc autoExposureMaxLuma*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `autoExposureMaxLuma=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc autoExposureMinLuma*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `autoExposureMinLuma=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc autoExposureScale*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `autoExposureScale=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc autoExposureSpeed*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `autoExposureSpeed=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc backgroundCameraFeedId*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `backgroundCameraFeedId=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc backgroundCanvasMaxLayer*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `backgroundCanvasMaxLayer=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc backgroundColor*(self: Environment): Color {.gcsafe, locks: 0.}
proc `backgroundColor=`*(self: Environment; val: Color) {.gcsafe, locks: 0.}
proc backgroundEnergy*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `backgroundEnergy=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc backgroundMode*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `backgroundMode=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc backgroundSky*(self: Environment): Sky {.gcsafe, locks: 0.}
proc `backgroundSky=`*(self: Environment; val: Sky) {.gcsafe, locks: 0.}
proc backgroundSkyCustomFov*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `backgroundSkyCustomFov=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc backgroundSkyOrientation*(self: Environment): Basis {.gcsafe, locks: 0.}
proc `backgroundSkyOrientation=`*(self: Environment; val: Basis) {.gcsafe, locks: 0.}
proc backgroundSkyRotation*(self: Environment): Vector3 {.gcsafe, locks: 0.}
proc `backgroundSkyRotation=`*(self: Environment; val: Vector3) {.gcsafe, locks: 0.}
proc backgroundSkyRotationDegrees*(self: Environment): Vector3 {.gcsafe, locks: 0.}
proc `backgroundSkyRotationDegrees=`*(self: Environment; val: Vector3) {.gcsafe,
    locks: 0.}
proc dofBlurFarAmount*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `dofBlurFarAmount=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc dofBlurFarDistance*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `dofBlurFarDistance=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc dofBlurFarEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `dofBlurFarEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc dofBlurFarQuality*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `dofBlurFarQuality=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc dofBlurFarTransition*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `dofBlurFarTransition=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc dofBlurNearAmount*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `dofBlurNearAmount=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc dofBlurNearDistance*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `dofBlurNearDistance=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc dofBlurNearEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `dofBlurNearEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc dofBlurNearQuality*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `dofBlurNearQuality=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc dofBlurNearTransition*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `dofBlurNearTransition=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogColor*(self: Environment): Color {.gcsafe, locks: 0.}
proc `fogColor=`*(self: Environment; val: Color) {.gcsafe, locks: 0.}
proc fogDepthBegin*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogDepthBegin=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogDepthCurve*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogDepthCurve=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogDepthEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `fogDepthEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc fogDepthEnd*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogDepthEnd=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `fogEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc fogHeightCurve*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogHeightCurve=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogHeightEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `fogHeightEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc fogHeightMax*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogHeightMax=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogHeightMin*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogHeightMin=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogSunAmount*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogSunAmount=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogSunColor*(self: Environment): Color {.gcsafe, locks: 0.}
proc `fogSunColor=`*(self: Environment; val: Color) {.gcsafe, locks: 0.}
proc fogTransmitCurve*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `fogTransmitCurve=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc fogTransmitEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `fogTransmitEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowBicubicUpscale*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowBicubicUpscale=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowBlendMode*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `glowBlendMode=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc glowBloom*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `glowBloom=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc glowEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowHdrLuminanceCap*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `glowHdrLuminanceCap=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc glowHdrScale*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `glowHdrScale=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc glowHdrThreshold*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `glowHdrThreshold=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc glowIntensity*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `glowIntensity=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc glowLevels1*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowLevels1=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowLevels2*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowLevels2=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowLevels3*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowLevels3=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowLevels4*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowLevels4=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowLevels5*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowLevels5=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowLevels6*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowLevels6=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowLevels7*(self: Environment): bool {.gcsafe, locks: 0.}
proc `glowLevels7=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc glowStrength*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `glowStrength=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssReflectionsDepthTolerance*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssReflectionsDepthTolerance=`*(self: Environment; val: float64) {.gcsafe,
    locks: 0.}
proc ssReflectionsEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `ssReflectionsEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc ssReflectionsFadeIn*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssReflectionsFadeIn=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssReflectionsFadeOut*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssReflectionsFadeOut=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssReflectionsMaxSteps*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `ssReflectionsMaxSteps=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc ssReflectionsRoughness*(self: Environment): bool {.gcsafe, locks: 0.}
proc `ssReflectionsRoughness=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc ssaoAoChannelAffect*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoAoChannelAffect=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssaoBias*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoBias=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssaoBlur*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `ssaoBlur=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc ssaoColor*(self: Environment): Color {.gcsafe, locks: 0.}
proc `ssaoColor=`*(self: Environment; val: Color) {.gcsafe, locks: 0.}
proc ssaoEdgeSharpness*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoEdgeSharpness=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssaoEnabled*(self: Environment): bool {.gcsafe, locks: 0.}
proc `ssaoEnabled=`*(self: Environment; val: bool) {.gcsafe, locks: 0.}
proc ssaoIntensity*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoIntensity=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssaoIntensity2*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoIntensity2=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssaoLightAffect*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoLightAffect=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssaoQuality*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `ssaoQuality=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc ssaoRadius*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoRadius=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc ssaoRadius2*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `ssaoRadius2=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc tonemapExposure*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `tonemapExposure=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
proc tonemapMode*(self: Environment): int64 {.gcsafe, locks: 0.}
proc `tonemapMode=`*(self: Environment; val: int64) {.gcsafe, locks: 0.}
proc tonemapWhite*(self: Environment): float64 {.gcsafe, locks: 0.}
proc `tonemapWhite=`*(self: Environment; val: float64) {.gcsafe, locks: 0.}
var environmentGetAdjustmentBrightnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc adjustmentBrightness(self: Environment): float64 =
  if isNil(environmentGetAdjustmentBrightnessMethodBind):
    environmentGetAdjustmentBrightnessMethodBind = getMethod(
        cstring"Environment", cstring"get_adjustment_brightness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetAdjustmentBrightnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetAdjustmentBrightnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `adjustmentBrightness=`(self: Environment; val: float64) =
  if isNil(environmentSetAdjustmentBrightnessMethodBind):
    environmentSetAdjustmentBrightnessMethodBind = getMethod(
        cstring"Environment", cstring"set_adjustment_brightness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetAdjustmentBrightnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetAdjustmentColorCorrectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc adjustmentColorCorrection(self: Environment): Texture =
  if isNil(environmentGetAdjustmentColorCorrectionMethodBind):
    environmentGetAdjustmentColorCorrectionMethodBind = getMethod(
        cstring"Environment", cstring"get_adjustment_color_correction")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  environmentGetAdjustmentColorCorrectionMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var environmentSetAdjustmentColorCorrectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `adjustmentColorCorrection=`(self: Environment; val: Texture) =
  if isNil(environmentSetAdjustmentColorCorrectionMethodBind):
    environmentSetAdjustmentColorCorrectionMethodBind = getMethod(
        cstring"Environment", cstring"set_adjustment_color_correction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  environmentSetAdjustmentColorCorrectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetAdjustmentContrastMethodBind {.threadvar.}: ptr GodotMethodBind
proc adjustmentContrast(self: Environment): float64 =
  if isNil(environmentGetAdjustmentContrastMethodBind):
    environmentGetAdjustmentContrastMethodBind = getMethod(cstring"Environment",
        cstring"get_adjustment_contrast")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetAdjustmentContrastMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetAdjustmentContrastMethodBind {.threadvar.}: ptr GodotMethodBind
proc `adjustmentContrast=`(self: Environment; val: float64) =
  if isNil(environmentSetAdjustmentContrastMethodBind):
    environmentSetAdjustmentContrastMethodBind = getMethod(cstring"Environment",
        cstring"set_adjustment_contrast")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetAdjustmentContrastMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsAdjustmentEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc adjustmentEnabled(self: Environment): bool =
  if isNil(environmentIsAdjustmentEnabledMethodBind):
    environmentIsAdjustmentEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_adjustment_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsAdjustmentEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetAdjustmentEnableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `adjustmentEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetAdjustmentEnableMethodBind):
    environmentSetAdjustmentEnableMethodBind = getMethod(cstring"Environment",
        cstring"set_adjustment_enable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetAdjustmentEnableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetAdjustmentSaturationMethodBind {.threadvar.}: ptr GodotMethodBind
proc adjustmentSaturation(self: Environment): float64 =
  if isNil(environmentGetAdjustmentSaturationMethodBind):
    environmentGetAdjustmentSaturationMethodBind = getMethod(
        cstring"Environment", cstring"get_adjustment_saturation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetAdjustmentSaturationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetAdjustmentSaturationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `adjustmentSaturation=`(self: Environment; val: float64) =
  if isNil(environmentSetAdjustmentSaturationMethodBind):
    environmentSetAdjustmentSaturationMethodBind = getMethod(
        cstring"Environment", cstring"set_adjustment_saturation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetAdjustmentSaturationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetAmbientLightColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc ambientLightColor(self: Environment): Color =
  if isNil(environmentGetAmbientLightColorMethodBind):
    environmentGetAmbientLightColorMethodBind = getMethod(cstring"Environment",
        cstring"get_ambient_light_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetAmbientLightColorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetAmbientLightColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ambientLightColor=`(self: Environment; val: Color) =
  if isNil(environmentSetAmbientLightColorMethodBind):
    environmentSetAmbientLightColorMethodBind = getMethod(cstring"Environment",
        cstring"set_ambient_light_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetAmbientLightColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetAmbientLightEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc ambientLightEnergy(self: Environment): float64 =
  if isNil(environmentGetAmbientLightEnergyMethodBind):
    environmentGetAmbientLightEnergyMethodBind = getMethod(cstring"Environment",
        cstring"get_ambient_light_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetAmbientLightEnergyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetAmbientLightEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ambientLightEnergy=`(self: Environment; val: float64) =
  if isNil(environmentSetAmbientLightEnergyMethodBind):
    environmentSetAmbientLightEnergyMethodBind = getMethod(cstring"Environment",
        cstring"set_ambient_light_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetAmbientLightEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetAmbientLightSkyContributionMethodBind {.threadvar.}: ptr GodotMethodBind
proc ambientLightSkyContribution(self: Environment): float64 =
  if isNil(environmentGetAmbientLightSkyContributionMethodBind):
    environmentGetAmbientLightSkyContributionMethodBind = getMethod(
        cstring"Environment", cstring"get_ambient_light_sky_contribution")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetAmbientLightSkyContributionMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var environmentSetAmbientLightSkyContributionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ambientLightSkyContribution=`(self: Environment; val: float64) =
  if isNil(environmentSetAmbientLightSkyContributionMethodBind):
    environmentSetAmbientLightSkyContributionMethodBind = getMethod(
        cstring"Environment", cstring"set_ambient_light_sky_contribution")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetAmbientLightSkyContributionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetTonemapAutoExposureMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoExposureEnabled(self: Environment): bool =
  if isNil(environmentGetTonemapAutoExposureMethodBind):
    environmentGetTonemapAutoExposureMethodBind = getMethod(cstring"Environment",
        cstring"get_tonemap_auto_exposure")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapAutoExposureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetTonemapAutoExposureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoExposureEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetTonemapAutoExposureMethodBind):
    environmentSetTonemapAutoExposureMethodBind = getMethod(cstring"Environment",
        cstring"set_tonemap_auto_exposure")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapAutoExposureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetTonemapAutoExposureMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoExposureMaxLuma(self: Environment): float64 =
  if isNil(environmentGetTonemapAutoExposureMaxMethodBind):
    environmentGetTonemapAutoExposureMaxMethodBind = getMethod(
        cstring"Environment", cstring"get_tonemap_auto_exposure_max")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapAutoExposureMaxMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetTonemapAutoExposureMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoExposureMaxLuma=`(self: Environment; val: float64) =
  if isNil(environmentSetTonemapAutoExposureMaxMethodBind):
    environmentSetTonemapAutoExposureMaxMethodBind = getMethod(
        cstring"Environment", cstring"set_tonemap_auto_exposure_max")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapAutoExposureMaxMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetTonemapAutoExposureMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoExposureMinLuma(self: Environment): float64 =
  if isNil(environmentGetTonemapAutoExposureMinMethodBind):
    environmentGetTonemapAutoExposureMinMethodBind = getMethod(
        cstring"Environment", cstring"get_tonemap_auto_exposure_min")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapAutoExposureMinMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetTonemapAutoExposureMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoExposureMinLuma=`(self: Environment; val: float64) =
  if isNil(environmentSetTonemapAutoExposureMinMethodBind):
    environmentSetTonemapAutoExposureMinMethodBind = getMethod(
        cstring"Environment", cstring"set_tonemap_auto_exposure_min")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapAutoExposureMinMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetTonemapAutoExposureGreyMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoExposureScale(self: Environment): float64 =
  if isNil(environmentGetTonemapAutoExposureGreyMethodBind):
    environmentGetTonemapAutoExposureGreyMethodBind = getMethod(
        cstring"Environment", cstring"get_tonemap_auto_exposure_grey")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapAutoExposureGreyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetTonemapAutoExposureGreyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoExposureScale=`(self: Environment; val: float64) =
  if isNil(environmentSetTonemapAutoExposureGreyMethodBind):
    environmentSetTonemapAutoExposureGreyMethodBind = getMethod(
        cstring"Environment", cstring"set_tonemap_auto_exposure_grey")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapAutoExposureGreyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetTonemapAutoExposureSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoExposureSpeed(self: Environment): float64 =
  if isNil(environmentGetTonemapAutoExposureSpeedMethodBind):
    environmentGetTonemapAutoExposureSpeedMethodBind = getMethod(
        cstring"Environment", cstring"get_tonemap_auto_exposure_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapAutoExposureSpeedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetTonemapAutoExposureSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoExposureSpeed=`(self: Environment; val: float64) =
  if isNil(environmentSetTonemapAutoExposureSpeedMethodBind):
    environmentSetTonemapAutoExposureSpeedMethodBind = getMethod(
        cstring"Environment", cstring"set_tonemap_auto_exposure_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapAutoExposureSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetCameraFeedIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundCameraFeedId(self: Environment): int64 =
  if isNil(environmentGetCameraFeedIdMethodBind):
    environmentGetCameraFeedIdMethodBind = getMethod(cstring"Environment",
        cstring"get_camera_feed_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetCameraFeedIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetCameraFeedIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundCameraFeedId=`(self: Environment; val: int64) =
  if isNil(environmentSetCameraFeedIdMethodBind):
    environmentSetCameraFeedIdMethodBind = getMethod(cstring"Environment",
        cstring"set_camera_feed_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetCameraFeedIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetCanvasMaxLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundCanvasMaxLayer(self: Environment): int64 =
  if isNil(environmentGetCanvasMaxLayerMethodBind):
    environmentGetCanvasMaxLayerMethodBind = getMethod(cstring"Environment",
        cstring"get_canvas_max_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetCanvasMaxLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetCanvasMaxLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundCanvasMaxLayer=`(self: Environment; val: int64) =
  if isNil(environmentSetCanvasMaxLayerMethodBind):
    environmentSetCanvasMaxLayerMethodBind = getMethod(cstring"Environment",
        cstring"set_canvas_max_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetCanvasMaxLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundColor(self: Environment): Color =
  if isNil(environmentGetBgColorMethodBind):
    environmentGetBgColorMethodBind = getMethod(cstring"Environment",
        cstring"get_bg_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetBgColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundColor=`(self: Environment; val: Color) =
  if isNil(environmentSetBgColorMethodBind):
    environmentSetBgColorMethodBind = getMethod(cstring"Environment",
        cstring"set_bg_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetBgColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetBgEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundEnergy(self: Environment): float64 =
  if isNil(environmentGetBgEnergyMethodBind):
    environmentGetBgEnergyMethodBind = getMethod(cstring"Environment",
        cstring"get_bg_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetBgEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetBgEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundEnergy=`(self: Environment; val: float64) =
  if isNil(environmentSetBgEnergyMethodBind):
    environmentSetBgEnergyMethodBind = getMethod(cstring"Environment",
        cstring"set_bg_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetBgEnergyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetBackgroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundMode(self: Environment): int64 =
  if isNil(environmentGetBackgroundMethodBind):
    environmentGetBackgroundMethodBind = getMethod(cstring"Environment",
        cstring"get_background")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetBackgroundMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetBackgroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundMode=`(self: Environment; val: int64) =
  if isNil(environmentSetBackgroundMethodBind):
    environmentSetBackgroundMethodBind = getMethod(cstring"Environment",
        cstring"set_background")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetBackgroundMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSkyMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundSky(self: Environment): Sky =
  if isNil(environmentGetSkyMethodBind):
    environmentGetSkyMethodBind = getMethod(cstring"Environment", cstring"get_sky")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  environmentGetSkyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var environmentSetSkyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundSky=`(self: Environment; val: Sky) =
  if isNil(environmentSetSkyMethodBind):
    environmentSetSkyMethodBind = getMethod(cstring"Environment", cstring"set_sky")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  environmentSetSkyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var environmentGetSkyCustomFovMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundSkyCustomFov(self: Environment): float64 =
  if isNil(environmentGetSkyCustomFovMethodBind):
    environmentGetSkyCustomFovMethodBind = getMethod(cstring"Environment",
        cstring"get_sky_custom_fov")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSkyCustomFovMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSkyCustomFovMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundSkyCustomFov=`(self: Environment; val: float64) =
  if isNil(environmentSetSkyCustomFovMethodBind):
    environmentSetSkyCustomFovMethodBind = getMethod(cstring"Environment",
        cstring"set_sky_custom_fov")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSkyCustomFovMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSkyOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundSkyOrientation(self: Environment): Basis =
  if isNil(environmentGetSkyOrientationMethodBind):
    environmentGetSkyOrientationMethodBind = getMethod(cstring"Environment",
        cstring"get_sky_orientation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSkyOrientationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSkyOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundSkyOrientation=`(self: Environment; val: Basis) =
  if isNil(environmentSetSkyOrientationMethodBind):
    environmentSetSkyOrientationMethodBind = getMethod(cstring"Environment",
        cstring"set_sky_orientation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSkyOrientationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSkyRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundSkyRotation(self: Environment): Vector3 =
  if isNil(environmentGetSkyRotationMethodBind):
    environmentGetSkyRotationMethodBind = getMethod(cstring"Environment",
        cstring"get_sky_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSkyRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSkyRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundSkyRotation=`(self: Environment; val: Vector3) =
  if isNil(environmentSetSkyRotationMethodBind):
    environmentSetSkyRotationMethodBind = getMethod(cstring"Environment",
        cstring"set_sky_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSkyRotationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSkyRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc backgroundSkyRotationDegrees(self: Environment): Vector3 =
  if isNil(environmentGetSkyRotationDegreesMethodBind):
    environmentGetSkyRotationDegreesMethodBind = getMethod(cstring"Environment",
        cstring"get_sky_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSkyRotationDegreesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetSkyRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `backgroundSkyRotationDegrees=`(self: Environment; val: Vector3) =
  if isNil(environmentSetSkyRotationDegreesMethodBind):
    environmentSetSkyRotationDegreesMethodBind = getMethod(cstring"Environment",
        cstring"set_sky_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSkyRotationDegreesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurFarAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurFarAmount(self: Environment): float64 =
  if isNil(environmentGetDofBlurFarAmountMethodBind):
    environmentGetDofBlurFarAmountMethodBind = getMethod(cstring"Environment",
        cstring"get_dof_blur_far_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurFarAmountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurFarAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurFarAmount=`(self: Environment; val: float64) =
  if isNil(environmentSetDofBlurFarAmountMethodBind):
    environmentSetDofBlurFarAmountMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_far_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurFarAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurFarDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurFarDistance(self: Environment): float64 =
  if isNil(environmentGetDofBlurFarDistanceMethodBind):
    environmentGetDofBlurFarDistanceMethodBind = getMethod(cstring"Environment",
        cstring"get_dof_blur_far_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurFarDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurFarDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurFarDistance=`(self: Environment; val: float64) =
  if isNil(environmentSetDofBlurFarDistanceMethodBind):
    environmentSetDofBlurFarDistanceMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_far_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurFarDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsDofBlurFarEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurFarEnabled(self: Environment): bool =
  if isNil(environmentIsDofBlurFarEnabledMethodBind):
    environmentIsDofBlurFarEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_dof_blur_far_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsDofBlurFarEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurFarEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurFarEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetDofBlurFarEnabledMethodBind):
    environmentSetDofBlurFarEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_far_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurFarEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurFarQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurFarQuality(self: Environment): int64 =
  if isNil(environmentGetDofBlurFarQualityMethodBind):
    environmentGetDofBlurFarQualityMethodBind = getMethod(cstring"Environment",
        cstring"get_dof_blur_far_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurFarQualityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurFarQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurFarQuality=`(self: Environment; val: int64) =
  if isNil(environmentSetDofBlurFarQualityMethodBind):
    environmentSetDofBlurFarQualityMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_far_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurFarQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurFarTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurFarTransition(self: Environment): float64 =
  if isNil(environmentGetDofBlurFarTransitionMethodBind):
    environmentGetDofBlurFarTransitionMethodBind = getMethod(
        cstring"Environment", cstring"get_dof_blur_far_transition")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurFarTransitionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurFarTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurFarTransition=`(self: Environment; val: float64) =
  if isNil(environmentSetDofBlurFarTransitionMethodBind):
    environmentSetDofBlurFarTransitionMethodBind = getMethod(
        cstring"Environment", cstring"set_dof_blur_far_transition")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurFarTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurNearAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurNearAmount(self: Environment): float64 =
  if isNil(environmentGetDofBlurNearAmountMethodBind):
    environmentGetDofBlurNearAmountMethodBind = getMethod(cstring"Environment",
        cstring"get_dof_blur_near_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurNearAmountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurNearAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurNearAmount=`(self: Environment; val: float64) =
  if isNil(environmentSetDofBlurNearAmountMethodBind):
    environmentSetDofBlurNearAmountMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_near_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurNearAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurNearDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurNearDistance(self: Environment): float64 =
  if isNil(environmentGetDofBlurNearDistanceMethodBind):
    environmentGetDofBlurNearDistanceMethodBind = getMethod(cstring"Environment",
        cstring"get_dof_blur_near_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurNearDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurNearDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurNearDistance=`(self: Environment; val: float64) =
  if isNil(environmentSetDofBlurNearDistanceMethodBind):
    environmentSetDofBlurNearDistanceMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_near_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurNearDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsDofBlurNearEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurNearEnabled(self: Environment): bool =
  if isNil(environmentIsDofBlurNearEnabledMethodBind):
    environmentIsDofBlurNearEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_dof_blur_near_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsDofBlurNearEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurNearEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurNearEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetDofBlurNearEnabledMethodBind):
    environmentSetDofBlurNearEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_near_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurNearEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurNearQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurNearQuality(self: Environment): int64 =
  if isNil(environmentGetDofBlurNearQualityMethodBind):
    environmentGetDofBlurNearQualityMethodBind = getMethod(cstring"Environment",
        cstring"get_dof_blur_near_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurNearQualityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurNearQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurNearQuality=`(self: Environment; val: int64) =
  if isNil(environmentSetDofBlurNearQualityMethodBind):
    environmentSetDofBlurNearQualityMethodBind = getMethod(cstring"Environment",
        cstring"set_dof_blur_near_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurNearQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetDofBlurNearTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc dofBlurNearTransition(self: Environment): float64 =
  if isNil(environmentGetDofBlurNearTransitionMethodBind):
    environmentGetDofBlurNearTransitionMethodBind = getMethod(
        cstring"Environment", cstring"get_dof_blur_near_transition")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetDofBlurNearTransitionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetDofBlurNearTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dofBlurNearTransition=`(self: Environment; val: float64) =
  if isNil(environmentSetDofBlurNearTransitionMethodBind):
    environmentSetDofBlurNearTransitionMethodBind = getMethod(
        cstring"Environment", cstring"set_dof_blur_near_transition")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetDofBlurNearTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogColor(self: Environment): Color =
  if isNil(environmentGetFogColorMethodBind):
    environmentGetFogColorMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogColor=`(self: Environment; val: Color) =
  if isNil(environmentSetFogColorMethodBind):
    environmentSetFogColorMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetFogDepthBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogDepthBegin(self: Environment): float64 =
  if isNil(environmentGetFogDepthBeginMethodBind):
    environmentGetFogDepthBeginMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_depth_begin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogDepthBeginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogDepthBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogDepthBegin=`(self: Environment; val: float64) =
  if isNil(environmentSetFogDepthBeginMethodBind):
    environmentSetFogDepthBeginMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_depth_begin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogDepthBeginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogDepthCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogDepthCurve(self: Environment): float64 =
  if isNil(environmentGetFogDepthCurveMethodBind):
    environmentGetFogDepthCurveMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_depth_curve")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogDepthCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogDepthCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogDepthCurve=`(self: Environment; val: float64) =
  if isNil(environmentSetFogDepthCurveMethodBind):
    environmentSetFogDepthCurveMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_depth_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogDepthCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsFogDepthEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogDepthEnabled(self: Environment): bool =
  if isNil(environmentIsFogDepthEnabledMethodBind):
    environmentIsFogDepthEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_fog_depth_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsFogDepthEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogDepthEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogDepthEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetFogDepthEnabledMethodBind):
    environmentSetFogDepthEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_depth_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogDepthEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogDepthEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogDepthEnd(self: Environment): float64 =
  if isNil(environmentGetFogDepthEndMethodBind):
    environmentGetFogDepthEndMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_depth_end")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogDepthEndMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogDepthEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogDepthEnd=`(self: Environment; val: float64) =
  if isNil(environmentSetFogDepthEndMethodBind):
    environmentSetFogDepthEndMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_depth_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogDepthEndMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsFogEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogEnabled(self: Environment): bool =
  if isNil(environmentIsFogEnabledMethodBind):
    environmentIsFogEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_fog_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsFogEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetFogEnabledMethodBind):
    environmentSetFogEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetFogHeightCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogHeightCurve(self: Environment): float64 =
  if isNil(environmentGetFogHeightCurveMethodBind):
    environmentGetFogHeightCurveMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_height_curve")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogHeightCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogHeightCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogHeightCurve=`(self: Environment; val: float64) =
  if isNil(environmentSetFogHeightCurveMethodBind):
    environmentSetFogHeightCurveMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_height_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogHeightCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsFogHeightEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogHeightEnabled(self: Environment): bool =
  if isNil(environmentIsFogHeightEnabledMethodBind):
    environmentIsFogHeightEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_fog_height_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsFogHeightEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetFogHeightEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogHeightEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetFogHeightEnabledMethodBind):
    environmentSetFogHeightEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_height_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogHeightEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogHeightMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogHeightMax(self: Environment): float64 =
  if isNil(environmentGetFogHeightMaxMethodBind):
    environmentGetFogHeightMaxMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_height_max")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogHeightMaxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogHeightMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogHeightMax=`(self: Environment; val: float64) =
  if isNil(environmentSetFogHeightMaxMethodBind):
    environmentSetFogHeightMaxMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_height_max")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogHeightMaxMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogHeightMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogHeightMin(self: Environment): float64 =
  if isNil(environmentGetFogHeightMinMethodBind):
    environmentGetFogHeightMinMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_height_min")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogHeightMinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogHeightMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogHeightMin=`(self: Environment; val: float64) =
  if isNil(environmentSetFogHeightMinMethodBind):
    environmentSetFogHeightMinMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_height_min")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogHeightMinMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogSunAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogSunAmount(self: Environment): float64 =
  if isNil(environmentGetFogSunAmountMethodBind):
    environmentGetFogSunAmountMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_sun_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogSunAmountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogSunAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogSunAmount=`(self: Environment; val: float64) =
  if isNil(environmentSetFogSunAmountMethodBind):
    environmentSetFogSunAmountMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_sun_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogSunAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogSunColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogSunColor(self: Environment): Color =
  if isNil(environmentGetFogSunColorMethodBind):
    environmentGetFogSunColorMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_sun_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogSunColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetFogSunColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogSunColor=`(self: Environment; val: Color) =
  if isNil(environmentSetFogSunColorMethodBind):
    environmentSetFogSunColorMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_sun_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogSunColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetFogTransmitCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogTransmitCurve(self: Environment): float64 =
  if isNil(environmentGetFogTransmitCurveMethodBind):
    environmentGetFogTransmitCurveMethodBind = getMethod(cstring"Environment",
        cstring"get_fog_transmit_curve")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetFogTransmitCurveMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetFogTransmitCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogTransmitCurve=`(self: Environment; val: float64) =
  if isNil(environmentSetFogTransmitCurveMethodBind):
    environmentSetFogTransmitCurveMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_transmit_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogTransmitCurveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsFogTransmitEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc fogTransmitEnabled(self: Environment): bool =
  if isNil(environmentIsFogTransmitEnabledMethodBind):
    environmentIsFogTransmitEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_fog_transmit_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsFogTransmitEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetFogTransmitEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fogTransmitEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetFogTransmitEnabledMethodBind):
    environmentSetFogTransmitEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_fog_transmit_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetFogTransmitEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsGlowBicubicUpscaleEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowBicubicUpscale(self: Environment): bool =
  if isNil(environmentIsGlowBicubicUpscaleEnabledMethodBind):
    environmentIsGlowBicubicUpscaleEnabledMethodBind = getMethod(
        cstring"Environment", cstring"is_glow_bicubic_upscale_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowBicubicUpscaleEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetGlowBicubicUpscaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowBicubicUpscale=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowBicubicUpscaleMethodBind):
    environmentSetGlowBicubicUpscaleMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_bicubic_upscale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowBicubicUpscaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetGlowBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowBlendMode(self: Environment): int64 =
  if isNil(environmentGetGlowBlendModeMethodBind):
    environmentGetGlowBlendModeMethodBind = getMethod(cstring"Environment",
        cstring"get_glow_blend_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetGlowBlendModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetGlowBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowBlendMode=`(self: Environment; val: int64) =
  if isNil(environmentSetGlowBlendModeMethodBind):
    environmentSetGlowBlendModeMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_blend_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowBlendModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetGlowBloomMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowBloom(self: Environment): float64 =
  if isNil(environmentGetGlowBloomMethodBind):
    environmentGetGlowBloomMethodBind = getMethod(cstring"Environment",
        cstring"get_glow_bloom")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetGlowBloomMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetGlowBloomMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowBloom=`(self: Environment; val: float64) =
  if isNil(environmentSetGlowBloomMethodBind):
    environmentSetGlowBloomMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_bloom")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowBloomMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentIsGlowEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowEnabled(self: Environment): bool =
  if isNil(environmentIsGlowEnabledMethodBind):
    environmentIsGlowEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetGlowEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowEnabledMethodBind):
    environmentSetGlowEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetGlowHdrLuminanceCapMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowHdrLuminanceCap(self: Environment): float64 =
  if isNil(environmentGetGlowHdrLuminanceCapMethodBind):
    environmentGetGlowHdrLuminanceCapMethodBind = getMethod(cstring"Environment",
        cstring"get_glow_hdr_luminance_cap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetGlowHdrLuminanceCapMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetGlowHdrLuminanceCapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowHdrLuminanceCap=`(self: Environment; val: float64) =
  if isNil(environmentSetGlowHdrLuminanceCapMethodBind):
    environmentSetGlowHdrLuminanceCapMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_hdr_luminance_cap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowHdrLuminanceCapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetGlowHdrBleedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowHdrScale(self: Environment): float64 =
  if isNil(environmentGetGlowHdrBleedScaleMethodBind):
    environmentGetGlowHdrBleedScaleMethodBind = getMethod(cstring"Environment",
        cstring"get_glow_hdr_bleed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetGlowHdrBleedScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetGlowHdrBleedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowHdrScale=`(self: Environment; val: float64) =
  if isNil(environmentSetGlowHdrBleedScaleMethodBind):
    environmentSetGlowHdrBleedScaleMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_hdr_bleed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowHdrBleedScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetGlowHdrBleedThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowHdrThreshold(self: Environment): float64 =
  if isNil(environmentGetGlowHdrBleedThresholdMethodBind):
    environmentGetGlowHdrBleedThresholdMethodBind = getMethod(
        cstring"Environment", cstring"get_glow_hdr_bleed_threshold")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetGlowHdrBleedThresholdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetGlowHdrBleedThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowHdrThreshold=`(self: Environment; val: float64) =
  if isNil(environmentSetGlowHdrBleedThresholdMethodBind):
    environmentSetGlowHdrBleedThresholdMethodBind = getMethod(
        cstring"Environment", cstring"set_glow_hdr_bleed_threshold")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowHdrBleedThresholdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetGlowIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowIntensity(self: Environment): float64 =
  if isNil(environmentGetGlowIntensityMethodBind):
    environmentGetGlowIntensityMethodBind = getMethod(cstring"Environment",
        cstring"get_glow_intensity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetGlowIntensityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetGlowIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowIntensity=`(self: Environment; val: float64) =
  if isNil(environmentSetGlowIntensityMethodBind):
    environmentSetGlowIntensityMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_intensity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowIntensityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsGlowLevelEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowLevels1(self: Environment): bool =
  if isNil(environmentIsGlowLevelEnabledMethodBind):
    environmentIsGlowLevelEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_level_enabled")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowLevelEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentSetGlowLevelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowLevels1=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowLevelMethodBind):
    environmentSetGlowLevelMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_level")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowLevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc glowLevels2(self: Environment): bool =
  if isNil(environmentIsGlowLevelEnabledMethodBind):
    environmentIsGlowLevelEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_level_enabled")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowLevelEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `glowLevels2=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowLevelMethodBind):
    environmentSetGlowLevelMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_level")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowLevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc glowLevels3(self: Environment): bool =
  if isNil(environmentIsGlowLevelEnabledMethodBind):
    environmentIsGlowLevelEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_level_enabled")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowLevelEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `glowLevels3=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowLevelMethodBind):
    environmentSetGlowLevelMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_level")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowLevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc glowLevels4(self: Environment): bool =
  if isNil(environmentIsGlowLevelEnabledMethodBind):
    environmentIsGlowLevelEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_level_enabled")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowLevelEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `glowLevels4=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowLevelMethodBind):
    environmentSetGlowLevelMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_level")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowLevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc glowLevels5(self: Environment): bool =
  if isNil(environmentIsGlowLevelEnabledMethodBind):
    environmentIsGlowLevelEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_level_enabled")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowLevelEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `glowLevels5=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowLevelMethodBind):
    environmentSetGlowLevelMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_level")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowLevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc glowLevels6(self: Environment): bool =
  if isNil(environmentIsGlowLevelEnabledMethodBind):
    environmentIsGlowLevelEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_level_enabled")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowLevelEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `glowLevels6=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowLevelMethodBind):
    environmentSetGlowLevelMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_level")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowLevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc glowLevels7(self: Environment): bool =
  if isNil(environmentIsGlowLevelEnabledMethodBind):
    environmentIsGlowLevelEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_glow_level_enabled")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsGlowLevelEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `glowLevels7=`(self: Environment; val: bool) =
  if isNil(environmentSetGlowLevelMethodBind):
    environmentSetGlowLevelMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_level")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowLevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetGlowStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc glowStrength(self: Environment): float64 =
  if isNil(environmentGetGlowStrengthMethodBind):
    environmentGetGlowStrengthMethodBind = getMethod(cstring"Environment",
        cstring"get_glow_strength")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetGlowStrengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetGlowStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glowStrength=`(self: Environment; val: float64) =
  if isNil(environmentSetGlowStrengthMethodBind):
    environmentSetGlowStrengthMethodBind = getMethod(cstring"Environment",
        cstring"set_glow_strength")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetGlowStrengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSsrDepthToleranceMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssReflectionsDepthTolerance(self: Environment): float64 =
  if isNil(environmentGetSsrDepthToleranceMethodBind):
    environmentGetSsrDepthToleranceMethodBind = getMethod(cstring"Environment",
        cstring"get_ssr_depth_tolerance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsrDepthToleranceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetSsrDepthToleranceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssReflectionsDepthTolerance=`(self: Environment; val: float64) =
  if isNil(environmentSetSsrDepthToleranceMethodBind):
    environmentSetSsrDepthToleranceMethodBind = getMethod(cstring"Environment",
        cstring"set_ssr_depth_tolerance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsrDepthToleranceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsSsrEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssReflectionsEnabled(self: Environment): bool =
  if isNil(environmentIsSsrEnabledMethodBind):
    environmentIsSsrEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_ssr_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsSsrEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsrEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssReflectionsEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetSsrEnabledMethodBind):
    environmentSetSsrEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_ssr_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsrEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsrFadeInMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssReflectionsFadeIn(self: Environment): float64 =
  if isNil(environmentGetSsrFadeInMethodBind):
    environmentGetSsrFadeInMethodBind = getMethod(cstring"Environment",
        cstring"get_ssr_fade_in")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsrFadeInMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsrFadeInMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssReflectionsFadeIn=`(self: Environment; val: float64) =
  if isNil(environmentSetSsrFadeInMethodBind):
    environmentSetSsrFadeInMethodBind = getMethod(cstring"Environment",
        cstring"set_ssr_fade_in")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsrFadeInMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsrFadeOutMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssReflectionsFadeOut(self: Environment): float64 =
  if isNil(environmentGetSsrFadeOutMethodBind):
    environmentGetSsrFadeOutMethodBind = getMethod(cstring"Environment",
        cstring"get_ssr_fade_out")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsrFadeOutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsrFadeOutMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssReflectionsFadeOut=`(self: Environment; val: float64) =
  if isNil(environmentSetSsrFadeOutMethodBind):
    environmentSetSsrFadeOutMethodBind = getMethod(cstring"Environment",
        cstring"set_ssr_fade_out")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsrFadeOutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsrMaxStepsMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssReflectionsMaxSteps(self: Environment): int64 =
  if isNil(environmentGetSsrMaxStepsMethodBind):
    environmentGetSsrMaxStepsMethodBind = getMethod(cstring"Environment",
        cstring"get_ssr_max_steps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsrMaxStepsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsrMaxStepsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssReflectionsMaxSteps=`(self: Environment; val: int64) =
  if isNil(environmentSetSsrMaxStepsMethodBind):
    environmentSetSsrMaxStepsMethodBind = getMethod(cstring"Environment",
        cstring"set_ssr_max_steps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsrMaxStepsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsSsrRoughMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssReflectionsRoughness(self: Environment): bool =
  if isNil(environmentIsSsrRoughMethodBind):
    environmentIsSsrRoughMethodBind = getMethod(cstring"Environment",
        cstring"is_ssr_rough")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsSsrRoughMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsrRoughMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssReflectionsRoughness=`(self: Environment; val: bool) =
  if isNil(environmentSetSsrRoughMethodBind):
    environmentSetSsrRoughMethodBind = getMethod(cstring"Environment",
        cstring"set_ssr_rough")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsrRoughMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsaoAoChannelAffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoAoChannelAffect(self: Environment): float64 =
  if isNil(environmentGetSsaoAoChannelAffectMethodBind):
    environmentGetSsaoAoChannelAffectMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_ao_channel_affect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoAoChannelAffectMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetSsaoAoChannelAffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoAoChannelAffect=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoAoChannelAffectMethodBind):
    environmentSetSsaoAoChannelAffectMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_ao_channel_affect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoAoChannelAffectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSsaoBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoBias(self: Environment): float64 =
  if isNil(environmentGetSsaoBiasMethodBind):
    environmentGetSsaoBiasMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoBias=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoBiasMethodBind):
    environmentSetSsaoBiasMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoBiasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsaoBlurMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoBlur(self: Environment): int64 =
  if isNil(environmentGetSsaoBlurMethodBind):
    environmentGetSsaoBlurMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_blur")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoBlurMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoBlurMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoBlur=`(self: Environment; val: int64) =
  if isNil(environmentSetSsaoBlurMethodBind):
    environmentSetSsaoBlurMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_blur")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoBlurMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsaoColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoColor(self: Environment): Color =
  if isNil(environmentGetSsaoColorMethodBind):
    environmentGetSsaoColorMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoColor=`(self: Environment; val: Color) =
  if isNil(environmentSetSsaoColorMethodBind):
    environmentSetSsaoColorMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsaoEdgeSharpnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoEdgeSharpness(self: Environment): float64 =
  if isNil(environmentGetSsaoEdgeSharpnessMethodBind):
    environmentGetSsaoEdgeSharpnessMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_edge_sharpness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoEdgeSharpnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetSsaoEdgeSharpnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoEdgeSharpness=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoEdgeSharpnessMethodBind):
    environmentSetSsaoEdgeSharpnessMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_edge_sharpness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoEdgeSharpnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentIsSsaoEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoEnabled(self: Environment): bool =
  if isNil(environmentIsSsaoEnabledMethodBind):
    environmentIsSsaoEnabledMethodBind = getMethod(cstring"Environment",
        cstring"is_ssao_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentIsSsaoEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoEnabled=`(self: Environment; val: bool) =
  if isNil(environmentSetSsaoEnabledMethodBind):
    environmentSetSsaoEnabledMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSsaoIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoIntensity(self: Environment): float64 =
  if isNil(environmentGetSsaoIntensityMethodBind):
    environmentGetSsaoIntensityMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_intensity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoIntensityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoIntensity=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoIntensityMethodBind):
    environmentSetSsaoIntensityMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_intensity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoIntensityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSsaoIntensity2MethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoIntensity2(self: Environment): float64 =
  if isNil(environmentGetSsaoIntensity2MethodBind):
    environmentGetSsaoIntensity2MethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_intensity2")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoIntensity2MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoIntensity2MethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoIntensity2=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoIntensity2MethodBind):
    environmentSetSsaoIntensity2MethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_intensity2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoIntensity2MethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSsaoDirectLightAffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoLightAffect(self: Environment): float64 =
  if isNil(environmentGetSsaoDirectLightAffectMethodBind):
    environmentGetSsaoDirectLightAffectMethodBind = getMethod(
        cstring"Environment", cstring"get_ssao_direct_light_affect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoDirectLightAffectMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetSsaoDirectLightAffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoLightAffect=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoDirectLightAffectMethodBind):
    environmentSetSsaoDirectLightAffectMethodBind = getMethod(
        cstring"Environment", cstring"set_ssao_direct_light_affect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoDirectLightAffectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSsaoQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoQuality(self: Environment): int64 =
  if isNil(environmentGetSsaoQualityMethodBind):
    environmentGetSsaoQualityMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoQualityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoQuality=`(self: Environment; val: int64) =
  if isNil(environmentSetSsaoQualityMethodBind):
    environmentSetSsaoQualityMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetSsaoRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoRadius(self: Environment): float64 =
  if isNil(environmentGetSsaoRadiusMethodBind):
    environmentGetSsaoRadiusMethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoRadius=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoRadiusMethodBind):
    environmentSetSsaoRadiusMethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetSsaoRadius2MethodBind {.threadvar.}: ptr GodotMethodBind
proc ssaoRadius2(self: Environment): float64 =
  if isNil(environmentGetSsaoRadius2MethodBind):
    environmentGetSsaoRadius2MethodBind = getMethod(cstring"Environment",
        cstring"get_ssao_radius2")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetSsaoRadius2MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetSsaoRadius2MethodBind {.threadvar.}: ptr GodotMethodBind
proc `ssaoRadius2=`(self: Environment; val: float64) =
  if isNil(environmentSetSsaoRadius2MethodBind):
    environmentSetSsaoRadius2MethodBind = getMethod(cstring"Environment",
        cstring"set_ssao_radius2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetSsaoRadius2MethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetTonemapExposureMethodBind {.threadvar.}: ptr GodotMethodBind
proc tonemapExposure(self: Environment): float64 =
  if isNil(environmentGetTonemapExposureMethodBind):
    environmentGetTonemapExposureMethodBind = getMethod(cstring"Environment",
        cstring"get_tonemap_exposure")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapExposureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var environmentSetTonemapExposureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tonemapExposure=`(self: Environment; val: float64) =
  if isNil(environmentSetTonemapExposureMethodBind):
    environmentSetTonemapExposureMethodBind = getMethod(cstring"Environment",
        cstring"set_tonemap_exposure")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapExposureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var environmentGetTonemapperMethodBind {.threadvar.}: ptr GodotMethodBind
proc tonemapMode(self: Environment): int64 =
  if isNil(environmentGetTonemapperMethodBind):
    environmentGetTonemapperMethodBind = getMethod(cstring"Environment",
        cstring"get_tonemapper")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapperMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetTonemapperMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tonemapMode=`(self: Environment; val: int64) =
  if isNil(environmentSetTonemapperMethodBind):
    environmentSetTonemapperMethodBind = getMethod(cstring"Environment",
        cstring"set_tonemapper")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapperMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var environmentGetTonemapWhiteMethodBind {.threadvar.}: ptr GodotMethodBind
proc tonemapWhite(self: Environment): float64 =
  if isNil(environmentGetTonemapWhiteMethodBind):
    environmentGetTonemapWhiteMethodBind = getMethod(cstring"Environment",
        cstring"get_tonemap_white")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  environmentGetTonemapWhiteMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var environmentSetTonemapWhiteMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tonemapWhite=`(self: Environment; val: float64) =
  if isNil(environmentSetTonemapWhiteMethodBind):
    environmentSetTonemapWhiteMethodBind = getMethod(cstring"Environment",
        cstring"set_tonemap_white")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  environmentSetTonemapWhiteMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
