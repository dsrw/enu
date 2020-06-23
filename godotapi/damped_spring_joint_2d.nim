
import
  godot, godottypes, godotinternal, joint_2d

export
  godottypes, joint_2d

proc damping*(self: DampedSpringJoint2D): float64 {.gcsafe, locks: 0.}
proc `damping=`*(self: DampedSpringJoint2D; val: float64) {.gcsafe, locks: 0.}
proc length*(self: DampedSpringJoint2D): float64 {.gcsafe, locks: 0.}
proc `length=`*(self: DampedSpringJoint2D; val: float64) {.gcsafe, locks: 0.}
proc restLength*(self: DampedSpringJoint2D): float64 {.gcsafe, locks: 0.}
proc `restLength=`*(self: DampedSpringJoint2D; val: float64) {.gcsafe, locks: 0.}
proc stiffness*(self: DampedSpringJoint2D): float64 {.gcsafe, locks: 0.}
proc `stiffness=`*(self: DampedSpringJoint2D; val: float64) {.gcsafe, locks: 0.}
var dampedSpringJoint2DGetDampingMethodBind {.threadvar.}: ptr GodotMethodBind
proc damping(self: DampedSpringJoint2D): float64 =
  if isNil(dampedSpringJoint2DGetDampingMethodBind):
    dampedSpringJoint2DGetDampingMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"get_damping")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dampedSpringJoint2DGetDampingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var dampedSpringJoint2DSetDampingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `damping=`(self: DampedSpringJoint2D; val: float64) =
  if isNil(dampedSpringJoint2DSetDampingMethodBind):
    dampedSpringJoint2DSetDampingMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"set_damping")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dampedSpringJoint2DSetDampingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var dampedSpringJoint2DGetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc length(self: DampedSpringJoint2D): float64 =
  if isNil(dampedSpringJoint2DGetLengthMethodBind):
    dampedSpringJoint2DGetLengthMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"get_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dampedSpringJoint2DGetLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dampedSpringJoint2DSetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `length=`(self: DampedSpringJoint2D; val: float64) =
  if isNil(dampedSpringJoint2DSetLengthMethodBind):
    dampedSpringJoint2DSetLengthMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"set_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dampedSpringJoint2DSetLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var dampedSpringJoint2DGetRestLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc restLength(self: DampedSpringJoint2D): float64 =
  if isNil(dampedSpringJoint2DGetRestLengthMethodBind):
    dampedSpringJoint2DGetRestLengthMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"get_rest_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dampedSpringJoint2DGetRestLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var dampedSpringJoint2DSetRestLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `restLength=`(self: DampedSpringJoint2D; val: float64) =
  if isNil(dampedSpringJoint2DSetRestLengthMethodBind):
    dampedSpringJoint2DSetRestLengthMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"set_rest_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dampedSpringJoint2DSetRestLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var dampedSpringJoint2DGetStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc stiffness(self: DampedSpringJoint2D): float64 =
  if isNil(dampedSpringJoint2DGetStiffnessMethodBind):
    dampedSpringJoint2DGetStiffnessMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"get_stiffness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dampedSpringJoint2DGetStiffnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var dampedSpringJoint2DSetStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stiffness=`(self: DampedSpringJoint2D; val: float64) =
  if isNil(dampedSpringJoint2DSetStiffnessMethodBind):
    dampedSpringJoint2DSetStiffnessMethodBind = getMethod(
        cstring"DampedSpringJoint2D", cstring"set_stiffness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dampedSpringJoint2DSetStiffnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
