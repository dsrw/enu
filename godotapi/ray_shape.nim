
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc length*(self: RayShape): float64 {.gcsafe, locks: 0.}
proc `length=`*(self: RayShape; val: float64) {.gcsafe, locks: 0.}
proc slipsOnSlope*(self: RayShape): bool {.gcsafe, locks: 0.}
proc `slipsOnSlope=`*(self: RayShape; val: bool) {.gcsafe, locks: 0.}
var rayShapeGetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc length(self: RayShape): float64 =
  if isNil(rayShapeGetLengthMethodBind):
    rayShapeGetLengthMethodBind = getMethod(cstring"RayShape", cstring"get_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayShapeGetLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayShapeSetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `length=`(self: RayShape; val: float64) =
  if isNil(rayShapeSetLengthMethodBind):
    rayShapeSetLengthMethodBind = getMethod(cstring"RayShape", cstring"set_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayShapeSetLengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var rayShapeGetSlipsOnSlopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc slipsOnSlope(self: RayShape): bool =
  if isNil(rayShapeGetSlipsOnSlopeMethodBind):
    rayShapeGetSlipsOnSlopeMethodBind = getMethod(cstring"RayShape",
        cstring"get_slips_on_slope")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayShapeGetSlipsOnSlopeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayShapeSetSlipsOnSlopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `slipsOnSlope=`(self: RayShape; val: bool) =
  if isNil(rayShapeSetSlipsOnSlopeMethodBind):
    rayShapeSetSlipsOnSlopeMethodBind = getMethod(cstring"RayShape",
        cstring"set_slips_on_slope")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayShapeSetSlipsOnSlopeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
