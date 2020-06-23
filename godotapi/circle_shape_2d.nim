
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc radius*(self: CircleShape2D): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: CircleShape2D; val: float64) {.gcsafe, locks: 0.}
var circleShape2DGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: CircleShape2D): float64 =
  if isNil(circleShape2DGetRadiusMethodBind):
    circleShape2DGetRadiusMethodBind = getMethod(cstring"CircleShape2D",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  circleShape2DGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var circleShape2DSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: CircleShape2D; val: float64) =
  if isNil(circleShape2DSetRadiusMethodBind):
    circleShape2DSetRadiusMethodBind = getMethod(cstring"CircleShape2D",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  circleShape2DSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
