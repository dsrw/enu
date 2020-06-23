
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc margin*(self: Shape): float64 {.gcsafe, locks: 0.}
proc `margin=`*(self: Shape; val: float64) {.gcsafe, locks: 0.}
var shapeGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc margin(self: Shape): float64 =
  if isNil(shapeGetMarginMethodBind):
    shapeGetMarginMethodBind = getMethod(cstring"Shape", cstring"get_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shapeGetMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var shapeSetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `margin=`(self: Shape; val: float64) =
  if isNil(shapeSetMarginMethodBind):
    shapeSetMarginMethodBind = getMethod(cstring"Shape", cstring"set_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  shapeSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
