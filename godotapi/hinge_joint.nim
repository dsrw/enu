
import
  godot, godottypes, godotinternal, joint

export
  godottypes, joint

const
  FLAG_ENABLE_MOTOR* = 1'i64
  FLAG_MAX* = 2'i64
  FLAG_USE_LIMIT* = 0'i64
  PARAM_BIAS* = 0'i64
  PARAM_LIMIT_BIAS* = 3'i64
  PARAM_LIMIT_LOWER* = 2'i64
  PARAM_LIMIT_RELAXATION* = 5'i64
  PARAM_LIMIT_SOFTNESS* = 4'i64
  PARAM_LIMIT_UPPER* = 1'i64
  PARAM_MAX* = 8'i64
  PARAM_MOTOR_MAX_IMPULSE* = 7'i64
  PARAM_MOTOR_TARGET_VELOCITY* = 6'i64
proc angularLimitbias*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitbias=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitenable*(self: HingeJoint): bool {.gcsafe, locks: 0.}
proc `angularLimitenable=`*(self: HingeJoint; val: bool) {.gcsafe, locks: 0.}
proc angularLimitlower*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitlower=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitrelaxation*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitrelaxation=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitsoftness*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitsoftness=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitupper*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitupper=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
proc motorenable*(self: HingeJoint): bool {.gcsafe, locks: 0.}
proc `motorenable=`*(self: HingeJoint; val: bool) {.gcsafe, locks: 0.}
proc motormaxImpulse*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `motormaxImpulse=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
proc motortargetVelocity*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `motortargetVelocity=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
proc paramsbias*(self: HingeJoint): float64 {.gcsafe, locks: 0.}
proc `paramsbias=`*(self: HingeJoint; val: float64) {.gcsafe, locks: 0.}
var hingeJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitbias(self: HingeJoint): float64 =
  if isNil(hingeJointGetParamMethodBind):
    hingeJointGetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var hingeJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitbias=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointSetParamMethodBind):
    hingeJointSetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var hingeJointGetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitenable(self: HingeJoint): bool =
  if isNil(hingeJointGetFlagMethodBind):
    hingeJointGetFlagMethodBind = getMethod(cstring"HingeJoint", cstring"get_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var hingeJointSetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitenable=`(self: HingeJoint; val: bool) =
  if isNil(hingeJointSetFlagMethodBind):
    hingeJointSetFlagMethodBind = getMethod(cstring"HingeJoint", cstring"set_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var hingeJointUnderscoregetLowerLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitlower(self: HingeJoint): float64 =
  if isNil(hingeJointUnderscoregetLowerLimitMethodBind):
    hingeJointUnderscoregetLowerLimitMethodBind = getMethod(cstring"HingeJoint",
        cstring"_get_lower_limit")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointUnderscoregetLowerLimitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var hingeJointUnderscoresetLowerLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitlower=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointUnderscoresetLowerLimitMethodBind):
    hingeJointUnderscoresetLowerLimitMethodBind = getMethod(cstring"HingeJoint",
        cstring"_set_lower_limit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointUnderscoresetLowerLimitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitrelaxation(self: HingeJoint): float64 =
  if isNil(hingeJointGetParamMethodBind):
    hingeJointGetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc `angularLimitrelaxation=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointSetParamMethodBind):
    hingeJointSetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc angularLimitsoftness(self: HingeJoint): float64 =
  if isNil(hingeJointGetParamMethodBind):
    hingeJointGetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc `angularLimitsoftness=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointSetParamMethodBind):
    hingeJointSetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var hingeJointUnderscoregetUpperLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitupper(self: HingeJoint): float64 =
  if isNil(hingeJointUnderscoregetUpperLimitMethodBind):
    hingeJointUnderscoregetUpperLimitMethodBind = getMethod(cstring"HingeJoint",
        cstring"_get_upper_limit")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointUnderscoregetUpperLimitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var hingeJointUnderscoresetUpperLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitupper=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointUnderscoresetUpperLimitMethodBind):
    hingeJointUnderscoresetUpperLimitMethodBind = getMethod(cstring"HingeJoint",
        cstring"_set_upper_limit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointUnderscoresetUpperLimitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc motorenable(self: HingeJoint): bool =
  if isNil(hingeJointGetFlagMethodBind):
    hingeJointGetFlagMethodBind = getMethod(cstring"HingeJoint", cstring"get_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc `motorenable=`(self: HingeJoint; val: bool) =
  if isNil(hingeJointSetFlagMethodBind):
    hingeJointSetFlagMethodBind = getMethod(cstring"HingeJoint", cstring"set_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

proc motormaxImpulse(self: HingeJoint): float64 =
  if isNil(hingeJointGetParamMethodBind):
    hingeJointGetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc `motormaxImpulse=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointSetParamMethodBind):
    hingeJointSetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc motortargetVelocity(self: HingeJoint): float64 =
  if isNil(hingeJointGetParamMethodBind):
    hingeJointGetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc `motortargetVelocity=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointSetParamMethodBind):
    hingeJointSetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc paramsbias(self: HingeJoint): float64 =
  if isNil(hingeJointGetParamMethodBind):
    hingeJointGetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hingeJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

proc `paramsbias=`(self: HingeJoint; val: float64) =
  if isNil(hingeJointSetParamMethodBind):
    hingeJointSetParamMethodBind = getMethod(cstring"HingeJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  hingeJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
