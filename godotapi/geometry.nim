
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  END_BUTT* = 2'i64
  END_JOINED* = 1'i64
  END_POLYGON* = 0'i64
  END_ROUND* = 4'i64
  END_SQUARE* = 3'i64
  JOIN_MITER* = 2'i64
  JOIN_ROUND* = 1'i64
  JOIN_SQUARE* = 0'i64
  OPERATION_DIFFERENCE* = 1'i64
  OPERATION_INTERSECTION* = 2'i64
  OPERATION_UNION* = 0'i64
  OPERATION_XOR* = 3'i64
type
  Geometry = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(Geometry, "_Geometry", true)
var singletonGeometry {.threadvar.}: Geometry
proc buildBoxPlanes*(extents: Vector3): Array {.gcsafe, locks: 0.}
proc buildCapsulePlanes*(radius: float64; height: float64; sides: int64; lats: int64;
                        axis: int64 = 2'i64): Array {.gcsafe, locks: 0.}
proc buildCylinderPlanes*(radius: float64; height: float64; sides: int64;
                         axis: int64 = 2'i64): Array {.gcsafe, locks: 0.}
proc clipPolygon*(points: PoolVector3Array; plane: Plane): PoolVector3Array {.gcsafe,
    locks: 0.}
proc clipPolygons2d*(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array {.
    gcsafe, locks: 0.}
proc clipPolylineWithPolygon2d*(polyline: PoolVector2Array;
                               polygon: PoolVector2Array): Array {.gcsafe, locks: 0.}
proc convexHull2d*(points: PoolVector2Array): PoolVector2Array {.gcsafe, locks: 0.}
proc excludePolygons2d*(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array {.
    gcsafe, locks: 0.}
proc getClosestPointToSegment*(point: Vector3; s1: Vector3; s2: Vector3): Vector3 {.
    gcsafe, locks: 0.}
proc getClosestPointToSegment2d*(point: Vector2; s1: Vector2; s2: Vector2): Vector2 {.
    gcsafe, locks: 0.}
proc getClosestPointToSegmentUncapped*(point: Vector3; s1: Vector3; s2: Vector3): Vector3 {.
    gcsafe, locks: 0.}
proc getClosestPointToSegmentUncapped2d*(point: Vector2; s1: Vector2; s2: Vector2): Vector2 {.
    gcsafe, locks: 0.}
proc getClosestPointsBetweenSegments*(p1: Vector3; p2: Vector3; q1: Vector3;
                                     q2: Vector3): PoolVector3Array {.gcsafe,
    locks: 0.}
proc getClosestPointsBetweenSegments2d*(p1: Vector2; q1: Vector2; p2: Vector2;
                                       q2: Vector2): PoolVector2Array {.gcsafe,
    locks: 0.}
proc getUv84NormalBit*(normal: Vector3): int64 {.gcsafe, locks: 0.}
proc intersectPolygons2d*(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array {.
    gcsafe, locks: 0.}
proc intersectPolylineWithPolygon2d*(polyline: PoolVector2Array;
                                    polygon: PoolVector2Array): Array {.gcsafe,
    locks: 0.}
proc isPointInCircle*(point: Vector2; circlePosition: Vector2; circleRadius: float64): bool {.
    gcsafe, locks: 0.}
proc isPointInPolygon*(point: Vector2; polygon: PoolVector2Array): bool {.gcsafe,
    locks: 0.}
proc isPolygonClockwise*(polygon: PoolVector2Array): bool {.gcsafe, locks: 0.}
proc lineIntersectsLine2d*(fromA: Vector2; dirA: Vector2; fromB: Vector2; dirB: Vector2): Variant {.
    gcsafe, locks: 0.}
proc makeAtlas*(sizes: PoolVector2Array): Dictionary {.gcsafe, locks: 0.}
proc mergePolygons2d*(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array {.
    gcsafe, locks: 0.}
proc offsetPolygon2d*(polygon: PoolVector2Array; delta: float64;
                     joinType: int64 = 0'i64): Array {.gcsafe, locks: 0.}
proc offsetPolyline2d*(polyline: PoolVector2Array; delta: float64;
                      joinType: int64 = 0'i64; endType: int64 = 3'i64): Array {.gcsafe,
    locks: 0.}
proc pointIsInsideTriangle*(point: Vector2; a: Vector2; b: Vector2; c: Vector2): bool {.
    gcsafe, locks: 0.}
proc rayIntersectsTriangle*(fromm: Vector3; dir: Vector3; a: Vector3; b: Vector3;
                           c: Vector3): Variant {.gcsafe, locks: 0.}
proc segmentIntersectsCircle*(segmentFrom: Vector2; segmentTo: Vector2;
                             circlePosition: Vector2; circleRadius: float64): float64 {.
    gcsafe, locks: 0.}
proc segmentIntersectsConvex*(fromm: Vector3; to: Vector3; planes: Array): PoolVector3Array {.
    gcsafe, locks: 0.}
proc segmentIntersectsCylinder*(fromm: Vector3; to: Vector3; height: float64;
                               radius: float64): PoolVector3Array {.gcsafe, locks: 0.}
proc segmentIntersectsSegment2d*(fromA: Vector2; toA: Vector2; fromB: Vector2;
                                toB: Vector2): Variant {.gcsafe, locks: 0.}
proc segmentIntersectsSphere*(fromm: Vector3; to: Vector3; spherePosition: Vector3;
                             sphereRadius: float64): PoolVector3Array {.gcsafe,
    locks: 0.}
proc segmentIntersectsTriangle*(fromm: Vector3; to: Vector3; a: Vector3; b: Vector3;
                               c: Vector3): Variant {.gcsafe, locks: 0.}
proc triangulateDelaunay2d*(points: PoolVector2Array): PoolIntArray {.gcsafe,
    locks: 0.}
proc triangulatePolygon*(polygon: PoolVector2Array): PoolIntArray {.gcsafe, locks: 0.}
var geometryBuildBoxPlanesMethodBind {.threadvar.}: ptr GodotMethodBind
proc buildBoxPlanes(extents: Vector3): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryBuildBoxPlanesMethodBind):
    geometryBuildBoxPlanesMethodBind = getMethod(cstring"_Geometry",
        cstring"build_box_planes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(extents)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryBuildBoxPlanesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var geometryBuildCapsulePlanesMethodBind {.threadvar.}: ptr GodotMethodBind
proc buildCapsulePlanes(radius: float64; height: float64; sides: int64; lats: int64;
                       axis: int64 = 2'i64): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryBuildCapsulePlanesMethodBind):
    geometryBuildCapsulePlanesMethodBind = getMethod(cstring"_Geometry",
        cstring"build_capsule_planes")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(radius)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(sides)
  argsToPassToGodot[][3] = unsafeAddr(lats)
  argsToPassToGodot[][4] = unsafeAddr(axis)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryBuildCapsulePlanesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var geometryBuildCylinderPlanesMethodBind {.threadvar.}: ptr GodotMethodBind
proc buildCylinderPlanes(radius: float64; height: float64; sides: int64;
                        axis: int64 = 2'i64): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryBuildCylinderPlanesMethodBind):
    geometryBuildCylinderPlanesMethodBind = getMethod(cstring"_Geometry",
        cstring"build_cylinder_planes")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(radius)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(sides)
  argsToPassToGodot[][3] = unsafeAddr(axis)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryBuildCylinderPlanesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var geometryClipPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc clipPolygon(points: PoolVector3Array; plane: Plane): PoolVector3Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryClipPolygonMethodBind):
    geometryClipPolygonMethodBind = getMethod(cstring"_Geometry",
        cstring"clip_polygon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector3Array
  argsToPassToGodot[][1] = unsafeAddr(plane)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  geometryClipPolygonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var geometryClipPolygons2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc clipPolygons2d(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryClipPolygons2dMethodBind):
    geometryClipPolygons2dMethodBind = getMethod(cstring"_Geometry",
        cstring"clip_polygons_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygonA.godotPoolVector2Array
  argsToPassToGodot[][1] = polygonB.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryClipPolygons2dMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var geometryClipPolylineWithPolygon2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc clipPolylineWithPolygon2d(polyline: PoolVector2Array;
                              polygon: PoolVector2Array): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryClipPolylineWithPolygon2dMethodBind):
    geometryClipPolylineWithPolygon2dMethodBind = getMethod(cstring"_Geometry",
        cstring"clip_polyline_with_polygon_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polyline.godotPoolVector2Array
  argsToPassToGodot[][1] = polygon.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryClipPolylineWithPolygon2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var geometryConvexHull2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc convexHull2d(points: PoolVector2Array): PoolVector2Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryConvexHull2dMethodBind):
    geometryConvexHull2dMethodBind = getMethod(cstring"_Geometry",
        cstring"convex_hull_2d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  geometryConvexHull2dMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var geometryExcludePolygons2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc excludePolygons2d(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryExcludePolygons2dMethodBind):
    geometryExcludePolygons2dMethodBind = getMethod(cstring"_Geometry",
        cstring"exclude_polygons_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygonA.godotPoolVector2Array
  argsToPassToGodot[][1] = polygonB.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryExcludePolygons2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var geometryGetClosestPointToSegmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointToSegment(point: Vector3; s1: Vector3; s2: Vector3): Vector3 =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryGetClosestPointToSegmentMethodBind):
    geometryGetClosestPointToSegmentMethodBind = getMethod(cstring"_Geometry",
        cstring"get_closest_point_to_segment")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(s1)
  argsToPassToGodot[][2] = unsafeAddr(s2)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryGetClosestPointToSegmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryGetClosestPointToSegment2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointToSegment2d(point: Vector2; s1: Vector2; s2: Vector2): Vector2 =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryGetClosestPointToSegment2dMethodBind):
    geometryGetClosestPointToSegment2dMethodBind = getMethod(cstring"_Geometry",
        cstring"get_closest_point_to_segment_2d")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(s1)
  argsToPassToGodot[][2] = unsafeAddr(s2)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryGetClosestPointToSegment2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryGetClosestPointToSegmentUncappedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointToSegmentUncapped(point: Vector3; s1: Vector3; s2: Vector3): Vector3 =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryGetClosestPointToSegmentUncappedMethodBind):
    geometryGetClosestPointToSegmentUncappedMethodBind = getMethod(
        cstring"_Geometry", cstring"get_closest_point_to_segment_uncapped")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(s1)
  argsToPassToGodot[][2] = unsafeAddr(s2)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryGetClosestPointToSegmentUncappedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryGetClosestPointToSegmentUncapped2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointToSegmentUncapped2d(point: Vector2; s1: Vector2; s2: Vector2): Vector2 =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryGetClosestPointToSegmentUncapped2dMethodBind):
    geometryGetClosestPointToSegmentUncapped2dMethodBind = getMethod(
        cstring"_Geometry", cstring"get_closest_point_to_segment_uncapped_2d")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(s1)
  argsToPassToGodot[][2] = unsafeAddr(s2)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryGetClosestPointToSegmentUncapped2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryGetClosestPointsBetweenSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointsBetweenSegments(p1: Vector3; p2: Vector3; q1: Vector3; q2: Vector3): PoolVector3Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryGetClosestPointsBetweenSegmentsMethodBind):
    geometryGetClosestPointsBetweenSegmentsMethodBind = getMethod(
        cstring"_Geometry", cstring"get_closest_points_between_segments")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(p1)
  argsToPassToGodot[][1] = unsafeAddr(p2)
  argsToPassToGodot[][2] = unsafeAddr(q1)
  argsToPassToGodot[][3] = unsafeAddr(q2)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  geometryGetClosestPointsBetweenSegmentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var geometryGetClosestPointsBetweenSegments2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointsBetweenSegments2d(p1: Vector2; q1: Vector2; p2: Vector2;
                                      q2: Vector2): PoolVector2Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryGetClosestPointsBetweenSegments2dMethodBind):
    geometryGetClosestPointsBetweenSegments2dMethodBind = getMethod(
        cstring"_Geometry", cstring"get_closest_points_between_segments_2d")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(p1)
  argsToPassToGodot[][1] = unsafeAddr(q1)
  argsToPassToGodot[][2] = unsafeAddr(p2)
  argsToPassToGodot[][3] = unsafeAddr(q2)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  geometryGetClosestPointsBetweenSegments2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var geometryGetUv84NormalBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUv84NormalBit(normal: Vector3): int64 =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryGetUv84NormalBitMethodBind):
    geometryGetUv84NormalBitMethodBind = getMethod(cstring"_Geometry",
        cstring"get_uv84_normal_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(normal)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryGetUv84NormalBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var geometryIntersectPolygons2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectPolygons2d(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryIntersectPolygons2dMethodBind):
    geometryIntersectPolygons2dMethodBind = getMethod(cstring"_Geometry",
        cstring"intersect_polygons_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygonA.godotPoolVector2Array
  argsToPassToGodot[][1] = polygonB.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryIntersectPolygons2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var geometryIntersectPolylineWithPolygon2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectPolylineWithPolygon2d(polyline: PoolVector2Array;
                                   polygon: PoolVector2Array): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryIntersectPolylineWithPolygon2dMethodBind):
    geometryIntersectPolylineWithPolygon2dMethodBind = getMethod(
        cstring"_Geometry", cstring"intersect_polyline_with_polygon_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polyline.godotPoolVector2Array
  argsToPassToGodot[][1] = polygon.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryIntersectPolylineWithPolygon2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var geometryIsPointInCircleMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPointInCircle(point: Vector2; circlePosition: Vector2; circleRadius: float64): bool =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryIsPointInCircleMethodBind):
    geometryIsPointInCircleMethodBind = getMethod(cstring"_Geometry",
        cstring"is_point_in_circle")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(circlePosition)
  argsToPassToGodot[][2] = unsafeAddr(circleRadius)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryIsPointInCircleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var geometryIsPointInPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPointInPolygon(point: Vector2; polygon: PoolVector2Array): bool =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryIsPointInPolygonMethodBind):
    geometryIsPointInPolygonMethodBind = getMethod(cstring"_Geometry",
        cstring"is_point_in_polygon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = polygon.godotPoolVector2Array
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryIsPointInPolygonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var geometryIsPolygonClockwiseMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPolygonClockwise(polygon: PoolVector2Array): bool =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryIsPolygonClockwiseMethodBind):
    geometryIsPolygonClockwiseMethodBind = getMethod(cstring"_Geometry",
        cstring"is_polygon_clockwise")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygon.godotPoolVector2Array
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryIsPolygonClockwiseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryLineIntersectsLine2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc lineIntersectsLine2d(fromA: Vector2; dirA: Vector2; fromB: Vector2; dirB: Vector2): Variant =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryLineIntersectsLine2dMethodBind):
    geometryLineIntersectsLine2dMethodBind = getMethod(cstring"_Geometry",
        cstring"line_intersects_line_2d")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromA)
  argsToPassToGodot[][1] = unsafeAddr(dirA)
  argsToPassToGodot[][2] = unsafeAddr(fromB)
  argsToPassToGodot[][3] = unsafeAddr(dirB)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  geometryLineIntersectsLine2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var geometryMakeAtlasMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeAtlas(sizes: PoolVector2Array): Dictionary =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryMakeAtlasMethodBind):
    geometryMakeAtlasMethodBind = getMethod(cstring"_Geometry",
        cstring"make_atlas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = sizes.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  geometryMakeAtlasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = newDictionary(ptrCallVal)

var geometryMergePolygons2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc mergePolygons2d(polygonA: PoolVector2Array; polygonB: PoolVector2Array): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryMergePolygons2dMethodBind):
    geometryMergePolygons2dMethodBind = getMethod(cstring"_Geometry",
        cstring"merge_polygons_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygonA.godotPoolVector2Array
  argsToPassToGodot[][1] = polygonB.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryMergePolygons2dMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var geometryOffsetPolygon2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc offsetPolygon2d(polygon: PoolVector2Array; delta: float64;
                    joinType: int64 = 0'i64): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryOffsetPolygon2dMethodBind):
    geometryOffsetPolygon2dMethodBind = getMethod(cstring"_Geometry",
        cstring"offset_polygon_2d")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygon.godotPoolVector2Array
  argsToPassToGodot[][1] = unsafeAddr(delta)
  argsToPassToGodot[][2] = unsafeAddr(joinType)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryOffsetPolygon2dMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var geometryOffsetPolyline2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc offsetPolyline2d(polyline: PoolVector2Array; delta: float64;
                     joinType: int64 = 0'i64; endType: int64 = 3'i64): Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryOffsetPolyline2dMethodBind):
    geometryOffsetPolyline2dMethodBind = getMethod(cstring"_Geometry",
        cstring"offset_polyline_2d")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polyline.godotPoolVector2Array
  argsToPassToGodot[][1] = unsafeAddr(delta)
  argsToPassToGodot[][2] = unsafeAddr(joinType)
  argsToPassToGodot[][3] = unsafeAddr(endType)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  geometryOffsetPolyline2dMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var geometryPointIsInsideTriangleMethodBind {.threadvar.}: ptr GodotMethodBind
proc pointIsInsideTriangle(point: Vector2; a: Vector2; b: Vector2; c: Vector2): bool =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryPointIsInsideTriangleMethodBind):
    geometryPointIsInsideTriangleMethodBind = getMethod(cstring"_Geometry",
        cstring"point_is_inside_triangle")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(a)
  argsToPassToGodot[][2] = unsafeAddr(b)
  argsToPassToGodot[][3] = unsafeAddr(c)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryPointIsInsideTriangleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryRayIntersectsTriangleMethodBind {.threadvar.}: ptr GodotMethodBind
proc rayIntersectsTriangle(fromm: Vector3; dir: Vector3; a: Vector3; b: Vector3;
                          c: Vector3): Variant =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryRayIntersectsTriangleMethodBind):
    geometryRayIntersectsTriangleMethodBind = getMethod(cstring"_Geometry",
        cstring"ray_intersects_triangle")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(dir)
  argsToPassToGodot[][2] = unsafeAddr(a)
  argsToPassToGodot[][3] = unsafeAddr(b)
  argsToPassToGodot[][4] = unsafeAddr(c)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  geometryRayIntersectsTriangleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var geometrySegmentIntersectsCircleMethodBind {.threadvar.}: ptr GodotMethodBind
proc segmentIntersectsCircle(segmentFrom: Vector2; segmentTo: Vector2;
                            circlePosition: Vector2; circleRadius: float64): float64 =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometrySegmentIntersectsCircleMethodBind):
    geometrySegmentIntersectsCircleMethodBind = getMethod(cstring"_Geometry",
        cstring"segment_intersects_circle")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(segmentFrom)
  argsToPassToGodot[][1] = unsafeAddr(segmentTo)
  argsToPassToGodot[][2] = unsafeAddr(circlePosition)
  argsToPassToGodot[][3] = unsafeAddr(circleRadius)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometrySegmentIntersectsCircleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometrySegmentIntersectsConvexMethodBind {.threadvar.}: ptr GodotMethodBind
proc segmentIntersectsConvex(fromm: Vector3; to: Vector3; planes: Array): PoolVector3Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometrySegmentIntersectsConvexMethodBind):
    geometrySegmentIntersectsConvexMethodBind = getMethod(cstring"_Geometry",
        cstring"segment_intersects_convex")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = planes.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  geometrySegmentIntersectsConvexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var geometrySegmentIntersectsCylinderMethodBind {.threadvar.}: ptr GodotMethodBind
proc segmentIntersectsCylinder(fromm: Vector3; to: Vector3; height: float64;
                              radius: float64): PoolVector3Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometrySegmentIntersectsCylinderMethodBind):
    geometrySegmentIntersectsCylinderMethodBind = getMethod(cstring"_Geometry",
        cstring"segment_intersects_cylinder")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = unsafeAddr(height)
  argsToPassToGodot[][3] = unsafeAddr(radius)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  geometrySegmentIntersectsCylinderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var geometrySegmentIntersectsSegment2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc segmentIntersectsSegment2d(fromA: Vector2; toA: Vector2; fromB: Vector2;
                               toB: Vector2): Variant =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometrySegmentIntersectsSegment2dMethodBind):
    geometrySegmentIntersectsSegment2dMethodBind = getMethod(cstring"_Geometry",
        cstring"segment_intersects_segment_2d")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromA)
  argsToPassToGodot[][1] = unsafeAddr(toA)
  argsToPassToGodot[][2] = unsafeAddr(fromB)
  argsToPassToGodot[][3] = unsafeAddr(toB)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  geometrySegmentIntersectsSegment2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var geometrySegmentIntersectsSphereMethodBind {.threadvar.}: ptr GodotMethodBind
proc segmentIntersectsSphere(fromm: Vector3; to: Vector3; spherePosition: Vector3;
                            sphereRadius: float64): PoolVector3Array =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometrySegmentIntersectsSphereMethodBind):
    geometrySegmentIntersectsSphereMethodBind = getMethod(cstring"_Geometry",
        cstring"segment_intersects_sphere")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = unsafeAddr(spherePosition)
  argsToPassToGodot[][3] = unsafeAddr(sphereRadius)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  geometrySegmentIntersectsSphereMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var geometrySegmentIntersectsTriangleMethodBind {.threadvar.}: ptr GodotMethodBind
proc segmentIntersectsTriangle(fromm: Vector3; to: Vector3; a: Vector3; b: Vector3;
                              c: Vector3): Variant =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometrySegmentIntersectsTriangleMethodBind):
    geometrySegmentIntersectsTriangleMethodBind = getMethod(cstring"_Geometry",
        cstring"segment_intersects_triangle")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = unsafeAddr(a)
  argsToPassToGodot[][3] = unsafeAddr(b)
  argsToPassToGodot[][4] = unsafeAddr(c)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  geometrySegmentIntersectsTriangleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var geometryTriangulateDelaunay2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc triangulateDelaunay2d(points: PoolVector2Array): PoolIntArray =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryTriangulateDelaunay2dMethodBind):
    geometryTriangulateDelaunay2dMethodBind = getMethod(cstring"_Geometry",
        cstring"triangulate_delaunay_2d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  geometryTriangulateDelaunay2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var geometryTriangulatePolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc triangulatePolygon(polygon: PoolVector2Array): PoolIntArray =
  if isNil(singletonGeometry):
    singletonGeometry = getSingleton[Geometry]()
  let self = singletonGeometry
  if isNil(geometryTriangulatePolygonMethodBind):
    geometryTriangulatePolygonMethodBind = getMethod(cstring"_Geometry",
        cstring"triangulate_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygon.godotPoolVector2Array
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  geometryTriangulatePolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)
