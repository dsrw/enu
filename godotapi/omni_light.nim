
import
  godot, godottypes, godotinternal, light

export
  godottypes, light

const
  SHADOW_CUBE* = 1'i64
  SHADOW_DETAIL_HORIZONTAL* = 1'i64
  SHADOW_DETAIL_VERTICAL* = 0'i64
  SHADOW_DUAL_PARABOLOID* = 0'i64
proc omniAttenuation*(self: OmniLight): float64 {.gcsafe, locks: 0.}
proc `omniAttenuation=`*(self: OmniLight; val: float64) {.gcsafe, locks: 0.}
proc omniRange*(self: OmniLight): float64 {.gcsafe, locks: 0.}
proc `omniRange=`*(self: OmniLight; val: float64) {.gcsafe, locks: 0.}
proc omniShadowDetail*(self: OmniLight): int64 {.gcsafe, locks: 0.}
proc `omniShadowDetail=`*(self: OmniLight; val: int64) {.gcsafe, locks: 0.}
proc omniShadowMode*(self: OmniLight): int64 {.gcsafe, locks: 0.}
proc `omniShadowMode=`*(self: OmniLight; val: int64) {.gcsafe, locks: 0.}
var omniLightGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc omniAttenuation(self: OmniLight): float64 =
  if isNil(omniLightGetParamMethodBind):
    omniLightGetParamMethodBind = getMethod(cstring"OmniLight", cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  omniLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var omniLightSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `omniAttenuation=`(self: OmniLight; val: float64) =
  if isNil(omniLightSetParamMethodBind):
    omniLightSetParamMethodBind = getMethod(cstring"OmniLight", cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  omniLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc omniRange(self: OmniLight): float64 =
  if isNil(omniLightGetParamMethodBind):
    omniLightGetParamMethodBind = getMethod(cstring"OmniLight", cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  omniLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc `omniRange=`(self: OmniLight; val: float64) =
  if isNil(omniLightSetParamMethodBind):
    omniLightSetParamMethodBind = getMethod(cstring"OmniLight", cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  omniLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var omniLightGetShadowDetailMethodBind {.threadvar.}: ptr GodotMethodBind
proc omniShadowDetail(self: OmniLight): int64 =
  if isNil(omniLightGetShadowDetailMethodBind):
    omniLightGetShadowDetailMethodBind = getMethod(cstring"OmniLight",
        cstring"get_shadow_detail")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  omniLightGetShadowDetailMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var omniLightSetShadowDetailMethodBind {.threadvar.}: ptr GodotMethodBind
proc `omniShadowDetail=`(self: OmniLight; val: int64) =
  if isNil(omniLightSetShadowDetailMethodBind):
    omniLightSetShadowDetailMethodBind = getMethod(cstring"OmniLight",
        cstring"set_shadow_detail")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  omniLightSetShadowDetailMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var omniLightGetShadowModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc omniShadowMode(self: OmniLight): int64 =
  if isNil(omniLightGetShadowModeMethodBind):
    omniLightGetShadowModeMethodBind = getMethod(cstring"OmniLight",
        cstring"get_shadow_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  omniLightGetShadowModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var omniLightSetShadowModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `omniShadowMode=`(self: OmniLight; val: int64) =
  if isNil(omniLightSetShadowModeMethodBind):
    omniLightSetShadowModeMethodBind = getMethod(cstring"OmniLight",
        cstring"set_shadow_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  omniLightSetShadowModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
