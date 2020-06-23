
import
  godot, godottypes, godotinternal, range

export
  godottypes, range

const
  FILL_BILINEAR_LEFT_AND_RIGHT* = 6'i64
  FILL_BILINEAR_TOP_AND_BOTTOM* = 7'i64
  FILL_BOTTOM_TO_TOP* = 3'i64
  FILL_CLOCKWISE* = 4'i64
  FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE* = 8'i64
  FILL_COUNTER_CLOCKWISE* = 5'i64
  FILL_LEFT_TO_RIGHT* = 0'i64
  FILL_RIGHT_TO_LEFT* = 1'i64
  FILL_TOP_TO_BOTTOM* = 2'i64
proc fillMode*(self: TextureProgress): int64 {.gcsafe, locks: 0.}
proc `fillMode=`*(self: TextureProgress; val: int64) {.gcsafe, locks: 0.}
proc ninePatchStretch*(self: TextureProgress): bool {.gcsafe, locks: 0.}
proc `ninePatchStretch=`*(self: TextureProgress; val: bool) {.gcsafe, locks: 0.}
proc radialCenterOffset*(self: TextureProgress): Vector2 {.gcsafe, locks: 0.}
proc `radialCenterOffset=`*(self: TextureProgress; val: Vector2) {.gcsafe, locks: 0.}
proc radialFillDegrees*(self: TextureProgress): float64 {.gcsafe, locks: 0.}
proc `radialFillDegrees=`*(self: TextureProgress; val: float64) {.gcsafe, locks: 0.}
proc radialInitialAngle*(self: TextureProgress): float64 {.gcsafe, locks: 0.}
proc `radialInitialAngle=`*(self: TextureProgress; val: float64) {.gcsafe, locks: 0.}
proc stretchMarginBottom*(self: TextureProgress): int64 {.gcsafe, locks: 0.}
proc `stretchMarginBottom=`*(self: TextureProgress; val: int64) {.gcsafe, locks: 0.}
proc stretchMarginLeft*(self: TextureProgress): int64 {.gcsafe, locks: 0.}
proc `stretchMarginLeft=`*(self: TextureProgress; val: int64) {.gcsafe, locks: 0.}
proc stretchMarginRight*(self: TextureProgress): int64 {.gcsafe, locks: 0.}
proc `stretchMarginRight=`*(self: TextureProgress; val: int64) {.gcsafe, locks: 0.}
proc stretchMarginTop*(self: TextureProgress): int64 {.gcsafe, locks: 0.}
proc `stretchMarginTop=`*(self: TextureProgress; val: int64) {.gcsafe, locks: 0.}
proc textureOver*(self: TextureProgress): Texture {.gcsafe, locks: 0.}
proc `textureOver=`*(self: TextureProgress; val: Texture) {.gcsafe, locks: 0.}
proc textureProgress*(self: TextureProgress): Texture {.gcsafe, locks: 0.}
proc `textureProgress=`*(self: TextureProgress; val: Texture) {.gcsafe, locks: 0.}
proc textureUnder*(self: TextureProgress): Texture {.gcsafe, locks: 0.}
proc `textureUnder=`*(self: TextureProgress; val: Texture) {.gcsafe, locks: 0.}
proc tintOver*(self: TextureProgress): Color {.gcsafe, locks: 0.}
proc `tintOver=`*(self: TextureProgress; val: Color) {.gcsafe, locks: 0.}
proc tintProgress*(self: TextureProgress): Color {.gcsafe, locks: 0.}
proc `tintProgress=`*(self: TextureProgress; val: Color) {.gcsafe, locks: 0.}
proc tintUnder*(self: TextureProgress): Color {.gcsafe, locks: 0.}
proc `tintUnder=`*(self: TextureProgress; val: Color) {.gcsafe, locks: 0.}
var textureProgressGetFillModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc fillMode(self: TextureProgress): int64 =
  if isNil(textureProgressGetFillModeMethodBind):
    textureProgressGetFillModeMethodBind = getMethod(cstring"TextureProgress",
        cstring"get_fill_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetFillModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureProgressSetFillModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fillMode=`(self: TextureProgress; val: int64) =
  if isNil(textureProgressSetFillModeMethodBind):
    textureProgressSetFillModeMethodBind = getMethod(cstring"TextureProgress",
        cstring"set_fill_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetFillModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetNinePatchStretchMethodBind {.threadvar.}: ptr GodotMethodBind
proc ninePatchStretch(self: TextureProgress): bool =
  if isNil(textureProgressGetNinePatchStretchMethodBind):
    textureProgressGetNinePatchStretchMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_nine_patch_stretch")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetNinePatchStretchMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textureProgressSetNinePatchStretchMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ninePatchStretch=`(self: TextureProgress; val: bool) =
  if isNil(textureProgressSetNinePatchStretchMethodBind):
    textureProgressSetNinePatchStretchMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_nine_patch_stretch")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetNinePatchStretchMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetRadialCenterOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc radialCenterOffset(self: TextureProgress): Vector2 =
  if isNil(textureProgressGetRadialCenterOffsetMethodBind):
    textureProgressGetRadialCenterOffsetMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_radial_center_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetRadialCenterOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textureProgressSetRadialCenterOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radialCenterOffset=`(self: TextureProgress; val: Vector2) =
  if isNil(textureProgressSetRadialCenterOffsetMethodBind):
    textureProgressSetRadialCenterOffsetMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_radial_center_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetRadialCenterOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetFillDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc radialFillDegrees(self: TextureProgress): float64 =
  if isNil(textureProgressGetFillDegreesMethodBind):
    textureProgressGetFillDegreesMethodBind = getMethod(cstring"TextureProgress",
        cstring"get_fill_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetFillDegreesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textureProgressSetFillDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radialFillDegrees=`(self: TextureProgress; val: float64) =
  if isNil(textureProgressSetFillDegreesMethodBind):
    textureProgressSetFillDegreesMethodBind = getMethod(cstring"TextureProgress",
        cstring"set_fill_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetFillDegreesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetRadialInitialAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc radialInitialAngle(self: TextureProgress): float64 =
  if isNil(textureProgressGetRadialInitialAngleMethodBind):
    textureProgressGetRadialInitialAngleMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_radial_initial_angle")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetRadialInitialAngleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textureProgressSetRadialInitialAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radialInitialAngle=`(self: TextureProgress; val: float64) =
  if isNil(textureProgressSetRadialInitialAngleMethodBind):
    textureProgressSetRadialInitialAngleMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_radial_initial_angle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetRadialInitialAngleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetStretchMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc stretchMarginBottom(self: TextureProgress): int64 =
  if isNil(textureProgressGetStretchMarginMethodBind):
    textureProgressGetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_stretch_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressSetStretchMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stretchMarginBottom=`(self: TextureProgress; val: int64) =
  if isNil(textureProgressSetStretchMarginMethodBind):
    textureProgressSetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_stretch_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc stretchMarginLeft(self: TextureProgress): int64 =
  if isNil(textureProgressGetStretchMarginMethodBind):
    textureProgressGetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_stretch_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `stretchMarginLeft=`(self: TextureProgress; val: int64) =
  if isNil(textureProgressSetStretchMarginMethodBind):
    textureProgressSetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_stretch_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc stretchMarginRight(self: TextureProgress): int64 =
  if isNil(textureProgressGetStretchMarginMethodBind):
    textureProgressGetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_stretch_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `stretchMarginRight=`(self: TextureProgress; val: int64) =
  if isNil(textureProgressSetStretchMarginMethodBind):
    textureProgressSetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_stretch_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc stretchMarginTop(self: TextureProgress): int64 =
  if isNil(textureProgressGetStretchMarginMethodBind):
    textureProgressGetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_stretch_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `stretchMarginTop=`(self: TextureProgress; val: int64) =
  if isNil(textureProgressSetStretchMarginMethodBind):
    textureProgressSetStretchMarginMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_stretch_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetStretchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetOverTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureOver(self: TextureProgress): Texture =
  if isNil(textureProgressGetOverTextureMethodBind):
    textureProgressGetOverTextureMethodBind = getMethod(cstring"TextureProgress",
        cstring"get_over_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureProgressGetOverTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureProgressSetOverTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureOver=`(self: TextureProgress; val: Texture) =
  if isNil(textureProgressSetOverTextureMethodBind):
    textureProgressSetOverTextureMethodBind = getMethod(cstring"TextureProgress",
        cstring"set_over_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureProgressSetOverTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetProgressTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureProgress(self: TextureProgress): Texture =
  if isNil(textureProgressGetProgressTextureMethodBind):
    textureProgressGetProgressTextureMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_progress_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureProgressGetProgressTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureProgressSetProgressTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureProgress=`(self: TextureProgress; val: Texture) =
  if isNil(textureProgressSetProgressTextureMethodBind):
    textureProgressSetProgressTextureMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_progress_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureProgressSetProgressTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetUnderTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureUnder(self: TextureProgress): Texture =
  if isNil(textureProgressGetUnderTextureMethodBind):
    textureProgressGetUnderTextureMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_under_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureProgressGetUnderTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureProgressSetUnderTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureUnder=`(self: TextureProgress; val: Texture) =
  if isNil(textureProgressSetUnderTextureMethodBind):
    textureProgressSetUnderTextureMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_under_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  textureProgressSetUnderTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetTintOverMethodBind {.threadvar.}: ptr GodotMethodBind
proc tintOver(self: TextureProgress): Color =
  if isNil(textureProgressGetTintOverMethodBind):
    textureProgressGetTintOverMethodBind = getMethod(cstring"TextureProgress",
        cstring"get_tint_over")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetTintOverMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureProgressSetTintOverMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tintOver=`(self: TextureProgress; val: Color) =
  if isNil(textureProgressSetTintOverMethodBind):
    textureProgressSetTintOverMethodBind = getMethod(cstring"TextureProgress",
        cstring"set_tint_over")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetTintOverMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetTintProgressMethodBind {.threadvar.}: ptr GodotMethodBind
proc tintProgress(self: TextureProgress): Color =
  if isNil(textureProgressGetTintProgressMethodBind):
    textureProgressGetTintProgressMethodBind = getMethod(
        cstring"TextureProgress", cstring"get_tint_progress")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetTintProgressMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textureProgressSetTintProgressMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tintProgress=`(self: TextureProgress; val: Color) =
  if isNil(textureProgressSetTintProgressMethodBind):
    textureProgressSetTintProgressMethodBind = getMethod(
        cstring"TextureProgress", cstring"set_tint_progress")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetTintProgressMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureProgressGetTintUnderMethodBind {.threadvar.}: ptr GodotMethodBind
proc tintUnder(self: TextureProgress): Color =
  if isNil(textureProgressGetTintUnderMethodBind):
    textureProgressGetTintUnderMethodBind = getMethod(cstring"TextureProgress",
        cstring"get_tint_under")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureProgressGetTintUnderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureProgressSetTintUnderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tintUnder=`(self: TextureProgress; val: Color) =
  if isNil(textureProgressSetTintUnderMethodBind):
    textureProgressSetTintUnderMethodBind = getMethod(cstring"TextureProgress",
        cstring"set_tint_under")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureProgressSetTintUnderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
