
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  ROTATION_NONE* = 0'i64
  ROTATION_ORIENTED* = 4'i64
  ROTATION_XY* = 2'i64
  ROTATION_XYZ* = 3'i64
  ROTATION_Y* = 1'i64
proc cubicInterp*(self: PathFollow): bool {.gcsafe, locks: 0.}
proc `cubicInterp=`*(self: PathFollow; val: bool) {.gcsafe, locks: 0.}
proc hOffset*(self: PathFollow): float64 {.gcsafe, locks: 0.}
proc `hOffset=`*(self: PathFollow; val: float64) {.gcsafe, locks: 0.}
proc loop*(self: PathFollow): bool {.gcsafe, locks: 0.}
proc `loop=`*(self: PathFollow; val: bool) {.gcsafe, locks: 0.}
proc offset*(self: PathFollow): float64 {.gcsafe, locks: 0.}
proc `offset=`*(self: PathFollow; val: float64) {.gcsafe, locks: 0.}
proc rotationMode*(self: PathFollow): int64 {.gcsafe, locks: 0.}
proc `rotationMode=`*(self: PathFollow; val: int64) {.gcsafe, locks: 0.}
proc unitOffset*(self: PathFollow): float64 {.gcsafe, locks: 0.}
proc `unitOffset=`*(self: PathFollow; val: float64) {.gcsafe, locks: 0.}
proc vOffset*(self: PathFollow): float64 {.gcsafe, locks: 0.}
proc `vOffset=`*(self: PathFollow; val: float64) {.gcsafe, locks: 0.}
var pathFollowGetCubicInterpolationMethodBind {.threadvar.}: ptr GodotMethodBind
proc cubicInterp(self: PathFollow): bool =
  if isNil(pathFollowGetCubicInterpolationMethodBind):
    pathFollowGetCubicInterpolationMethodBind = getMethod(cstring"PathFollow",
        cstring"get_cubic_interpolation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollowGetCubicInterpolationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var pathFollowSetCubicInterpolationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cubicInterp=`(self: PathFollow; val: bool) =
  if isNil(pathFollowSetCubicInterpolationMethodBind):
    pathFollowSetCubicInterpolationMethodBind = getMethod(cstring"PathFollow",
        cstring"set_cubic_interpolation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollowSetCubicInterpolationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var pathFollowGetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc hOffset(self: PathFollow): float64 =
  if isNil(pathFollowGetHOffsetMethodBind):
    pathFollowGetHOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"get_h_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollowGetHOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollowSetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hOffset=`(self: PathFollow; val: float64) =
  if isNil(pathFollowSetHOffsetMethodBind):
    pathFollowSetHOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"set_h_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollowSetHOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var pathFollowHasLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc loop(self: PathFollow): bool =
  if isNil(pathFollowHasLoopMethodBind):
    pathFollowHasLoopMethodBind = getMethod(cstring"PathFollow", cstring"has_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollowHasLoopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollowSetLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loop=`(self: PathFollow; val: bool) =
  if isNil(pathFollowSetLoopMethodBind):
    pathFollowSetLoopMethodBind = getMethod(cstring"PathFollow", cstring"set_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollowSetLoopMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var pathFollowGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: PathFollow): float64 =
  if isNil(pathFollowGetOffsetMethodBind):
    pathFollowGetOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollowGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollowSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: PathFollow; val: float64) =
  if isNil(pathFollowSetOffsetMethodBind):
    pathFollowSetOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollowSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var pathFollowGetRotationModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotationMode(self: PathFollow): int64 =
  if isNil(pathFollowGetRotationModeMethodBind):
    pathFollowGetRotationModeMethodBind = getMethod(cstring"PathFollow",
        cstring"get_rotation_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollowGetRotationModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollowSetRotationModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotationMode=`(self: PathFollow; val: int64) =
  if isNil(pathFollowSetRotationModeMethodBind):
    pathFollowSetRotationModeMethodBind = getMethod(cstring"PathFollow",
        cstring"set_rotation_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollowSetRotationModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var pathFollowGetUnitOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc unitOffset(self: PathFollow): float64 =
  if isNil(pathFollowGetUnitOffsetMethodBind):
    pathFollowGetUnitOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"get_unit_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollowGetUnitOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollowSetUnitOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `unitOffset=`(self: PathFollow; val: float64) =
  if isNil(pathFollowSetUnitOffsetMethodBind):
    pathFollowSetUnitOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"set_unit_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollowSetUnitOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var pathFollowGetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc vOffset(self: PathFollow): float64 =
  if isNil(pathFollowGetVOffsetMethodBind):
    pathFollowGetVOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"get_v_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  pathFollowGetVOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var pathFollowSetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vOffset=`(self: PathFollow; val: float64) =
  if isNil(pathFollowSetVOffsetMethodBind):
    pathFollowSetVOffsetMethodBind = getMethod(cstring"PathFollow",
        cstring"set_v_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  pathFollowSetVOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
