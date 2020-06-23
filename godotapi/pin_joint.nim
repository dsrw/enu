
import
  godot, godottypes, godotinternal, joint

export
  godottypes, joint

const
  PARAM_BIAS* = 0'i64
  PARAM_DAMPING* = 1'i64
  PARAM_IMPULSE_CLAMP* = 2'i64
proc paramsbias*(self: PinJoint): float64 {.gcsafe, locks: 0.}
proc `paramsbias=`*(self: PinJoint; val: float64) {.gcsafe, locks: 0.}
proc paramsdamping*(self: PinJoint): float64 {.gcsafe, locks: 0.}
proc `paramsdamping=`*(self: PinJoint; val: float64) {.gcsafe, locks: 0.}
proc paramsimpulseClamp*(self: PinJoint): float64 {.gcsafe, locks: 0.}
proc `paramsimpulseClamp=`*(self: PinJoint; val: float64) {.gcsafe, locks: 0.}
var pinJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsbias(self: PinJoint): float64 =
  if isNil(pinJointGetParamMethodBind):
    pinJointGetParamMethodBind = getMethod(cstring"PinJoint", cstring"get_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pinJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var pinJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsbias=`(self: PinJoint; val: float64) =
  if isNil(pinJointSetParamMethodBind):
    pinJointSetParamMethodBind = getMethod(cstring"PinJoint", cstring"set_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  pinJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc paramsdamping(self: PinJoint): float64 =
  if isNil(pinJointGetParamMethodBind):
    pinJointGetParamMethodBind = getMethod(cstring"PinJoint", cstring"get_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pinJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `paramsdamping=`(self: PinJoint; val: float64) =
  if isNil(pinJointSetParamMethodBind):
    pinJointSetParamMethodBind = getMethod(cstring"PinJoint", cstring"set_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  pinJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc paramsimpulseClamp(self: PinJoint): float64 =
  if isNil(pinJointGetParamMethodBind):
    pinJointGetParamMethodBind = getMethod(cstring"PinJoint", cstring"get_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pinJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `paramsimpulseClamp=`(self: PinJoint; val: float64) =
  if isNil(pinJointSetParamMethodBind):
    pinJointSetParamMethodBind = getMethod(cstring"PinJoint", cstring"set_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  pinJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
