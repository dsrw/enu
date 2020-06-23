
import
  godot, godottypes, godotinternal, joint_2d

export
  godottypes, joint_2d

proc softness*(self: PinJoint2D): float64 {.gcsafe, locks: 0.}
proc `softness=`*(self: PinJoint2D; val: float64) {.gcsafe, locks: 0.}
var pinJoint2DGetSoftnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc softness(self: PinJoint2D): float64 =
  if isNil(pinJoint2DGetSoftnessMethodBind):
    pinJoint2DGetSoftnessMethodBind = getMethod(cstring"PinJoint2D",
        cstring"get_softness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pinJoint2DGetSoftnessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pinJoint2DSetSoftnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `softness=`(self: PinJoint2D; val: float64) =
  if isNil(pinJoint2DSetSoftnessMethodBind):
    pinJoint2DSetSoftnessMethodBind = getMethod(cstring"PinJoint2D",
        cstring"set_softness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pinJoint2DSetSoftnessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
