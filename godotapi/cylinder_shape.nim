
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc height*(self: CylinderShape): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: CylinderShape; val: float64) {.gcsafe, locks: 0.}
proc radius*(self: CylinderShape): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: CylinderShape; val: float64) {.gcsafe, locks: 0.}
var cylinderShapeGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: CylinderShape): float64 =
  if isNil(cylinderShapeGetHeightMethodBind):
    cylinderShapeGetHeightMethodBind = getMethod(cstring"CylinderShape",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cylinderShapeGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cylinderShapeSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: CylinderShape; val: float64) =
  if isNil(cylinderShapeSetHeightMethodBind):
    cylinderShapeSetHeightMethodBind = getMethod(cstring"CylinderShape",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cylinderShapeSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cylinderShapeGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: CylinderShape): float64 =
  if isNil(cylinderShapeGetRadiusMethodBind):
    cylinderShapeGetRadiusMethodBind = getMethod(cstring"CylinderShape",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cylinderShapeGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cylinderShapeSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: CylinderShape; val: float64) =
  if isNil(cylinderShapeSetRadiusMethodBind):
    cylinderShapeSetRadiusMethodBind = getMethod(cstring"CylinderShape",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cylinderShapeSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
