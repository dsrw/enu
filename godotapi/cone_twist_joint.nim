
import
  godot, godottypes, godotinternal, joint

export
  godottypes, joint

const
  PARAM_BIAS* = 2'i64
  PARAM_MAX* = 5'i64
  PARAM_RELAXATION* = 4'i64
  PARAM_SOFTNESS* = 3'i64
  PARAM_SWING_SPAN* = 0'i64
  PARAM_TWIST_SPAN* = 1'i64
proc bias*(self: ConeTwistJoint): float64 {.gcsafe, locks: 0.}
proc `bias=`*(self: ConeTwistJoint; val: float64) {.gcsafe, locks: 0.}
proc relaxation*(self: ConeTwistJoint): float64 {.gcsafe, locks: 0.}
proc `relaxation=`*(self: ConeTwistJoint; val: float64) {.gcsafe, locks: 0.}
proc softness*(self: ConeTwistJoint): float64 {.gcsafe, locks: 0.}
proc `softness=`*(self: ConeTwistJoint; val: float64) {.gcsafe, locks: 0.}
proc swingSpan*(self: ConeTwistJoint): float64 {.gcsafe, locks: 0.}
proc `swingSpan=`*(self: ConeTwistJoint; val: float64) {.gcsafe, locks: 0.}
proc twistSpan*(self: ConeTwistJoint): float64 {.gcsafe, locks: 0.}
proc `twistSpan=`*(self: ConeTwistJoint; val: float64) {.gcsafe, locks: 0.}
var coneTwistJointGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc bias(self: ConeTwistJoint): float64 =
  if isNil(coneTwistJointGetParamMethodBind):
    coneTwistJointGetParamMethodBind = getMethod(cstring"ConeTwistJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  coneTwistJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var coneTwistJointSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bias=`(self: ConeTwistJoint; val: float64) =
  if isNil(coneTwistJointSetParamMethodBind):
    coneTwistJointSetParamMethodBind = getMethod(cstring"ConeTwistJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  coneTwistJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc relaxation(self: ConeTwistJoint): float64 =
  if isNil(coneTwistJointGetParamMethodBind):
    coneTwistJointGetParamMethodBind = getMethod(cstring"ConeTwistJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  coneTwistJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `relaxation=`(self: ConeTwistJoint; val: float64) =
  if isNil(coneTwistJointSetParamMethodBind):
    coneTwistJointSetParamMethodBind = getMethod(cstring"ConeTwistJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  coneTwistJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc softness(self: ConeTwistJoint): float64 =
  if isNil(coneTwistJointGetParamMethodBind):
    coneTwistJointGetParamMethodBind = getMethod(cstring"ConeTwistJoint",
        cstring"get_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  coneTwistJointGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `softness=`(self: ConeTwistJoint; val: float64) =
  if isNil(coneTwistJointSetParamMethodBind):
    coneTwistJointSetParamMethodBind = getMethod(cstring"ConeTwistJoint",
        cstring"set_param")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  coneTwistJointSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var coneTwistJointUnderscoregetSwingSpanMethodBind {.threadvar.}: ptr GodotMethodBind
proc swingSpan(self: ConeTwistJoint): float64 =
  if isNil(coneTwistJointUnderscoregetSwingSpanMethodBind):
    coneTwistJointUnderscoregetSwingSpanMethodBind = getMethod(
        cstring"ConeTwistJoint", cstring"_get_swing_span")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  coneTwistJointUnderscoregetSwingSpanMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var coneTwistJointUnderscoresetSwingSpanMethodBind {.threadvar.}: ptr GodotMethodBind
proc `swingSpan=`(self: ConeTwistJoint; val: float64) =
  if isNil(coneTwistJointUnderscoresetSwingSpanMethodBind):
    coneTwistJointUnderscoresetSwingSpanMethodBind = getMethod(
        cstring"ConeTwistJoint", cstring"_set_swing_span")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  coneTwistJointUnderscoresetSwingSpanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var coneTwistJointUnderscoregetTwistSpanMethodBind {.threadvar.}: ptr GodotMethodBind
proc twistSpan(self: ConeTwistJoint): float64 =
  if isNil(coneTwistJointUnderscoregetTwistSpanMethodBind):
    coneTwistJointUnderscoregetTwistSpanMethodBind = getMethod(
        cstring"ConeTwistJoint", cstring"_get_twist_span")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  coneTwistJointUnderscoregetTwistSpanMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var coneTwistJointUnderscoresetTwistSpanMethodBind {.threadvar.}: ptr GodotMethodBind
proc `twistSpan=`(self: ConeTwistJoint; val: float64) =
  if isNil(coneTwistJointUnderscoresetTwistSpanMethodBind):
    coneTwistJointUnderscoresetTwistSpanMethodBind = getMethod(
        cstring"ConeTwistJoint", cstring"_set_twist_span")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  coneTwistJointUnderscoresetTwistSpanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
