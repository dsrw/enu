
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc length*(self: RayShape2D): float64 {.gcsafe, locks: 0.}
proc `length=`*(self: RayShape2D; val: float64) {.gcsafe, locks: 0.}
proc slipsOnSlope*(self: RayShape2D): bool {.gcsafe, locks: 0.}
proc `slipsOnSlope=`*(self: RayShape2D; val: bool) {.gcsafe, locks: 0.}
var rayShape2DGetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc length(self: RayShape2D): float64 =
  if isNil(rayShape2DGetLengthMethodBind):
    rayShape2DGetLengthMethodBind = getMethod(cstring"RayShape2D",
        cstring"get_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayShape2DGetLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayShape2DSetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `length=`(self: RayShape2D; val: float64) =
  if isNil(rayShape2DSetLengthMethodBind):
    rayShape2DSetLengthMethodBind = getMethod(cstring"RayShape2D",
        cstring"set_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayShape2DSetLengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var rayShape2DGetSlipsOnSlopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc slipsOnSlope(self: RayShape2D): bool =
  if isNil(rayShape2DGetSlipsOnSlopeMethodBind):
    rayShape2DGetSlipsOnSlopeMethodBind = getMethod(cstring"RayShape2D",
        cstring"get_slips_on_slope")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayShape2DGetSlipsOnSlopeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayShape2DSetSlipsOnSlopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `slipsOnSlope=`(self: RayShape2D; val: bool) =
  if isNil(rayShape2DSetSlipsOnSlopeMethodBind):
    rayShape2DSetSlipsOnSlopeMethodBind = getMethod(cstring"RayShape2D",
        cstring"set_slips_on_slope")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayShape2DSetSlipsOnSlopeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
