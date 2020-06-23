
import
  godot, godottypes, godotinternal, csg_primitive

export
  godottypes, csg_primitive

const
  MODE_DEPTH* = 0'i64
  MODE_PATH* = 2'i64
  MODE_SPIN* = 1'i64
  PATH_ROTATION_PATH* = 1'i64
  PATH_ROTATION_PATH_FOLLOW* = 2'i64
  PATH_ROTATION_POLYGON* = 0'i64
proc depth*(self: CSGPolygon): float64 {.gcsafe, locks: 0.}
proc `depth=`*(self: CSGPolygon; val: float64) {.gcsafe, locks: 0.}
proc material*(self: CSGPolygon): Material {.gcsafe, locks: 0.}
proc `material=`*(self: CSGPolygon; val: Material) {.gcsafe, locks: 0.}
proc mode*(self: CSGPolygon): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: CSGPolygon; val: int64) {.gcsafe, locks: 0.}
proc pathContinuousU*(self: CSGPolygon): bool {.gcsafe, locks: 0.}
proc `pathContinuousU=`*(self: CSGPolygon; val: bool) {.gcsafe, locks: 0.}
proc pathInterval*(self: CSGPolygon): float64 {.gcsafe, locks: 0.}
proc `pathInterval=`*(self: CSGPolygon; val: float64) {.gcsafe, locks: 0.}
proc pathJoined*(self: CSGPolygon): bool {.gcsafe, locks: 0.}
proc `pathJoined=`*(self: CSGPolygon; val: bool) {.gcsafe, locks: 0.}
proc pathLocal*(self: CSGPolygon): bool {.gcsafe, locks: 0.}
proc `pathLocal=`*(self: CSGPolygon; val: bool) {.gcsafe, locks: 0.}
proc pathNode*(self: CSGPolygon): NodePath {.gcsafe, locks: 0.}
proc `pathNode=`*(self: CSGPolygon; val: NodePath) {.gcsafe, locks: 0.}
proc pathRotation*(self: CSGPolygon): int64 {.gcsafe, locks: 0.}
proc `pathRotation=`*(self: CSGPolygon; val: int64) {.gcsafe, locks: 0.}
proc polygon*(self: CSGPolygon): PoolVector2Array {.gcsafe, locks: 0.}
proc `polygon=`*(self: CSGPolygon; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc smoothFaces*(self: CSGPolygon): bool {.gcsafe, locks: 0.}
proc `smoothFaces=`*(self: CSGPolygon; val: bool) {.gcsafe, locks: 0.}
proc spinDegrees*(self: CSGPolygon): float64 {.gcsafe, locks: 0.}
proc `spinDegrees=`*(self: CSGPolygon; val: float64) {.gcsafe, locks: 0.}
proc spinSides*(self: CSGPolygon): int64 {.gcsafe, locks: 0.}
proc `spinSides=`*(self: CSGPolygon; val: int64) {.gcsafe, locks: 0.}
method hasEditable3dPolygonNoDepth*(self: CSGPolygon): bool {.gcsafe, locks: 0, base.}
method isEditable3dPolygon*(self: CSGPolygon): bool {.gcsafe, locks: 0, base.}
method pathChanged*(self: CSGPolygon) {.gcsafe, locks: 0, base.}
method pathExited*(self: CSGPolygon) {.gcsafe, locks: 0, base.}
var cSGPolygonGetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc depth(self: CSGPolygon): float64 =
  if isNil(cSGPolygonGetDepthMethodBind):
    cSGPolygonGetDepthMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonGetDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depth=`(self: CSGPolygon; val: float64) =
  if isNil(cSGPolygonSetDepthMethodBind):
    cSGPolygonSetDepthMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetDepthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var cSGPolygonGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: CSGPolygon): Material =
  if isNil(cSGPolygonGetMaterialMethodBind):
    cSGPolygonGetMaterialMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cSGPolygonGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cSGPolygonSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: CSGPolygon; val: Material) =
  if isNil(cSGPolygonSetMaterialMethodBind):
    cSGPolygonSetMaterialMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cSGPolygonSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: CSGPolygon): int64 =
  if isNil(cSGPolygonGetModeMethodBind):
    cSGPolygonGetModeMethodBind = getMethod(cstring"CSGPolygon", cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: CSGPolygon; val: int64) =
  if isNil(cSGPolygonSetModeMethodBind):
    cSGPolygonSetModeMethodBind = getMethod(cstring"CSGPolygon", cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var cSGPolygonIsPathContinuousUMethodBind {.threadvar.}: ptr GodotMethodBind
proc pathContinuousU(self: CSGPolygon): bool =
  if isNil(cSGPolygonIsPathContinuousUMethodBind):
    cSGPolygonIsPathContinuousUMethodBind = getMethod(cstring"CSGPolygon",
        cstring"is_path_continuous_u")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonIsPathContinuousUMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetPathContinuousUMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pathContinuousU=`(self: CSGPolygon; val: bool) =
  if isNil(cSGPolygonSetPathContinuousUMethodBind):
    cSGPolygonSetPathContinuousUMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_path_continuous_u")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetPathContinuousUMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGPolygonGetPathIntervalMethodBind {.threadvar.}: ptr GodotMethodBind
proc pathInterval(self: CSGPolygon): float64 =
  if isNil(cSGPolygonGetPathIntervalMethodBind):
    cSGPolygonGetPathIntervalMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_path_interval")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonGetPathIntervalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetPathIntervalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pathInterval=`(self: CSGPolygon; val: float64) =
  if isNil(cSGPolygonSetPathIntervalMethodBind):
    cSGPolygonSetPathIntervalMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_path_interval")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetPathIntervalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGPolygonIsPathJoinedMethodBind {.threadvar.}: ptr GodotMethodBind
proc pathJoined(self: CSGPolygon): bool =
  if isNil(cSGPolygonIsPathJoinedMethodBind):
    cSGPolygonIsPathJoinedMethodBind = getMethod(cstring"CSGPolygon",
        cstring"is_path_joined")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonIsPathJoinedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetPathJoinedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pathJoined=`(self: CSGPolygon; val: bool) =
  if isNil(cSGPolygonSetPathJoinedMethodBind):
    cSGPolygonSetPathJoinedMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_path_joined")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetPathJoinedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonIsPathLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc pathLocal(self: CSGPolygon): bool =
  if isNil(cSGPolygonIsPathLocalMethodBind):
    cSGPolygonIsPathLocalMethodBind = getMethod(cstring"CSGPolygon",
        cstring"is_path_local")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonIsPathLocalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetPathLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pathLocal=`(self: CSGPolygon; val: bool) =
  if isNil(cSGPolygonSetPathLocalMethodBind):
    cSGPolygonSetPathLocalMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_path_local")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetPathLocalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonGetPathNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc pathNode(self: CSGPolygon): NodePath =
  if isNil(cSGPolygonGetPathNodeMethodBind):
    cSGPolygonGetPathNodeMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_path_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  cSGPolygonGetPathNodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var cSGPolygonSetPathNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pathNode=`(self: CSGPolygon; val: NodePath) =
  if isNil(cSGPolygonSetPathNodeMethodBind):
    cSGPolygonSetPathNodeMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_path_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  cSGPolygonSetPathNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonGetPathRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc pathRotation(self: CSGPolygon): int64 =
  if isNil(cSGPolygonGetPathRotationMethodBind):
    cSGPolygonGetPathRotationMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_path_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonGetPathRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetPathRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pathRotation=`(self: CSGPolygon; val: int64) =
  if isNil(cSGPolygonSetPathRotationMethodBind):
    cSGPolygonSetPathRotationMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_path_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetPathRotationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGPolygonGetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygon(self: CSGPolygon): PoolVector2Array =
  if isNil(cSGPolygonGetPolygonMethodBind):
    cSGPolygonGetPolygonMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_polygon")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  cSGPolygonGetPolygonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var cSGPolygonSetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygon=`(self: CSGPolygon; val: PoolVector2Array) =
  if isNil(cSGPolygonSetPolygonMethodBind):
    cSGPolygonSetPolygonMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  cSGPolygonSetPolygonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonGetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc smoothFaces(self: CSGPolygon): bool =
  if isNil(cSGPolygonGetSmoothFacesMethodBind):
    cSGPolygonGetSmoothFacesMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_smooth_faces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonGetSmoothFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `smoothFaces=`(self: CSGPolygon; val: bool) =
  if isNil(cSGPolygonSetSmoothFacesMethodBind):
    cSGPolygonSetSmoothFacesMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_smooth_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetSmoothFacesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonGetSpinDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc spinDegrees(self: CSGPolygon): float64 =
  if isNil(cSGPolygonGetSpinDegreesMethodBind):
    cSGPolygonGetSpinDegreesMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_spin_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonGetSpinDegreesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetSpinDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spinDegrees=`(self: CSGPolygon; val: float64) =
  if isNil(cSGPolygonSetSpinDegreesMethodBind):
    cSGPolygonSetSpinDegreesMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_spin_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetSpinDegreesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonGetSpinSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc spinSides(self: CSGPolygon): int64 =
  if isNil(cSGPolygonGetSpinSidesMethodBind):
    cSGPolygonGetSpinSidesMethodBind = getMethod(cstring"CSGPolygon",
        cstring"get_spin_sides")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonGetSpinSidesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPolygonSetSpinSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spinSides=`(self: CSGPolygon; val: int64) =
  if isNil(cSGPolygonSetSpinSidesMethodBind):
    cSGPolygonSetSpinSidesMethodBind = getMethod(cstring"CSGPolygon",
        cstring"set_spin_sides")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPolygonSetSpinSidesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGPolygonUnderscorehasEditable3dPolygonNoDepthMethodBind {.threadvar.}: ptr GodotMethodBind
method hasEditable3dPolygonNoDepth(self: CSGPolygon): bool =
  if isNil(cSGPolygonUnderscorehasEditable3dPolygonNoDepthMethodBind):
    cSGPolygonUnderscorehasEditable3dPolygonNoDepthMethodBind = getMethod(
        cstring"CSGPolygon", cstring"_has_editable_3d_polygon_no_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonUnderscorehasEditable3dPolygonNoDepthMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var cSGPolygonUnderscoreisEditable3dPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
method isEditable3dPolygon(self: CSGPolygon): bool =
  if isNil(cSGPolygonUnderscoreisEditable3dPolygonMethodBind):
    cSGPolygonUnderscoreisEditable3dPolygonMethodBind = getMethod(
        cstring"CSGPolygon", cstring"_is_editable_3d_polygon")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPolygonUnderscoreisEditable3dPolygonMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var cSGPolygonUnderscorepathChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method pathChanged(self: CSGPolygon) =
  if isNil(cSGPolygonUnderscorepathChangedMethodBind):
    cSGPolygonUnderscorepathChangedMethodBind = getMethod(cstring"CSGPolygon",
        cstring"_path_changed")
  var ptrCallRet: pointer
  cSGPolygonUnderscorepathChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cSGPolygonUnderscorepathExitedMethodBind {.threadvar.}: ptr GodotMethodBind
method pathExited(self: CSGPolygon) =
  if isNil(cSGPolygonUnderscorepathExitedMethodBind):
    cSGPolygonUnderscorepathExitedMethodBind = getMethod(cstring"CSGPolygon",
        cstring"_path_exited")
  var ptrCallRet: pointer
  cSGPolygonUnderscorepathExitedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
