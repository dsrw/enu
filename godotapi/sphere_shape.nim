
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc radius*(self: SphereShape): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: SphereShape; val: float64) {.gcsafe, locks: 0.}
var sphereShapeGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: SphereShape): float64 =
  if isNil(sphereShapeGetRadiusMethodBind):
    sphereShapeGetRadiusMethodBind = getMethod(cstring"SphereShape",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sphereShapeGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sphereShapeSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: SphereShape; val: float64) =
  if isNil(sphereShapeSetRadiusMethodBind):
    sphereShapeSetRadiusMethodBind = getMethod(cstring"SphereShape",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sphereShapeSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
