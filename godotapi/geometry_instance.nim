
import
  godot, godottypes, godotinternal, visual_instance

export
  godottypes, visual_instance

const
  FLAG_DRAW_NEXT_FRAME_IF_VISIBLE* = 1'i64
  FLAG_MAX* = 2'i64
  FLAG_USE_BAKED_LIGHT* = 0'i64
  SHADOW_CASTING_SETTING_DOUBLE_SIDED* = 2'i64
  SHADOW_CASTING_SETTING_OFF* = 0'i64
  SHADOW_CASTING_SETTING_ON* = 1'i64
  SHADOW_CASTING_SETTING_SHADOWS_ONLY* = 3'i64
proc castShadow*(self: GeometryInstance): int64 {.gcsafe, locks: 0.}
proc `castShadow=`*(self: GeometryInstance; val: int64) {.gcsafe, locks: 0.}
proc extraCullMargin*(self: GeometryInstance): float64 {.gcsafe, locks: 0.}
proc `extraCullMargin=`*(self: GeometryInstance; val: float64) {.gcsafe, locks: 0.}
proc lodMaxDistance*(self: GeometryInstance): float64 {.gcsafe, locks: 0.}
proc `lodMaxDistance=`*(self: GeometryInstance; val: float64) {.gcsafe, locks: 0.}
proc lodMaxHysteresis*(self: GeometryInstance): float64 {.gcsafe, locks: 0.}
proc `lodMaxHysteresis=`*(self: GeometryInstance; val: float64) {.gcsafe, locks: 0.}
proc lodMinDistance*(self: GeometryInstance): float64 {.gcsafe, locks: 0.}
proc `lodMinDistance=`*(self: GeometryInstance; val: float64) {.gcsafe, locks: 0.}
proc lodMinHysteresis*(self: GeometryInstance): float64 {.gcsafe, locks: 0.}
proc `lodMinHysteresis=`*(self: GeometryInstance; val: float64) {.gcsafe, locks: 0.}
proc materialOverride*(self: GeometryInstance): Material {.gcsafe, locks: 0.}
proc `materialOverride=`*(self: GeometryInstance; val: Material) {.gcsafe, locks: 0.}
proc useInBakedLight*(self: GeometryInstance): bool {.gcsafe, locks: 0.}
proc `useInBakedLight=`*(self: GeometryInstance; val: bool) {.gcsafe, locks: 0.}
proc setCustomAabb*(self: GeometryInstance; aabb: AABB) {.gcsafe, locks: 0.}
var geometryInstanceGetCastShadowsSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc castShadow(self: GeometryInstance): int64 =
  if isNil(geometryInstanceGetCastShadowsSettingMethodBind):
    geometryInstanceGetCastShadowsSettingMethodBind = getMethod(
        cstring"GeometryInstance", cstring"get_cast_shadows_setting")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryInstanceGetCastShadowsSettingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var geometryInstanceSetCastShadowsSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `castShadow=`(self: GeometryInstance; val: int64) =
  if isNil(geometryInstanceSetCastShadowsSettingMethodBind):
    geometryInstanceSetCastShadowsSettingMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_cast_shadows_setting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  geometryInstanceSetCastShadowsSettingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryInstanceGetExtraCullMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc extraCullMargin(self: GeometryInstance): float64 =
  if isNil(geometryInstanceGetExtraCullMarginMethodBind):
    geometryInstanceGetExtraCullMarginMethodBind = getMethod(
        cstring"GeometryInstance", cstring"get_extra_cull_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryInstanceGetExtraCullMarginMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var geometryInstanceSetExtraCullMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `extraCullMargin=`(self: GeometryInstance; val: float64) =
  if isNil(geometryInstanceSetExtraCullMarginMethodBind):
    geometryInstanceSetExtraCullMarginMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_extra_cull_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  geometryInstanceSetExtraCullMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryInstanceGetLodMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc lodMaxDistance(self: GeometryInstance): float64 =
  if isNil(geometryInstanceGetLodMaxDistanceMethodBind):
    geometryInstanceGetLodMaxDistanceMethodBind = getMethod(
        cstring"GeometryInstance", cstring"get_lod_max_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryInstanceGetLodMaxDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var geometryInstanceSetLodMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lodMaxDistance=`(self: GeometryInstance; val: float64) =
  if isNil(geometryInstanceSetLodMaxDistanceMethodBind):
    geometryInstanceSetLodMaxDistanceMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_lod_max_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  geometryInstanceSetLodMaxDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryInstanceGetLodMaxHysteresisMethodBind {.threadvar.}: ptr GodotMethodBind
proc lodMaxHysteresis(self: GeometryInstance): float64 =
  if isNil(geometryInstanceGetLodMaxHysteresisMethodBind):
    geometryInstanceGetLodMaxHysteresisMethodBind = getMethod(
        cstring"GeometryInstance", cstring"get_lod_max_hysteresis")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryInstanceGetLodMaxHysteresisMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var geometryInstanceSetLodMaxHysteresisMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lodMaxHysteresis=`(self: GeometryInstance; val: float64) =
  if isNil(geometryInstanceSetLodMaxHysteresisMethodBind):
    geometryInstanceSetLodMaxHysteresisMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_lod_max_hysteresis")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  geometryInstanceSetLodMaxHysteresisMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryInstanceGetLodMinDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc lodMinDistance(self: GeometryInstance): float64 =
  if isNil(geometryInstanceGetLodMinDistanceMethodBind):
    geometryInstanceGetLodMinDistanceMethodBind = getMethod(
        cstring"GeometryInstance", cstring"get_lod_min_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryInstanceGetLodMinDistanceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var geometryInstanceSetLodMinDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lodMinDistance=`(self: GeometryInstance; val: float64) =
  if isNil(geometryInstanceSetLodMinDistanceMethodBind):
    geometryInstanceSetLodMinDistanceMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_lod_min_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  geometryInstanceSetLodMinDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryInstanceGetLodMinHysteresisMethodBind {.threadvar.}: ptr GodotMethodBind
proc lodMinHysteresis(self: GeometryInstance): float64 =
  if isNil(geometryInstanceGetLodMinHysteresisMethodBind):
    geometryInstanceGetLodMinHysteresisMethodBind = getMethod(
        cstring"GeometryInstance", cstring"get_lod_min_hysteresis")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryInstanceGetLodMinHysteresisMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var geometryInstanceSetLodMinHysteresisMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lodMinHysteresis=`(self: GeometryInstance; val: float64) =
  if isNil(geometryInstanceSetLodMinHysteresisMethodBind):
    geometryInstanceSetLodMinHysteresisMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_lod_min_hysteresis")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  geometryInstanceSetLodMinHysteresisMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryInstanceGetMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialOverride(self: GeometryInstance): Material =
  if isNil(geometryInstanceGetMaterialOverrideMethodBind):
    geometryInstanceGetMaterialOverrideMethodBind = getMethod(
        cstring"GeometryInstance", cstring"get_material_override")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  geometryInstanceGetMaterialOverrideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var geometryInstanceSetMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `materialOverride=`(self: GeometryInstance; val: Material) =
  if isNil(geometryInstanceSetMaterialOverrideMethodBind):
    geometryInstanceSetMaterialOverrideMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_material_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  geometryInstanceSetMaterialOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var geometryInstanceGetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc useInBakedLight(self: GeometryInstance): bool =
  if isNil(geometryInstanceGetFlagMethodBind):
    geometryInstanceGetFlagMethodBind = getMethod(cstring"GeometryInstance",
        cstring"get_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  geometryInstanceGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var geometryInstanceSetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useInBakedLight=`(self: GeometryInstance; val: bool) =
  if isNil(geometryInstanceSetFlagMethodBind):
    geometryInstanceSetFlagMethodBind = getMethod(cstring"GeometryInstance",
        cstring"set_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  geometryInstanceSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var geometryInstanceSetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCustomAabb(self: GeometryInstance; aabb: AABB) =
  if isNil(geometryInstanceSetCustomAabbMethodBind):
    geometryInstanceSetCustomAabbMethodBind = getMethod(
        cstring"GeometryInstance", cstring"set_custom_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(aabb)
  var ptrCallRet: pointer
  geometryInstanceSetCustomAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
