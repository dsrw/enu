
import
  godot, godottypes, godotinternal, light

export
  godottypes, light

proc spotAngle*(self: SpotLight): float64 {.gcsafe, locks: 0.}
proc `spotAngle=`*(self: SpotLight; val: float64) {.gcsafe, locks: 0.}
proc spotAngleAttenuation*(self: SpotLight): float64 {.gcsafe, locks: 0.}
proc `spotAngleAttenuation=`*(self: SpotLight; val: float64) {.gcsafe, locks: 0.}
proc spotAttenuation*(self: SpotLight): float64 {.gcsafe, locks: 0.}
proc `spotAttenuation=`*(self: SpotLight; val: float64) {.gcsafe, locks: 0.}
proc spotRange*(self: SpotLight): float64 {.gcsafe, locks: 0.}
proc `spotRange=`*(self: SpotLight; val: float64) {.gcsafe, locks: 0.}
var spotLightGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc spotAngle(self: SpotLight): float64 =
  if isNil(spotLightGetParamMethodBind):
    spotLightGetParamMethodBind = getMethod(cstring"SpotLight", cstring"get_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spotLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var spotLightSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spotAngle=`(self: SpotLight; val: float64) =
  if isNil(spotLightSetParamMethodBind):
    spotLightSetParamMethodBind = getMethod(cstring"SpotLight", cstring"set_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spotLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc spotAngleAttenuation(self: SpotLight): float64 =
  if isNil(spotLightGetParamMethodBind):
    spotLightGetParamMethodBind = getMethod(cstring"SpotLight", cstring"get_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spotLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc `spotAngleAttenuation=`(self: SpotLight; val: float64) =
  if isNil(spotLightSetParamMethodBind):
    spotLightSetParamMethodBind = getMethod(cstring"SpotLight", cstring"set_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spotLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc spotAttenuation(self: SpotLight): float64 =
  if isNil(spotLightGetParamMethodBind):
    spotLightGetParamMethodBind = getMethod(cstring"SpotLight", cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spotLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc `spotAttenuation=`(self: SpotLight; val: float64) =
  if isNil(spotLightSetParamMethodBind):
    spotLightSetParamMethodBind = getMethod(cstring"SpotLight", cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spotLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc spotRange(self: SpotLight): float64 =
  if isNil(spotLightGetParamMethodBind):
    spotLightGetParamMethodBind = getMethod(cstring"SpotLight", cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spotLightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc `spotRange=`(self: SpotLight; val: float64) =
  if isNil(spotLightSetParamMethodBind):
    spotLightSetParamMethodBind = getMethod(cstring"SpotLight", cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spotLightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
