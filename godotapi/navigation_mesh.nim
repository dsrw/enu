
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  PARSED_GEOMETRY_BOTH* = 2'i64
  PARSED_GEOMETRY_MESH_INSTANCES* = 0'i64
  PARSED_GEOMETRY_STATIC_COLLIDERS* = 1'i64
  SAMPLE_PARTITION_LAYERS* = 2'i64
  SAMPLE_PARTITION_MONOTONE* = 1'i64
  SAMPLE_PARTITION_WATERSHED* = 0'i64
proc agentheight*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `agentheight=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc agentmaxClimb*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `agentmaxClimb=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc agentmaxSlope*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `agentmaxSlope=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc agentradius*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `agentradius=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc cellheight*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `cellheight=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc cellsize*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `cellsize=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc detailsampleDistance*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `detailsampleDistance=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc detailsampleMaxError*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `detailsampleMaxError=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc edgemaxError*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `edgemaxError=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc edgemaxLength*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `edgemaxLength=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc filterfilterWalkableLowHeightSpans*(self: NavigationMesh): bool {.gcsafe,
    locks: 0.}
proc `filterfilterWalkableLowHeightSpans=`*(self: NavigationMesh; val: bool) {.
    gcsafe, locks: 0.}
proc filterledgeSpans*(self: NavigationMesh): bool {.gcsafe, locks: 0.}
proc `filterledgeSpans=`*(self: NavigationMesh; val: bool) {.gcsafe, locks: 0.}
proc filterlowHangingObstacles*(self: NavigationMesh): bool {.gcsafe, locks: 0.}
proc `filterlowHangingObstacles=`*(self: NavigationMesh; val: bool) {.gcsafe, locks: 0.}
proc geometrycollisionMask*(self: NavigationMesh): int64 {.gcsafe, locks: 0.}
proc `geometrycollisionMask=`*(self: NavigationMesh; val: int64) {.gcsafe, locks: 0.}
proc geometryparsedGeometryType*(self: NavigationMesh): int64 {.gcsafe, locks: 0.}
proc `geometryparsedGeometryType=`*(self: NavigationMesh; val: int64) {.gcsafe,
    locks: 0.}
proc geometrysourceGeometryMode*(self: NavigationMesh): int64 {.gcsafe, locks: 0.}
proc `geometrysourceGeometryMode=`*(self: NavigationMesh; val: int64) {.gcsafe,
    locks: 0.}
proc geometrysourceGroupName*(self: NavigationMesh): string {.gcsafe, locks: 0.}
proc `geometrysourceGroupName=`*(self: NavigationMesh; val: string) {.gcsafe, locks: 0.}
proc polygonvertsPerPoly*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `polygonvertsPerPoly=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc polygons*(self: NavigationMesh): Array {.gcsafe, locks: 0.}
proc `polygons=`*(self: NavigationMesh; val: Array) {.gcsafe, locks: 0.}
proc regionmergeSize*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `regionmergeSize=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc regionminSize*(self: NavigationMesh): float64 {.gcsafe, locks: 0.}
proc `regionminSize=`*(self: NavigationMesh; val: float64) {.gcsafe, locks: 0.}
proc samplePartitionTypesamplePartitionType*(self: NavigationMesh): int64 {.gcsafe,
    locks: 0.}
proc `samplePartitionTypesamplePartitionType=`*(self: NavigationMesh; val: int64) {.
    gcsafe, locks: 0.}
proc vertices*(self: NavigationMesh): PoolVector3Array {.gcsafe, locks: 0.}
proc `vertices=`*(self: NavigationMesh; val: PoolVector3Array) {.gcsafe, locks: 0.}
proc addPolygon*(self: NavigationMesh; polygon: PoolIntArray) {.gcsafe, locks: 0.}
proc clearPolygons*(self: NavigationMesh) {.gcsafe, locks: 0.}
proc createFromMesh*(self: NavigationMesh; mesh: Mesh) {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: NavigationMesh; bit: int64): bool {.gcsafe, locks: 0.}
proc getPolygon*(self: NavigationMesh; idx: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getPolygonCount*(self: NavigationMesh): int64 {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: NavigationMesh; bit: int64; value: bool) {.gcsafe,
    locks: 0.}
var navigationMeshGetAgentHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc agentheight(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetAgentHeightMethodBind):
    navigationMeshGetAgentHeightMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_agent_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetAgentHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var navigationMeshSetAgentHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `agentheight=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetAgentHeightMethodBind):
    navigationMeshSetAgentHeightMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_agent_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetAgentHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetAgentMaxClimbMethodBind {.threadvar.}: ptr GodotMethodBind
proc agentmaxClimb(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetAgentMaxClimbMethodBind):
    navigationMeshGetAgentMaxClimbMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_agent_max_climb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetAgentMaxClimbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetAgentMaxClimbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `agentmaxClimb=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetAgentMaxClimbMethodBind):
    navigationMeshSetAgentMaxClimbMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_agent_max_climb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetAgentMaxClimbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetAgentMaxSlopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc agentmaxSlope(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetAgentMaxSlopeMethodBind):
    navigationMeshGetAgentMaxSlopeMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_agent_max_slope")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetAgentMaxSlopeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetAgentMaxSlopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `agentmaxSlope=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetAgentMaxSlopeMethodBind):
    navigationMeshSetAgentMaxSlopeMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_agent_max_slope")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetAgentMaxSlopeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetAgentRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc agentradius(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetAgentRadiusMethodBind):
    navigationMeshGetAgentRadiusMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_agent_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetAgentRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var navigationMeshSetAgentRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `agentradius=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetAgentRadiusMethodBind):
    navigationMeshSetAgentRadiusMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_agent_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetAgentRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetCellHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellheight(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetCellHeightMethodBind):
    navigationMeshGetCellHeightMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_cell_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetCellHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var navigationMeshSetCellHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellheight=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetCellHeightMethodBind):
    navigationMeshSetCellHeightMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_cell_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetCellHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellsize(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetCellSizeMethodBind):
    navigationMeshGetCellSizeMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetCellSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var navigationMeshSetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellsize=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetCellSizeMethodBind):
    navigationMeshSetCellSizeMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetDetailSampleDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc detailsampleDistance(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetDetailSampleDistanceMethodBind):
    navigationMeshGetDetailSampleDistanceMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_detail_sample_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetDetailSampleDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetDetailSampleDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `detailsampleDistance=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetDetailSampleDistanceMethodBind):
    navigationMeshSetDetailSampleDistanceMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_detail_sample_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetDetailSampleDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetDetailSampleMaxErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc detailsampleMaxError(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetDetailSampleMaxErrorMethodBind):
    navigationMeshGetDetailSampleMaxErrorMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_detail_sample_max_error")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetDetailSampleMaxErrorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetDetailSampleMaxErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `detailsampleMaxError=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetDetailSampleMaxErrorMethodBind):
    navigationMeshSetDetailSampleMaxErrorMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_detail_sample_max_error")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetDetailSampleMaxErrorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetEdgeMaxErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc edgemaxError(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetEdgeMaxErrorMethodBind):
    navigationMeshGetEdgeMaxErrorMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_edge_max_error")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetEdgeMaxErrorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetEdgeMaxErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `edgemaxError=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetEdgeMaxErrorMethodBind):
    navigationMeshSetEdgeMaxErrorMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_edge_max_error")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetEdgeMaxErrorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetEdgeMaxLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc edgemaxLength(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetEdgeMaxLengthMethodBind):
    navigationMeshGetEdgeMaxLengthMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_edge_max_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetEdgeMaxLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetEdgeMaxLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `edgemaxLength=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetEdgeMaxLengthMethodBind):
    navigationMeshSetEdgeMaxLengthMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_edge_max_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetEdgeMaxLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetFilterWalkableLowHeightSpansMethodBind {.threadvar.}: ptr GodotMethodBind
proc filterfilterWalkableLowHeightSpans(self: NavigationMesh): bool =
  if isNil(navigationMeshGetFilterWalkableLowHeightSpansMethodBind):
    navigationMeshGetFilterWalkableLowHeightSpansMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_filter_walkable_low_height_spans")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetFilterWalkableLowHeightSpansMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var navigationMeshSetFilterWalkableLowHeightSpansMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filterfilterWalkableLowHeightSpans=`(self: NavigationMesh; val: bool) =
  if isNil(navigationMeshSetFilterWalkableLowHeightSpansMethodBind):
    navigationMeshSetFilterWalkableLowHeightSpansMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_filter_walkable_low_height_spans")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetFilterWalkableLowHeightSpansMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var navigationMeshGetFilterLedgeSpansMethodBind {.threadvar.}: ptr GodotMethodBind
proc filterledgeSpans(self: NavigationMesh): bool =
  if isNil(navigationMeshGetFilterLedgeSpansMethodBind):
    navigationMeshGetFilterLedgeSpansMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_filter_ledge_spans")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetFilterLedgeSpansMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetFilterLedgeSpansMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filterledgeSpans=`(self: NavigationMesh; val: bool) =
  if isNil(navigationMeshSetFilterLedgeSpansMethodBind):
    navigationMeshSetFilterLedgeSpansMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_filter_ledge_spans")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetFilterLedgeSpansMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetFilterLowHangingObstaclesMethodBind {.threadvar.}: ptr GodotMethodBind
proc filterlowHangingObstacles(self: NavigationMesh): bool =
  if isNil(navigationMeshGetFilterLowHangingObstaclesMethodBind):
    navigationMeshGetFilterLowHangingObstaclesMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_filter_low_hanging_obstacles")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetFilterLowHangingObstaclesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var navigationMeshSetFilterLowHangingObstaclesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filterlowHangingObstacles=`(self: NavigationMesh; val: bool) =
  if isNil(navigationMeshSetFilterLowHangingObstaclesMethodBind):
    navigationMeshSetFilterLowHangingObstaclesMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_filter_low_hanging_obstacles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetFilterLowHangingObstaclesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc geometrycollisionMask(self: NavigationMesh): int64 =
  if isNil(navigationMeshGetCollisionMaskMethodBind):
    navigationMeshGetCollisionMaskMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `geometrycollisionMask=`(self: NavigationMesh; val: int64) =
  if isNil(navigationMeshSetCollisionMaskMethodBind):
    navigationMeshSetCollisionMaskMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetParsedGeometryTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc geometryparsedGeometryType(self: NavigationMesh): int64 =
  if isNil(navigationMeshGetParsedGeometryTypeMethodBind):
    navigationMeshGetParsedGeometryTypeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_parsed_geometry_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetParsedGeometryTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetParsedGeometryTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `geometryparsedGeometryType=`(self: NavigationMesh; val: int64) =
  if isNil(navigationMeshSetParsedGeometryTypeMethodBind):
    navigationMeshSetParsedGeometryTypeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_parsed_geometry_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetParsedGeometryTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetSourceGeometryModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc geometrysourceGeometryMode(self: NavigationMesh): int64 =
  if isNil(navigationMeshGetSourceGeometryModeMethodBind):
    navigationMeshGetSourceGeometryModeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_source_geometry_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetSourceGeometryModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetSourceGeometryModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `geometrysourceGeometryMode=`(self: NavigationMesh; val: int64) =
  if isNil(navigationMeshSetSourceGeometryModeMethodBind):
    navigationMeshSetSourceGeometryModeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_source_geometry_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetSourceGeometryModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetSourceGroupNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc geometrysourceGroupName(self: NavigationMesh): string =
  if isNil(navigationMeshGetSourceGroupNameMethodBind):
    navigationMeshGetSourceGroupNameMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_source_group_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  navigationMeshGetSourceGroupNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var navigationMeshSetSourceGroupNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `geometrysourceGroupName=`(self: NavigationMesh; val: string) =
  if isNil(navigationMeshSetSourceGroupNameMethodBind):
    navigationMeshSetSourceGroupNameMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_source_group_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  navigationMeshSetSourceGroupNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var navigationMeshGetVertsPerPolyMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygonvertsPerPoly(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetVertsPerPolyMethodBind):
    navigationMeshGetVertsPerPolyMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_verts_per_poly")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetVertsPerPolyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetVertsPerPolyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygonvertsPerPoly=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetVertsPerPolyMethodBind):
    navigationMeshSetVertsPerPolyMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_verts_per_poly")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetVertsPerPolyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshUnderscoregetPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygons(self: NavigationMesh): Array =
  if isNil(navigationMeshUnderscoregetPolygonsMethodBind):
    navigationMeshUnderscoregetPolygonsMethodBind = getMethod(
        cstring"NavigationMesh", cstring"_get_polygons")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  navigationMeshUnderscoregetPolygonsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var navigationMeshUnderscoresetPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygons=`(self: NavigationMesh; val: Array) =
  if isNil(navigationMeshUnderscoresetPolygonsMethodBind):
    navigationMeshUnderscoresetPolygonsMethodBind = getMethod(
        cstring"NavigationMesh", cstring"_set_polygons")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  navigationMeshUnderscoresetPolygonsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetRegionMergeSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionmergeSize(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetRegionMergeSizeMethodBind):
    navigationMeshGetRegionMergeSizeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_region_merge_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetRegionMergeSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetRegionMergeSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionmergeSize=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetRegionMergeSizeMethodBind):
    navigationMeshSetRegionMergeSizeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_region_merge_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetRegionMergeSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetRegionMinSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionminSize(self: NavigationMesh): float64 =
  if isNil(navigationMeshGetRegionMinSizeMethodBind):
    navigationMeshGetRegionMinSizeMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_region_min_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetRegionMinSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetRegionMinSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionminSize=`(self: NavigationMesh; val: float64) =
  if isNil(navigationMeshSetRegionMinSizeMethodBind):
    navigationMeshSetRegionMinSizeMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_region_min_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetRegionMinSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetSamplePartitionTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc samplePartitionTypesamplePartitionType(self: NavigationMesh): int64 =
  if isNil(navigationMeshGetSamplePartitionTypeMethodBind):
    navigationMeshGetSamplePartitionTypeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_sample_partition_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetSamplePartitionTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetSamplePartitionTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `samplePartitionTypesamplePartitionType=`(self: NavigationMesh; val: int64) =
  if isNil(navigationMeshSetSamplePartitionTypeMethodBind):
    navigationMeshSetSamplePartitionTypeMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_sample_partition_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshSetSamplePartitionTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetVerticesMethodBind {.threadvar.}: ptr GodotMethodBind
proc vertices(self: NavigationMesh): PoolVector3Array =
  if isNil(navigationMeshGetVerticesMethodBind):
    navigationMeshGetVerticesMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_vertices")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  navigationMeshGetVerticesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var navigationMeshSetVerticesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vertices=`(self: NavigationMesh; val: PoolVector3Array) =
  if isNil(navigationMeshSetVerticesMethodBind):
    navigationMeshSetVerticesMethodBind = getMethod(cstring"NavigationMesh",
        cstring"set_vertices")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  navigationMeshSetVerticesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshAddPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPolygon(self: NavigationMesh; polygon: PoolIntArray) =
  if isNil(navigationMeshAddPolygonMethodBind):
    navigationMeshAddPolygonMethodBind = getMethod(cstring"NavigationMesh",
        cstring"add_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygon.godotPoolIntArray
  var ptrCallRet: pointer
  navigationMeshAddPolygonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var navigationMeshClearPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearPolygons(self: NavigationMesh) =
  if isNil(navigationMeshClearPolygonsMethodBind):
    navigationMeshClearPolygonsMethodBind = getMethod(cstring"NavigationMesh",
        cstring"clear_polygons")
  var ptrCallRet: pointer
  navigationMeshClearPolygonsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var navigationMeshCreateFromMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFromMesh(self: NavigationMesh; mesh: Mesh) =
  if isNil(navigationMeshCreateFromMeshMethodBind):
    navigationMeshCreateFromMeshMethodBind = getMethod(cstring"NavigationMesh",
        cstring"create_from_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  navigationMeshCreateFromMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: NavigationMesh; bit: int64): bool =
  if isNil(navigationMeshGetCollisionMaskBitMethodBind):
    navigationMeshGetCollisionMaskBitMethodBind = getMethod(
        cstring"NavigationMesh", cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshGetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPolygon(self: NavigationMesh; idx: int64): PoolIntArray =
  if isNil(navigationMeshGetPolygonMethodBind):
    navigationMeshGetPolygonMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  navigationMeshGetPolygonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var navigationMeshGetPolygonCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPolygonCount(self: NavigationMesh): int64 =
  if isNil(navigationMeshGetPolygonCountMethodBind):
    navigationMeshGetPolygonCountMethodBind = getMethod(cstring"NavigationMesh",
        cstring"get_polygon_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshGetPolygonCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: NavigationMesh; bit: int64; value: bool) =
  if isNil(navigationMeshSetCollisionMaskBitMethodBind):
    navigationMeshSetCollisionMaskBitMethodBind = getMethod(
        cstring"NavigationMesh", cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  navigationMeshSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
