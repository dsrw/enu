
import
  godot, godottypes, godotinternal, joint_2d

export
  godottypes, joint_2d

proc initialOffset*(self: GrooveJoint2D): float64 {.gcsafe, locks: 0.}
proc `initialOffset=`*(self: GrooveJoint2D; val: float64) {.gcsafe, locks: 0.}
proc length*(self: GrooveJoint2D): float64 {.gcsafe, locks: 0.}
proc `length=`*(self: GrooveJoint2D; val: float64) {.gcsafe, locks: 0.}
var grooveJoint2DGetInitialOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc initialOffset(self: GrooveJoint2D): float64 =
  if isNil(grooveJoint2DGetInitialOffsetMethodBind):
    grooveJoint2DGetInitialOffsetMethodBind = getMethod(cstring"GrooveJoint2D",
        cstring"get_initial_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  grooveJoint2DGetInitialOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var grooveJoint2DSetInitialOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `initialOffset=`(self: GrooveJoint2D; val: float64) =
  if isNil(grooveJoint2DSetInitialOffsetMethodBind):
    grooveJoint2DSetInitialOffsetMethodBind = getMethod(cstring"GrooveJoint2D",
        cstring"set_initial_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  grooveJoint2DSetInitialOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var grooveJoint2DGetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc length(self: GrooveJoint2D): float64 =
  if isNil(grooveJoint2DGetLengthMethodBind):
    grooveJoint2DGetLengthMethodBind = getMethod(cstring"GrooveJoint2D",
        cstring"get_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  grooveJoint2DGetLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var grooveJoint2DSetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `length=`(self: GrooveJoint2D; val: float64) =
  if isNil(grooveJoint2DSetLengthMethodBind):
    grooveJoint2DSetLengthMethodBind = getMethod(cstring"GrooveJoint2D",
        cstring"set_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  grooveJoint2DSetLengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
