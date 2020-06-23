
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  TANGENT_FREE* = 0'i64
  TANGENT_LINEAR* = 1'i64
  TANGENT_MODE_COUNT* = 2'i64
proc data*(self: Curve): Array {.gcsafe, locks: 0.}
proc `data=`*(self: Curve; val: Array) {.gcsafe, locks: 0.}
proc bakeResolution*(self: Curve): int64 {.gcsafe, locks: 0.}
proc `bakeResolution=`*(self: Curve; val: int64) {.gcsafe, locks: 0.}
proc maxValue*(self: Curve): float64 {.gcsafe, locks: 0.}
proc `maxValue=`*(self: Curve; val: float64) {.gcsafe, locks: 0.}
proc minValue*(self: Curve): float64 {.gcsafe, locks: 0.}
proc `minValue=`*(self: Curve; val: float64) {.gcsafe, locks: 0.}
proc addPoint*(self: Curve; position: Vector2; leftTangent: float64 = 0.0;
              rightTangent: float64 = 0.0; leftMode: int64 = 0'i64;
              rightMode: int64 = 0'i64): int64 {.gcsafe, locks: 0.}
proc bake*(self: Curve) {.gcsafe, locks: 0.}
proc cleanDupes*(self: Curve) {.gcsafe, locks: 0.}
proc clearPoints*(self: Curve) {.gcsafe, locks: 0.}
proc getPointCount*(self: Curve): int64 {.gcsafe, locks: 0.}
proc getPointLeftMode*(self: Curve; index: int64): int64 {.gcsafe, locks: 0.}
proc getPointLeftTangent*(self: Curve; index: int64): float64 {.gcsafe, locks: 0.}
proc getPointPosition*(self: Curve; index: int64): Vector2 {.gcsafe, locks: 0.}
proc getPointRightMode*(self: Curve; index: int64): int64 {.gcsafe, locks: 0.}
proc getPointRightTangent*(self: Curve; index: int64): float64 {.gcsafe, locks: 0.}
proc interpolate*(self: Curve; offset: float64): float64 {.gcsafe, locks: 0.}
proc interpolateBaked*(self: Curve; offset: float64): float64 {.gcsafe, locks: 0.}
proc removePoint*(self: Curve; index: int64) {.gcsafe, locks: 0.}
proc setPointLeftMode*(self: Curve; index: int64; mode: int64) {.gcsafe, locks: 0.}
proc setPointLeftTangent*(self: Curve; index: int64; tangent: float64) {.gcsafe,
    locks: 0.}
proc setPointOffset*(self: Curve; index: int64; offset: float64): int64 {.gcsafe,
    locks: 0.}
proc setPointRightMode*(self: Curve; index: int64; mode: int64) {.gcsafe, locks: 0.}
proc setPointRightTangent*(self: Curve; index: int64; tangent: float64) {.gcsafe,
    locks: 0.}
proc setPointValue*(self: Curve; index: int64; y: float64) {.gcsafe, locks: 0.}
var curveUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: Curve): Array =
  if isNil(curveUnderscoregetDataMethodBind):
    curveUnderscoregetDataMethodBind = getMethod(cstring"Curve",
        cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  curveUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var curveUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: Curve; val: Array) =
  if isNil(curveUnderscoresetDataMethodBind):
    curveUnderscoresetDataMethodBind = getMethod(cstring"Curve",
        cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  curveUnderscoresetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveGetBakeResolutionMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeResolution(self: Curve): int64 =
  if isNil(curveGetBakeResolutionMethodBind):
    curveGetBakeResolutionMethodBind = getMethod(cstring"Curve",
        cstring"get_bake_resolution")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetBakeResolutionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveSetBakeResolutionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeResolution=`(self: Curve; val: int64) =
  if isNil(curveSetBakeResolutionMethodBind):
    curveSetBakeResolutionMethodBind = getMethod(cstring"Curve",
        cstring"set_bake_resolution")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  curveSetBakeResolutionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveGetMaxValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxValue(self: Curve): float64 =
  if isNil(curveGetMaxValueMethodBind):
    curveGetMaxValueMethodBind = getMethod(cstring"Curve", cstring"get_max_value")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetMaxValueMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveSetMaxValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxValue=`(self: Curve; val: float64) =
  if isNil(curveSetMaxValueMethodBind):
    curveSetMaxValueMethodBind = getMethod(cstring"Curve", cstring"set_max_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  curveSetMaxValueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var curveGetMinValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc minValue(self: Curve): float64 =
  if isNil(curveGetMinValueMethodBind):
    curveGetMinValueMethodBind = getMethod(cstring"Curve", cstring"get_min_value")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetMinValueMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveSetMinValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `minValue=`(self: Curve; val: float64) =
  if isNil(curveSetMinValueMethodBind):
    curveSetMinValueMethodBind = getMethod(cstring"Curve", cstring"set_min_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  curveSetMinValueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var curveAddPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPoint(self: Curve; position: Vector2; leftTangent: float64 = 0.0;
             rightTangent: float64 = 0.0; leftMode: int64 = 0'i64;
             rightMode: int64 = 0'i64): int64 =
  if isNil(curveAddPointMethodBind):
    curveAddPointMethodBind = getMethod(cstring"Curve", cstring"add_point")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(leftTangent)
  argsToPassToGodot[][2] = unsafeAddr(rightTangent)
  argsToPassToGodot[][3] = unsafeAddr(leftMode)
  argsToPassToGodot[][4] = unsafeAddr(rightMode)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveAddPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var curveBakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bake(self: Curve) =
  if isNil(curveBakeMethodBind):
    curveBakeMethodBind = getMethod(cstring"Curve", cstring"bake")
  var ptrCallRet: pointer
  curveBakeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveCleanDupesMethodBind {.threadvar.}: ptr GodotMethodBind
proc cleanDupes(self: Curve) =
  if isNil(curveCleanDupesMethodBind):
    curveCleanDupesMethodBind = getMethod(cstring"Curve", cstring"clean_dupes")
  var ptrCallRet: pointer
  curveCleanDupesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveClearPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearPoints(self: Curve) =
  if isNil(curveClearPointsMethodBind):
    curveClearPointsMethodBind = getMethod(cstring"Curve", cstring"clear_points")
  var ptrCallRet: pointer
  curveClearPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveGetPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCount(self: Curve): int64 =
  if isNil(curveGetPointCountMethodBind):
    curveGetPointCountMethodBind = getMethod(cstring"Curve",
        cstring"get_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetPointCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveGetPointLeftModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointLeftMode(self: Curve; index: int64): int64 =
  if isNil(curveGetPointLeftModeMethodBind):
    curveGetPointLeftModeMethodBind = getMethod(cstring"Curve",
        cstring"get_point_left_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetPointLeftModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveGetPointLeftTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointLeftTangent(self: Curve; index: int64): float64 =
  if isNil(curveGetPointLeftTangentMethodBind):
    curveGetPointLeftTangentMethodBind = getMethod(cstring"Curve",
        cstring"get_point_left_tangent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetPointLeftTangentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveGetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPosition(self: Curve; index: int64): Vector2 =
  if isNil(curveGetPointPositionMethodBind):
    curveGetPointPositionMethodBind = getMethod(cstring"Curve",
        cstring"get_point_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveGetPointRightModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointRightMode(self: Curve; index: int64): int64 =
  if isNil(curveGetPointRightModeMethodBind):
    curveGetPointRightModeMethodBind = getMethod(cstring"Curve",
        cstring"get_point_right_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetPointRightModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveGetPointRightTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointRightTangent(self: Curve; index: int64): float64 =
  if isNil(curveGetPointRightTangentMethodBind):
    curveGetPointRightTangentMethodBind = getMethod(cstring"Curve",
        cstring"get_point_right_tangent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveGetPointRightTangentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var curveInterpolateMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolate(self: Curve; offset: float64): float64 =
  if isNil(curveInterpolateMethodBind):
    curveInterpolateMethodBind = getMethod(cstring"Curve", cstring"interpolate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveInterpolateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var curveInterpolateBakedMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateBaked(self: Curve; offset: float64): float64 =
  if isNil(curveInterpolateBakedMethodBind):
    curveInterpolateBakedMethodBind = getMethod(cstring"Curve",
        cstring"interpolate_baked")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveInterpolateBakedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveRemovePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePoint(self: Curve; index: int64) =
  if isNil(curveRemovePointMethodBind):
    curveRemovePointMethodBind = getMethod(cstring"Curve", cstring"remove_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  curveRemovePointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var curveSetPointLeftModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointLeftMode(self: Curve; index: int64; mode: int64) =
  if isNil(curveSetPointLeftModeMethodBind):
    curveSetPointLeftModeMethodBind = getMethod(cstring"Curve",
        cstring"set_point_left_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  curveSetPointLeftModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveSetPointLeftTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointLeftTangent(self: Curve; index: int64; tangent: float64) =
  if isNil(curveSetPointLeftTangentMethodBind):
    curveSetPointLeftTangentMethodBind = getMethod(cstring"Curve",
        cstring"set_point_left_tangent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(tangent)
  var ptrCallRet: pointer
  curveSetPointLeftTangentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveSetPointOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointOffset(self: Curve; index: int64; offset: float64): int64 =
  if isNil(curveSetPointOffsetMethodBind):
    curveSetPointOffsetMethodBind = getMethod(cstring"Curve",
        cstring"set_point_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveSetPointOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var curveSetPointRightModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointRightMode(self: Curve; index: int64; mode: int64) =
  if isNil(curveSetPointRightModeMethodBind):
    curveSetPointRightModeMethodBind = getMethod(cstring"Curve",
        cstring"set_point_right_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  curveSetPointRightModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveSetPointRightTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointRightTangent(self: Curve; index: int64; tangent: float64) =
  if isNil(curveSetPointRightTangentMethodBind):
    curveSetPointRightTangentMethodBind = getMethod(cstring"Curve",
        cstring"set_point_right_tangent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(tangent)
  var ptrCallRet: pointer
  curveSetPointRightTangentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var curveSetPointValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointValue(self: Curve; index: int64; y: float64) =
  if isNil(curveSetPointValueMethodBind):
    curveSetPointValueMethodBind = getMethod(cstring"Curve",
        cstring"set_point_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  curveSetPointValueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
