
import
  godot, godottypes, godotinternal, light

export
  godottypes, light

const
  SHADOW_DEPTH_RANGE_OPTIMIZED* = 1'i64
  SHADOW_DEPTH_RANGE_STABLE* = 0'i64
  SHADOW_ORTHOGONAL* = 0'i64
  SHADOW_PARALLEL_2_SPLITS* = 1'i64
  SHADOW_PARALLEL_4_SPLITS* = 2'i64
proc directionalShadowBiasSplitScale*(self: DirectionalLight): float64 {.gcsafe,
    locks: 0.}
proc `directionalShadowBiasSplitScale=`*(self: DirectionalLight; val: float64) {.
    gcsafe, locks: 0.}
proc directionalShadowBlendSplits*(self: DirectionalLight): bool {.gcsafe, locks: 0.}
proc `directionalShadowBlendSplits=`*(self: DirectionalLight; val: bool) {.gcsafe,
    locks: 0.}
proc directionalShadowDepthRange*(self: DirectionalLight): int64 {.gcsafe, locks: 0.}
proc `directionalShadowDepthRange=`*(self: DirectionalLight; val: int64) {.gcsafe,
    locks: 0.}
proc directionalShadowMaxDistance*(self: DirectionalLight): float64 {.gcsafe,
    locks: 0.}
proc `directionalShadowMaxDistance=`*(self: DirectionalLight; val: float64) {.gcsafe,
    locks: 0.}
proc directionalShadowMode*(self: DirectionalLight): int64 {.gcsafe, locks: 0.}
proc `directionalShadowMode=`*(self: DirectionalLight; val: int64) {.gcsafe, locks: 0.}
proc directionalShadowNormalBias*(self: DirectionalLight): float64 {.gcsafe, locks: 0.}
proc `directionalShadowNormalBias=`*(self: DirectionalLight; val: float64) {.gcsafe,
    locks: 0.}
proc directionalShadowSplit1*(self: DirectionalLight): float64 {.gcsafe, locks: 0.}
proc `directionalShadowSplit1=`*(self: DirectionalLight; val: float64) {.gcsafe,
    locks: 0.}
proc directionalShadowSplit2*(self: DirectionalLight): float64 {.gcsafe, locks: 0.}
proc `directionalShadowSplit2=`*(self: DirectionalLight; val: float64) {.gcsafe,
    locks: 0.}
proc directionalShadowSplit3*(self: DirectionalLight): float64 {.gcsafe, locks: 0.}
proc `directionalShadowSplit3=`*(self: DirectionalLight; val: float64) {.gcsafe,
    locks: 0.}
var directionalLightGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc directionalShadowBiasSplitScale(self: DirectionalLight): float64 =
  if isNil(directionalLightGetParamMethodBind):
    directionalLightGetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"get_param")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var directionalLightSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `directionalShadowBiasSplitScale=`(self: DirectionalLight; val: float64) =
  if isNil(directionalLightSetParamMethodBind):
    directionalLightSetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"set_param")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var directionalLightIsBlendSplitsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc directionalShadowBlendSplits(self: DirectionalLight): bool =
  if isNil(directionalLightIsBlendSplitsEnabledMethodBind):
    directionalLightIsBlendSplitsEnabledMethodBind = getMethod(
        cstring"DirectionalLight", cstring"is_blend_splits_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightIsBlendSplitsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var directionalLightSetBlendSplitsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `directionalShadowBlendSplits=`(self: DirectionalLight; val: bool) =
  if isNil(directionalLightSetBlendSplitsMethodBind):
    directionalLightSetBlendSplitsMethodBind = getMethod(
        cstring"DirectionalLight", cstring"set_blend_splits")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetBlendSplitsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var directionalLightGetShadowDepthRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc directionalShadowDepthRange(self: DirectionalLight): int64 =
  if isNil(directionalLightGetShadowDepthRangeMethodBind):
    directionalLightGetShadowDepthRangeMethodBind = getMethod(
        cstring"DirectionalLight", cstring"get_shadow_depth_range")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetShadowDepthRangeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var directionalLightSetShadowDepthRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `directionalShadowDepthRange=`(self: DirectionalLight; val: int64) =
  if isNil(directionalLightSetShadowDepthRangeMethodBind):
    directionalLightSetShadowDepthRangeMethodBind = getMethod(
        cstring"DirectionalLight", cstring"set_shadow_depth_range")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetShadowDepthRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc directionalShadowMaxDistance(self: DirectionalLight): float64 =
  if isNil(directionalLightGetParamMethodBind):
    directionalLightGetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"get_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `directionalShadowMaxDistance=`(self: DirectionalLight; val: float64) =
  if isNil(directionalLightSetParamMethodBind):
    directionalLightSetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"set_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var directionalLightGetShadowModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc directionalShadowMode(self: DirectionalLight): int64 =
  if isNil(directionalLightGetShadowModeMethodBind):
    directionalLightGetShadowModeMethodBind = getMethod(
        cstring"DirectionalLight", cstring"get_shadow_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetShadowModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var directionalLightSetShadowModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `directionalShadowMode=`(self: DirectionalLight; val: int64) =
  if isNil(directionalLightSetShadowModeMethodBind):
    directionalLightSetShadowModeMethodBind = getMethod(
        cstring"DirectionalLight", cstring"set_shadow_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetShadowModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc directionalShadowNormalBias(self: DirectionalLight): float64 =
  if isNil(directionalLightGetParamMethodBind):
    directionalLightGetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"get_param")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `directionalShadowNormalBias=`(self: DirectionalLight; val: float64) =
  if isNil(directionalLightSetParamMethodBind):
    directionalLightSetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"set_param")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc directionalShadowSplit1(self: DirectionalLight): float64 =
  if isNil(directionalLightGetParamMethodBind):
    directionalLightGetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"get_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `directionalShadowSplit1=`(self: DirectionalLight; val: float64) =
  if isNil(directionalLightSetParamMethodBind):
    directionalLightSetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"set_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc directionalShadowSplit2(self: DirectionalLight): float64 =
  if isNil(directionalLightGetParamMethodBind):
    directionalLightGetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"get_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `directionalShadowSplit2=`(self: DirectionalLight; val: float64) =
  if isNil(directionalLightSetParamMethodBind):
    directionalLightSetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"set_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc directionalShadowSplit3(self: DirectionalLight): float64 =
  if isNil(directionalLightGetParamMethodBind):
    directionalLightGetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"get_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directionalLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `directionalShadowSplit3=`(self: DirectionalLight; val: float64) =
  if isNil(directionalLightSetParamMethodBind):
    directionalLightSetParamMethodBind = getMethod(cstring"DirectionalLight",
        cstring"set_param")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  directionalLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
