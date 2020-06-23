
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc bias*(self: GIProbeData): float64 {.gcsafe, locks: 0.}
proc `bias=`*(self: GIProbeData; val: float64) {.gcsafe, locks: 0.}
proc bounds*(self: GIProbeData): AABB {.gcsafe, locks: 0.}
proc `bounds=`*(self: GIProbeData; val: AABB) {.gcsafe, locks: 0.}
proc cellSize*(self: GIProbeData): float64 {.gcsafe, locks: 0.}
proc `cellSize=`*(self: GIProbeData; val: float64) {.gcsafe, locks: 0.}
proc compress*(self: GIProbeData): bool {.gcsafe, locks: 0.}
proc `compress=`*(self: GIProbeData; val: bool) {.gcsafe, locks: 0.}
proc dynamicData*(self: GIProbeData): PoolIntArray {.gcsafe, locks: 0.}
proc `dynamicData=`*(self: GIProbeData; val: PoolIntArray) {.gcsafe, locks: 0.}
proc dynamicRange*(self: GIProbeData): int64 {.gcsafe, locks: 0.}
proc `dynamicRange=`*(self: GIProbeData; val: int64) {.gcsafe, locks: 0.}
proc energy*(self: GIProbeData): float64 {.gcsafe, locks: 0.}
proc `energy=`*(self: GIProbeData; val: float64) {.gcsafe, locks: 0.}
proc interior*(self: GIProbeData): bool {.gcsafe, locks: 0.}
proc `interior=`*(self: GIProbeData; val: bool) {.gcsafe, locks: 0.}
proc normalBias*(self: GIProbeData): float64 {.gcsafe, locks: 0.}
proc `normalBias=`*(self: GIProbeData; val: float64) {.gcsafe, locks: 0.}
proc propagation*(self: GIProbeData): float64 {.gcsafe, locks: 0.}
proc `propagation=`*(self: GIProbeData; val: float64) {.gcsafe, locks: 0.}
proc toCellXform*(self: GIProbeData): Transform {.gcsafe, locks: 0.}
proc `toCellXform=`*(self: GIProbeData; val: Transform) {.gcsafe, locks: 0.}
var gIProbeDataGetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc bias(self: GIProbeData): float64 =
  if isNil(gIProbeDataGetBiasMethodBind):
    gIProbeDataGetBiasMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bias=`(self: GIProbeData; val: float64) =
  if isNil(gIProbeDataSetBiasMethodBind):
    gIProbeDataSetBiasMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetBiasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gIProbeDataGetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounds(self: GIProbeData): AABB =
  if isNil(gIProbeDataGetBoundsMethodBind):
    gIProbeDataGetBoundsMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_bounds")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetBoundsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounds=`(self: GIProbeData; val: AABB) =
  if isNil(gIProbeDataSetBoundsMethodBind):
    gIProbeDataSetBoundsMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_bounds")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetBoundsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeDataGetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellSize(self: GIProbeData): float64 =
  if isNil(gIProbeDataGetCellSizeMethodBind):
    gIProbeDataGetCellSizeMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetCellSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellSize=`(self: GIProbeData; val: float64) =
  if isNil(gIProbeDataSetCellSizeMethodBind):
    gIProbeDataSetCellSizeMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetCellSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeDataIsCompressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc compress(self: GIProbeData): bool =
  if isNil(gIProbeDataIsCompressedMethodBind):
    gIProbeDataIsCompressedMethodBind = getMethod(cstring"GIProbeData",
        cstring"is_compressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataIsCompressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetCompressMethodBind {.threadvar.}: ptr GodotMethodBind
proc `compress=`(self: GIProbeData; val: bool) =
  if isNil(gIProbeDataSetCompressMethodBind):
    gIProbeDataSetCompressMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_compress")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetCompressMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeDataGetDynamicDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc dynamicData(self: GIProbeData): PoolIntArray =
  if isNil(gIProbeDataGetDynamicDataMethodBind):
    gIProbeDataGetDynamicDataMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_dynamic_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  gIProbeDataGetDynamicDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gIProbeDataSetDynamicDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dynamicData=`(self: GIProbeData; val: PoolIntArray) =
  if isNil(gIProbeDataSetDynamicDataMethodBind):
    gIProbeDataSetDynamicDataMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_dynamic_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gIProbeDataSetDynamicDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gIProbeDataGetDynamicRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc dynamicRange(self: GIProbeData): int64 =
  if isNil(gIProbeDataGetDynamicRangeMethodBind):
    gIProbeDataGetDynamicRangeMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_dynamic_range")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetDynamicRangeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetDynamicRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dynamicRange=`(self: GIProbeData; val: int64) =
  if isNil(gIProbeDataSetDynamicRangeMethodBind):
    gIProbeDataSetDynamicRangeMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_dynamic_range")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetDynamicRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gIProbeDataGetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc energy(self: GIProbeData): float64 =
  if isNil(gIProbeDataGetEnergyMethodBind):
    gIProbeDataGetEnergyMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `energy=`(self: GIProbeData; val: float64) =
  if isNil(gIProbeDataSetEnergyMethodBind):
    gIProbeDataSetEnergyMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetEnergyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeDataIsInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc interior(self: GIProbeData): bool =
  if isNil(gIProbeDataIsInteriorMethodBind):
    gIProbeDataIsInteriorMethodBind = getMethod(cstring"GIProbeData",
        cstring"is_interior")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataIsInteriorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interior=`(self: GIProbeData; val: bool) =
  if isNil(gIProbeDataSetInteriorMethodBind):
    gIProbeDataSetInteriorMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_interior")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetInteriorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeDataGetNormalBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalBias(self: GIProbeData): float64 =
  if isNil(gIProbeDataGetNormalBiasMethodBind):
    gIProbeDataGetNormalBiasMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_normal_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetNormalBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetNormalBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalBias=`(self: GIProbeData; val: float64) =
  if isNil(gIProbeDataSetNormalBiasMethodBind):
    gIProbeDataSetNormalBiasMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_normal_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetNormalBiasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeDataGetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc propagation(self: GIProbeData): float64 =
  if isNil(gIProbeDataGetPropagationMethodBind):
    gIProbeDataGetPropagationMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_propagation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetPropagationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `propagation=`(self: GIProbeData; val: float64) =
  if isNil(gIProbeDataSetPropagationMethodBind):
    gIProbeDataSetPropagationMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_propagation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetPropagationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gIProbeDataGetToCellXformMethodBind {.threadvar.}: ptr GodotMethodBind
proc toCellXform(self: GIProbeData): Transform =
  if isNil(gIProbeDataGetToCellXformMethodBind):
    gIProbeDataGetToCellXformMethodBind = getMethod(cstring"GIProbeData",
        cstring"get_to_cell_xform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeDataGetToCellXformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeDataSetToCellXformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `toCellXform=`(self: GIProbeData; val: Transform) =
  if isNil(gIProbeDataSetToCellXformMethodBind):
    gIProbeDataSetToCellXformMethodBind = getMethod(cstring"GIProbeData",
        cstring"set_to_cell_xform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeDataSetToCellXformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
