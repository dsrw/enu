
import
  godot, godottypes, godotinternal, visual_instance

export
  godottypes, visual_instance

const
  UPDATE_ALWAYS* = 1'i64
  UPDATE_ONCE* = 0'i64
proc boxProjection*(self: ReflectionProbe): bool {.gcsafe, locks: 0.}
proc `boxProjection=`*(self: ReflectionProbe; val: bool) {.gcsafe, locks: 0.}
proc cullMask*(self: ReflectionProbe): int64 {.gcsafe, locks: 0.}
proc `cullMask=`*(self: ReflectionProbe; val: int64) {.gcsafe, locks: 0.}
proc enableShadows*(self: ReflectionProbe): bool {.gcsafe, locks: 0.}
proc `enableShadows=`*(self: ReflectionProbe; val: bool) {.gcsafe, locks: 0.}
proc extents*(self: ReflectionProbe): Vector3 {.gcsafe, locks: 0.}
proc `extents=`*(self: ReflectionProbe; val: Vector3) {.gcsafe, locks: 0.}
proc intensity*(self: ReflectionProbe): float64 {.gcsafe, locks: 0.}
proc `intensity=`*(self: ReflectionProbe; val: float64) {.gcsafe, locks: 0.}
proc interiorAmbientColor*(self: ReflectionProbe): Color {.gcsafe, locks: 0.}
proc `interiorAmbientColor=`*(self: ReflectionProbe; val: Color) {.gcsafe, locks: 0.}
proc interiorAmbientContrib*(self: ReflectionProbe): float64 {.gcsafe, locks: 0.}
proc `interiorAmbientContrib=`*(self: ReflectionProbe; val: float64) {.gcsafe,
    locks: 0.}
proc interiorAmbientEnergy*(self: ReflectionProbe): float64 {.gcsafe, locks: 0.}
proc `interiorAmbientEnergy=`*(self: ReflectionProbe; val: float64) {.gcsafe, locks: 0.}
proc interiorEnable*(self: ReflectionProbe): bool {.gcsafe, locks: 0.}
proc `interiorEnable=`*(self: ReflectionProbe; val: bool) {.gcsafe, locks: 0.}
proc maxDistance*(self: ReflectionProbe): float64 {.gcsafe, locks: 0.}
proc `maxDistance=`*(self: ReflectionProbe; val: float64) {.gcsafe, locks: 0.}
proc originOffset*(self: ReflectionProbe): Vector3 {.gcsafe, locks: 0.}
proc `originOffset=`*(self: ReflectionProbe; val: Vector3) {.gcsafe, locks: 0.}
proc updateMode*(self: ReflectionProbe): int64 {.gcsafe, locks: 0.}
proc `updateMode=`*(self: ReflectionProbe; val: int64) {.gcsafe, locks: 0.}
var reflectionProbeIsBoxProjectionEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc boxProjection(self: ReflectionProbe): bool =
  if isNil(reflectionProbeIsBoxProjectionEnabledMethodBind):
    reflectionProbeIsBoxProjectionEnabledMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"is_box_projection_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeIsBoxProjectionEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var reflectionProbeSetEnableBoxProjectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `boxProjection=`(self: ReflectionProbe; val: bool) =
  if isNil(reflectionProbeSetEnableBoxProjectionMethodBind):
    reflectionProbeSetEnableBoxProjectionMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"set_enable_box_projection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetEnableBoxProjectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc cullMask(self: ReflectionProbe): int64 =
  if isNil(reflectionProbeGetCullMaskMethodBind):
    reflectionProbeGetCullMaskMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"get_cull_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetCullMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var reflectionProbeSetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cullMask=`(self: ReflectionProbe; val: int64) =
  if isNil(reflectionProbeSetCullMaskMethodBind):
    reflectionProbeSetCullMaskMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"set_cull_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetCullMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeAreShadowsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc enableShadows(self: ReflectionProbe): bool =
  if isNil(reflectionProbeAreShadowsEnabledMethodBind):
    reflectionProbeAreShadowsEnabledMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"are_shadows_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeAreShadowsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var reflectionProbeSetEnableShadowsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enableShadows=`(self: ReflectionProbe; val: bool) =
  if isNil(reflectionProbeSetEnableShadowsMethodBind):
    reflectionProbeSetEnableShadowsMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"set_enable_shadows")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetEnableShadowsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc extents(self: ReflectionProbe): Vector3 =
  if isNil(reflectionProbeGetExtentsMethodBind):
    reflectionProbeGetExtentsMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"get_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetExtentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var reflectionProbeSetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `extents=`(self: ReflectionProbe; val: Vector3) =
  if isNil(reflectionProbeSetExtentsMethodBind):
    reflectionProbeSetExtentsMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"set_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetExtentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc intensity(self: ReflectionProbe): float64 =
  if isNil(reflectionProbeGetIntensityMethodBind):
    reflectionProbeGetIntensityMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"get_intensity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetIntensityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var reflectionProbeSetIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `intensity=`(self: ReflectionProbe; val: float64) =
  if isNil(reflectionProbeSetIntensityMethodBind):
    reflectionProbeSetIntensityMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"set_intensity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetIntensityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetInteriorAmbientMethodBind {.threadvar.}: ptr GodotMethodBind
proc interiorAmbientColor(self: ReflectionProbe): Color =
  if isNil(reflectionProbeGetInteriorAmbientMethodBind):
    reflectionProbeGetInteriorAmbientMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"get_interior_ambient")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetInteriorAmbientMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var reflectionProbeSetInteriorAmbientMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interiorAmbientColor=`(self: ReflectionProbe; val: Color) =
  if isNil(reflectionProbeSetInteriorAmbientMethodBind):
    reflectionProbeSetInteriorAmbientMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"set_interior_ambient")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetInteriorAmbientMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetInteriorAmbientProbeContributionMethodBind {.threadvar.}: ptr GodotMethodBind
proc interiorAmbientContrib(self: ReflectionProbe): float64 =
  if isNil(reflectionProbeGetInteriorAmbientProbeContributionMethodBind):
    reflectionProbeGetInteriorAmbientProbeContributionMethodBind = getMethod(
        cstring"ReflectionProbe",
        cstring"get_interior_ambient_probe_contribution")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetInteriorAmbientProbeContributionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var reflectionProbeSetInteriorAmbientProbeContributionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interiorAmbientContrib=`(self: ReflectionProbe; val: float64) =
  if isNil(reflectionProbeSetInteriorAmbientProbeContributionMethodBind):
    reflectionProbeSetInteriorAmbientProbeContributionMethodBind = getMethod(
        cstring"ReflectionProbe",
        cstring"set_interior_ambient_probe_contribution")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetInteriorAmbientProbeContributionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var reflectionProbeGetInteriorAmbientEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc interiorAmbientEnergy(self: ReflectionProbe): float64 =
  if isNil(reflectionProbeGetInteriorAmbientEnergyMethodBind):
    reflectionProbeGetInteriorAmbientEnergyMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"get_interior_ambient_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetInteriorAmbientEnergyMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var reflectionProbeSetInteriorAmbientEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interiorAmbientEnergy=`(self: ReflectionProbe; val: float64) =
  if isNil(reflectionProbeSetInteriorAmbientEnergyMethodBind):
    reflectionProbeSetInteriorAmbientEnergyMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"set_interior_ambient_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetInteriorAmbientEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeIsSetAsInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc interiorEnable(self: ReflectionProbe): bool =
  if isNil(reflectionProbeIsSetAsInteriorMethodBind):
    reflectionProbeIsSetAsInteriorMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"is_set_as_interior")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeIsSetAsInteriorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var reflectionProbeSetAsInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interiorEnable=`(self: ReflectionProbe; val: bool) =
  if isNil(reflectionProbeSetAsInteriorMethodBind):
    reflectionProbeSetAsInteriorMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"set_as_interior")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetAsInteriorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxDistance(self: ReflectionProbe): float64 =
  if isNil(reflectionProbeGetMaxDistanceMethodBind):
    reflectionProbeGetMaxDistanceMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"get_max_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetMaxDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var reflectionProbeSetMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxDistance=`(self: ReflectionProbe; val: float64) =
  if isNil(reflectionProbeSetMaxDistanceMethodBind):
    reflectionProbeSetMaxDistanceMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"set_max_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetMaxDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetOriginOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc originOffset(self: ReflectionProbe): Vector3 =
  if isNil(reflectionProbeGetOriginOffsetMethodBind):
    reflectionProbeGetOriginOffsetMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"get_origin_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetOriginOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var reflectionProbeSetOriginOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `originOffset=`(self: ReflectionProbe; val: Vector3) =
  if isNil(reflectionProbeSetOriginOffsetMethodBind):
    reflectionProbeSetOriginOffsetMethodBind = getMethod(
        cstring"ReflectionProbe", cstring"set_origin_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetOriginOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var reflectionProbeGetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateMode(self: ReflectionProbe): int64 =
  if isNil(reflectionProbeGetUpdateModeMethodBind):
    reflectionProbeGetUpdateModeMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"get_update_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  reflectionProbeGetUpdateModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var reflectionProbeSetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `updateMode=`(self: ReflectionProbe; val: int64) =
  if isNil(reflectionProbeSetUpdateModeMethodBind):
    reflectionProbeSetUpdateModeMethodBind = getMethod(cstring"ReflectionProbe",
        cstring"set_update_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  reflectionProbeSetUpdateModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
