
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method computeCost*(self: AStar; fromId: int64; toId: int64): float64 {.gcsafe, locks: 0,
    base.}
method estimateCost*(self: AStar; fromId: int64; toId: int64): float64 {.gcsafe,
    locks: 0, base.}
proc addPoint*(self: AStar; id: int64; position: Vector3; weightScale: float64 = 1.0) {.
    gcsafe, locks: 0.}
proc arePointsConnected*(self: AStar; id: int64; toId: int64;
                        bidirectional: bool = true): bool {.gcsafe, locks: 0.}
proc clear*(self: AStar) {.gcsafe, locks: 0.}
proc connectPoints*(self: AStar; id: int64; toId: int64; bidirectional: bool = true) {.
    gcsafe, locks: 0.}
proc disconnectPoints*(self: AStar; id: int64; toId: int64; bidirectional: bool = true) {.
    gcsafe, locks: 0.}
proc getAvailablePointId*(self: AStar): int64 {.gcsafe, locks: 0.}
proc getClosestPoint*(self: AStar; toPosition: Vector3; includeDisabled: bool = false): int64 {.
    gcsafe, locks: 0.}
proc getClosestPositionInSegment*(self: AStar; toPosition: Vector3): Vector3 {.gcsafe,
    locks: 0.}
proc getIdPath*(self: AStar; fromId: int64; toId: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getPointCapacity*(self: AStar): int64 {.gcsafe, locks: 0.}
proc getPointConnections*(self: AStar; id: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getPointCount*(self: AStar): int64 {.gcsafe, locks: 0.}
proc getPointPath*(self: AStar; fromId: int64; toId: int64): PoolVector3Array {.gcsafe,
    locks: 0.}
proc getPointPosition*(self: AStar; id: int64): Vector3 {.gcsafe, locks: 0.}
proc getPointWeightScale*(self: AStar; id: int64): float64 {.gcsafe, locks: 0.}
proc getPoints*(self: AStar): Array {.gcsafe, locks: 0.}
proc hasPoint*(self: AStar; id: int64): bool {.gcsafe, locks: 0.}
proc isPointDisabled*(self: AStar; id: int64): bool {.gcsafe, locks: 0.}
proc removePoint*(self: AStar; id: int64) {.gcsafe, locks: 0.}
proc reserveSpace*(self: AStar; numNodes: int64) {.gcsafe, locks: 0.}
proc setPointDisabled*(self: AStar; id: int64; disabled: bool = true) {.gcsafe, locks: 0.}
proc setPointPosition*(self: AStar; id: int64; position: Vector3) {.gcsafe, locks: 0.}
proc setPointWeightScale*(self: AStar; id: int64; weightScale: float64) {.gcsafe,
    locks: 0.}
var aStarUnderscorecomputeCostMethodBind {.threadvar.}: ptr GodotMethodBind
method computeCost(self: AStar; fromId: int64; toId: int64): float64 =
  if isNil(aStarUnderscorecomputeCostMethodBind):
    aStarUnderscorecomputeCostMethodBind = getMethod(cstring"AStar",
        cstring"_compute_cost")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarUnderscorecomputeCostMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStarUnderscoreestimateCostMethodBind {.threadvar.}: ptr GodotMethodBind
method estimateCost(self: AStar; fromId: int64; toId: int64): float64 =
  if isNil(aStarUnderscoreestimateCostMethodBind):
    aStarUnderscoreestimateCostMethodBind = getMethod(cstring"AStar",
        cstring"_estimate_cost")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarUnderscoreestimateCostMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStarAddPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPoint(self: AStar; id: int64; position: Vector3; weightScale: float64 = 1.0) =
  if isNil(aStarAddPointMethodBind):
    aStarAddPointMethodBind = getMethod(cstring"AStar", cstring"add_point")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(position)
  argsToPassToGodot[][2] = unsafeAddr(weightScale)
  var ptrCallRet: pointer
  aStarAddPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var aStarArePointsConnectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc arePointsConnected(self: AStar; id: int64; toId: int64; bidirectional: bool = true): bool =
  if isNil(aStarArePointsConnectedMethodBind):
    aStarArePointsConnectedMethodBind = getMethod(cstring"AStar",
        cstring"are_points_connected")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  argsToPassToGodot[][2] = unsafeAddr(bidirectional)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarArePointsConnectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: AStar) =
  if isNil(aStarClearMethodBind):
    aStarClearMethodBind = getMethod(cstring"AStar", cstring"clear")
  var ptrCallRet: pointer
  aStarClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStarConnectPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectPoints(self: AStar; id: int64; toId: int64; bidirectional: bool = true) =
  if isNil(aStarConnectPointsMethodBind):
    aStarConnectPointsMethodBind = getMethod(cstring"AStar",
        cstring"connect_points")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  argsToPassToGodot[][2] = unsafeAddr(bidirectional)
  var ptrCallRet: pointer
  aStarConnectPointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var aStarDisconnectPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectPoints(self: AStar; id: int64; toId: int64; bidirectional: bool = true) =
  if isNil(aStarDisconnectPointsMethodBind):
    aStarDisconnectPointsMethodBind = getMethod(cstring"AStar",
        cstring"disconnect_points")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  argsToPassToGodot[][2] = unsafeAddr(bidirectional)
  var ptrCallRet: pointer
  aStarDisconnectPointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarGetAvailablePointIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAvailablePointId(self: AStar): int64 =
  if isNil(aStarGetAvailablePointIdMethodBind):
    aStarGetAvailablePointIdMethodBind = getMethod(cstring"AStar",
        cstring"get_available_point_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarGetAvailablePointIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStarGetClosestPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPoint(self: AStar; toPosition: Vector3; includeDisabled: bool = false): int64 =
  if isNil(aStarGetClosestPointMethodBind):
    aStarGetClosestPointMethodBind = getMethod(cstring"AStar",
        cstring"get_closest_point")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  argsToPassToGodot[][1] = unsafeAddr(includeDisabled)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarGetClosestPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarGetClosestPositionInSegmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPositionInSegment(self: AStar; toPosition: Vector3): Vector3 =
  if isNil(aStarGetClosestPositionInSegmentMethodBind):
    aStarGetClosestPositionInSegmentMethodBind = getMethod(cstring"AStar",
        cstring"get_closest_position_in_segment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarGetClosestPositionInSegmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aStarGetIdPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIdPath(self: AStar; fromId: int64; toId: int64): PoolIntArray =
  if isNil(aStarGetIdPathMethodBind):
    aStarGetIdPathMethodBind = getMethod(cstring"AStar", cstring"get_id_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  aStarGetIdPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var aStarGetPointCapacityMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCapacity(self: AStar): int64 =
  if isNil(aStarGetPointCapacityMethodBind):
    aStarGetPointCapacityMethodBind = getMethod(cstring"AStar",
        cstring"get_point_capacity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarGetPointCapacityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStarGetPointConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointConnections(self: AStar; id: int64): PoolIntArray =
  if isNil(aStarGetPointConnectionsMethodBind):
    aStarGetPointConnectionsMethodBind = getMethod(cstring"AStar",
        cstring"get_point_connections")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  aStarGetPointConnectionsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var aStarGetPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCount(self: AStar): int64 =
  if isNil(aStarGetPointCountMethodBind):
    aStarGetPointCountMethodBind = getMethod(cstring"AStar",
        cstring"get_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarGetPointCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aStarGetPointPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPath(self: AStar; fromId: int64; toId: int64): PoolVector3Array =
  if isNil(aStarGetPointPathMethodBind):
    aStarGetPointPathMethodBind = getMethod(cstring"AStar",
        cstring"get_point_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromId)
  argsToPassToGodot[][1] = unsafeAddr(toId)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  aStarGetPointPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var aStarGetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPosition(self: AStar; id: int64): Vector3 =
  if isNil(aStarGetPointPositionMethodBind):
    aStarGetPointPositionMethodBind = getMethod(cstring"AStar",
        cstring"get_point_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarGetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarGetPointWeightScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointWeightScale(self: AStar; id: int64): float64 =
  if isNil(aStarGetPointWeightScaleMethodBind):
    aStarGetPointWeightScaleMethodBind = getMethod(cstring"AStar",
        cstring"get_point_weight_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarGetPointWeightScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarGetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPoints(self: AStar): Array =
  if isNil(aStarGetPointsMethodBind):
    aStarGetPointsMethodBind = getMethod(cstring"AStar", cstring"get_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  aStarGetPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var aStarHasPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasPoint(self: AStar; id: int64): bool =
  if isNil(aStarHasPointMethodBind):
    aStarHasPointMethodBind = getMethod(cstring"AStar", cstring"has_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarHasPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var aStarIsPointDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPointDisabled(self: AStar; id: int64): bool =
  if isNil(aStarIsPointDisabledMethodBind):
    aStarIsPointDisabledMethodBind = getMethod(cstring"AStar",
        cstring"is_point_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aStarIsPointDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarRemovePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePoint(self: AStar; id: int64) =
  if isNil(aStarRemovePointMethodBind):
    aStarRemovePointMethodBind = getMethod(cstring"AStar", cstring"remove_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  aStarRemovePointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var aStarReserveSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc reserveSpace(self: AStar; numNodes: int64) =
  if isNil(aStarReserveSpaceMethodBind):
    aStarReserveSpaceMethodBind = getMethod(cstring"AStar", cstring"reserve_space")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(numNodes)
  var ptrCallRet: pointer
  aStarReserveSpaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var aStarSetPointDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointDisabled(self: AStar; id: int64; disabled: bool = true) =
  if isNil(aStarSetPointDisabledMethodBind):
    aStarSetPointDisabledMethodBind = getMethod(cstring"AStar",
        cstring"set_point_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  aStarSetPointDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarSetPointPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointPosition(self: AStar; id: int64; position: Vector3) =
  if isNil(aStarSetPointPositionMethodBind):
    aStarSetPointPositionMethodBind = getMethod(cstring"AStar",
        cstring"set_point_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  aStarSetPointPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aStarSetPointWeightScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointWeightScale(self: AStar; id: int64; weightScale: float64) =
  if isNil(aStarSetPointWeightScaleMethodBind):
    aStarSetPointWeightScaleMethodBind = getMethod(cstring"AStar",
        cstring"set_point_weight_scale")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(weightScale)
  var ptrCallRet: pointer
  aStarSetPointWeightScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
