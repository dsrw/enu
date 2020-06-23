
import
  godot, godottypes, godotinternal, primitive_mesh

export
  godottypes, primitive_mesh

proc bottomRadius*(self: CylinderMesh): float64 {.gcsafe, locks: 0.}
proc `bottomRadius=`*(self: CylinderMesh; val: float64) {.gcsafe, locks: 0.}
proc height*(self: CylinderMesh): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: CylinderMesh; val: float64) {.gcsafe, locks: 0.}
proc radialSegments*(self: CylinderMesh): int64 {.gcsafe, locks: 0.}
proc `radialSegments=`*(self: CylinderMesh; val: int64) {.gcsafe, locks: 0.}
proc rings*(self: CylinderMesh): int64 {.gcsafe, locks: 0.}
proc `rings=`*(self: CylinderMesh; val: int64) {.gcsafe, locks: 0.}
proc topRadius*(self: CylinderMesh): float64 {.gcsafe, locks: 0.}
proc `topRadius=`*(self: CylinderMesh; val: float64) {.gcsafe, locks: 0.}
var cylinderMeshGetBottomRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc bottomRadius(self: CylinderMesh): float64 =
  if isNil(cylinderMeshGetBottomRadiusMethodBind):
    cylinderMeshGetBottomRadiusMethodBind = getMethod(cstring"CylinderMesh",
        cstring"get_bottom_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cylinderMeshGetBottomRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cylinderMeshSetBottomRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bottomRadius=`(self: CylinderMesh; val: float64) =
  if isNil(cylinderMeshSetBottomRadiusMethodBind):
    cylinderMeshSetBottomRadiusMethodBind = getMethod(cstring"CylinderMesh",
        cstring"set_bottom_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cylinderMeshSetBottomRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cylinderMeshGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: CylinderMesh): float64 =
  if isNil(cylinderMeshGetHeightMethodBind):
    cylinderMeshGetHeightMethodBind = getMethod(cstring"CylinderMesh",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cylinderMeshGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cylinderMeshSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: CylinderMesh; val: float64) =
  if isNil(cylinderMeshSetHeightMethodBind):
    cylinderMeshSetHeightMethodBind = getMethod(cstring"CylinderMesh",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cylinderMeshSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cylinderMeshGetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc radialSegments(self: CylinderMesh): int64 =
  if isNil(cylinderMeshGetRadialSegmentsMethodBind):
    cylinderMeshGetRadialSegmentsMethodBind = getMethod(cstring"CylinderMesh",
        cstring"get_radial_segments")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cylinderMeshGetRadialSegmentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cylinderMeshSetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radialSegments=`(self: CylinderMesh; val: int64) =
  if isNil(cylinderMeshSetRadialSegmentsMethodBind):
    cylinderMeshSetRadialSegmentsMethodBind = getMethod(cstring"CylinderMesh",
        cstring"set_radial_segments")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cylinderMeshSetRadialSegmentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cylinderMeshGetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc rings(self: CylinderMesh): int64 =
  if isNil(cylinderMeshGetRingsMethodBind):
    cylinderMeshGetRingsMethodBind = getMethod(cstring"CylinderMesh",
        cstring"get_rings")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cylinderMeshGetRingsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cylinderMeshSetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rings=`(self: CylinderMesh; val: int64) =
  if isNil(cylinderMeshSetRingsMethodBind):
    cylinderMeshSetRingsMethodBind = getMethod(cstring"CylinderMesh",
        cstring"set_rings")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cylinderMeshSetRingsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cylinderMeshGetTopRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc topRadius(self: CylinderMesh): float64 =
  if isNil(cylinderMeshGetTopRadiusMethodBind):
    cylinderMeshGetTopRadiusMethodBind = getMethod(cstring"CylinderMesh",
        cstring"get_top_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cylinderMeshGetTopRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cylinderMeshSetTopRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `topRadius=`(self: CylinderMesh; val: float64) =
  if isNil(cylinderMeshSetTopRadiusMethodBind):
    cylinderMeshSetTopRadiusMethodBind = getMethod(cstring"CylinderMesh",
        cstring"set_top_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cylinderMeshSetTopRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
