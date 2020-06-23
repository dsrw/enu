
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  INVALID_CELL_ITEM* = -1'i64
proc cellCenterX*(self: GridMap): bool {.gcsafe, locks: 0.}
proc `cellCenterX=`*(self: GridMap; val: bool) {.gcsafe, locks: 0.}
proc cellCenterY*(self: GridMap): bool {.gcsafe, locks: 0.}
proc `cellCenterY=`*(self: GridMap; val: bool) {.gcsafe, locks: 0.}
proc cellCenterZ*(self: GridMap): bool {.gcsafe, locks: 0.}
proc `cellCenterZ=`*(self: GridMap; val: bool) {.gcsafe, locks: 0.}
proc cellOctantSize*(self: GridMap): int64 {.gcsafe, locks: 0.}
proc `cellOctantSize=`*(self: GridMap; val: int64) {.gcsafe, locks: 0.}
proc cellScale*(self: GridMap): float64 {.gcsafe, locks: 0.}
proc `cellScale=`*(self: GridMap; val: float64) {.gcsafe, locks: 0.}
proc cellSize*(self: GridMap): Vector3 {.gcsafe, locks: 0.}
proc `cellSize=`*(self: GridMap; val: Vector3) {.gcsafe, locks: 0.}
proc collisionLayer*(self: GridMap): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: GridMap; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: GridMap): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: GridMap; val: int64) {.gcsafe, locks: 0.}
proc meshLibrary*(self: GridMap): MeshLibrary {.gcsafe, locks: 0.}
proc `meshLibrary=`*(self: GridMap; val: MeshLibrary) {.gcsafe, locks: 0.}
method updateOctantsCallback*(self: GridMap) {.gcsafe, locks: 0, base.}
proc clear*(self: GridMap) {.gcsafe, locks: 0.}
proc clearBakedMeshes*(self: GridMap) {.gcsafe, locks: 0.}
proc getBakeMeshInstance*(self: GridMap; idx: int64): RID {.gcsafe, locks: 0.}
proc getBakeMeshes*(self: GridMap): Array {.gcsafe, locks: 0.}
proc getCellItem*(self: GridMap; x: int64; y: int64; z: int64): int64 {.gcsafe, locks: 0.}
proc getCellItemOrientation*(self: GridMap; x: int64; y: int64; z: int64): int64 {.gcsafe,
    locks: 0.}
proc getCollisionLayerBit*(self: GridMap; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: GridMap; bit: int64): bool {.gcsafe, locks: 0.}
proc getMeshes*(self: GridMap): Array {.gcsafe, locks: 0.}
proc getUsedCells*(self: GridMap): Array {.gcsafe, locks: 0.}
proc makeBakedMeshes*(self: GridMap; genLightmapUv: bool = false;
                     lightmapUvTexelSize: float64 = 0.1) {.gcsafe, locks: 0.}
proc mapToWorld*(self: GridMap; x: int64; y: int64; z: int64): Vector3 {.gcsafe, locks: 0.}
proc resourceChanged*(self: GridMap; resource: Resource) {.gcsafe, locks: 0.}
proc setCellItem*(self: GridMap; x: int64; y: int64; z: int64; item: int64;
                 orientation: int64 = 0'i64) {.gcsafe, locks: 0.}
proc setClip*(self: GridMap; enabled: bool; clipabove: bool = true; floor: int64 = 0'i64;
             axis: int64 = 0'i64) {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: GridMap; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: GridMap; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc worldToMap*(self: GridMap; pos: Vector3): Vector3 {.gcsafe, locks: 0.}
var gridMapGetCenterXMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellCenterX(self: GridMap): bool =
  if isNil(gridMapGetCenterXMethodBind):
    gridMapGetCenterXMethodBind = getMethod(cstring"GridMap",
        cstring"get_center_x")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCenterXMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetCenterXMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellCenterX=`(self: GridMap; val: bool) =
  if isNil(gridMapSetCenterXMethodBind):
    gridMapSetCenterXMethodBind = getMethod(cstring"GridMap",
        cstring"set_center_x")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetCenterXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gridMapGetCenterYMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellCenterY(self: GridMap): bool =
  if isNil(gridMapGetCenterYMethodBind):
    gridMapGetCenterYMethodBind = getMethod(cstring"GridMap",
        cstring"get_center_y")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCenterYMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetCenterYMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellCenterY=`(self: GridMap; val: bool) =
  if isNil(gridMapSetCenterYMethodBind):
    gridMapSetCenterYMethodBind = getMethod(cstring"GridMap",
        cstring"set_center_y")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetCenterYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gridMapGetCenterZMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellCenterZ(self: GridMap): bool =
  if isNil(gridMapGetCenterZMethodBind):
    gridMapGetCenterZMethodBind = getMethod(cstring"GridMap",
        cstring"get_center_z")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCenterZMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetCenterZMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellCenterZ=`(self: GridMap; val: bool) =
  if isNil(gridMapSetCenterZMethodBind):
    gridMapSetCenterZMethodBind = getMethod(cstring"GridMap",
        cstring"set_center_z")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetCenterZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gridMapGetOctantSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellOctantSize(self: GridMap): int64 =
  if isNil(gridMapGetOctantSizeMethodBind):
    gridMapGetOctantSizeMethodBind = getMethod(cstring"GridMap",
        cstring"get_octant_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetOctantSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetOctantSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellOctantSize=`(self: GridMap; val: int64) =
  if isNil(gridMapSetOctantSizeMethodBind):
    gridMapSetOctantSizeMethodBind = getMethod(cstring"GridMap",
        cstring"set_octant_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetOctantSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gridMapGetCellScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellScale(self: GridMap): float64 =
  if isNil(gridMapGetCellScaleMethodBind):
    gridMapGetCellScaleMethodBind = getMethod(cstring"GridMap",
        cstring"get_cell_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCellScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetCellScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellScale=`(self: GridMap; val: float64) =
  if isNil(gridMapSetCellScaleMethodBind):
    gridMapSetCellScaleMethodBind = getMethod(cstring"GridMap",
        cstring"set_cell_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetCellScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gridMapGetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellSize(self: GridMap): Vector3 =
  if isNil(gridMapGetCellSizeMethodBind):
    gridMapGetCellSizeMethodBind = getMethod(cstring"GridMap",
        cstring"get_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCellSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellSize=`(self: GridMap; val: Vector3) =
  if isNil(gridMapSetCellSizeMethodBind):
    gridMapSetCellSizeMethodBind = getMethod(cstring"GridMap",
        cstring"set_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetCellSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gridMapGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: GridMap): int64 =
  if isNil(gridMapGetCollisionLayerMethodBind):
    gridMapGetCollisionLayerMethodBind = getMethod(cstring"GridMap",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: GridMap; val: int64) =
  if isNil(gridMapSetCollisionLayerMethodBind):
    gridMapSetCollisionLayerMethodBind = getMethod(cstring"GridMap",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetCollisionLayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gridMapGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: GridMap): int64 =
  if isNil(gridMapGetCollisionMaskMethodBind):
    gridMapGetCollisionMaskMethodBind = getMethod(cstring"GridMap",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: GridMap; val: int64) =
  if isNil(gridMapSetCollisionMaskMethodBind):
    gridMapSetCollisionMaskMethodBind = getMethod(cstring"GridMap",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridMapSetCollisionMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gridMapGetMeshLibraryMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshLibrary(self: GridMap): MeshLibrary =
  if isNil(gridMapGetMeshLibraryMethodBind):
    gridMapGetMeshLibraryMethodBind = getMethod(cstring"GridMap",
        cstring"get_mesh_library")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gridMapGetMeshLibraryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gridMapSetMeshLibraryMethodBind {.threadvar.}: ptr GodotMethodBind
proc `meshLibrary=`(self: GridMap; val: MeshLibrary) =
  if isNil(gridMapSetMeshLibraryMethodBind):
    gridMapSetMeshLibraryMethodBind = getMethod(cstring"GridMap",
        cstring"set_mesh_library")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gridMapSetMeshLibraryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gridMapUnderscoreupdateOctantsCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
method updateOctantsCallback(self: GridMap) =
  if isNil(gridMapUnderscoreupdateOctantsCallbackMethodBind):
    gridMapUnderscoreupdateOctantsCallbackMethodBind = getMethod(
        cstring"GridMap", cstring"_update_octants_callback")
  var ptrCallRet: pointer
  gridMapUnderscoreupdateOctantsCallbackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gridMapClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: GridMap) =
  if isNil(gridMapClearMethodBind):
    gridMapClearMethodBind = getMethod(cstring"GridMap", cstring"clear")
  var ptrCallRet: pointer
  gridMapClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapClearBakedMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBakedMeshes(self: GridMap) =
  if isNil(gridMapClearBakedMeshesMethodBind):
    gridMapClearBakedMeshesMethodBind = getMethod(cstring"GridMap",
        cstring"clear_baked_meshes")
  var ptrCallRet: pointer
  gridMapClearBakedMeshesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridMapGetBakeMeshInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakeMeshInstance(self: GridMap; idx: int64): RID =
  if isNil(gridMapGetBakeMeshInstanceMethodBind):
    gridMapGetBakeMeshInstanceMethodBind = getMethod(cstring"GridMap",
        cstring"get_bake_mesh_instance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetBakeMeshInstanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gridMapGetBakeMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBakeMeshes(self: GridMap): Array =
  if isNil(gridMapGetBakeMeshesMethodBind):
    gridMapGetBakeMeshesMethodBind = getMethod(cstring"GridMap",
        cstring"get_bake_meshes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  gridMapGetBakeMeshesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gridMapGetCellItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCellItem(self: GridMap; x: int64; y: int64; z: int64): int64 =
  if isNil(gridMapGetCellItemMethodBind):
    gridMapGetCellItemMethodBind = getMethod(cstring"GridMap",
        cstring"get_cell_item")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(z)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCellItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gridMapGetCellItemOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCellItemOrientation(self: GridMap; x: int64; y: int64; z: int64): int64 =
  if isNil(gridMapGetCellItemOrientationMethodBind):
    gridMapGetCellItemOrientationMethodBind = getMethod(cstring"GridMap",
        cstring"get_cell_item_orientation")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(z)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCellItemOrientationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gridMapGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: GridMap; bit: int64): bool =
  if isNil(gridMapGetCollisionLayerBitMethodBind):
    gridMapGetCollisionLayerBitMethodBind = getMethod(cstring"GridMap",
        cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gridMapGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: GridMap; bit: int64): bool =
  if isNil(gridMapGetCollisionMaskBitMethodBind):
    gridMapGetCollisionMaskBitMethodBind = getMethod(cstring"GridMap",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gridMapGetMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMeshes(self: GridMap): Array =
  if isNil(gridMapGetMeshesMethodBind):
    gridMapGetMeshesMethodBind = getMethod(cstring"GridMap", cstring"get_meshes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  gridMapGetMeshesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gridMapGetUsedCellsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUsedCells(self: GridMap): Array =
  if isNil(gridMapGetUsedCellsMethodBind):
    gridMapGetUsedCellsMethodBind = getMethod(cstring"GridMap",
        cstring"get_used_cells")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  gridMapGetUsedCellsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gridMapMakeBakedMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeBakedMeshes(self: GridMap; genLightmapUv: bool = false;
                    lightmapUvTexelSize: float64 = 0.1) =
  if isNil(gridMapMakeBakedMeshesMethodBind):
    gridMapMakeBakedMeshesMethodBind = getMethod(cstring"GridMap",
        cstring"make_baked_meshes")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(genLightmapUv)
  argsToPassToGodot[][1] = unsafeAddr(lightmapUvTexelSize)
  var ptrCallRet: pointer
  gridMapMakeBakedMeshesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gridMapMapToWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc mapToWorld(self: GridMap; x: int64; y: int64; z: int64): Vector3 =
  if isNil(gridMapMapToWorldMethodBind):
    gridMapMapToWorldMethodBind = getMethod(cstring"GridMap",
        cstring"map_to_world")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(z)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapMapToWorldMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gridMapResourceChangedMethodBind {.threadvar.}: ptr GodotMethodBind
proc resourceChanged(self: GridMap; resource: Resource) =
  if isNil(gridMapResourceChangedMethodBind):
    gridMapResourceChangedMethodBind = getMethod(cstring"GridMap",
        cstring"resource_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gridMapResourceChangedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gridMapSetCellItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCellItem(self: GridMap; x: int64; y: int64; z: int64; item: int64;
                orientation: int64 = 0'i64) =
  if isNil(gridMapSetCellItemMethodBind):
    gridMapSetCellItemMethodBind = getMethod(cstring"GridMap",
        cstring"set_cell_item")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(z)
  argsToPassToGodot[][3] = unsafeAddr(item)
  argsToPassToGodot[][4] = unsafeAddr(orientation)
  var ptrCallRet: pointer
  gridMapSetCellItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gridMapSetClipMethodBind {.threadvar.}: ptr GodotMethodBind
proc setClip(self: GridMap; enabled: bool; clipabove: bool = true; floor: int64 = 0'i64;
            axis: int64 = 0'i64) =
  if isNil(gridMapSetClipMethodBind):
    gridMapSetClipMethodBind = getMethod(cstring"GridMap", cstring"set_clip")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  argsToPassToGodot[][1] = unsafeAddr(clipabove)
  argsToPassToGodot[][2] = unsafeAddr(floor)
  argsToPassToGodot[][3] = unsafeAddr(axis)
  var ptrCallRet: pointer
  gridMapSetClipMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var gridMapSetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: GridMap; bit: int64; value: bool) =
  if isNil(gridMapSetCollisionLayerBitMethodBind):
    gridMapSetCollisionLayerBitMethodBind = getMethod(cstring"GridMap",
        cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  gridMapSetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gridMapSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: GridMap; bit: int64; value: bool) =
  if isNil(gridMapSetCollisionMaskBitMethodBind):
    gridMapSetCollisionMaskBitMethodBind = getMethod(cstring"GridMap",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  gridMapSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gridMapWorldToMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc worldToMap(self: GridMap; pos: Vector3): Vector3 =
  if isNil(gridMapWorldToMapMethodBind):
    gridMapWorldToMapMethodBind = getMethod(cstring"GridMap",
        cstring"world_to_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pos)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridMapWorldToMapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
