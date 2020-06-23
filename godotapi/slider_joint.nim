
import
  godot, godottypes, godotinternal, joint

export
  godottypes, joint

const
  PARAM_ANGULAR_LIMIT_DAMPING* = 15'i64
  PARAM_ANGULAR_LIMIT_LOWER* = 12'i64
  PARAM_ANGULAR_LIMIT_RESTITUTION* = 14'i64
  PARAM_ANGULAR_LIMIT_SOFTNESS* = 13'i64
  PARAM_ANGULAR_LIMIT_UPPER* = 11'i64
  PARAM_ANGULAR_MOTION_DAMPING* = 18'i64
  PARAM_ANGULAR_MOTION_RESTITUTION* = 17'i64
  PARAM_ANGULAR_MOTION_SOFTNESS* = 16'i64
  PARAM_ANGULAR_ORTHOGONAL_DAMPING* = 21'i64
  PARAM_ANGULAR_ORTHOGONAL_RESTITUTION* = 20'i64
  PARAM_ANGULAR_ORTHOGONAL_SOFTNESS* = 19'i64
  PARAM_LINEAR_LIMIT_DAMPING* = 4'i64
  PARAM_LINEAR_LIMIT_LOWER* = 1'i64
  PARAM_LINEAR_LIMIT_RESTITUTION* = 3'i64
  PARAM_LINEAR_LIMIT_SOFTNESS* = 2'i64
  PARAM_LINEAR_LIMIT_UPPER* = 0'i64
  PARAM_LINEAR_MOTION_DAMPING* = 7'i64
  PARAM_LINEAR_MOTION_RESTITUTION* = 6'i64
  PARAM_LINEAR_MOTION_SOFTNESS* = 5'i64
  PARAM_LINEAR_ORTHOGONAL_DAMPING* = 10'i64
  PARAM_LINEAR_ORTHOGONAL_RESTITUTION* = 9'i64
  PARAM_LINEAR_ORTHOGONAL_SOFTNESS* = 8'i64
  PARAM_MAX* = 22'i64
proc angularLimitdamping*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitdamping=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitlowerAngle*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitlowerAngle=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitrestitution*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitrestitution=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitsoftness*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitsoftness=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitupperAngle*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitupperAngle=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularMotiondamping*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotiondamping=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularMotionrestitution*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotionrestitution=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularMotionsoftness*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotionsoftness=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularOrthodamping*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularOrthodamping=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularOrthorestitution*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularOrthorestitution=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc angularOrthosoftness*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `angularOrthosoftness=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitdamping*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitdamping=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitlowerDistance*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitlowerDistance=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitrestitution*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitrestitution=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitsoftness*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitsoftness=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitupperDistance*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitupperDistance=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearMotiondamping*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotiondamping=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearMotionrestitution*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotionrestitution=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearMotionsoftness*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotionsoftness=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearOrthodamping*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearOrthodamping=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearOrthorestitution*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearOrthorestitution=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
proc linearOrthosoftness*(self: SliderJoint): float64 {.gcsafe, locks: 0.}
proc `linearOrthosoftness=`*(self: SliderJoint; val: float64) {.gcsafe, locks: 0.}
var sliderJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitdamping(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var sliderJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitdamping=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var sliderJointUnderscoregetLowerLimitAngularMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitlowerAngle(self: SliderJoint): float64 =
  if isNil(sliderJointUnderscoregetLowerLimitAngularMethodBind):
    sliderJointUnderscoregetLowerLimitAngularMethodBind = getMethod(
        cstring"SliderJoint", cstring"_get_lower_limit_angular")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointUnderscoregetLowerLimitAngularMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var sliderJointUnderscoresetLowerLimitAngularMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitlowerAngle=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointUnderscoresetLowerLimitAngularMethodBind):
    sliderJointUnderscoresetLowerLimitAngularMethodBind = getMethod(
        cstring"SliderJoint", cstring"_set_lower_limit_angular")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointUnderscoresetLowerLimitAngularMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitrestitution(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularLimitrestitution=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc angularLimitsoftness(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularLimitsoftness=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var sliderJointUnderscoregetUpperLimitAngularMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitupperAngle(self: SliderJoint): float64 =
  if isNil(sliderJointUnderscoregetUpperLimitAngularMethodBind):
    sliderJointUnderscoregetUpperLimitAngularMethodBind = getMethod(
        cstring"SliderJoint", cstring"_get_upper_limit_angular")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointUnderscoregetUpperLimitAngularMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var sliderJointUnderscoresetUpperLimitAngularMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitupperAngle=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointUnderscoresetUpperLimitAngularMethodBind):
    sliderJointUnderscoresetUpperLimitAngularMethodBind = getMethod(
        cstring"SliderJoint", cstring"_set_upper_limit_angular")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointUnderscoresetUpperLimitAngularMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularMotiondamping(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularMotiondamping=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc angularMotionrestitution(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularMotionrestitution=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc angularMotionsoftness(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularMotionsoftness=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc angularOrthodamping(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularOrthodamping=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc angularOrthorestitution(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularOrthorestitution=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc angularOrthosoftness(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `angularOrthosoftness=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearLimitdamping(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearLimitdamping=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearLimitlowerDistance(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearLimitlowerDistance=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearLimitrestitution(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearLimitrestitution=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearLimitsoftness(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearLimitsoftness=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearLimitupperDistance(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearLimitupperDistance=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearMotiondamping(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearMotiondamping=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearMotionrestitution(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearMotionrestitution=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearMotionsoftness(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearMotionsoftness=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearOrthodamping(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearOrthodamping=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearOrthorestitution(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearOrthorestitution=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc linearOrthosoftness(self: SliderJoint): float64 =
  if isNil(sliderJointGetParamMethodBind):
    sliderJointGetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc `linearOrthosoftness=`(self: SliderJoint; val: float64) =
  if isNil(sliderJointSetParamMethodBind):
    sliderJointSetParamMethodBind = getMethod(cstring"SliderJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
