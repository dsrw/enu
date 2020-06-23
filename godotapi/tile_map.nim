
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  HALF_OFFSET_DISABLED* = 2'i64
  HALF_OFFSET_NEGATIVE_X* = 3'i64
  HALF_OFFSET_NEGATIVE_Y* = 4'i64
  HALF_OFFSET_X* = 0'i64
  HALF_OFFSET_Y* = 1'i64
  INVALID_CELL* = -1'i64
  MODE_CUSTOM* = 2'i64
  MODE_ISOMETRIC* = 1'i64
  MODE_SQUARE* = 0'i64
  TILE_ORIGIN_BOTTOM_LEFT* = 2'i64
  TILE_ORIGIN_CENTER* = 1'i64
  TILE_ORIGIN_TOP_LEFT* = 0'i64
proc cellClipUv*(self: TileMap): bool {.gcsafe, locks: 0.}
proc `cellClipUv=`*(self: TileMap; val: bool) {.gcsafe, locks: 0.}
proc cellCustomTransform*(self: TileMap): Transform2D {.gcsafe, locks: 0.}
proc `cellCustomTransform=`*(self: TileMap; val: Transform2D) {.gcsafe, locks: 0.}
proc cellHalfOffset*(self: TileMap): int64 {.gcsafe, locks: 0.}
proc `cellHalfOffset=`*(self: TileMap; val: int64) {.gcsafe, locks: 0.}
proc cellQuadrantSize*(self: TileMap): int64 {.gcsafe, locks: 0.}
proc `cellQuadrantSize=`*(self: TileMap; val: int64) {.gcsafe, locks: 0.}
proc cellSize*(self: TileMap): Vector2 {.gcsafe, locks: 0.}
proc `cellSize=`*(self: TileMap; val: Vector2) {.gcsafe, locks: 0.}
proc cellTileOrigin*(self: TileMap): int64 {.gcsafe, locks: 0.}
proc `cellTileOrigin=`*(self: TileMap; val: int64) {.gcsafe, locks: 0.}
proc cellYSort*(self: TileMap): bool {.gcsafe, locks: 0.}
proc `cellYSort=`*(self: TileMap; val: bool) {.gcsafe, locks: 0.}
proc centeredTextures*(self: TileMap): bool {.gcsafe, locks: 0.}
proc `centeredTextures=`*(self: TileMap; val: bool) {.gcsafe, locks: 0.}
proc collisionBounce*(self: TileMap): float64 {.gcsafe, locks: 0.}
proc `collisionBounce=`*(self: TileMap; val: float64) {.gcsafe, locks: 0.}
proc collisionFriction*(self: TileMap): float64 {.gcsafe, locks: 0.}
proc `collisionFriction=`*(self: TileMap; val: float64) {.gcsafe, locks: 0.}
proc collisionLayer*(self: TileMap): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: TileMap; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: TileMap): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: TileMap; val: int64) {.gcsafe, locks: 0.}
proc collisionUseKinematic*(self: TileMap): bool {.gcsafe, locks: 0.}
proc `collisionUseKinematic=`*(self: TileMap; val: bool) {.gcsafe, locks: 0.}
proc collisionUseParent*(self: TileMap): bool {.gcsafe, locks: 0.}
proc `collisionUseParent=`*(self: TileMap; val: bool) {.gcsafe, locks: 0.}
proc compatibilityMode*(self: TileMap): bool {.gcsafe, locks: 0.}
proc `compatibilityMode=`*(self: TileMap; val: bool) {.gcsafe, locks: 0.}
proc mode*(self: TileMap): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: TileMap; val: int64) {.gcsafe, locks: 0.}
proc occluderLightMask*(self: TileMap): int64 {.gcsafe, locks: 0.}
proc `occluderLightMask=`*(self: TileMap; val: int64) {.gcsafe, locks: 0.}
proc tileSet*(self: TileMap): TileSet {.gcsafe, locks: 0.}
proc `tileSet=`*(self: TileMap; val: TileSet) {.gcsafe, locks: 0.}
method clearQuadrants*(self: TileMap) {.gcsafe, locks: 0, base.}
method getOldCellSize*(self: TileMap): int64 {.gcsafe, locks: 0, base.}
method getTileData*(self: TileMap): PoolIntArray {.gcsafe, locks: 0, base.}
method recreateQuadrants*(self: TileMap) {.gcsafe, locks: 0, base.}
method setCelld*(self: TileMap; position: Vector2; data: Dictionary) {.gcsafe, locks: 0,
    base.}
method setOldCellSize*(self: TileMap; size: int64) {.gcsafe, locks: 0, base.}
method setTileData*(self: TileMap; arg0: PoolIntArray) {.gcsafe, locks: 0, base.}
proc clear*(self: TileMap) {.gcsafe, locks: 0.}
proc fixInvalidTiles*(self: TileMap) {.gcsafe, locks: 0.}
proc getCell*(self: TileMap; x: int64; y: int64): int64 {.gcsafe, locks: 0.}
proc getCellAutotileCoord*(self: TileMap; x: int64; y: int64): Vector2 {.gcsafe, locks: 0.}
proc getCellv*(self: TileMap; position: Vector2): int64 {.gcsafe, locks: 0.}
proc getCollisionLayerBit*(self: TileMap; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: TileMap; bit: int64): bool {.gcsafe, locks: 0.}
proc getUsedCells*(self: TileMap): Array {.gcsafe, locks: 0.}
proc getUsedCellsById*(self: TileMap; id: int64): Array {.gcsafe, locks: 0.}
proc getUsedRect*(self: TileMap): Rect2 {.gcsafe, locks: 0.}
proc isCellTransposed*(self: TileMap; x: int64; y: int64): bool {.gcsafe, locks: 0.}
proc isCellXFlipped*(self: TileMap; x: int64; y: int64): bool {.gcsafe, locks: 0.}
proc isCellYFlipped*(self: TileMap; x: int64; y: int64): bool {.gcsafe, locks: 0.}
proc mapToWorld*(self: TileMap; mapPosition: Vector2; ignoreHalfOfs: bool = false): Vector2 {.
    gcsafe, locks: 0.}
proc setCell*(self: TileMap; x: int64; y: int64; tile: int64; flipX: bool = false;
             flipY: bool = false; transpose: bool = false;
             autotileCoord: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc setCellv*(self: TileMap; position: Vector2; tile: int64; flipX: bool = false;
              flipY: bool = false; transpose: bool = false) {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: TileMap; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: TileMap; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc updateBitmaskArea*(self: TileMap; position: Vector2) {.gcsafe, locks: 0.}
proc updateBitmaskRegion*(self: TileMap; start: Vector2 = vec2(0.0, 0.0);
                         endd: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc updateDirtyQuadrants*(self: TileMap) {.gcsafe, locks: 0.}
proc worldToMap*(self: TileMap; worldPosition: Vector2): Vector2 {.gcsafe, locks: 0.}
var tileMapGetClipUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellClipUv(self: TileMap): bool =
  if isNil(tileMapGetClipUvMethodBind):
    tileMapGetClipUvMethodBind = getMethod(cstring"TileMap", cstring"get_clip_uv")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetClipUvMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetClipUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellClipUv=`(self: TileMap; val: bool) =
  if isNil(tileMapSetClipUvMethodBind):
    tileMapSetClipUvMethodBind = getMethod(cstring"TileMap", cstring"set_clip_uv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetClipUvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var tileMapGetCustomTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellCustomTransform(self: TileMap): Transform2D =
  if isNil(tileMapGetCustomTransformMethodBind):
    tileMapGetCustomTransformMethodBind = getMethod(cstring"TileMap",
        cstring"get_custom_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCustomTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetCustomTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellCustomTransform=`(self: TileMap; val: Transform2D) =
  if isNil(tileMapSetCustomTransformMethodBind):
    tileMapSetCustomTransformMethodBind = getMethod(cstring"TileMap",
        cstring"set_custom_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCustomTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetHalfOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellHalfOffset(self: TileMap): int64 =
  if isNil(tileMapGetHalfOffsetMethodBind):
    tileMapGetHalfOffsetMethodBind = getMethod(cstring"TileMap",
        cstring"get_half_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetHalfOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetHalfOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellHalfOffset=`(self: TileMap; val: int64) =
  if isNil(tileMapSetHalfOffsetMethodBind):
    tileMapSetHalfOffsetMethodBind = getMethod(cstring"TileMap",
        cstring"set_half_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetHalfOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapGetQuadrantSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellQuadrantSize(self: TileMap): int64 =
  if isNil(tileMapGetQuadrantSizeMethodBind):
    tileMapGetQuadrantSizeMethodBind = getMethod(cstring"TileMap",
        cstring"get_quadrant_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetQuadrantSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetQuadrantSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellQuadrantSize=`(self: TileMap; val: int64) =
  if isNil(tileMapSetQuadrantSizeMethodBind):
    tileMapSetQuadrantSizeMethodBind = getMethod(cstring"TileMap",
        cstring"set_quadrant_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetQuadrantSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapGetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellSize(self: TileMap): Vector2 =
  if isNil(tileMapGetCellSizeMethodBind):
    tileMapGetCellSizeMethodBind = getMethod(cstring"TileMap",
        cstring"get_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCellSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellSize=`(self: TileMap; val: Vector2) =
  if isNil(tileMapSetCellSizeMethodBind):
    tileMapSetCellSizeMethodBind = getMethod(cstring"TileMap",
        cstring"set_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCellSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var tileMapGetTileOriginMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellTileOrigin(self: TileMap): int64 =
  if isNil(tileMapGetTileOriginMethodBind):
    tileMapGetTileOriginMethodBind = getMethod(cstring"TileMap",
        cstring"get_tile_origin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetTileOriginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetTileOriginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellTileOrigin=`(self: TileMap; val: int64) =
  if isNil(tileMapSetTileOriginMethodBind):
    tileMapSetTileOriginMethodBind = getMethod(cstring"TileMap",
        cstring"set_tile_origin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetTileOriginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapIsYSortModeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellYSort(self: TileMap): bool =
  if isNil(tileMapIsYSortModeEnabledMethodBind):
    tileMapIsYSortModeEnabledMethodBind = getMethod(cstring"TileMap",
        cstring"is_y_sort_mode_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapIsYSortModeEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetYSortModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellYSort=`(self: TileMap; val: bool) =
  if isNil(tileMapSetYSortModeMethodBind):
    tileMapSetYSortModeMethodBind = getMethod(cstring"TileMap",
        cstring"set_y_sort_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetYSortModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var tileMapIsCenteredTexturesEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc centeredTextures(self: TileMap): bool =
  if isNil(tileMapIsCenteredTexturesEnabledMethodBind):
    tileMapIsCenteredTexturesEnabledMethodBind = getMethod(cstring"TileMap",
        cstring"is_centered_textures_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapIsCenteredTexturesEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tileMapSetCenteredTexturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `centeredTextures=`(self: TileMap; val: bool) =
  if isNil(tileMapSetCenteredTexturesMethodBind):
    tileMapSetCenteredTexturesMethodBind = getMethod(cstring"TileMap",
        cstring"set_centered_textures")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCenteredTexturesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetCollisionBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionBounce(self: TileMap): float64 =
  if isNil(tileMapGetCollisionBounceMethodBind):
    tileMapGetCollisionBounceMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_bounce")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionBounceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetCollisionBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionBounce=`(self: TileMap; val: float64) =
  if isNil(tileMapSetCollisionBounceMethodBind):
    tileMapSetCollisionBounceMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_bounce")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCollisionBounceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetCollisionFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionFriction(self: TileMap): float64 =
  if isNil(tileMapGetCollisionFrictionMethodBind):
    tileMapGetCollisionFrictionMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_friction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionFrictionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetCollisionFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionFriction=`(self: TileMap; val: float64) =
  if isNil(tileMapSetCollisionFrictionMethodBind):
    tileMapSetCollisionFrictionMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_friction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCollisionFrictionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: TileMap): int64 =
  if isNil(tileMapGetCollisionLayerMethodBind):
    tileMapGetCollisionLayerMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: TileMap; val: int64) =
  if isNil(tileMapSetCollisionLayerMethodBind):
    tileMapSetCollisionLayerMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCollisionLayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: TileMap): int64 =
  if isNil(tileMapGetCollisionMaskMethodBind):
    tileMapGetCollisionMaskMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: TileMap; val: int64) =
  if isNil(tileMapSetCollisionMaskMethodBind):
    tileMapSetCollisionMaskMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCollisionMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapGetCollisionUseKinematicMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionUseKinematic(self: TileMap): bool =
  if isNil(tileMapGetCollisionUseKinematicMethodBind):
    tileMapGetCollisionUseKinematicMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_use_kinematic")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionUseKinematicMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tileMapSetCollisionUseKinematicMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionUseKinematic=`(self: TileMap; val: bool) =
  if isNil(tileMapSetCollisionUseKinematicMethodBind):
    tileMapSetCollisionUseKinematicMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_use_kinematic")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCollisionUseKinematicMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetCollisionUseParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionUseParent(self: TileMap): bool =
  if isNil(tileMapGetCollisionUseParentMethodBind):
    tileMapGetCollisionUseParentMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_use_parent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionUseParentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetCollisionUseParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionUseParent=`(self: TileMap; val: bool) =
  if isNil(tileMapSetCollisionUseParentMethodBind):
    tileMapSetCollisionUseParentMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_use_parent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCollisionUseParentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapIsCompatibilityModeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc compatibilityMode(self: TileMap): bool =
  if isNil(tileMapIsCompatibilityModeEnabledMethodBind):
    tileMapIsCompatibilityModeEnabledMethodBind = getMethod(cstring"TileMap",
        cstring"is_compatibility_mode_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapIsCompatibilityModeEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tileMapSetCompatibilityModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `compatibilityMode=`(self: TileMap; val: bool) =
  if isNil(tileMapSetCompatibilityModeMethodBind):
    tileMapSetCompatibilityModeMethodBind = getMethod(cstring"TileMap",
        cstring"set_compatibility_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetCompatibilityModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: TileMap): int64 =
  if isNil(tileMapGetModeMethodBind):
    tileMapGetModeMethodBind = getMethod(cstring"TileMap", cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: TileMap; val: int64) =
  if isNil(tileMapSetModeMethodBind):
    tileMapSetModeMethodBind = getMethod(cstring"TileMap", cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tileMapGetOccluderLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc occluderLightMask(self: TileMap): int64 =
  if isNil(tileMapGetOccluderLightMaskMethodBind):
    tileMapGetOccluderLightMaskMethodBind = getMethod(cstring"TileMap",
        cstring"get_occluder_light_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetOccluderLightMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapSetOccluderLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `occluderLightMask=`(self: TileMap; val: int64) =
  if isNil(tileMapSetOccluderLightMaskMethodBind):
    tileMapSetOccluderLightMaskMethodBind = getMethod(cstring"TileMap",
        cstring"set_occluder_light_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tileMapSetOccluderLightMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetTilesetMethodBind {.threadvar.}: ptr GodotMethodBind
proc tileSet(self: TileMap): TileSet =
  if isNil(tileMapGetTilesetMethodBind):
    tileMapGetTilesetMethodBind = getMethod(cstring"TileMap", cstring"get_tileset")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tileMapGetTilesetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tileMapSetTilesetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tileSet=`(self: TileMap; val: TileSet) =
  if isNil(tileMapSetTilesetMethodBind):
    tileMapSetTilesetMethodBind = getMethod(cstring"TileMap", cstring"set_tileset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  tileMapSetTilesetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var tileMapUnderscoreclearQuadrantsMethodBind {.threadvar.}: ptr GodotMethodBind
method clearQuadrants(self: TileMap) =
  if isNil(tileMapUnderscoreclearQuadrantsMethodBind):
    tileMapUnderscoreclearQuadrantsMethodBind = getMethod(cstring"TileMap",
        cstring"_clear_quadrants")
  var ptrCallRet: pointer
  tileMapUnderscoreclearQuadrantsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tileMapUnderscoregetOldCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
method getOldCellSize(self: TileMap): int64 =
  if isNil(tileMapUnderscoregetOldCellSizeMethodBind):
    tileMapUnderscoregetOldCellSizeMethodBind = getMethod(cstring"TileMap",
        cstring"_get_old_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapUnderscoregetOldCellSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tileMapUnderscoregetTileDataMethodBind {.threadvar.}: ptr GodotMethodBind
method getTileData(self: TileMap): PoolIntArray =
  if isNil(tileMapUnderscoregetTileDataMethodBind):
    tileMapUnderscoregetTileDataMethodBind = getMethod(cstring"TileMap",
        cstring"_get_tile_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  tileMapUnderscoregetTileDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var tileMapUnderscorerecreateQuadrantsMethodBind {.threadvar.}: ptr GodotMethodBind
method recreateQuadrants(self: TileMap) =
  if isNil(tileMapUnderscorerecreateQuadrantsMethodBind):
    tileMapUnderscorerecreateQuadrantsMethodBind = getMethod(cstring"TileMap",
        cstring"_recreate_quadrants")
  var ptrCallRet: pointer
  tileMapUnderscorerecreateQuadrantsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tileMapUnderscoresetCelldMethodBind {.threadvar.}: ptr GodotMethodBind
method setCelld(self: TileMap; position: Vector2; data: Dictionary) =
  if isNil(tileMapUnderscoresetCelldMethodBind):
    tileMapUnderscoresetCelldMethodBind = getMethod(cstring"TileMap",
        cstring"_set_celld")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = data.godotDictionary
  var ptrCallRet: pointer
  tileMapUnderscoresetCelldMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapUnderscoresetOldCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
method setOldCellSize(self: TileMap; size: int64) =
  if isNil(tileMapUnderscoresetOldCellSizeMethodBind):
    tileMapUnderscoresetOldCellSizeMethodBind = getMethod(cstring"TileMap",
        cstring"_set_old_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  tileMapUnderscoresetOldCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapUnderscoresetTileDataMethodBind {.threadvar.}: ptr GodotMethodBind
method setTileData(self: TileMap; arg0: PoolIntArray) =
  if isNil(tileMapUnderscoresetTileDataMethodBind):
    tileMapUnderscoresetTileDataMethodBind = getMethod(cstring"TileMap",
        cstring"_set_tile_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotPoolIntArray
  var ptrCallRet: pointer
  tileMapUnderscoresetTileDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: TileMap) =
  if isNil(tileMapClearMethodBind):
    tileMapClearMethodBind = getMethod(cstring"TileMap", cstring"clear")
  var ptrCallRet: pointer
  tileMapClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapFixInvalidTilesMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixInvalidTiles(self: TileMap) =
  if isNil(tileMapFixInvalidTilesMethodBind):
    tileMapFixInvalidTilesMethodBind = getMethod(cstring"TileMap",
        cstring"fix_invalid_tiles")
  var ptrCallRet: pointer
  tileMapFixInvalidTilesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapGetCellMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCell(self: TileMap; x: int64; y: int64): int64 =
  if isNil(tileMapGetCellMethodBind):
    tileMapGetCellMethodBind = getMethod(cstring"TileMap", cstring"get_cell")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCellMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tileMapGetCellAutotileCoordMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCellAutotileCoord(self: TileMap; x: int64; y: int64): Vector2 =
  if isNil(tileMapGetCellAutotileCoordMethodBind):
    tileMapGetCellAutotileCoordMethodBind = getMethod(cstring"TileMap",
        cstring"get_cell_autotile_coord")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCellAutotileCoordMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetCellvMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCellv(self: TileMap; position: Vector2): int64 =
  if isNil(tileMapGetCellvMethodBind):
    tileMapGetCellvMethodBind = getMethod(cstring"TileMap", cstring"get_cellv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCellvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var tileMapGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: TileMap; bit: int64): bool =
  if isNil(tileMapGetCollisionLayerBitMethodBind):
    tileMapGetCollisionLayerBitMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: TileMap; bit: int64): bool =
  if isNil(tileMapGetCollisionMaskBitMethodBind):
    tileMapGetCollisionMaskBitMethodBind = getMethod(cstring"TileMap",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapGetUsedCellsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUsedCells(self: TileMap): Array =
  if isNil(tileMapGetUsedCellsMethodBind):
    tileMapGetUsedCellsMethodBind = getMethod(cstring"TileMap",
        cstring"get_used_cells")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  tileMapGetUsedCellsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var tileMapGetUsedCellsByIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUsedCellsById(self: TileMap; id: int64): Array =
  if isNil(tileMapGetUsedCellsByIdMethodBind):
    tileMapGetUsedCellsByIdMethodBind = getMethod(cstring"TileMap",
        cstring"get_used_cells_by_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  tileMapGetUsedCellsByIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var tileMapGetUsedRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUsedRect(self: TileMap): Rect2 =
  if isNil(tileMapGetUsedRectMethodBind):
    tileMapGetUsedRectMethodBind = getMethod(cstring"TileMap",
        cstring"get_used_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapGetUsedRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapIsCellTransposedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCellTransposed(self: TileMap; x: int64; y: int64): bool =
  if isNil(tileMapIsCellTransposedMethodBind):
    tileMapIsCellTransposedMethodBind = getMethod(cstring"TileMap",
        cstring"is_cell_transposed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapIsCellTransposedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapIsCellXFlippedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCellXFlipped(self: TileMap; x: int64; y: int64): bool =
  if isNil(tileMapIsCellXFlippedMethodBind):
    tileMapIsCellXFlippedMethodBind = getMethod(cstring"TileMap",
        cstring"is_cell_x_flipped")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapIsCellXFlippedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapIsCellYFlippedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCellYFlipped(self: TileMap; x: int64; y: int64): bool =
  if isNil(tileMapIsCellYFlippedMethodBind):
    tileMapIsCellYFlippedMethodBind = getMethod(cstring"TileMap",
        cstring"is_cell_y_flipped")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapIsCellYFlippedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapMapToWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc mapToWorld(self: TileMap; mapPosition: Vector2; ignoreHalfOfs: bool = false): Vector2 =
  if isNil(tileMapMapToWorldMethodBind):
    tileMapMapToWorldMethodBind = getMethod(cstring"TileMap",
        cstring"map_to_world")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mapPosition)
  argsToPassToGodot[][1] = unsafeAddr(ignoreHalfOfs)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapMapToWorldMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var tileMapSetCellMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCell(self: TileMap; x: int64; y: int64; tile: int64; flipX: bool = false;
            flipY: bool = false; transpose: bool = false;
            autotileCoord: Vector2 = vec2(0.0, 0.0)) =
  if isNil(tileMapSetCellMethodBind):
    tileMapSetCellMethodBind = getMethod(cstring"TileMap", cstring"set_cell")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(tile)
  argsToPassToGodot[][3] = unsafeAddr(flipX)
  argsToPassToGodot[][4] = unsafeAddr(flipY)
  argsToPassToGodot[][5] = unsafeAddr(transpose)
  argsToPassToGodot[][6] = unsafeAddr(autotileCoord)
  var ptrCallRet: pointer
  tileMapSetCellMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tileMapSetCellvMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCellv(self: TileMap; position: Vector2; tile: int64; flipX: bool = false;
             flipY: bool = false; transpose: bool = false) =
  if isNil(tileMapSetCellvMethodBind):
    tileMapSetCellvMethodBind = getMethod(cstring"TileMap", cstring"set_cellv")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(tile)
  argsToPassToGodot[][2] = unsafeAddr(flipX)
  argsToPassToGodot[][3] = unsafeAddr(flipY)
  argsToPassToGodot[][4] = unsafeAddr(transpose)
  var ptrCallRet: pointer
  tileMapSetCellvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var tileMapSetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: TileMap; bit: int64; value: bool) =
  if isNil(tileMapSetCollisionLayerBitMethodBind):
    tileMapSetCollisionLayerBitMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  tileMapSetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: TileMap; bit: int64; value: bool) =
  if isNil(tileMapSetCollisionMaskBitMethodBind):
    tileMapSetCollisionMaskBitMethodBind = getMethod(cstring"TileMap",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  tileMapSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapUpdateBitmaskAreaMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateBitmaskArea(self: TileMap; position: Vector2) =
  if isNil(tileMapUpdateBitmaskAreaMethodBind):
    tileMapUpdateBitmaskAreaMethodBind = getMethod(cstring"TileMap",
        cstring"update_bitmask_area")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  tileMapUpdateBitmaskAreaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tileMapUpdateBitmaskRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateBitmaskRegion(self: TileMap; start: Vector2 = vec2(0.0, 0.0);
                        endd: Vector2 = vec2(0.0, 0.0)) =
  if isNil(tileMapUpdateBitmaskRegionMethodBind):
    tileMapUpdateBitmaskRegionMethodBind = getMethod(cstring"TileMap",
        cstring"update_bitmask_region")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(start)
  argsToPassToGodot[][1] = unsafeAddr(endd)
  var ptrCallRet: pointer
  tileMapUpdateBitmaskRegionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tileMapUpdateDirtyQuadrantsMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateDirtyQuadrants(self: TileMap) =
  if isNil(tileMapUpdateDirtyQuadrantsMethodBind):
    tileMapUpdateDirtyQuadrantsMethodBind = getMethod(cstring"TileMap",
        cstring"update_dirty_quadrants")
  var ptrCallRet: pointer
  tileMapUpdateDirtyQuadrantsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tileMapWorldToMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc worldToMap(self: TileMap; worldPosition: Vector2): Vector2 =
  if isNil(tileMapWorldToMapMethodBind):
    tileMapWorldToMapMethodBind = getMethod(cstring"TileMap",
        cstring"world_to_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(worldPosition)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tileMapWorldToMapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
