
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc data*(self: Curve3D): Dictionary {.gcsafe, locks: 0.}
proc `data=`*(self: Curve3D; val: Dictionary) {.gcsafe, locks: 0.}
proc bakeInterval*(self: Curve3D): float64 {.gcsafe, locks: 0.}
proc `bakeInterval=`*(self: Curve3D; val: float64) {.gcsafe, locks: 0.}
proc upVectorEnabled*(self: Curve3D): bool {.gcsafe, locks: 0.}
proc `upVectorEnabled=`*(self: Curve3D; val: bool) {.gcsafe, locks: 0.}
proc addPoint*(self: Curve3D; position: Vector3; inn: Vector3 = vec3(0.0, 0.0, 0.0);
              outt: Vector3 = vec3(0.0, 0.0, 0.0); atPosition: int64 = -1'i64) {.gcsafe,
    locks: 0.}
proc clearPoints*(self: Curve3D) {.gcsafe, locks: 0.}
proc getBakedLength*(self: Curve3D): float64 {.gcsafe, locks: 0.}
proc getBakedPoints*(self: Curve3D): PoolVector3Array {.gcsafe, locks: 0.}
proc getBakedTilts*(self: Curve3D): PoolRealArray {.gcsafe, locks: 0.}
proc getBakedUpVectors*(self: Curve3D): PoolVector3Array {.gcsafe, locks: 0.}
proc getClosestOffset*(self: Curve3D; toPoint: Vector3): float64 {.gcsafe, locks: 0.}
proc getClosestPoint*(self: Curve3D; toPoint: Vector3): Vector3 {.gcsafe, locks: 0.}
proc getPointCount*(self: Curve3D): int64 {.gcsafe, locks: 0.}
proc getPointIn*(self: Curve3D; idx: int64): Vector3 {.gcsafe, locks: 0.}
proc getPointOut*(self: Curve3D; idx: int64): Vector3 {.gcsafe, locks: 0.}
proc getPointPosition*(self: Curve3D; idx: int64): Vector3 {.gcsafe, locks: 0.}
proc getPointTilt*(self: Curve3D; idx: int64): float64 {.gcsafe, locks: 0.}
proc interpolate*(self: Curve3D; idx: int64; t: float64): Vector3 {.gcsafe, locks: 0.}
proc interpolateBaked*(self: Curve3D; offset: float64; cubic: bool = false): Vector3 {.
    gcsafe, locks: 0.}
proc interpolateBakedUpVector*(self: Curve3D; offset: float64;
                              applyTilt: bool = false): Vector3 {.gcsafe, locks: 0.}
proc interpolatef*(self: Curve3D; fofs: float64): Vector3 {.gcsafe, locks: 0.}
proc removePoint*(self: Curve3D; idx: int64) {.gcsafe, locks: 0.}
proc setPointIn*(self: Curve3D; idx: int64; position: Vector3) {.gcsafe, locks: 0.}
proc setPointOut*(self: Curve3D; idx: int64; position: Vector3) {.gcsafe, locks: 0.}
proc setPointPosition*(self: Curve3D; idx: int64; position: Vector3) {.gcsafe, locks: 0.}
proc setPointTilt*(self: Curve3D; idx: int64; tilt: float64) {.gcsafe, locks: 0.}
proc tessellate*(self: Curve3D; maxStages: int64 = 5'i64;
                toleranceDegrees: float64 = 4.0): PoolVector3Array {.gcsafe, locks: 0.}
var curve3DUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: Curve3D): Dictionary =
  if isNil(curve3DUnderscoregetDataMethodBind):
    curve3DUnderscoregetDataMethodBind = getMethod(cstring"Curve3D",
        cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  curve3DUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var curve3DUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: Curve3D; val: Dictionary) =
  if isNil(curve3DUnderscoresetDataMethodBind):
    curve3DUnderscoresetDataMethodBind = getMethod(cstring"Curve3D",
        cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  curve3DUnderscoresetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve3DGetBakeIntervalMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeInterval(self: Curve3D): float64 =
  if isNil(curve3DGetBakeIntervalMethodBind):
    curve3DGetBakeIntervalMethodBind = getMethod(cstring"Curve3D",
        cstring"get_bake_interval")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetBakeIntervalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve3DSetBakeIntervalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeInterval=`(self: Curve3D; val: float64) =
  if isNil(curve3DSetBakeIntervalMethodBind):
    curve3DSetBakeIntervalMethodBind = getMethod(cstring"Curve3D",
        cstring"set_bake_interval")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  curve3DSetBakeIntervalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve3DIsUpVectorEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc upVectorEnabled(self: Curve3D): bool =
  if isNil(curve3DIsUpVectorEnabledMethodBind):
    curve3DIsUpVectorEnabledMethodBind = getMethod(cstring"Curve3D",
        cstring"is_up_vector_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DIsUpVectorEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve3DSetUpVectorEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `upVectorEnabled=`(self: Curve3D; val: bool) =
  if isNil(curve3DSetUpVectorEnabledMethodBind):
    curve3DSetUpVectorEnabledMethodBind = getMethod(cstring"Curve3D",
        cstring"set_up_vector_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  curve3DSetUpVectorEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var curve3DAddPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPoint(self: Curve3D; position: Vector3; inn: Vector3 = vec3(0.0, 0.0, 0.0);
             outt: Vector3 = vec3(0.0, 0.0, 0.0); atPosition: int64 = -1'i64) =
  if isNil(curve3DAddPointMethodBind):
    curve3DAddPointMethodBind = getMethod(cstring"Curve3D", cstring"add_point")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(inn)
  argsToPassToGodot[][2] = unsafeAddr(outt)
  argsToPassToGodot[][3] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  curve3DAddPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var curve3DClearPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearPoints(self: Curve3D) =
  if isNil(curve3DClearPointsMethodBind):
    curve3DClearPointsMethodBind = getMethod(cstring"Curve3D",
        cstring"clear_points")
  var ptrCallRet: pointer
  curve3DClearPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve3DGetBakedLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakedLength(self: Curve3D): float64 =
  if isNil(curve3DGetBakedLengthMethodBind):
    curve3DGetBakedLengthMethodBind = getMethod(cstring"Curve3D",
        cstring"get_baked_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetBakedLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve3DGetBakedPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakedPoints(self: Curve3D): PoolVector3Array =
  if isNil(curve3DGetBakedPointsMethodBind):
    curve3DGetBakedPointsMethodBind = getMethod(cstring"Curve3D",
        cstring"get_baked_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  curve3DGetBakedPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var curve3DGetBakedTiltsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakedTilts(self: Curve3D): PoolRealArray =
  if isNil(curve3DGetBakedTiltsMethodBind):
    curve3DGetBakedTiltsMethodBind = getMethod(cstring"Curve3D",
        cstring"get_baked_tilts")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  ptrCallRet = addr(ptrCallVal)
  curve3DGetBakedTiltsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var curve3DGetBakedUpVectorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakedUpVectors(self: Curve3D): PoolVector3Array =
  if isNil(curve3DGetBakedUpVectorsMethodBind):
    curve3DGetBakedUpVectorsMethodBind = getMethod(cstring"Curve3D",
        cstring"get_baked_up_vectors")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  curve3DGetBakedUpVectorsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var curve3DGetClosestOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestOffset(self: Curve3D; toPoint: Vector3): float64 =
  if isNil(curve3DGetClosestOffsetMethodBind):
    curve3DGetClosestOffsetMethodBind = getMethod(cstring"Curve3D",
        cstring"get_closest_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetClosestOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve3DGetClosestPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPoint(self: Curve3D; toPoint: Vector3): Vector3 =
  if isNil(curve3DGetClosestPointMethodBind):
    curve3DGetClosestPointMethodBind = getMethod(cstring"Curve3D",
        cstring"get_closest_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetClosestPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve3DGetPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCount(self: Curve3D): int64 =
  if isNil(curve3DGetPointCountMethodBind):
    curve3DGetPointCountMethodBind = getMethod(cstring"Curve3D",
        cstring"get_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetPointCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curve3DGetPointInMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointIn(self: Curve3D; idx: int64): Vector3 =
  if isNil(curve3DGetPointInMethodBind):
    curve3DGetPointInMethodBind = getMethod(cstring"Curve3D",
        cstring"get_point_in")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetPointInMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var curve3DGetPointOutMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointOut(self: Curve3D; idx: int64): Vector3 =
  if isNil(curve3DGetPointOutMethodBind):
    curve3DGetPointOutMethodBind = getMethod(cstring"Curve3D",
        cstring"get_point_out")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetPointOutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve3DGetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPosition(self: Curve3D; idx: int64): Vector3 =
  if isNil(curve3DGetPointPositionMethodBind):
    curve3DGetPointPositionMethodBind = getMethod(cstring"Curve3D",
        cstring"get_point_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve3DGetPointTiltMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointTilt(self: Curve3D; idx: int64): float64 =
  if isNil(curve3DGetPointTiltMethodBind):
    curve3DGetPointTiltMethodBind = getMethod(cstring"Curve3D",
        cstring"get_point_tilt")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DGetPointTiltMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var curve3DInterpolateMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolate(self: Curve3D; idx: int64; t: float64): Vector3 =
  if isNil(curve3DInterpolateMethodBind):
    curve3DInterpolateMethodBind = getMethod(cstring"Curve3D",
        cstring"interpolate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(t)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DInterpolateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve3DInterpolateBakedMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateBaked(self: Curve3D; offset: float64; cubic: bool = false): Vector3 =
  if isNil(curve3DInterpolateBakedMethodBind):
    curve3DInterpolateBakedMethodBind = getMethod(cstring"Curve3D",
        cstring"interpolate_baked")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(cubic)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DInterpolateBakedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve3DInterpolateBakedUpVectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateBakedUpVector(self: Curve3D; offset: float64; applyTilt: bool = false): Vector3 =
  if isNil(curve3DInterpolateBakedUpVectorMethodBind):
    curve3DInterpolateBakedUpVectorMethodBind = getMethod(cstring"Curve3D",
        cstring"interpolate_baked_up_vector")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(applyTilt)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DInterpolateBakedUpVectorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var curve3DInterpolatefMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolatef(self: Curve3D; fofs: float64): Vector3 =
  if isNil(curve3DInterpolatefMethodBind):
    curve3DInterpolatefMethodBind = getMethod(cstring"Curve3D",
        cstring"interpolatef")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fofs)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curve3DInterpolatefMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var curve3DRemovePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePoint(self: Curve3D; idx: int64) =
  if isNil(curve3DRemovePointMethodBind):
    curve3DRemovePointMethodBind = getMethod(cstring"Curve3D",
        cstring"remove_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  curve3DRemovePointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve3DSetPointInMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointIn(self: Curve3D; idx: int64; position: Vector3) =
  if isNil(curve3DSetPointInMethodBind):
    curve3DSetPointInMethodBind = getMethod(cstring"Curve3D",
        cstring"set_point_in")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  curve3DSetPointInMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var curve3DSetPointOutMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointOut(self: Curve3D; idx: int64; position: Vector3) =
  if isNil(curve3DSetPointOutMethodBind):
    curve3DSetPointOutMethodBind = getMethod(cstring"Curve3D",
        cstring"set_point_out")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  curve3DSetPointOutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var curve3DSetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointPosition(self: Curve3D; idx: int64; position: Vector3) =
  if isNil(curve3DSetPointPositionMethodBind):
    curve3DSetPointPositionMethodBind = getMethod(cstring"Curve3D",
        cstring"set_point_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  curve3DSetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curve3DSetPointTiltMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointTilt(self: Curve3D; idx: int64; tilt: float64) =
  if isNil(curve3DSetPointTiltMethodBind):
    curve3DSetPointTiltMethodBind = getMethod(cstring"Curve3D",
        cstring"set_point_tilt")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(tilt)
  var ptrCallRet: pointer
  curve3DSetPointTiltMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var curve3DTessellateMethodBind {.threadvar.}: ptr GodotMethodBind
proc tessellate(self: Curve3D; maxStages: int64 = 5'i64;
               toleranceDegrees: float64 = 4.0): PoolVector3Array =
  if isNil(curve3DTessellateMethodBind):
    curve3DTessellateMethodBind = getMethod(cstring"Curve3D", cstring"tessellate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(maxStages)
  argsToPassToGodot[][1] = unsafeAddr(toleranceDegrees)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  curve3DTessellateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)
