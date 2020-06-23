
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc data*(self: PolygonPathFinder): Dictionary {.gcsafe, locks: 0.}
proc `data=`*(self: PolygonPathFinder; val: Dictionary) {.gcsafe, locks: 0.}
proc findPath*(self: PolygonPathFinder; fromm: Vector2; to: Vector2): PoolVector2Array {.
    gcsafe, locks: 0.}
proc getBounds*(self: PolygonPathFinder): Rect2 {.gcsafe, locks: 0.}
proc getClosestPoint*(self: PolygonPathFinder; point: Vector2): Vector2 {.gcsafe,
    locks: 0.}
proc getIntersections*(self: PolygonPathFinder; fromm: Vector2; to: Vector2): PoolVector2Array {.
    gcsafe, locks: 0.}
proc getPointPenalty*(self: PolygonPathFinder; idx: int64): float64 {.gcsafe, locks: 0.}
proc isPointInside*(self: PolygonPathFinder; point: Vector2): bool {.gcsafe, locks: 0.}
proc setPointPenalty*(self: PolygonPathFinder; idx: int64; penalty: float64) {.gcsafe,
    locks: 0.}
proc setup*(self: PolygonPathFinder; points: PoolVector2Array;
           connections: PoolIntArray) {.gcsafe, locks: 0.}
var polygonPathFinderUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: PolygonPathFinder): Dictionary =
  if isNil(polygonPathFinderUnderscoregetDataMethodBind):
    polygonPathFinderUnderscoregetDataMethodBind = getMethod(
        cstring"PolygonPathFinder", cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  polygonPathFinderUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var polygonPathFinderUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: PolygonPathFinder; val: Dictionary) =
  if isNil(polygonPathFinderUnderscoresetDataMethodBind):
    polygonPathFinderUnderscoresetDataMethodBind = getMethod(
        cstring"PolygonPathFinder", cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  polygonPathFinderUnderscoresetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygonPathFinderFindPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc findPath(self: PolygonPathFinder; fromm: Vector2; to: Vector2): PoolVector2Array =
  if isNil(polygonPathFinderFindPathMethodBind):
    polygonPathFinderFindPathMethodBind = getMethod(cstring"PolygonPathFinder",
        cstring"find_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  polygonPathFinderFindPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var polygonPathFinderGetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBounds(self: PolygonPathFinder): Rect2 =
  if isNil(polygonPathFinderGetBoundsMethodBind):
    polygonPathFinderGetBoundsMethodBind = getMethod(cstring"PolygonPathFinder",
        cstring"get_bounds")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygonPathFinderGetBoundsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygonPathFinderGetClosestPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPoint(self: PolygonPathFinder; point: Vector2): Vector2 =
  if isNil(polygonPathFinderGetClosestPointMethodBind):
    polygonPathFinderGetClosestPointMethodBind = getMethod(
        cstring"PolygonPathFinder", cstring"get_closest_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygonPathFinderGetClosestPointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygonPathFinderGetIntersectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIntersections(self: PolygonPathFinder; fromm: Vector2; to: Vector2): PoolVector2Array =
  if isNil(polygonPathFinderGetIntersectionsMethodBind):
    polygonPathFinderGetIntersectionsMethodBind = getMethod(
        cstring"PolygonPathFinder", cstring"get_intersections")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  polygonPathFinderGetIntersectionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var polygonPathFinderGetPointPenaltyMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointPenalty(self: PolygonPathFinder; idx: int64): float64 =
  if isNil(polygonPathFinderGetPointPenaltyMethodBind):
    polygonPathFinderGetPointPenaltyMethodBind = getMethod(
        cstring"PolygonPathFinder", cstring"get_point_penalty")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygonPathFinderGetPointPenaltyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygonPathFinderIsPointInsideMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPointInside(self: PolygonPathFinder; point: Vector2): bool =
  if isNil(polygonPathFinderIsPointInsideMethodBind):
    polygonPathFinderIsPointInsideMethodBind = getMethod(
        cstring"PolygonPathFinder", cstring"is_point_inside")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygonPathFinderIsPointInsideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygonPathFinderSetPointPenaltyMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPointPenalty(self: PolygonPathFinder; idx: int64; penalty: float64) =
  if isNil(polygonPathFinderSetPointPenaltyMethodBind):
    polygonPathFinderSetPointPenaltyMethodBind = getMethod(
        cstring"PolygonPathFinder", cstring"set_point_penalty")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(penalty)
  var ptrCallRet: pointer
  polygonPathFinderSetPointPenaltyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygonPathFinderSetupMethodBind {.threadvar.}: ptr GodotMethodBind
proc setup(self: PolygonPathFinder; points: PoolVector2Array;
          connections: PoolIntArray) =
  if isNil(polygonPathFinderSetupMethodBind):
    polygonPathFinderSetupMethodBind = getMethod(cstring"PolygonPathFinder",
        cstring"setup")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = connections.godotPoolIntArray
  var ptrCallRet: pointer
  polygonPathFinderSetupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
