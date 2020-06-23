
import
  godot, godottypes, godotinternal, joint

export
  godottypes, joint

const
  FLAG_ENABLE_ANGULAR_LIMIT* = 1'i64
  FLAG_ENABLE_ANGULAR_SPRING* = 2'i64
  FLAG_ENABLE_LINEAR_LIMIT* = 0'i64
  FLAG_ENABLE_LINEAR_MOTOR* = 5'i64
  FLAG_ENABLE_LINEAR_SPRING* = 3'i64
  FLAG_ENABLE_MOTOR* = 4'i64
  FLAG_MAX* = 6'i64
  PARAM_ANGULAR_DAMPING* = 13'i64
  PARAM_ANGULAR_ERP* = 16'i64
  PARAM_ANGULAR_FORCE_LIMIT* = 15'i64
  PARAM_ANGULAR_LIMIT_SOFTNESS* = 12'i64
  PARAM_ANGULAR_LOWER_LIMIT* = 10'i64
  PARAM_ANGULAR_MOTOR_FORCE_LIMIT* = 18'i64
  PARAM_ANGULAR_MOTOR_TARGET_VELOCITY* = 17'i64
  PARAM_ANGULAR_RESTITUTION* = 14'i64
  PARAM_ANGULAR_SPRING_DAMPING* = 20'i64
  PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT* = 21'i64
  PARAM_ANGULAR_SPRING_STIFFNESS* = 19'i64
  PARAM_ANGULAR_UPPER_LIMIT* = 11'i64
  PARAM_LINEAR_DAMPING* = 4'i64
  PARAM_LINEAR_LIMIT_SOFTNESS* = 2'i64
  PARAM_LINEAR_LOWER_LIMIT* = 0'i64
  PARAM_LINEAR_MOTOR_FORCE_LIMIT* = 6'i64
  PARAM_LINEAR_MOTOR_TARGET_VELOCITY* = 5'i64
  PARAM_LINEAR_RESTITUTION* = 3'i64
  PARAM_LINEAR_SPRING_DAMPING* = 8'i64
  PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT* = 9'i64
  PARAM_LINEAR_SPRING_STIFFNESS* = 7'i64
  PARAM_LINEAR_UPPER_LIMIT* = 1'i64
  PARAM_MAX* = 22'i64
proc angularLimitXdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitXdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitXenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularLimitXenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularLimitXerp*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitXerp=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitXforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitXforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitXlowerAngle*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitXlowerAngle=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitXrestitution*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitXrestitution=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitXsoftness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitXsoftness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitXupperAngle*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitXupperAngle=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitYdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitYdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitYenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularLimitYenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularLimitYerp*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitYerp=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitYforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitYforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitYlowerAngle*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitYlowerAngle=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitYrestitution*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitYrestitution=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitYsoftness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitYsoftness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitYupperAngle*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitYupperAngle=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitZdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitZdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitZenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularLimitZenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularLimitZerp*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitZerp=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc angularLimitZforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitZforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitZlowerAngle*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitZlowerAngle=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitZrestitution*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitZrestitution=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitZsoftness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitZsoftness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularLimitZupperAngle*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularLimitZupperAngle=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularMotorXenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularMotorXenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularMotorXforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotorXforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularMotorXtargetVelocity*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotorXtargetVelocity=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularMotorYenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularMotorYenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularMotorYforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotorYforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularMotorYtargetVelocity*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotorYtargetVelocity=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularMotorZenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularMotorZenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularMotorZforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotorZforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularMotorZtargetVelocity*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularMotorZtargetVelocity=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularSpringXdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularSpringXdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularSpringXenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularSpringXenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularSpringXequilibriumPoint*(self: Generic6DOFJoint): float64 {.gcsafe,
    locks: 0.}
proc `angularSpringXequilibriumPoint=`*(self: Generic6DOFJoint; val: float64) {.
    gcsafe, locks: 0.}
proc angularSpringXstiffness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularSpringXstiffness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularSpringYdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularSpringYdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularSpringYenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularSpringYenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularSpringYequilibriumPoint*(self: Generic6DOFJoint): float64 {.gcsafe,
    locks: 0.}
proc `angularSpringYequilibriumPoint=`*(self: Generic6DOFJoint; val: float64) {.
    gcsafe, locks: 0.}
proc angularSpringYstiffness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularSpringYstiffness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularSpringZdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularSpringZdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc angularSpringZenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `angularSpringZenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc angularSpringZequilibriumPoint*(self: Generic6DOFJoint): float64 {.gcsafe,
    locks: 0.}
proc `angularSpringZequilibriumPoint=`*(self: Generic6DOFJoint; val: float64) {.
    gcsafe, locks: 0.}
proc angularSpringZstiffness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `angularSpringZstiffness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitXdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitXdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitXenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearLimitXenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearLimitXlowerDistance*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitXlowerDistance=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitXrestitution*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitXrestitution=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitXsoftness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitXsoftness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitXupperDistance*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitXupperDistance=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitYdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitYdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitYenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearLimitYenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearLimitYlowerDistance*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitYlowerDistance=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitYrestitution*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitYrestitution=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitYsoftness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitYsoftness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitYupperDistance*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitYupperDistance=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitZdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitZdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitZenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearLimitZenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearLimitZlowerDistance*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitZlowerDistance=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitZrestitution*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitZrestitution=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearLimitZsoftness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitZsoftness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearLimitZupperDistance*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearLimitZupperDistance=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearMotorXenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearMotorXenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearMotorXforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotorXforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearMotorXtargetVelocity*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotorXtargetVelocity=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearMotorYenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearMotorYenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearMotorYforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotorYforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearMotorYtargetVelocity*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotorYtargetVelocity=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearMotorZenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearMotorZenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearMotorZforceLimit*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotorZforceLimit=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearMotorZtargetVelocity*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearMotorZtargetVelocity=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearSpringXdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearSpringXdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearSpringXenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearSpringXenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearSpringXequilibriumPoint*(self: Generic6DOFJoint): float64 {.gcsafe,
    locks: 0.}
proc `linearSpringXequilibriumPoint=`*(self: Generic6DOFJoint; val: float64) {.
    gcsafe, locks: 0.}
proc linearSpringXstiffness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearSpringXstiffness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearSpringYdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearSpringYdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearSpringYenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearSpringYenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearSpringYequilibriumPoint*(self: Generic6DOFJoint): float64 {.gcsafe,
    locks: 0.}
proc `linearSpringYequilibriumPoint=`*(self: Generic6DOFJoint; val: float64) {.
    gcsafe, locks: 0.}
proc linearSpringYstiffness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearSpringYstiffness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc linearSpringZdamping*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearSpringZdamping=`*(self: Generic6DOFJoint; val: float64) {.gcsafe, locks: 0.}
proc linearSpringZenabled*(self: Generic6DOFJoint): bool {.gcsafe, locks: 0.}
proc `linearSpringZenabled=`*(self: Generic6DOFJoint; val: bool) {.gcsafe, locks: 0.}
proc linearSpringZequilibriumPoint*(self: Generic6DOFJoint): float64 {.gcsafe,
    locks: 0.}
proc `linearSpringZequilibriumPoint=`*(self: Generic6DOFJoint; val: float64) {.
    gcsafe, locks: 0.}
proc linearSpringZstiffness*(self: Generic6DOFJoint): float64 {.gcsafe, locks: 0.}
proc `linearSpringZstiffness=`*(self: Generic6DOFJoint; val: float64) {.gcsafe,
    locks: 0.}
proc precision*(self: Generic6DOFJoint): int64 {.gcsafe, locks: 0.}
proc `precision=`*(self: Generic6DOFJoint; val: int64) {.gcsafe, locks: 0.}
var generic6DOFJointGetParamXMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitXdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointSetParamXMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitXdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointGetFlagXMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitXenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagXMethodBind):
    generic6DOFJointGetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_x")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var generic6DOFJointSetFlagXMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitXenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagXMethodBind):
    generic6DOFJointSetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_x")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularLimitXerp(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitXerp=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitXforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitXforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointUnderscoregetAngularLoLimitXMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitXlowerAngle(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointUnderscoregetAngularLoLimitXMethodBind):
    generic6DOFJointUnderscoregetAngularLoLimitXMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_get_angular_lo_limit_x")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointUnderscoregetAngularLoLimitXMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var generic6DOFJointUnderscoresetAngularLoLimitXMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitXlowerAngle=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointUnderscoresetAngularLoLimitXMethodBind):
    generic6DOFJointUnderscoresetAngularLoLimitXMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_set_angular_lo_limit_x")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointUnderscoresetAngularLoLimitXMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc angularLimitXrestitution(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitXrestitution=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitXsoftness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitXsoftness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointUnderscoregetAngularHiLimitXMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitXupperAngle(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointUnderscoregetAngularHiLimitXMethodBind):
    generic6DOFJointUnderscoregetAngularHiLimitXMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_get_angular_hi_limit_x")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointUnderscoregetAngularHiLimitXMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var generic6DOFJointUnderscoresetAngularHiLimitXMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitXupperAngle=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointUnderscoresetAngularHiLimitXMethodBind):
    generic6DOFJointUnderscoresetAngularHiLimitXMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_set_angular_hi_limit_x")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointUnderscoresetAngularHiLimitXMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var generic6DOFJointGetParamYMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitYdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointSetParamYMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitYdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointGetFlagYMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitYenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagYMethodBind):
    generic6DOFJointGetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_y")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var generic6DOFJointSetFlagYMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitYenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagYMethodBind):
    generic6DOFJointSetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_y")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularLimitYerp(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitYerp=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitYforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitYforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointUnderscoregetAngularLoLimitYMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitYlowerAngle(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointUnderscoregetAngularLoLimitYMethodBind):
    generic6DOFJointUnderscoregetAngularLoLimitYMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_get_angular_lo_limit_y")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointUnderscoregetAngularLoLimitYMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var generic6DOFJointUnderscoresetAngularLoLimitYMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitYlowerAngle=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointUnderscoresetAngularLoLimitYMethodBind):
    generic6DOFJointUnderscoresetAngularLoLimitYMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_set_angular_lo_limit_y")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointUnderscoresetAngularLoLimitYMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc angularLimitYrestitution(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitYrestitution=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitYsoftness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitYsoftness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointUnderscoregetAngularHiLimitYMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitYupperAngle(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointUnderscoregetAngularHiLimitYMethodBind):
    generic6DOFJointUnderscoregetAngularHiLimitYMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_get_angular_hi_limit_y")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointUnderscoregetAngularHiLimitYMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var generic6DOFJointUnderscoresetAngularHiLimitYMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitYupperAngle=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointUnderscoresetAngularHiLimitYMethodBind):
    generic6DOFJointUnderscoresetAngularHiLimitYMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_set_angular_hi_limit_y")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointUnderscoresetAngularHiLimitYMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var generic6DOFJointGetParamZMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitZdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointSetParamZMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitZdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointGetFlagZMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitZenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagZMethodBind):
    generic6DOFJointGetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_z")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var generic6DOFJointSetFlagZMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitZenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagZMethodBind):
    generic6DOFJointSetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_z")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularLimitZerp(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitZerp=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitZforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitZforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointUnderscoregetAngularLoLimitZMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitZlowerAngle(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointUnderscoregetAngularLoLimitZMethodBind):
    generic6DOFJointUnderscoregetAngularLoLimitZMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_get_angular_lo_limit_z")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointUnderscoregetAngularLoLimitZMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var generic6DOFJointUnderscoresetAngularLoLimitZMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitZlowerAngle=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointUnderscoresetAngularLoLimitZMethodBind):
    generic6DOFJointUnderscoresetAngularLoLimitZMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_set_angular_lo_limit_z")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointUnderscoresetAngularLoLimitZMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc angularLimitZrestitution(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitZrestitution=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularLimitZsoftness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularLimitZsoftness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointUnderscoregetAngularHiLimitZMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularLimitZupperAngle(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointUnderscoregetAngularHiLimitZMethodBind):
    generic6DOFJointUnderscoregetAngularHiLimitZMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_get_angular_hi_limit_z")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointUnderscoregetAngularHiLimitZMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var generic6DOFJointUnderscoresetAngularHiLimitZMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularLimitZupperAngle=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointUnderscoresetAngularHiLimitZMethodBind):
    generic6DOFJointUnderscoresetAngularHiLimitZMethodBind = getMethod(
        cstring"Generic6DOFJoint", cstring"_set_angular_hi_limit_z")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointUnderscoresetAngularHiLimitZMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc angularMotorXenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagXMethodBind):
    generic6DOFJointGetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_x")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularMotorXenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagXMethodBind):
    generic6DOFJointSetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_x")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularMotorXforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularMotorXforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularMotorXtargetVelocity(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularMotorXtargetVelocity=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularMotorYenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagYMethodBind):
    generic6DOFJointGetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_y")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularMotorYenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagYMethodBind):
    generic6DOFJointSetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_y")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularMotorYforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularMotorYforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularMotorYtargetVelocity(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularMotorYtargetVelocity=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularMotorZenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagZMethodBind):
    generic6DOFJointGetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_z")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularMotorZenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagZMethodBind):
    generic6DOFJointSetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_z")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularMotorZforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularMotorZforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularMotorZtargetVelocity(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularMotorZtargetVelocity=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringXdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringXdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringXenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagXMethodBind):
    generic6DOFJointGetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_x")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularSpringXenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagXMethodBind):
    generic6DOFJointSetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_x")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularSpringXequilibriumPoint(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringXequilibriumPoint=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringXstiffness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringXstiffness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringYdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringYdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringYenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagYMethodBind):
    generic6DOFJointGetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_y")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularSpringYenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagYMethodBind):
    generic6DOFJointSetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_y")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularSpringYequilibriumPoint(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringYequilibriumPoint=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringYstiffness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringYstiffness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringZdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringZdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 20'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringZenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagZMethodBind):
    generic6DOFJointGetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_z")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `angularSpringZenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagZMethodBind):
    generic6DOFJointSetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_z")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc angularSpringZequilibriumPoint(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringZequilibriumPoint=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 21'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc angularSpringZstiffness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `angularSpringZstiffness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 19'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitXdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitXdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitXenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagXMethodBind):
    generic6DOFJointGetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_x")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearLimitXenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagXMethodBind):
    generic6DOFJointSetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_x")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearLimitXlowerDistance(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitXlowerDistance=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitXrestitution(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitXrestitution=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitXsoftness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitXsoftness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitXupperDistance(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitXupperDistance=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitYdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitYdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitYenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagYMethodBind):
    generic6DOFJointGetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_y")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearLimitYenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagYMethodBind):
    generic6DOFJointSetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_y")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearLimitYlowerDistance(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitYlowerDistance=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitYrestitution(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitYrestitution=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitYsoftness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitYsoftness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitYupperDistance(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitYupperDistance=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitZdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitZdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitZenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagZMethodBind):
    generic6DOFJointGetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_z")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearLimitZenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagZMethodBind):
    generic6DOFJointSetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_z")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearLimitZlowerDistance(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitZlowerDistance=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitZrestitution(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitZrestitution=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitZsoftness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitZsoftness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearLimitZupperDistance(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearLimitZupperDistance=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearMotorXenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagXMethodBind):
    generic6DOFJointGetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_x")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearMotorXenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagXMethodBind):
    generic6DOFJointSetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_x")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearMotorXforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearMotorXforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearMotorXtargetVelocity(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearMotorXtargetVelocity=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearMotorYenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagYMethodBind):
    generic6DOFJointGetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_y")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearMotorYenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagYMethodBind):
    generic6DOFJointSetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_y")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearMotorYforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearMotorYforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearMotorYtargetVelocity(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearMotorYtargetVelocity=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearMotorZenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagZMethodBind):
    generic6DOFJointGetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_z")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearMotorZenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagZMethodBind):
    generic6DOFJointSetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_z")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearMotorZforceLimit(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearMotorZforceLimit=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearMotorZtargetVelocity(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearMotorZtargetVelocity=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringXdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringXdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringXenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagXMethodBind):
    generic6DOFJointGetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_x")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearSpringXenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagXMethodBind):
    generic6DOFJointSetFlagXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_x")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearSpringXequilibriumPoint(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringXequilibriumPoint=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringXstiffness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamXMethodBind):
    generic6DOFJointGetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_x")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringXstiffness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamXMethodBind):
    generic6DOFJointSetParamXMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_x")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamXMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringYdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringYdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringYenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagYMethodBind):
    generic6DOFJointGetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_y")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearSpringYenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagYMethodBind):
    generic6DOFJointSetFlagYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_y")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearSpringYequilibriumPoint(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringYequilibriumPoint=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringYstiffness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamYMethodBind):
    generic6DOFJointGetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_y")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringYstiffness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamYMethodBind):
    generic6DOFJointSetParamYMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_y")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringZdamping(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringZdamping=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringZenabled(self: Generic6DOFJoint): bool =
  if isNil(generic6DOFJointGetFlagZMethodBind):
    generic6DOFJointGetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_flag_z")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `linearSpringZenabled=`(self: Generic6DOFJoint; val: bool) =
  if isNil(generic6DOFJointSetFlagZMethodBind):
    generic6DOFJointSetFlagZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_flag_z")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetFlagZMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc linearSpringZequilibriumPoint(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringZequilibriumPoint=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc linearSpringZstiffness(self: Generic6DOFJoint): float64 =
  if isNil(generic6DOFJointGetParamZMethodBind):
    generic6DOFJointGetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_param_z")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `linearSpringZstiffness=`(self: Generic6DOFJoint; val: float64) =
  if isNil(generic6DOFJointSetParamZMethodBind):
    generic6DOFJointSetParamZMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_param_z")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetParamZMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var generic6DOFJointGetPrecisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc precision(self: Generic6DOFJoint): int64 =
  if isNil(generic6DOFJointGetPrecisionMethodBind):
    generic6DOFJointGetPrecisionMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"get_precision")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  generic6DOFJointGetPrecisionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var generic6DOFJointSetPrecisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `precision=`(self: Generic6DOFJoint; val: int64) =
  if isNil(generic6DOFJointSetPrecisionMethodBind):
    generic6DOFJointSetPrecisionMethodBind = getMethod(cstring"Generic6DOFJoint",
        cstring"set_precision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  generic6DOFJointSetPrecisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
