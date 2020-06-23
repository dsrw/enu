
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  LINE_CAP_BOX* = 1'i64
  LINE_CAP_NONE* = 0'i64
  LINE_CAP_ROUND* = 2'i64
  LINE_JOINT_BEVEL* = 1'i64
  LINE_JOINT_ROUND* = 2'i64
  LINE_JOINT_SHARP* = 0'i64
  LINE_TEXTURE_NONE* = 0'i64
  LINE_TEXTURE_STRETCH* = 2'i64
  LINE_TEXTURE_TILE* = 1'i64
proc antialiased*(self: Line2D): bool {.gcsafe, locks: 0.}
proc `antialiased=`*(self: Line2D; val: bool) {.gcsafe, locks: 0.}
proc beginCapMode*(self: Line2D): int64 {.gcsafe, locks: 0.}
proc `beginCapMode=`*(self: Line2D; val: int64) {.gcsafe, locks: 0.}
proc defaultColor*(self: Line2D): Color {.gcsafe, locks: 0.}
proc `defaultColor=`*(self: Line2D; val: Color) {.gcsafe, locks: 0.}
proc endCapMode*(self: Line2D): int64 {.gcsafe, locks: 0.}
proc `endCapMode=`*(self: Line2D; val: int64) {.gcsafe, locks: 0.}
proc gradient*(self: Line2D): Gradient {.gcsafe, locks: 0.}
proc `gradient=`*(self: Line2D; val: Gradient) {.gcsafe, locks: 0.}
proc jointMode*(self: Line2D): int64 {.gcsafe, locks: 0.}
proc `jointMode=`*(self: Line2D; val: int64) {.gcsafe, locks: 0.}
proc points*(self: Line2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `points=`*(self: Line2D; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc roundPrecision*(self: Line2D): int64 {.gcsafe, locks: 0.}
proc `roundPrecision=`*(self: Line2D; val: int64) {.gcsafe, locks: 0.}
proc sharpLimit*(self: Line2D): float64 {.gcsafe, locks: 0.}
proc `sharpLimit=`*(self: Line2D; val: float64) {.gcsafe, locks: 0.}
proc texture*(self: Line2D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: Line2D; val: Texture) {.gcsafe, locks: 0.}
proc textureMode*(self: Line2D): int64 {.gcsafe, locks: 0.}
proc `textureMode=`*(self: Line2D; val: int64) {.gcsafe, locks: 0.}
proc width*(self: Line2D): float64 {.gcsafe, locks: 0.}
proc `width=`*(self: Line2D; val: float64) {.gcsafe, locks: 0.}
proc widthCurve*(self: Line2D): Curve {.gcsafe, locks: 0.}
proc `widthCurve=`*(self: Line2D; val: Curve) {.gcsafe, locks: 0.}
method curveChanged*(self: Line2D) {.gcsafe, locks: 0, base.}
method gradientChanged*(self: Line2D) {.gcsafe, locks: 0, base.}
proc addPoint*(self: Line2D; position: Vector2; atPosition: int64 = -1'i64) {.gcsafe,
    locks: 0.}
proc clearPoints*(self: Line2D) {.gcsafe, locks: 0.}
proc getPointCount*(self: Line2D): int64 {.gcsafe, locks: 0.}
proc getPointPosition*(self: Line2D; i: int64): Vector2 {.gcsafe, locks: 0.}
proc removePoint*(self: Line2D; i: int64) {.gcsafe, locks: 0.}
proc setPointPosition*(self: Line2D; i: int64; position: Vector2) {.gcsafe, locks: 0.}
var line2DGetAntialiasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc antialiased(self: Line2D): bool =
  if isNil(line2DGetAntialiasedMethodBind):
    line2DGetAntialiasedMethodBind = getMethod(cstring"Line2D",
        cstring"get_antialiased")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetAntialiasedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetAntialiasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `antialiased=`(self: Line2D; val: bool) =
  if isNil(line2DSetAntialiasedMethodBind):
    line2DSetAntialiasedMethodBind = getMethod(cstring"Line2D",
        cstring"set_antialiased")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetAntialiasedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var line2DGetBeginCapModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc beginCapMode(self: Line2D): int64 =
  if isNil(line2DGetBeginCapModeMethodBind):
    line2DGetBeginCapModeMethodBind = getMethod(cstring"Line2D",
        cstring"get_begin_cap_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetBeginCapModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetBeginCapModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `beginCapMode=`(self: Line2D; val: int64) =
  if isNil(line2DSetBeginCapModeMethodBind):
    line2DSetBeginCapModeMethodBind = getMethod(cstring"Line2D",
        cstring"set_begin_cap_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetBeginCapModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var line2DGetDefaultColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc defaultColor(self: Line2D): Color =
  if isNil(line2DGetDefaultColorMethodBind):
    line2DGetDefaultColorMethodBind = getMethod(cstring"Line2D",
        cstring"get_default_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetDefaultColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetDefaultColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `defaultColor=`(self: Line2D; val: Color) =
  if isNil(line2DSetDefaultColorMethodBind):
    line2DSetDefaultColorMethodBind = getMethod(cstring"Line2D",
        cstring"set_default_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetDefaultColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var line2DGetEndCapModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc endCapMode(self: Line2D): int64 =
  if isNil(line2DGetEndCapModeMethodBind):
    line2DGetEndCapModeMethodBind = getMethod(cstring"Line2D",
        cstring"get_end_cap_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetEndCapModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetEndCapModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `endCapMode=`(self: Line2D; val: int64) =
  if isNil(line2DSetEndCapModeMethodBind):
    line2DSetEndCapModeMethodBind = getMethod(cstring"Line2D",
        cstring"set_end_cap_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetEndCapModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var line2DGetGradientMethodBind {.threadvar.}: ptr GodotMethodBind
proc gradient(self: Line2D): Gradient =
  if isNil(line2DGetGradientMethodBind):
    line2DGetGradientMethodBind = getMethod(cstring"Line2D", cstring"get_gradient")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  line2DGetGradientMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var line2DSetGradientMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gradient=`(self: Line2D; val: Gradient) =
  if isNil(line2DSetGradientMethodBind):
    line2DSetGradientMethodBind = getMethod(cstring"Line2D", cstring"set_gradient")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  line2DSetGradientMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var line2DGetJointModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointMode(self: Line2D): int64 =
  if isNil(line2DGetJointModeMethodBind):
    line2DGetJointModeMethodBind = getMethod(cstring"Line2D",
        cstring"get_joint_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetJointModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetJointModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `jointMode=`(self: Line2D; val: int64) =
  if isNil(line2DSetJointModeMethodBind):
    line2DSetJointModeMethodBind = getMethod(cstring"Line2D",
        cstring"set_joint_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetJointModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var line2DGetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc points(self: Line2D): PoolVector2Array =
  if isNil(line2DGetPointsMethodBind):
    line2DGetPointsMethodBind = getMethod(cstring"Line2D", cstring"get_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  line2DGetPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var line2DSetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `points=`(self: Line2D; val: PoolVector2Array) =
  if isNil(line2DSetPointsMethodBind):
    line2DSetPointsMethodBind = getMethod(cstring"Line2D", cstring"set_points")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  line2DSetPointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var line2DGetRoundPrecisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc roundPrecision(self: Line2D): int64 =
  if isNil(line2DGetRoundPrecisionMethodBind):
    line2DGetRoundPrecisionMethodBind = getMethod(cstring"Line2D",
        cstring"get_round_precision")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetRoundPrecisionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetRoundPrecisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roundPrecision=`(self: Line2D; val: int64) =
  if isNil(line2DSetRoundPrecisionMethodBind):
    line2DSetRoundPrecisionMethodBind = getMethod(cstring"Line2D",
        cstring"set_round_precision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetRoundPrecisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var line2DGetSharpLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc sharpLimit(self: Line2D): float64 =
  if isNil(line2DGetSharpLimitMethodBind):
    line2DGetSharpLimitMethodBind = getMethod(cstring"Line2D",
        cstring"get_sharp_limit")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetSharpLimitMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetSharpLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sharpLimit=`(self: Line2D; val: float64) =
  if isNil(line2DSetSharpLimitMethodBind):
    line2DSetSharpLimitMethodBind = getMethod(cstring"Line2D",
        cstring"set_sharp_limit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetSharpLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var line2DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: Line2D): Texture =
  if isNil(line2DGetTextureMethodBind):
    line2DGetTextureMethodBind = getMethod(cstring"Line2D", cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  line2DGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var line2DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: Line2D; val: Texture) =
  if isNil(line2DSetTextureMethodBind):
    line2DSetTextureMethodBind = getMethod(cstring"Line2D", cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  line2DSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var line2DGetTextureModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureMode(self: Line2D): int64 =
  if isNil(line2DGetTextureModeMethodBind):
    line2DGetTextureModeMethodBind = getMethod(cstring"Line2D",
        cstring"get_texture_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetTextureModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetTextureModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureMode=`(self: Line2D; val: int64) =
  if isNil(line2DSetTextureModeMethodBind):
    line2DSetTextureModeMethodBind = getMethod(cstring"Line2D",
        cstring"set_texture_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetTextureModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var line2DGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc width(self: Line2D): float64 =
  if isNil(line2DGetWidthMethodBind):
    line2DGetWidthMethodBind = getMethod(cstring"Line2D", cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DSetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `width=`(self: Line2D; val: float64) =
  if isNil(line2DSetWidthMethodBind):
    line2DSetWidthMethodBind = getMethod(cstring"Line2D", cstring"set_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  line2DSetWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var line2DGetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc widthCurve(self: Line2D): Curve =
  if isNil(line2DGetCurveMethodBind):
    line2DGetCurveMethodBind = getMethod(cstring"Line2D", cstring"get_curve")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  line2DGetCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var line2DSetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `widthCurve=`(self: Line2D; val: Curve) =
  if isNil(line2DSetCurveMethodBind):
    line2DSetCurveMethodBind = getMethod(cstring"Line2D", cstring"set_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  line2DSetCurveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var line2DUnderscorecurveChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method curveChanged(self: Line2D) =
  if isNil(line2DUnderscorecurveChangedMethodBind):
    line2DUnderscorecurveChangedMethodBind = getMethod(cstring"Line2D",
        cstring"_curve_changed")
  var ptrCallRet: pointer
  line2DUnderscorecurveChangedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DUnderscoregradientChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method gradientChanged(self: Line2D) =
  if isNil(line2DUnderscoregradientChangedMethodBind):
    line2DUnderscoregradientChangedMethodBind = getMethod(cstring"Line2D",
        cstring"_gradient_changed")
  var ptrCallRet: pointer
  line2DUnderscoregradientChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var line2DAddPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPoint(self: Line2D; position: Vector2; atPosition: int64 = -1'i64) =
  if isNil(line2DAddPointMethodBind):
    line2DAddPointMethodBind = getMethod(cstring"Line2D", cstring"add_point")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  line2DAddPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var line2DClearPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearPoints(self: Line2D) =
  if isNil(line2DClearPointsMethodBind):
    line2DClearPointsMethodBind = getMethod(cstring"Line2D", cstring"clear_points")
  var ptrCallRet: pointer
  line2DClearPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DGetPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCount(self: Line2D): int64 =
  if isNil(line2DGetPointCountMethodBind):
    line2DGetPointCountMethodBind = getMethod(cstring"Line2D",
        cstring"get_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetPointCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var line2DGetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPosition(self: Line2D; i: int64): Vector2 =
  if isNil(line2DGetPointPositionMethodBind):
    line2DGetPointPositionMethodBind = getMethod(cstring"Line2D",
        cstring"get_point_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(i)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  line2DGetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var line2DRemovePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePoint(self: Line2D; i: int64) =
  if isNil(line2DRemovePointMethodBind):
    line2DRemovePointMethodBind = getMethod(cstring"Line2D", cstring"remove_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(i)
  var ptrCallRet: pointer
  line2DRemovePointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var line2DSetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointPosition(self: Line2D; i: int64; position: Vector2) =
  if isNil(line2DSetPointPositionMethodBind):
    line2DSetPointPositionMethodBind = getMethod(cstring"Line2D",
        cstring"set_point_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(i)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  line2DSetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
