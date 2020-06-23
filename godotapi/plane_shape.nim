
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc plane*(self: PlaneShape): Plane {.gcsafe, locks: 0.}
proc `plane=`*(self: PlaneShape; val: Plane) {.gcsafe, locks: 0.}
var planeShapeGetPlaneMethodBind {.threadvar.}: ptr GodotMethodBind
proc plane(self: PlaneShape): Plane =
  if isNil(planeShapeGetPlaneMethodBind):
    planeShapeGetPlaneMethodBind = getMethod(cstring"PlaneShape",
        cstring"get_plane")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  planeShapeGetPlaneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var planeShapeSetPlaneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `plane=`(self: PlaneShape; val: Plane) =
  if isNil(planeShapeSetPlaneMethodBind):
    planeShapeSetPlaneMethodBind = getMethod(cstring"PlaneShape",
        cstring"set_plane")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  planeShapeSetPlaneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
