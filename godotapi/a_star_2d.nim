
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method computeCost*(self: AStar2D; fromId: int64; toId: int64): float64 {.gcsafe,
    locks: 0, base.}
method estimateCost*(self: AStar2D; fromId: int64; toId: int64): float64 {.gcsafe,
    locks: 0, base.}
proc addPoint*(self: AStar2D; id: int64; position: Vector2; weightScale: float64 = 1.0) {.
    gcsafe, locks: 0.}
proc arePointsConnected*(self: AStar2D; id: int64; toId: int64): bool {.gcsafe, locks: 0.}
proc clear*(self: AStar2D) {.gcsafe, locks: 0.}
proc connectPoints*(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true) {.
    gcsafe, locks: 0.}
proc disconnectPoints*(self: AStar2D; id: int64; toId: int64) {.gcsafe, locks: 0.}
proc getAvailablePointId*(self: AStar2D): int64 {.gcsafe, locks: 0.}
proc getClosestPoint*(self: AStar2D; toPosition: Vector2;
                     includeDisabled: bool = false): int64 {.gcsafe, locks: 0.}
proc getClosestPositionInSegment*(self: AStar2D; toPosition: Vector2): Vector2 {.
    gcsafe, locks: 0.}
proc getIdPath*(self: AStar2D; fromId: int64; toId: int64): PoolIntArray {.gcsafe,
    locks: 0.}
proc getPointCapacity*(self: AStar2D): int64 {.gcsafe, locks: 0.}
proc getPointConnections*(self: AStar2D; id: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getPointCount*(self: AStar2D): int64 {.gcsafe, locks: 0.}
proc getPointPath*(self: AStar2D; fromId: int64; toId: int64): PoolVector2Array {.
    gcsafe, locks: 0.}
proc getPointPosition*(self: AStar2D; id: int64): Vector2 {.gcsafe, locks: 0.}
proc getPointWeightScale*(self: AStar2D; id: int64): float64 {.gcsafe, locks: 0.}
proc getPoints*(self: AStar2D): Array {.gcsafe, locks: 0.}
proc hasPoint*(self: AStar2D; id: int64): bool {.gcsafe, locks: 0.}
proc isPointDisabled*(self: AStar2D; id: int64): bool {.gcsafe, locks: 0.}
proc removePoint*(self: AStar2D; id: int64) {.gcsafe, locks: 0.}
proc reserveSpace*(self: AStar2D; numNodes: int64) {.gcsafe, locks: 0.}
proc setPointDisabled*(self: AStar2D; id: int64; disabled: bool = true) {.gcsafe, locks: 0.}
proc setPointPosition*(self: AStar2D; id: int64; position: Vector2) {.gcsafe, locks: 0.}
proc setPointWeightScale*(self: AStar2D; id: int64; weightScale: float64) {.gcsafe,
    locks: 0.}
var aStar2DUnderscorecomputeCostMethodBind {.threadvar.}: ptr GodotMethodBind
method computeCost(self: AStar2D; fromId: int64; toId: int64): float64 =
  if isNil(aStar2DUnderscorecomputeCostMethodBind):
    aStar2DUnderscorecomputeCostMethodBind = getMethod(cstring"AStar2D",
        cstring"_compute_cost")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DUnderscorecomputeCostMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStar2DUnderscoreestimateCostMethodBind {.threadvar.}: ptr GodotMethodBind
method estimateCost(self: AStar2D; fromId: int64; toId: int64): float64 =
  if isNil(aStar2DUnderscoreestimateCostMethodBind):
    aStar2DUnderscoreestimateCostMethodBind = getMethod(cstring"AStar2D",
        cstring"_estimate_cost")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DUnderscoreestimateCostMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStar2DAddPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPoint(self: AStar2D; id: int64; position: Vector2; weightScale: float64 = 1.0) =
  if isNil(aStar2DAddPointMethodBind):
    aStar2DAddPointMethodBind = getMethod(cstring"AStar2D", cstring"add_point")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(position)
  argsToPassToGodot[][2] = unsafeAddr(weightScale)
  var ptrCallRet: pointer
  aStar2DAddPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var aStar2DArePointsConnectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc arePointsConnected(self: AStar2D; id: int64; toId: int64): bool =
  if isNil(aStar2DArePointsConnectedMethodBind):
    aStar2DArePointsConnectedMethodBind = getMethod(cstring"AStar2D",
        cstring"are_points_connected")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DArePointsConnectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStar2DClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: AStar2D) =
  if isNil(aStar2DClearMethodBind):
    aStar2DClearMethodBind = getMethod(cstring"AStar2D", cstring"clear")
  var ptrCallRet: pointer
  aStar2DClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStar2DConnectPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectPoints(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true) =
  if isNil(aStar2DConnectPointsMethodBind):
    aStar2DConnectPointsMethodBind = getMethod(cstring"AStar2D",
        cstring"connect_points")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  argsToPassToGodot[][2] = unsafeAddr(bidirectional)
  var ptrCallRet: pointer
  aStar2DConnectPointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStar2DDisconnectPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectPoints(self: AStar2D; id: int64; toId: int64) =
  if isNil(aStar2DDisconnectPointsMethodBind):
    aStar2DDisconnectPointsMethodBind = getMethod(cstring"AStar2D",
        cstring"disconnect_points")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  aStar2DDisconnectPointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStar2DGetAvailablePointIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAvailablePointId(self: AStar2D): int64 =
  if isNil(aStar2DGetAvailablePointIdMethodBind):
    aStar2DGetAvailablePointIdMethodBind = getMethod(cstring"AStar2D",
        cstring"get_available_point_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DGetAvailablePointIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStar2DGetClosestPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPoint(self: AStar2D; toPosition: Vector2;
                    includeDisabled: bool = false): int64 =
  if isNil(aStar2DGetClosestPointMethodBind):
    aStar2DGetClosestPointMethodBind = getMethod(cstring"AStar2D",
        cstring"get_closest_point")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  argsToPassToGodot[][1] = unsafeAddr(includeDisabled)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DGetClosestPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStar2DGetClosestPositionInSegmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPositionInSegment(self: AStar2D; toPosition: Vector2): Vector2 =
  if isNil(aStar2DGetClosestPositionInSegmentMethodBind):
    aStar2DGetClosestPositionInSegmentMethodBind = getMethod(cstring"AStar2D",
        cstring"get_closest_position_in_segment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DGetClosestPositionInSegmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStar2DGetIdPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIdPath(self: AStar2D; fromId: int64; toId: int64): PoolIntArray =
  if isNil(aStar2DGetIdPathMethodBind):
    aStar2DGetIdPathMethodBind = getMethod(cstring"AStar2D", cstring"get_id_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  aStar2DGetIdPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var aStar2DGetPointCapacityMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCapacity(self: AStar2D): int64 =
  if isNil(aStar2DGetPointCapacityMethodBind):
    aStar2DGetPointCapacityMethodBind = getMethod(cstring"AStar2D",
        cstring"get_point_capacity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DGetPointCapacityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStar2DGetPointConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointConnections(self: AStar2D; id: int64): PoolIntArray =
  if isNil(aStar2DGetPointConnectionsMethodBind):
    aStar2DGetPointConnectionsMethodBind = getMethod(cstring"AStar2D",
        cstring"get_point_connections")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  aStar2DGetPointConnectionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var aStar2DGetPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCount(self: AStar2D): int64 =
  if isNil(aStar2DGetPointCountMethodBind):
    aStar2DGetPointCountMethodBind = getMethod(cstring"AStar2D",
        cstring"get_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DGetPointCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStar2DGetPointPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPath(self: AStar2D; fromId: int64; toId: int64): PoolVector2Array =
  if isNil(aStar2DGetPointPathMethodBind):
    aStar2DGetPointPathMethodBind = getMethod(cstring"AStar2D",
        cstring"get_point_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  aStar2DGetPointPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var aStar2DGetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPosition(self: AStar2D; id: int64): Vector2 =
  if isNil(aStar2DGetPointPositionMethodBind):
    aStar2DGetPointPositionMethodBind = getMethod(cstring"AStar2D",
        cstring"get_point_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DGetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStar2DGetPointWeightScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointWeightScale(self: AStar2D; id: int64): float64 =
  if isNil(aStar2DGetPointWeightScaleMethodBind):
    aStar2DGetPointWeightScaleMethodBind = getMethod(cstring"AStar2D",
        cstring"get_point_weight_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DGetPointWeightScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStar2DGetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPoints(self: AStar2D): Array =
  if isNil(aStar2DGetPointsMethodBind):
    aStar2DGetPointsMethodBind = getMethod(cstring"AStar2D", cstring"get_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  aStar2DGetPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var aStar2DHasPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasPoint(self: AStar2D; id: int64): bool =
  if isNil(aStar2DHasPointMethodBind):
    aStar2DHasPointMethodBind = getMethod(cstring"AStar2D", cstring"has_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DHasPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var aStar2DIsPointDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPointDisabled(self: AStar2D; id: int64): bool =
  if isNil(aStar2DIsPointDisabledMethodBind):
    aStar2DIsPointDisabledMethodBind = getMethod(cstring"AStar2D",
        cstring"is_point_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStar2DIsPointDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStar2DRemovePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePoint(self: AStar2D; id: int64) =
  if isNil(aStar2DRemovePointMethodBind):
    aStar2DRemovePointMethodBind = getMethod(cstring"AStar2D",
        cstring"remove_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  aStar2DRemovePointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var aStar2DReserveSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc reserveSpace(self: AStar2D; numNodes: int64) =
  if isNil(aStar2DReserveSpaceMethodBind):
    aStar2DReserveSpaceMethodBind = getMethod(cstring"AStar2D",
        cstring"reserve_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(numNodes)
  var ptrCallRet: pointer
  aStar2DReserveSpaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var aStar2DSetPointDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointDisabled(self: AStar2D; id: int64; disabled: bool = true) =
  if isNil(aStar2DSetPointDisabledMethodBind):
    aStar2DSetPointDisabledMethodBind = getMethod(cstring"AStar2D",
        cstring"set_point_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  aStar2DSetPointDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStar2DSetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointPosition(self: AStar2D; id: int64; position: Vector2) =
  if isNil(aStar2DSetPointPositionMethodBind):
    aStar2DSetPointPositionMethodBind = getMethod(cstring"AStar2D",
        cstring"set_point_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  aStar2DSetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStar2DSetPointWeightScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointWeightScale(self: AStar2D; id: int64; weightScale: float64) =
  if isNil(aStar2DSetPointWeightScaleMethodBind):
    aStar2DSetPointWeightScaleMethodBind = getMethod(cstring"AStar2D",
        cstring"set_point_weight_scale")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(weightScale)
  var ptrCallRet: pointer
  aStar2DSetPointWeightScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
