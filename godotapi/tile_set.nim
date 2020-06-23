
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  ATLAS_TILE* = 2'i64
  AUTO_TILE* = 1'i64
  BIND_BOTTOM* = 128'i64
  BIND_BOTTOMLEFT* = 64'i64
  BIND_BOTTOMRIGHT* = 256'i64
  BIND_CENTER* = 16'i64
  BIND_LEFT* = 8'i64
  BIND_RIGHT* = 32'i64
  BIND_TOP* = 2'i64
  BIND_TOPLEFT* = 1'i64
  BIND_TOPRIGHT* = 4'i64
  BITMASK_2X2* = 0'i64
  BITMASK_3X3* = 2'i64
  BITMASK_3X3_MINIMAL* = 1'i64
  SINGLE_TILE* = 0'i64
method forwardAtlasSubtileSelection*(self: TileSet; atlastileId: int64;
                                    tilemap: Object; tileLocation: Vector2): Vector2 {.
    gcsafe, locks: 0, base.}
method forwardSubtileSelection*(self: TileSet; autotileId: int64; bitmask: int64;
                               tilemap: Object; tileLocation: Vector2): Vector2 {.
    gcsafe, locks: 0, base.}
method isTileBound*(self: TileSet; drawnId: int64; neighborId: int64): bool {.gcsafe,
    locks: 0, base.}
proc autotileClearBitmaskMap*(self: TileSet; id: int64) {.gcsafe, locks: 0.}
proc autotileGetBitmask*(self: TileSet; id: int64; coord: Vector2): int64 {.gcsafe,
    locks: 0.}
proc autotileGetBitmaskMode*(self: TileSet; id: int64): int64 {.gcsafe, locks: 0.}
proc autotileGetIconCoordinate*(self: TileSet; id: int64): Vector2 {.gcsafe, locks: 0.}
proc autotileGetLightOccluder*(self: TileSet; id: int64; coord: Vector2): OccluderPolygon2D {.
    gcsafe, locks: 0.}
proc autotileGetNavigationPolygon*(self: TileSet; id: int64; coord: Vector2): NavigationPolygon {.
    gcsafe, locks: 0.}
proc autotileGetSize*(self: TileSet; id: int64): Vector2 {.gcsafe, locks: 0.}
proc autotileGetSpacing*(self: TileSet; id: int64): int64 {.gcsafe, locks: 0.}
proc autotileGetSubtilePriority*(self: TileSet; id: int64; coord: Vector2): int64 {.
    gcsafe, locks: 0.}
proc autotileGetZIndex*(self: TileSet; id: int64; coord: Vector2): int64 {.gcsafe,
    locks: 0.}
proc autotileSetBitmask*(self: TileSet; id: int64; bitmask: Vector2; flag: int64) {.
    gcsafe, locks: 0.}
proc autotileSetBitmaskMode*(self: TileSet; id: int64; mode: int64) {.gcsafe, locks: 0.}
proc autotileSetIconCoordinate*(self: TileSet; id: int64; coord: Vector2) {.gcsafe,
    locks: 0.}
proc autotileSetLightOccluder*(self: TileSet; id: int64;
                              lightOccluder: OccluderPolygon2D; coord: Vector2) {.
    gcsafe, locks: 0.}
proc autotileSetNavigationPolygon*(self: TileSet; id: int64;
                                  navigationPolygon: NavigationPolygon;
                                  coord: Vector2) {.gcsafe, locks: 0.}
proc autotileSetSize*(self: TileSet; id: int64; size: Vector2) {.gcsafe, locks: 0.}
proc autotileSetSpacing*(self: TileSet; id: int64; spacing: int64) {.gcsafe, locks: 0.}
proc autotileSetSubtilePriority*(self: TileSet; id: int64; coord: Vector2;
                                priority: int64) {.gcsafe, locks: 0.}
proc autotileSetZIndex*(self: TileSet; id: int64; coord: Vector2; zIndex: int64) {.
    gcsafe, locks: 0.}
proc clear*(self: TileSet) {.gcsafe, locks: 0.}
proc createTile*(self: TileSet; id: int64) {.gcsafe, locks: 0.}
proc findTileByName*(self: TileSet; name: string): int64 {.gcsafe, locks: 0.}
proc getLastUnusedTileId*(self: TileSet): int64 {.gcsafe, locks: 0.}
proc getTilesIds*(self: TileSet): Array {.gcsafe, locks: 0.}
proc removeTile*(self: TileSet; id: int64) {.gcsafe, locks: 0.}
proc tileAddShape*(self: TileSet; id: int64; shape: Shape2D;
                  shapeTransform: Transform2D; oneWay: bool = false;
                  autotileCoord: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc tileGetLightOccluder*(self: TileSet; id: int64): OccluderPolygon2D {.gcsafe,
    locks: 0.}
proc tileGetMaterial*(self: TileSet; id: int64): ShaderMaterial {.gcsafe, locks: 0.}
proc tileGetModulate*(self: TileSet; id: int64): Color {.gcsafe, locks: 0.}
proc tileGetName*(self: TileSet; id: int64): string {.gcsafe, locks: 0.}
proc tileGetNavigationPolygon*(self: TileSet; id: int64): NavigationPolygon {.gcsafe,
    locks: 0.}
proc tileGetNavigationPolygonOffset*(self: TileSet; id: int64): Vector2 {.gcsafe,
    locks: 0.}
proc tileGetNormalMap*(self: TileSet; id: int64): Texture {.gcsafe, locks: 0.}
proc tileGetOccluderOffset*(self: TileSet; id: int64): Vector2 {.gcsafe, locks: 0.}
proc tileGetRegion*(self: TileSet; id: int64): Rect2 {.gcsafe, locks: 0.}
proc tileGetShape*(self: TileSet; id: int64; shapeId: int64): Shape2D {.gcsafe, locks: 0.}
proc tileGetShapeCount*(self: TileSet; id: int64): int64 {.gcsafe, locks: 0.}
proc tileGetShapeOffset*(self: TileSet; id: int64; shapeId: int64): Vector2 {.gcsafe,
    locks: 0.}
proc tileGetShapeOneWay*(self: TileSet; id: int64; shapeId: int64): bool {.gcsafe,
    locks: 0.}
proc tileGetShapeOneWayMargin*(self: TileSet; id: int64; shapeId: int64): float64 {.
    gcsafe, locks: 0.}
proc tileGetShapeTransform*(self: TileSet; id: int64; shapeId: int64): Transform2D {.
    gcsafe, locks: 0.}
proc tileGetShapes*(self: TileSet; id: int64): Array {.gcsafe, locks: 0.}
proc tileGetTexture*(self: TileSet; id: int64): Texture {.gcsafe, locks: 0.}
proc tileGetTextureOffset*(self: TileSet; id: int64): Vector2 {.gcsafe, locks: 0.}
proc tileGetTileMode*(self: TileSet; id: int64): int64 {.gcsafe, locks: 0.}
proc tileGetZIndex*(self: TileSet; id: int64): int64 {.gcsafe, locks: 0.}
proc tileSetLightOccluder*(self: TileSet; id: int64; lightOccluder: OccluderPolygon2D) {.
    gcsafe, locks: 0.}
proc tileSetMaterial*(self: TileSet; id: int64; material: ShaderMaterial) {.gcsafe,
    locks: 0.}
proc tileSetModulate*(self: TileSet; id: int64; color: Color) {.gcsafe, locks: 0.}
proc tileSetName*(self: TileSet; id: int64; name: string) {.gcsafe, locks: 0.}
proc tileSetNavigationPolygon*(self: TileSet; id: int64;
                              navigationPolygon: NavigationPolygon) {.gcsafe,
    locks: 0.}
proc tileSetNavigationPolygonOffset*(self: TileSet; id: int64;
                                    navigationPolygonOffset: Vector2) {.gcsafe,
    locks: 0.}
proc tileSetNormalMap*(self: TileSet; id: int64; normalMap: Texture) {.gcsafe, locks: 0.}
proc tileSetOccluderOffset*(self: TileSet; id: int64; occluderOffset: Vector2) {.
    gcsafe, locks: 0.}
proc tileSetRegion*(self: TileSet; id: int64; region: Rect2) {.gcsafe, locks: 0.}
proc tileSetShape*(self: TileSet; id: int64; shapeId: int64; shape: Shape2D) {.gcsafe,
    locks: 0.}
proc tileSetShapeOffset*(self: TileSet; id: int64; shapeId: int64; shapeOffset: Vector2) {.
    gcsafe, locks: 0.}
proc tileSetShapeOneWay*(self: TileSet; id: int64; shapeId: int64; oneWay: bool) {.
    gcsafe, locks: 0.}
proc tileSetShapeOneWayMargin*(self: TileSet; id: int64; shapeId: int64;
                              oneWay: float64) {.gcsafe, locks: 0.}
proc tileSetShapeTransform*(self: TileSet; id: int64; shapeId: int64;
                           shapeTransform: Transform2D) {.gcsafe, locks: 0.}
proc tileSetShapes*(self: TileSet; id: int64; shapes: Array) {.gcsafe, locks: 0.}
proc tileSetTexture*(self: TileSet; id: int64; texture: Texture) {.gcsafe, locks: 0.}
proc tileSetTextureOffset*(self: TileSet; id: int64; textureOffset: Vector2) {.gcsafe,
    locks: 0.}
proc tileSetTileMode*(self: TileSet; id: int64; tilemode: int64) {.gcsafe, locks: 0.}
proc tileSetZIndex*(self: TileSet; id: int64; zIndex: int64) {.gcsafe, locks: 0.}
var tileSetUnderscoreforwardAtlasSubtileSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
method forwardAtlasSubtileSelection(self: TileSet; atlastileId: int64;
                                   tilemap: Object; tileLocation: Vector2): Vector2 =
  if isNil(tileSetUnderscoreforwardAtlasSubtileSelectionMethodBind):
    tileSetUnderscoreforwardAtlasSubtileSelectionMethodBind = getMethod(
        cstring"TileSet", cstring"_forward_atlas_subtile_selection")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(atlastileId)
  let argToPassToGodot1 = if not tilemap.isNil:
    tilemap.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(tileLocation)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetUnderscoreforwardAtlasSubtileSelectionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var tileSetUnderscoreforwardSubtileSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
method forwardSubtileSelection(self: TileSet; autotileId: int64; bitmask: int64;
                              tilemap: Object; tileLocation: Vector2): Vector2 =
  if isNil(tileSetUnderscoreforwardSubtileSelectionMethodBind):
    tileSetUnderscoreforwardSubtileSelectionMethodBind = getMethod(
        cstring"TileSet", cstring"_forward_subtile_selection")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(autotileId)
  argsToPassToGodot[][1] = unsafeAddr(bitmask)
  let argToPassToGodot2 = if not tilemap.isNil:
    tilemap.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(tileLocation)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetUnderscoreforwardSubtileSelectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetUnderscoreisTileBoundMethodBind {.threadvar.}: ptr GodotMethodBind
method isTileBound(self: TileSet; drawnId: int64; neighborId: int64): bool =
  if isNil(tileSetUnderscoreisTileBoundMethodBind):
    tileSetUnderscoreisTileBoundMethodBind = getMethod(cstring"TileSet",
        cstring"_is_tile_bound")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(drawnId)
  argsToPassToGodot[][1] = unsafeAddr(neighborId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetUnderscoreisTileBoundMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileClearBitmaskMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileClearBitmaskMap(self: TileSet; id: int64) =
  if isNil(tileSetAutotileClearBitmaskMapMethodBind):
    tileSetAutotileClearBitmaskMapMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_clear_bitmask_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  tileSetAutotileClearBitmaskMapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileGetBitmaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetBitmask(self: TileSet; id: int64; coord: Vector2): int64 =
  if isNil(tileSetAutotileGetBitmaskMethodBind):
    tileSetAutotileGetBitmaskMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_bitmask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetAutotileGetBitmaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileGetBitmaskModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetBitmaskMode(self: TileSet; id: int64): int64 =
  if isNil(tileSetAutotileGetBitmaskModeMethodBind):
    tileSetAutotileGetBitmaskModeMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_bitmask_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetAutotileGetBitmaskModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileGetIconCoordinateMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetIconCoordinate(self: TileSet; id: int64): Vector2 =
  if isNil(tileSetAutotileGetIconCoordinateMethodBind):
    tileSetAutotileGetIconCoordinateMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_icon_coordinate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetAutotileGetIconCoordinateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileGetLightOccluderMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetLightOccluder(self: TileSet; id: int64; coord: Vector2): OccluderPolygon2D =
  if isNil(tileSetAutotileGetLightOccluderMethodBind):
    tileSetAutotileGetLightOccluderMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_light_occluder")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetAutotileGetLightOccluderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetAutotileGetNavigationPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetNavigationPolygon(self: TileSet; id: int64; coord: Vector2): NavigationPolygon =
  if isNil(tileSetAutotileGetNavigationPolygonMethodBind):
    tileSetAutotileGetNavigationPolygonMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_navigation_polygon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetAutotileGetNavigationPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetAutotileGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetSize(self: TileSet; id: int64): Vector2 =
  if isNil(tileSetAutotileGetSizeMethodBind):
    tileSetAutotileGetSizeMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetAutotileGetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetAutotileGetSpacingMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetSpacing(self: TileSet; id: int64): int64 =
  if isNil(tileSetAutotileGetSpacingMethodBind):
    tileSetAutotileGetSpacingMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_spacing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetAutotileGetSpacingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileGetSubtilePriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetSubtilePriority(self: TileSet; id: int64; coord: Vector2): int64 =
  if isNil(tileSetAutotileGetSubtilePriorityMethodBind):
    tileSetAutotileGetSubtilePriorityMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_subtile_priority")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetAutotileGetSubtilePriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileGetZIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileGetZIndex(self: TileSet; id: int64; coord: Vector2): int64 =
  if isNil(tileSetAutotileGetZIndexMethodBind):
    tileSetAutotileGetZIndexMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_get_z_index")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetAutotileGetZIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetAutotileSetBitmaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetBitmask(self: TileSet; id: int64; bitmask: Vector2; flag: int64) =
  if isNil(tileSetAutotileSetBitmaskMethodBind):
    tileSetAutotileSetBitmaskMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_bitmask")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(bitmask)
  argsToPassToGodot[][2] = unsafeAddr(flag)
  var ptrCallRet: pointer
  tileSetAutotileSetBitmaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileSetBitmaskModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetBitmaskMode(self: TileSet; id: int64; mode: int64) =
  if isNil(tileSetAutotileSetBitmaskModeMethodBind):
    tileSetAutotileSetBitmaskModeMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_bitmask_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  tileSetAutotileSetBitmaskModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileSetIconCoordinateMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetIconCoordinate(self: TileSet; id: int64; coord: Vector2) =
  if isNil(tileSetAutotileSetIconCoordinateMethodBind):
    tileSetAutotileSetIconCoordinateMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_icon_coordinate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  var ptrCallRet: pointer
  tileSetAutotileSetIconCoordinateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileSetLightOccluderMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetLightOccluder(self: TileSet; id: int64;
                             lightOccluder: OccluderPolygon2D; coord: Vector2) =
  if isNil(tileSetAutotileSetLightOccluderMethodBind):
    tileSetAutotileSetLightOccluderMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_light_occluder")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not lightOccluder.isNil:
    lightOccluder.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(coord)
  var ptrCallRet: pointer
  tileSetAutotileSetLightOccluderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileSetNavigationPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetNavigationPolygon(self: TileSet; id: int64;
                                 navigationPolygon: NavigationPolygon;
                                 coord: Vector2) =
  if isNil(tileSetAutotileSetNavigationPolygonMethodBind):
    tileSetAutotileSetNavigationPolygonMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_navigation_polygon")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not navigationPolygon.isNil:
    navigationPolygon.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(coord)
  var ptrCallRet: pointer
  tileSetAutotileSetNavigationPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetSize(self: TileSet; id: int64; size: Vector2) =
  if isNil(tileSetAutotileSetSizeMethodBind):
    tileSetAutotileSetSizeMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_size")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(size)
  var ptrCallRet: pointer
  tileSetAutotileSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetAutotileSetSpacingMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetSpacing(self: TileSet; id: int64; spacing: int64) =
  if isNil(tileSetAutotileSetSpacingMethodBind):
    tileSetAutotileSetSpacingMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_spacing")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(spacing)
  var ptrCallRet: pointer
  tileSetAutotileSetSpacingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileSetSubtilePriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetSubtilePriority(self: TileSet; id: int64; coord: Vector2;
                               priority: int64) =
  if isNil(tileSetAutotileSetSubtilePriorityMethodBind):
    tileSetAutotileSetSubtilePriorityMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_subtile_priority")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  argsToPassToGodot[][2] = unsafeAddr(priority)
  var ptrCallRet: pointer
  tileSetAutotileSetSubtilePriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetAutotileSetZIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc autotileSetZIndex(self: TileSet; id: int64; coord: Vector2; zIndex: int64) =
  if isNil(tileSetAutotileSetZIndexMethodBind):
    tileSetAutotileSetZIndexMethodBind = getMethod(cstring"TileSet",
        cstring"autotile_set_z_index")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(coord)
  argsToPassToGodot[][2] = unsafeAddr(zIndex)
  var ptrCallRet: pointer
  tileSetAutotileSetZIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: TileSet) =
  if isNil(tileSetClearMethodBind):
    tileSetClearMethodBind = getMethod(cstring"TileSet", cstring"clear")
  var ptrCallRet: pointer
  tileSetClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileSetCreateTileMethodBind {.threadvar.}: ptr GodotMethodBind
proc createTile(self: TileSet; id: int64) =
  if isNil(tileSetCreateTileMethodBind):
    tileSetCreateTileMethodBind = getMethod(cstring"TileSet", cstring"create_tile")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  tileSetCreateTileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var tileSetFindTileByNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc findTileByName(self: TileSet; name: string): int64 =
  if isNil(tileSetFindTileByNameMethodBind):
    tileSetFindTileByNameMethodBind = getMethod(cstring"TileSet",
        cstring"find_tile_by_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetFindTileByNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var tileSetGetLastUnusedTileIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLastUnusedTileId(self: TileSet): int64 =
  if isNil(tileSetGetLastUnusedTileIdMethodBind):
    tileSetGetLastUnusedTileIdMethodBind = getMethod(cstring"TileSet",
        cstring"get_last_unused_tile_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetGetLastUnusedTileIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileSetGetTilesIdsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTilesIds(self: TileSet): Array =
  if isNil(tileSetGetTilesIdsMethodBind):
    tileSetGetTilesIdsMethodBind = getMethod(cstring"TileSet",
        cstring"get_tiles_ids")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  tileSetGetTilesIdsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var tileSetRemoveTileMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeTile(self: TileSet; id: int64) =
  if isNil(tileSetRemoveTileMethodBind):
    tileSetRemoveTileMethodBind = getMethod(cstring"TileSet", cstring"remove_tile")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  tileSetRemoveTileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var tileSetTileAddShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileAddShape(self: TileSet; id: int64; shape: Shape2D;
                 shapeTransform: Transform2D; oneWay: bool = false;
                 autotileCoord: Vector2 = vec2(0.0, 0.0)) =
  if isNil(tileSetTileAddShapeMethodBind):
    tileSetTileAddShapeMethodBind = getMethod(cstring"TileSet",
        cstring"tile_add_shape")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(shapeTransform)
  argsToPassToGodot[][3] = unsafeAddr(oneWay)
  argsToPassToGodot[][4] = unsafeAddr(autotileCoord)
  var ptrCallRet: pointer
  tileSetTileAddShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var tileSetTileGetLightOccluderMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetLightOccluder(self: TileSet; id: int64): OccluderPolygon2D =
  if isNil(tileSetTileGetLightOccluderMethodBind):
    tileSetTileGetLightOccluderMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_light_occluder")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetLightOccluderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetTileGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetMaterial(self: TileSet; id: int64): ShaderMaterial =
  if isNil(tileSetTileGetMaterialMethodBind):
    tileSetTileGetMaterialMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetTileGetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetModulate(self: TileSet; id: int64): Color =
  if isNil(tileSetTileGetModulateMethodBind):
    tileSetTileGetModulateMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_modulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetModulateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetName(self: TileSet; id: int64): string =
  if isNil(tileSetTileGetNameMethodBind):
    tileSetTileGetNameMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var tileSetTileGetNavigationPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetNavigationPolygon(self: TileSet; id: int64): NavigationPolygon =
  if isNil(tileSetTileGetNavigationPolygonMethodBind):
    tileSetTileGetNavigationPolygonMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_navigation_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetNavigationPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetTileGetNavigationPolygonOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetNavigationPolygonOffset(self: TileSet; id: int64): Vector2 =
  if isNil(tileSetTileGetNavigationPolygonOffsetMethodBind):
    tileSetTileGetNavigationPolygonOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_navigation_polygon_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetNavigationPolygonOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileGetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetNormalMap(self: TileSet; id: int64): Texture =
  if isNil(tileSetTileGetNormalMapMethodBind):
    tileSetTileGetNormalMapMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_normal_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetNormalMapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetTileGetOccluderOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetOccluderOffset(self: TileSet; id: int64): Vector2 =
  if isNil(tileSetTileGetOccluderOffsetMethodBind):
    tileSetTileGetOccluderOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_occluder_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetOccluderOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileGetRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetRegion(self: TileSet; id: int64): Rect2 =
  if isNil(tileSetTileGetRegionMethodBind):
    tileSetTileGetRegionMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_region")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetShape(self: TileSet; id: int64; shapeId: int64): Shape2D =
  if isNil(tileSetTileGetShapeMethodBind):
    tileSetTileGetShapeMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetTileGetShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetShapeCount(self: TileSet; id: int64): int64 =
  if isNil(tileSetTileGetShapeCountMethodBind):
    tileSetTileGetShapeCountMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetShapeCountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileGetShapeOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetShapeOffset(self: TileSet; id: int64; shapeId: int64): Vector2 =
  if isNil(tileSetTileGetShapeOffsetMethodBind):
    tileSetTileGetShapeOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_shape_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetShapeOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileGetShapeOneWayMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetShapeOneWay(self: TileSet; id: int64; shapeId: int64): bool =
  if isNil(tileSetTileGetShapeOneWayMethodBind):
    tileSetTileGetShapeOneWayMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_shape_one_way")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetShapeOneWayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileGetShapeOneWayMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetShapeOneWayMargin(self: TileSet; id: int64; shapeId: int64): float64 =
  if isNil(tileSetTileGetShapeOneWayMarginMethodBind):
    tileSetTileGetShapeOneWayMarginMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_shape_one_way_margin")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetShapeOneWayMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileGetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetShapeTransform(self: TileSet; id: int64; shapeId: int64): Transform2D =
  if isNil(tileSetTileGetShapeTransformMethodBind):
    tileSetTileGetShapeTransformMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_shape_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileGetShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetShapes(self: TileSet; id: int64): Array =
  if isNil(tileSetTileGetShapesMethodBind):
    tileSetTileGetShapesMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetShapesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var tileSetTileGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetTexture(self: TileSet; id: int64): Texture =
  if isNil(tileSetTileGetTextureMethodBind):
    tileSetTileGetTextureMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileSetTileGetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileSetTileGetTextureOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetTextureOffset(self: TileSet; id: int64): Vector2 =
  if isNil(tileSetTileGetTextureOffsetMethodBind):
    tileSetTileGetTextureOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_texture_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetTextureOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileGetTileModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetTileMode(self: TileSet; id: int64): int64 =
  if isNil(tileSetTileGetTileModeMethodBind):
    tileSetTileGetTileModeMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_tile_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetTileModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileGetZIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileGetZIndex(self: TileSet; id: int64): int64 =
  if isNil(tileSetTileGetZIndexMethodBind):
    tileSetTileGetZIndexMethodBind = getMethod(cstring"TileSet",
        cstring"tile_get_z_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileSetTileGetZIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetLightOccluderMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetLightOccluder(self: TileSet; id: int64; lightOccluder: OccluderPolygon2D) =
  if isNil(tileSetTileSetLightOccluderMethodBind):
    tileSetTileSetLightOccluderMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_light_occluder")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not lightOccluder.isNil:
    lightOccluder.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  tileSetTileSetLightOccluderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetMaterial(self: TileSet; id: int64; material: ShaderMaterial) =
  if isNil(tileSetTileSetMaterialMethodBind):
    tileSetTileSetMaterialMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  tileSetTileSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetModulate(self: TileSet; id: int64; color: Color) =
  if isNil(tileSetTileSetModulateMethodBind):
    tileSetTileSetModulateMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_modulate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  tileSetTileSetModulateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetName(self: TileSet; id: int64; name: string) =
  if isNil(tileSetTileSetNameMethodBind):
    tileSetTileSetNameMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  tileSetTileSetNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot1)

var tileSetTileSetNavigationPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetNavigationPolygon(self: TileSet; id: int64;
                             navigationPolygon: NavigationPolygon) =
  if isNil(tileSetTileSetNavigationPolygonMethodBind):
    tileSetTileSetNavigationPolygonMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_navigation_polygon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not navigationPolygon.isNil:
    navigationPolygon.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  tileSetTileSetNavigationPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetNavigationPolygonOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetNavigationPolygonOffset(self: TileSet; id: int64;
                                   navigationPolygonOffset: Vector2) =
  if isNil(tileSetTileSetNavigationPolygonOffsetMethodBind):
    tileSetTileSetNavigationPolygonOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_navigation_polygon_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(navigationPolygonOffset)
  var ptrCallRet: pointer
  tileSetTileSetNavigationPolygonOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetNormalMap(self: TileSet; id: int64; normalMap: Texture) =
  if isNil(tileSetTileSetNormalMapMethodBind):
    tileSetTileSetNormalMapMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_normal_map")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  tileSetTileSetNormalMapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetOccluderOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetOccluderOffset(self: TileSet; id: int64; occluderOffset: Vector2) =
  if isNil(tileSetTileSetOccluderOffsetMethodBind):
    tileSetTileSetOccluderOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_occluder_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(occluderOffset)
  var ptrCallRet: pointer
  tileSetTileSetOccluderOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetRegion(self: TileSet; id: int64; region: Rect2) =
  if isNil(tileSetTileSetRegionMethodBind):
    tileSetTileSetRegionMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_region")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(region)
  var ptrCallRet: pointer
  tileSetTileSetRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetShape(self: TileSet; id: int64; shapeId: int64; shape: Shape2D) =
  if isNil(tileSetTileSetShapeMethodBind):
    tileSetTileSetShapeMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_shape")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  let argToPassToGodot2 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  tileSetTileSetShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var tileSetTileSetShapeOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetShapeOffset(self: TileSet; id: int64; shapeId: int64; shapeOffset: Vector2) =
  if isNil(tileSetTileSetShapeOffsetMethodBind):
    tileSetTileSetShapeOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_shape_offset")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  argsToPassToGodot[][2] = unsafeAddr(shapeOffset)
  var ptrCallRet: pointer
  tileSetTileSetShapeOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetShapeOneWayMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetShapeOneWay(self: TileSet; id: int64; shapeId: int64; oneWay: bool) =
  if isNil(tileSetTileSetShapeOneWayMethodBind):
    tileSetTileSetShapeOneWayMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_shape_one_way")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  argsToPassToGodot[][2] = unsafeAddr(oneWay)
  var ptrCallRet: pointer
  tileSetTileSetShapeOneWayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetShapeOneWayMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetShapeOneWayMargin(self: TileSet; id: int64; shapeId: int64; oneWay: float64) =
  if isNil(tileSetTileSetShapeOneWayMarginMethodBind):
    tileSetTileSetShapeOneWayMarginMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_shape_one_way_margin")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  argsToPassToGodot[][2] = unsafeAddr(oneWay)
  var ptrCallRet: pointer
  tileSetTileSetShapeOneWayMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetShapeTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetShapeTransform(self: TileSet; id: int64; shapeId: int64;
                          shapeTransform: Transform2D) =
  if isNil(tileSetTileSetShapeTransformMethodBind):
    tileSetTileSetShapeTransformMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_shape_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  argsToPassToGodot[][2] = unsafeAddr(shapeTransform)
  var ptrCallRet: pointer
  tileSetTileSetShapeTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetShapes(self: TileSet; id: int64; shapes: Array) =
  if isNil(tileSetTileSetShapesMethodBind):
    tileSetTileSetShapesMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_shapes")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = shapes.godotArray
  var ptrCallRet: pointer
  tileSetTileSetShapesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetTexture(self: TileSet; id: int64; texture: Texture) =
  if isNil(tileSetTileSetTextureMethodBind):
    tileSetTileSetTextureMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_texture")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  tileSetTileSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetTextureOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetTextureOffset(self: TileSet; id: int64; textureOffset: Vector2) =
  if isNil(tileSetTileSetTextureOffsetMethodBind):
    tileSetTileSetTextureOffsetMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_texture_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(textureOffset)
  var ptrCallRet: pointer
  tileSetTileSetTextureOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileSetTileSetTileModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetTileMode(self: TileSet; id: int64; tilemode: int64) =
  if isNil(tileSetTileSetTileModeMethodBind):
    tileSetTileSetTileModeMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_tile_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(tilemode)
  var ptrCallRet: pointer
  tileSetTileSetTileModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileSetTileSetZIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSetZIndex(self: TileSet; id: int64; zIndex: int64) =
  if isNil(tileSetTileSetZIndexMethodBind):
    tileSetTileSetZIndexMethodBind = getMethod(cstring"TileSet",
        cstring"tile_set_z_index")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(zIndex)
  var ptrCallRet: pointer
  tileSetTileSetZIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
