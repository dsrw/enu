
import
  godot, godottypes, godotinternal, visual_instance

export
  godottypes, visual_instance

const
  SUBDIV_128* = 1'i64
  SUBDIV_256* = 2'i64
  SUBDIV_512* = 3'i64
  SUBDIV_64* = 0'i64
  SUBDIV_MAX* = 4'i64
proc bias*(self: GIProbe): float64 {.gcsafe, locks: 0.}
proc `bias=`*(self: GIProbe; val: float64) {.gcsafe, locks: 0.}
proc compress*(self: GIProbe): bool {.gcsafe, locks: 0.}
proc `compress=`*(self: GIProbe; val: bool) {.gcsafe, locks: 0.}
proc data*(self: GIProbe): GIProbeData {.gcsafe, locks: 0.}
proc `data=`*(self: GIProbe; val: GIProbeData) {.gcsafe, locks: 0.}
proc dynamicRange*(self: GIProbe): int64 {.gcsafe, locks: 0.}
proc `dynamicRange=`*(self: GIProbe; val: int64) {.gcsafe, locks: 0.}
proc energy*(self: GIProbe): float64 {.gcsafe, locks: 0.}
proc `energy=`*(self: GIProbe; val: float64) {.gcsafe, locks: 0.}
proc extents*(self: GIProbe): Vector3 {.gcsafe, locks: 0.}
proc `extents=`*(self: GIProbe; val: Vector3) {.gcsafe, locks: 0.}
proc interior*(self: GIProbe): bool {.gcsafe, locks: 0.}
proc `interior=`*(self: GIProbe; val: bool) {.gcsafe, locks: 0.}
proc normalBias*(self: GIProbe): float64 {.gcsafe, locks: 0.}
proc `normalBias=`*(self: GIProbe; val: float64) {.gcsafe, locks: 0.}
proc propagation*(self: GIProbe): float64 {.gcsafe, locks: 0.}
proc `propagation=`*(self: GIProbe; val: float64) {.gcsafe, locks: 0.}
proc subdiv*(self: GIProbe): int64 {.gcsafe, locks: 0.}
proc `subdiv=`*(self: GIProbe; val: int64) {.gcsafe, locks: 0.}
proc bake*(self: GIProbe; fromNode: Node = nil; createVisualDebug: bool = false) {.gcsafe,
    locks: 0.}
proc debugBake*(self: GIProbe) {.gcsafe, locks: 0.}
var gIProbeGetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc bias(self: GIProbe): float64 =
  if isNil(gIProbeGetBiasMethodBind):
    gIProbeGetBiasMethodBind = getMethod(cstring"GIProbe", cstring"get_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeGetBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bias=`(self: GIProbe; val: float64) =
  if isNil(gIProbeSetBiasMethodBind):
    gIProbeSetBiasMethodBind = getMethod(cstring"GIProbe", cstring"set_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetBiasMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var gIProbeIsCompressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc compress(self: GIProbe): bool =
  if isNil(gIProbeIsCompressedMethodBind):
    gIProbeIsCompressedMethodBind = getMethod(cstring"GIProbe",
        cstring"is_compressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeIsCompressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetCompressMethodBind {.threadvar.}: ptr GodotMethodBind
proc `compress=`(self: GIProbe; val: bool) =
  if isNil(gIProbeSetCompressMethodBind):
    gIProbeSetCompressMethodBind = getMethod(cstring"GIProbe",
        cstring"set_compress")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetCompressMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gIProbeGetProbeDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: GIProbe): GIProbeData =
  if isNil(gIProbeGetProbeDataMethodBind):
    gIProbeGetProbeDataMethodBind = getMethod(cstring"GIProbe",
        cstring"get_probe_data")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gIProbeGetProbeDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gIProbeSetProbeDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: GIProbe; val: GIProbeData) =
  if isNil(gIProbeSetProbeDataMethodBind):
    gIProbeSetProbeDataMethodBind = getMethod(cstring"GIProbe",
        cstring"set_probe_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gIProbeSetProbeDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gIProbeGetDynamicRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc dynamicRange(self: GIProbe): int64 =
  if isNil(gIProbeGetDynamicRangeMethodBind):
    gIProbeGetDynamicRangeMethodBind = getMethod(cstring"GIProbe",
        cstring"get_dynamic_range")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeGetDynamicRangeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetDynamicRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dynamicRange=`(self: GIProbe; val: int64) =
  if isNil(gIProbeSetDynamicRangeMethodBind):
    gIProbeSetDynamicRangeMethodBind = getMethod(cstring"GIProbe",
        cstring"set_dynamic_range")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetDynamicRangeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeGetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc energy(self: GIProbe): float64 =
  if isNil(gIProbeGetEnergyMethodBind):
    gIProbeGetEnergyMethodBind = getMethod(cstring"GIProbe", cstring"get_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeGetEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `energy=`(self: GIProbe; val: float64) =
  if isNil(gIProbeSetEnergyMethodBind):
    gIProbeSetEnergyMethodBind = getMethod(cstring"GIProbe", cstring"set_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetEnergyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gIProbeGetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc extents(self: GIProbe): Vector3 =
  if isNil(gIProbeGetExtentsMethodBind):
    gIProbeGetExtentsMethodBind = getMethod(cstring"GIProbe", cstring"get_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeGetExtentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `extents=`(self: GIProbe; val: Vector3) =
  if isNil(gIProbeSetExtentsMethodBind):
    gIProbeSetExtentsMethodBind = getMethod(cstring"GIProbe", cstring"set_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetExtentsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gIProbeIsInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc interior(self: GIProbe): bool =
  if isNil(gIProbeIsInteriorMethodBind):
    gIProbeIsInteriorMethodBind = getMethod(cstring"GIProbe", cstring"is_interior")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeIsInteriorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interior=`(self: GIProbe; val: bool) =
  if isNil(gIProbeSetInteriorMethodBind):
    gIProbeSetInteriorMethodBind = getMethod(cstring"GIProbe",
        cstring"set_interior")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetInteriorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gIProbeGetNormalBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalBias(self: GIProbe): float64 =
  if isNil(gIProbeGetNormalBiasMethodBind):
    gIProbeGetNormalBiasMethodBind = getMethod(cstring"GIProbe",
        cstring"get_normal_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeGetNormalBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetNormalBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalBias=`(self: GIProbe; val: float64) =
  if isNil(gIProbeSetNormalBiasMethodBind):
    gIProbeSetNormalBiasMethodBind = getMethod(cstring"GIProbe",
        cstring"set_normal_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetNormalBiasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeGetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc propagation(self: GIProbe): float64 =
  if isNil(gIProbeGetPropagationMethodBind):
    gIProbeGetPropagationMethodBind = getMethod(cstring"GIProbe",
        cstring"get_propagation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeGetPropagationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `propagation=`(self: GIProbe; val: float64) =
  if isNil(gIProbeSetPropagationMethodBind):
    gIProbeSetPropagationMethodBind = getMethod(cstring"GIProbe",
        cstring"set_propagation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetPropagationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gIProbeGetSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdiv(self: GIProbe): int64 =
  if isNil(gIProbeGetSubdivMethodBind):
    gIProbeGetSubdivMethodBind = getMethod(cstring"GIProbe", cstring"get_subdiv")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gIProbeGetSubdivMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gIProbeSetSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdiv=`(self: GIProbe; val: int64) =
  if isNil(gIProbeSetSubdivMethodBind):
    gIProbeSetSubdivMethodBind = getMethod(cstring"GIProbe", cstring"set_subdiv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gIProbeSetSubdivMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gIProbeBakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bake(self: GIProbe; fromNode: Node = nil; createVisualDebug: bool = false) =
  if isNil(gIProbeBakeMethodBind):
    gIProbeBakeMethodBind = getMethod(cstring"GIProbe", cstring"bake")
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
  gIProbeBakeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var gIProbeDebugBakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc debugBake(self: GIProbe) =
  if isNil(gIProbeDebugBakeMethodBind):
    gIProbeDebugBakeMethodBind = getMethod(cstring"GIProbe", cstring"debug_bake")
  var ptrCallRet: pointer
  gIProbeDebugBakeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
