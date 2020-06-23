
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc extents*(self: BoxShape): Vector3 {.gcsafe, locks: 0.}
proc `extents=`*(self: BoxShape; val: Vector3) {.gcsafe, locks: 0.}
var boxShapeGetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc extents(self: BoxShape): Vector3 =
  if isNil(boxShapeGetExtentsMethodBind):
    boxShapeGetExtentsMethodBind = getMethod(cstring"BoxShape",
        cstring"get_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  boxShapeGetExtentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var boxShapeSetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `extents=`(self: BoxShape; val: Vector3) =
  if isNil(boxShapeSetExtentsMethodBind):
    boxShapeSetExtentsMethodBind = getMethod(cstring"BoxShape",
        cstring"set_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  boxShapeSetExtentsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
