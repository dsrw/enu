
import
  godot, godottypes, godotinternal, visual_instance

export
  godottypes, visual_instance

const
  BAKE_ERROR_CANT_CREATE_IMAGE* = 3'i64
  BAKE_ERROR_NO_MESHES* = 2'i64
  BAKE_ERROR_NO_SAVE_PATH* = 1'i64
  BAKE_ERROR_OK* = 0'i64
  BAKE_ERROR_USER_ABORTED* = 4'i64
  BAKE_MODE_CONE_TRACE* = 0'i64
  BAKE_MODE_RAY_TRACE* = 1'i64
  BAKE_QUALITY_HIGH* = 2'i64
  BAKE_QUALITY_LOW* = 0'i64
  BAKE_QUALITY_MEDIUM* = 1'i64
proc bakeCellSize*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `bakeCellSize=`*(self: BakedLightmap; val: float64) {.gcsafe, locks: 0.}
proc bakeDefaultTexelsPerUnit*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `bakeDefaultTexelsPerUnit=`*(self: BakedLightmap; val: float64) {.gcsafe,
    locks: 0.}
proc bakeEnergy*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `bakeEnergy=`*(self: BakedLightmap; val: float64) {.gcsafe, locks: 0.}
proc bakeExtents*(self: BakedLightmap): Vector3 {.gcsafe, locks: 0.}
proc `bakeExtents=`*(self: BakedLightmap; val: Vector3) {.gcsafe, locks: 0.}
proc bakeHdr*(self: BakedLightmap): bool {.gcsafe, locks: 0.}
proc `bakeHdr=`*(self: BakedLightmap; val: bool) {.gcsafe, locks: 0.}
proc bakeMode*(self: BakedLightmap): int64 {.gcsafe, locks: 0.}
proc `bakeMode=`*(self: BakedLightmap; val: int64) {.gcsafe, locks: 0.}
proc bakePropagation*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `bakePropagation=`*(self: BakedLightmap; val: float64) {.gcsafe, locks: 0.}
proc bakeQuality*(self: BakedLightmap): int64 {.gcsafe, locks: 0.}
proc `bakeQuality=`*(self: BakedLightmap; val: int64) {.gcsafe, locks: 0.}
proc captureCellSize*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `captureCellSize=`*(self: BakedLightmap; val: float64) {.gcsafe, locks: 0.}
proc imagePath*(self: BakedLightmap): string {.gcsafe, locks: 0.}
proc `imagePath=`*(self: BakedLightmap; val: string) {.gcsafe, locks: 0.}
proc lightData*(self: BakedLightmap): BakedLightmapData {.gcsafe, locks: 0.}
proc `lightData=`*(self: BakedLightmap; val: BakedLightmapData) {.gcsafe, locks: 0.}
proc bake*(self: BakedLightmap; fromNode: Node = nil; createVisualDebug: bool = false): int64 {.
    gcsafe, locks: 0.}
proc debugBake*(self: BakedLightmap) {.gcsafe, locks: 0.}
var bakedLightmapGetBakeCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeCellSize(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetBakeCellSizeMethodBind):
    bakedLightmapGetBakeCellSizeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_bake_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBakeCellSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetBakeCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeCellSize=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetBakeCellSizeMethodBind):
    bakedLightmapSetBakeCellSizeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_bake_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBakeCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetBakeDefaultTexelsPerUnitMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeDefaultTexelsPerUnit(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetBakeDefaultTexelsPerUnitMethodBind):
    bakedLightmapGetBakeDefaultTexelsPerUnitMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_bake_default_texels_per_unit")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBakeDefaultTexelsPerUnitMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var bakedLightmapSetBakeDefaultTexelsPerUnitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeDefaultTexelsPerUnit=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetBakeDefaultTexelsPerUnitMethodBind):
    bakedLightmapSetBakeDefaultTexelsPerUnitMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_bake_default_texels_per_unit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBakeDefaultTexelsPerUnitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeEnergy(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetEnergyMethodBind):
    bakedLightmapGetEnergyMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeEnergy=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetEnergyMethodBind):
    bakedLightmapSetEnergyMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetEnergyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapGetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeExtents(self: BakedLightmap): Vector3 =
  if isNil(bakedLightmapGetExtentsMethodBind):
    bakedLightmapGetExtentsMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetExtentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeExtents=`(self: BakedLightmap; val: Vector3) =
  if isNil(bakedLightmapSetExtentsMethodBind):
    bakedLightmapSetExtentsMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetExtentsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapIsHdrMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeHdr(self: BakedLightmap): bool =
  if isNil(bakedLightmapIsHdrMethodBind):
    bakedLightmapIsHdrMethodBind = getMethod(cstring"BakedLightmap",
        cstring"is_hdr")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapIsHdrMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetHdrMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeHdr=`(self: BakedLightmap; val: bool) =
  if isNil(bakedLightmapSetHdrMethodBind):
    bakedLightmapSetHdrMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_hdr")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetHdrMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var bakedLightmapGetBakeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeMode(self: BakedLightmap): int64 =
  if isNil(bakedLightmapGetBakeModeMethodBind):
    bakedLightmapGetBakeModeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_bake_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBakeModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetBakeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeMode=`(self: BakedLightmap; val: int64) =
  if isNil(bakedLightmapSetBakeModeMethodBind):
    bakedLightmapSetBakeModeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_bake_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBakeModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapGetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakePropagation(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetPropagationMethodBind):
    bakedLightmapGetPropagationMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_propagation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetPropagationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakePropagation=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetPropagationMethodBind):
    bakedLightmapSetPropagationMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_propagation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetPropagationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetBakeQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc bakeQuality(self: BakedLightmap): int64 =
  if isNil(bakedLightmapGetBakeQualityMethodBind):
    bakedLightmapGetBakeQualityMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_bake_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBakeQualityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetBakeQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bakeQuality=`(self: BakedLightmap; val: int64) =
  if isNil(bakedLightmapSetBakeQualityMethodBind):
    bakedLightmapSetBakeQualityMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_bake_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBakeQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetCaptureCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureCellSize(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetCaptureCellSizeMethodBind):
    bakedLightmapGetCaptureCellSizeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_capture_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetCaptureCellSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetCaptureCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `captureCellSize=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetCaptureCellSizeMethodBind):
    bakedLightmapSetCaptureCellSizeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_capture_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetCaptureCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetImagePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc imagePath(self: BakedLightmap): string =
  if isNil(bakedLightmapGetImagePathMethodBind):
    bakedLightmapGetImagePathMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_image_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapGetImagePathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var bakedLightmapSetImagePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `imagePath=`(self: BakedLightmap; val: string) =
  if isNil(bakedLightmapSetImagePathMethodBind):
    bakedLightmapSetImagePathMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_image_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  bakedLightmapSetImagePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var bakedLightmapGetLightDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightData(self: BakedLightmap): BakedLightmapData =
  if isNil(bakedLightmapGetLightDataMethodBind):
    bakedLightmapGetLightDataMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_light_data")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapGetLightDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var bakedLightmapSetLightDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightData=`(self: BakedLightmap; val: BakedLightmapData) =
  if isNil(bakedLightmapSetLightDataMethodBind):
    bakedLightmapSetLightDataMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_light_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  bakedLightmapSetLightDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapBakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bake(self: BakedLightmap; fromNode: Node = nil; createVisualDebug: bool = false): int64 =
  if isNil(bakedLightmapBakeMethodBind):
    bakedLightmapBakeMethodBind = getMethod(cstring"BakedLightmap", cstring"bake")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not fromNode.isNil:
    fromNode.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(createVisualDebug)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapBakeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var bakedLightmapDebugBakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc debugBake(self: BakedLightmap) =
  if isNil(bakedLightmapDebugBakeMethodBind):
    bakedLightmapDebugBakeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"debug_bake")
  var ptrCallRet: pointer
  bakedLightmapDebugBakeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
