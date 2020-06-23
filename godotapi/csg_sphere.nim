
import
  godot, godottypes, godotinternal, csg_primitive

export
  godottypes, csg_primitive

proc material*(self: CSGSphere): Material {.gcsafe, locks: 0.}
proc `material=`*(self: CSGSphere; val: Material) {.gcsafe, locks: 0.}
proc radialSegments*(self: CSGSphere): int64 {.gcsafe, locks: 0.}
proc `radialSegments=`*(self: CSGSphere; val: int64) {.gcsafe, locks: 0.}
proc radius*(self: CSGSphere): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: CSGSphere; val: float64) {.gcsafe, locks: 0.}
proc rings*(self: CSGSphere): int64 {.gcsafe, locks: 0.}
proc `rings=`*(self: CSGSphere; val: int64) {.gcsafe, locks: 0.}
proc smoothFaces*(self: CSGSphere): bool {.gcsafe, locks: 0.}
proc `smoothFaces=`*(self: CSGSphere; val: bool) {.gcsafe, locks: 0.}
var cSGSphereGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: CSGSphere): Material =
  if isNil(cSGSphereGetMaterialMethodBind):
    cSGSphereGetMaterialMethodBind = getMethod(cstring"CSGSphere",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cSGSphereGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cSGSphereSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: CSGSphere; val: Material) =
  if isNil(cSGSphereSetMaterialMethodBind):
    cSGSphereSetMaterialMethodBind = getMethod(cstring"CSGSphere",
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
  cSGSphereSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGSphereGetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc radialSegments(self: CSGSphere): int64 =
  if isNil(cSGSphereGetRadialSegmentsMethodBind):
    cSGSphereGetRadialSegmentsMethodBind = getMethod(cstring"CSGSphere",
        cstring"get_radial_segments")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGSphereGetRadialSegmentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGSphereSetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radialSegments=`(self: CSGSphere; val: int64) =
  if isNil(cSGSphereSetRadialSegmentsMethodBind):
    cSGSphereSetRadialSegmentsMethodBind = getMethod(cstring"CSGSphere",
        cstring"set_radial_segments")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGSphereSetRadialSegmentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGSphereGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: CSGSphere): float64 =
  if isNil(cSGSphereGetRadiusMethodBind):
    cSGSphereGetRadiusMethodBind = getMethod(cstring"CSGSphere",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGSphereGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGSphereSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: CSGSphere; val: float64) =
  if isNil(cSGSphereSetRadiusMethodBind):
    cSGSphereSetRadiusMethodBind = getMethod(cstring"CSGSphere",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGSphereSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var cSGSphereGetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc rings(self: CSGSphere): int64 =
  if isNil(cSGSphereGetRingsMethodBind):
    cSGSphereGetRingsMethodBind = getMethod(cstring"CSGSphere", cstring"get_rings")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGSphereGetRingsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGSphereSetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rings=`(self: CSGSphere; val: int64) =
  if isNil(cSGSphereSetRingsMethodBind):
    cSGSphereSetRingsMethodBind = getMethod(cstring"CSGSphere", cstring"set_rings")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGSphereSetRingsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var cSGSphereGetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc smoothFaces(self: CSGSphere): bool =
  if isNil(cSGSphereGetSmoothFacesMethodBind):
    cSGSphereGetSmoothFacesMethodBind = getMethod(cstring"CSGSphere",
        cstring"get_smooth_faces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGSphereGetSmoothFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGSphereSetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `smoothFaces=`(self: CSGSphere; val: bool) =
  if isNil(cSGSphereSetSmoothFacesMethodBind):
    cSGSphereSetSmoothFacesMethodBind = getMethod(cstring"CSGSphere",
        cstring"set_smooth_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGSphereSetSmoothFacesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
