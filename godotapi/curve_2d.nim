
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc data*(self: Curve2D): Dictionary {.gcsafe, locks: 0.}
proc `data=`*(self: Curve2D; val: Dictionary) {.gcsafe, locks: 0.}
proc bakeInterval*(self: Curve2D): float64 {.gcsafe, locks: 0.}
proc `bakeInterval=`*(self: Curve2D; val: float64) {.gcsafe, locks: 0.}
proc addPoint*(self: Curve2D; position: Vector2; inn: Vector2 = vec2(0.0, 0.0);
              outt: Vector2 = vec2(0.0, 0.0); atPosition: int64 = -1'i64) {.gcsafe,
    locks: 0.}
proc clearPoints*(self: Curve2D) {.gcsafe, locks: 0.}
proc getBakedLength*(self: Curve2D): float64 {.gcsafe, locks: 0.}
proc getBakedPoints*(self: Curve2D): PoolVector2Array {.gcsafe, locks: 0.}
proc getClosestOffset*(self: Curve2D; toPoint: Vector2): float64 {.gcsafe, locks: 0.}
proc getClosestPoint*(self: Curve2D; toPoint: Vector2): Vector2 {.gcsafe, locks: 0.}
proc getPointCount*(self: Curve2D): int64 {.gcsafe, locks: 0.}
proc getPointIn*(self: Curve2D; idx: int64): Vector2 {.gcsafe, locks: 0.}
proc getPointOut*(self: Curve2D; idx: int64): Vector2 {.gcsafe, locks: 0.}
proc getPointPosition*(self: Curve2D; idx: int64): Vector2 {.gcsafe, locks: 0.}
proc interpolate*(self: Curve2D; idx: int64; t: float64): Vector2 {.gcsafe, locks: 0.}
proc interpolateBaked*(self: Curve2D; offset: float64; cubic: bool = false): Vector2 {.
    gcsafe, locks: 0.}
proc interpolatef*(self: Curve2D; fofs: float64): Vector2 {.gcsafe, locks: 0.}
proc removePoint*(self: Curve2D; idx: int64) {.gcsafe, locks: 0.}
proc setPointIn*(self: Curve2D; idx: int64; position: Vector2) {.gcsafe, locks: 0.}
proc setPointOut*(self: Curve2D; idx: int64; position: Vector2) {.gcsafe, locks: 0.}
proc setPointPosition*(self: Curve2D; idx: int64; position: Vector2) {.gcsafe, locks: 0.}
proc tessellate*(self: Curve2D; maxStages: int64 = 5'i64;
                toleranceDegrees: float64 = 4.0): PoolVector2Array {.gcsafe, locks: 0.}
var curve2DUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: Curve2D): Dictionary =
  if isNil(curve2DUnderscoregetDataMethodBind):
    curve2DUnderscoregetDataMethodBind = getMethod(cstring"Curve2D",
        cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  curve2DUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var curve2DUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: Curve2D; val: Dictionary) =
  if isNil(curve2DUnderscoresetDataMethodBind):
    curve2DUnderscoresetDataMethodBind = getMethod(cstring"Curve2D",
        cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  curve2DUnderscoresetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve2DGetBakeIntervalMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeInterval(self: Curve2D): float64 =
  if isNil(curve2DGetBakeIntervalMethodBind):
    curve2DGetBakeIntervalMethodBind = getMethod(cstring"Curve2D",
        cstring"get_bake_interval")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetBakeIntervalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve2DSetBakeIntervalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeInterval=`(self: Curve2D; val: float64) =
  if isNil(curve2DSetBakeIntervalMethodBind):
    curve2DSetBakeIntervalMethodBind = getMethod(cstring"Curve2D",
        cstring"set_bake_interval")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  curve2DSetBakeIntervalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve2DAddPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPoint(self: Curve2D; position: Vector2; inn: Vector2 = vec2(0.0, 0.0);
             outt: Vector2 = vec2(0.0, 0.0); atPosition: int64 = -1'i64) =
  if isNil(curve2DAddPointMethodBind):
    curve2DAddPointMethodBind = getMethod(cstring"Curve2D", cstring"add_point")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(inn)
  argsToPassToGodot[][2] = unsafeAddr(outt)
  argsToPassToGodot[][3] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  curve2DAddPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var curve2DClearPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearPoints(self: Curve2D) =
  if isNil(curve2DClearPointsMethodBind):
    curve2DClearPointsMethodBind = getMethod(cstring"Curve2D",
        cstring"clear_points")
  var ptrCallRet: pointer
  curve2DClearPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve2DGetBakedLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakedLength(self: Curve2D): float64 =
  if isNil(curve2DGetBakedLengthMethodBind):
    curve2DGetBakedLengthMethodBind = getMethod(cstring"Curve2D",
        cstring"get_baked_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetBakedLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve2DGetBakedPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakedPoints(self: Curve2D): PoolVector2Array =
  if isNil(curve2DGetBakedPointsMethodBind):
    curve2DGetBakedPointsMethodBind = getMethod(cstring"Curve2D",
        cstring"get_baked_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  curve2DGetBakedPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var curve2DGetClosestOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestOffset(self: Curve2D; toPoint: Vector2): float64 =
  if isNil(curve2DGetClosestOffsetMethodBind):
    curve2DGetClosestOffsetMethodBind = getMethod(cstring"Curve2D",
        cstring"get_closest_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetClosestOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve2DGetClosestPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPoint(self: Curve2D; toPoint: Vector2): Vector2 =
  if isNil(curve2DGetClosestPointMethodBind):
    curve2DGetClosestPointMethodBind = getMethod(cstring"Curve2D",
        cstring"get_closest_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetClosestPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve2DGetPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCount(self: Curve2D): int64 =
  if isNil(curve2DGetPointCountMethodBind):
    curve2DGetPointCountMethodBind = getMethod(cstring"Curve2D",
        cstring"get_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetPointCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve2DGetPointInMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointIn(self: Curve2D; idx: int64): Vector2 =
  if isNil(curve2DGetPointInMethodBind):
    curve2DGetPointInMethodBind = getMethod(cstring"Curve2D",
        cstring"get_point_in")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetPointInMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var curve2DGetPointOutMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointOut(self: Curve2D; idx: int64): Vector2 =
  if isNil(curve2DGetPointOutMethodBind):
    curve2DGetPointOutMethodBind = getMethod(cstring"Curve2D",
        cstring"get_point_out")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetPointOutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve2DGetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPosition(self: Curve2D; idx: int64): Vector2 =
  if isNil(curve2DGetPointPositionMethodBind):
    curve2DGetPointPositionMethodBind = getMethod(cstring"Curve2D",
        cstring"get_point_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DGetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve2DInterpolateMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolate(self: Curve2D; idx: int64; t: float64): Vector2 =
  if isNil(curve2DInterpolateMethodBind):
    curve2DInterpolateMethodBind = getMethod(cstring"Curve2D",
        cstring"interpolate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(t)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DInterpolateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve2DInterpolateBakedMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateBaked(self: Curve2D; offset: float64; cubic: bool = false): Vector2 =
  if isNil(curve2DInterpolateBakedMethodBind):
    curve2DInterpolateBakedMethodBind = getMethod(cstring"Curve2D",
        cstring"interpolate_baked")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(cubic)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DInterpolateBakedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve2DInterpolatefMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolatef(self: Curve2D; fofs: float64): Vector2 =
  if isNil(curve2DInterpolatefMethodBind):
    curve2DInterpolatefMethodBind = getMethod(cstring"Curve2D",
        cstring"interpolatef")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fofs)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve2DInterpolatefMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var curve2DRemovePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePoint(self: Curve2D; idx: int64) =
  if isNil(curve2DRemovePointMethodBind):
    curve2DRemovePointMethodBind = getMethod(cstring"Curve2D",
        cstring"remove_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  curve2DRemovePointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve2DSetPointInMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointIn(self: Curve2D; idx: int64; position: Vector2) =
  if isNil(curve2DSetPointInMethodBind):
    curve2DSetPointInMethodBind = getMethod(cstring"Curve2D",
        cstring"set_point_in")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  curve2DSetPointInMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var curve2DSetPointOutMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointOut(self: Curve2D; idx: int64; position: Vector2) =
  if isNil(curve2DSetPointOutMethodBind):
    curve2DSetPointOutMethodBind = getMethod(cstring"Curve2D",
        cstring"set_point_out")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  curve2DSetPointOutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve2DSetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointPosition(self: Curve2D; idx: int64; position: Vector2) =
  if isNil(curve2DSetPointPositionMethodBind):
    curve2DSetPointPositionMethodBind = getMethod(cstring"Curve2D",
        cstring"set_point_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  curve2DSetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve2DTessellateMethodBind {.threadvar.}: ptr GodotMethodBind
proc tessellate(self: Curve2D; maxStages: int64 = 5'i64;
               toleranceDegrees: float64 = 4.0): PoolVector2Array =
  if isNil(curve2DTessellateMethodBind):
    curve2DTessellateMethodBind = getMethod(cstring"Curve2D", cstring"tessellate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(maxStages)
  argsToPassToGodot[][1] = unsafeAddr(toleranceDegrees)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  curve2DTessellateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)
