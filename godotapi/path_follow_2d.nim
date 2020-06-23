
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc cubicInterp*(self: PathFollow2D): bool {.gcsafe, locks: 0.}
proc `cubicInterp=`*(self: PathFollow2D; val: bool) {.gcsafe, locks: 0.}
proc hOffset*(self: PathFollow2D): float64 {.gcsafe, locks: 0.}
proc `hOffset=`*(self: PathFollow2D; val: float64) {.gcsafe, locks: 0.}
proc lookahead*(self: PathFollow2D): float64 {.gcsafe, locks: 0.}
proc `lookahead=`*(self: PathFollow2D; val: float64) {.gcsafe, locks: 0.}
proc loop*(self: PathFollow2D): bool {.gcsafe, locks: 0.}
proc `loop=`*(self: PathFollow2D; val: bool) {.gcsafe, locks: 0.}
proc offset*(self: PathFollow2D): float64 {.gcsafe, locks: 0.}
proc `offset=`*(self: PathFollow2D; val: float64) {.gcsafe, locks: 0.}
proc rotate*(self: PathFollow2D): bool {.gcsafe, locks: 0.}
proc `rotate=`*(self: PathFollow2D; val: bool) {.gcsafe, locks: 0.}
proc unitOffset*(self: PathFollow2D): float64 {.gcsafe, locks: 0.}
proc `unitOffset=`*(self: PathFollow2D; val: float64) {.gcsafe, locks: 0.}
proc vOffset*(self: PathFollow2D): float64 {.gcsafe, locks: 0.}
proc `vOffset=`*(self: PathFollow2D; val: float64) {.gcsafe, locks: 0.}
var pathFollow2DGetCubicInterpolationMethodBind {.threadvar.}: ptr GodotMethodBind
proc cubicInterp(self: PathFollow2D): bool =
  if isNil(pathFollow2DGetCubicInterpolationMethodBind):
    pathFollow2DGetCubicInterpolationMethodBind = getMethod(
        cstring"PathFollow2D", cstring"get_cubic_interpolation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DGetCubicInterpolationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var pathFollow2DSetCubicInterpolationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cubicInterp=`(self: PathFollow2D; val: bool) =
  if isNil(pathFollow2DSetCubicInterpolationMethodBind):
    pathFollow2DSetCubicInterpolationMethodBind = getMethod(
        cstring"PathFollow2D", cstring"set_cubic_interpolation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetCubicInterpolationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var pathFollow2DGetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc hOffset(self: PathFollow2D): float64 =
  if isNil(pathFollow2DGetHOffsetMethodBind):
    pathFollow2DGetHOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"get_h_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DGetHOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollow2DSetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hOffset=`(self: PathFollow2D; val: float64) =
  if isNil(pathFollow2DSetHOffsetMethodBind):
    pathFollow2DSetHOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"set_h_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetHOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var pathFollow2DGetLookaheadMethodBind {.threadvar.}: ptr GodotMethodBind
proc lookahead(self: PathFollow2D): float64 =
  if isNil(pathFollow2DGetLookaheadMethodBind):
    pathFollow2DGetLookaheadMethodBind = getMethod(cstring"PathFollow2D",
        cstring"get_lookahead")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DGetLookaheadMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollow2DSetLookaheadMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lookahead=`(self: PathFollow2D; val: float64) =
  if isNil(pathFollow2DSetLookaheadMethodBind):
    pathFollow2DSetLookaheadMethodBind = getMethod(cstring"PathFollow2D",
        cstring"set_lookahead")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetLookaheadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var pathFollow2DHasLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc loop(self: PathFollow2D): bool =
  if isNil(pathFollow2DHasLoopMethodBind):
    pathFollow2DHasLoopMethodBind = getMethod(cstring"PathFollow2D",
        cstring"has_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DHasLoopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollow2DSetLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loop=`(self: PathFollow2D; val: bool) =
  if isNil(pathFollow2DSetLoopMethodBind):
    pathFollow2DSetLoopMethodBind = getMethod(cstring"PathFollow2D",
        cstring"set_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetLoopMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var pathFollow2DGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: PathFollow2D): float64 =
  if isNil(pathFollow2DGetOffsetMethodBind):
    pathFollow2DGetOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollow2DSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: PathFollow2D; val: float64) =
  if isNil(pathFollow2DSetOffsetMethodBind):
    pathFollow2DSetOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var pathFollow2DIsRotatingMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotate(self: PathFollow2D): bool =
  if isNil(pathFollow2DIsRotatingMethodBind):
    pathFollow2DIsRotatingMethodBind = getMethod(cstring"PathFollow2D",
        cstring"is_rotating")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DIsRotatingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollow2DSetRotateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotate=`(self: PathFollow2D; val: bool) =
  if isNil(pathFollow2DSetRotateMethodBind):
    pathFollow2DSetRotateMethodBind = getMethod(cstring"PathFollow2D",
        cstring"set_rotate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetRotateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var pathFollow2DGetUnitOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc unitOffset(self: PathFollow2D): float64 =
  if isNil(pathFollow2DGetUnitOffsetMethodBind):
    pathFollow2DGetUnitOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"get_unit_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DGetUnitOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollow2DSetUnitOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `unitOffset=`(self: PathFollow2D; val: float64) =
  if isNil(pathFollow2DSetUnitOffsetMethodBind):
    pathFollow2DSetUnitOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"set_unit_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetUnitOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var pathFollow2DGetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc vOffset(self: PathFollow2D): float64 =
  if isNil(pathFollow2DGetVOffsetMethodBind):
    pathFollow2DGetVOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"get_v_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollow2DGetVOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollow2DSetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vOffset=`(self: PathFollow2D; val: float64) =
  if isNil(pathFollow2DSetVOffsetMethodBind):
    pathFollow2DSetVOffsetMethodBind = getMethod(cstring"PathFollow2D",
        cstring"set_v_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollow2DSetVOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
