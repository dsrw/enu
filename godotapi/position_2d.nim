
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc gizmoExtents*(self: Position2D): float64 {.gcsafe, locks: 0.}
proc `gizmoExtents=`*(self: Position2D; val: float64) {.gcsafe, locks: 0.}
var position2DUnderscoregetGizmoExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc gizmoExtents(self: Position2D): float64 =
  if isNil(position2DUnderscoregetGizmoExtentsMethodBind):
    position2DUnderscoregetGizmoExtentsMethodBind = getMethod(
        cstring"Position2D", cstring"_get_gizmo_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  position2DUnderscoregetGizmoExtentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var position2DUnderscoresetGizmoExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gizmoExtents=`(self: Position2D; val: float64) =
  if isNil(position2DUnderscoresetGizmoExtentsMethodBind):
    position2DUnderscoresetGizmoExtentsMethodBind = getMethod(
        cstring"Position2D", cstring"_set_gizmo_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  position2DUnderscoresetGizmoExtentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
