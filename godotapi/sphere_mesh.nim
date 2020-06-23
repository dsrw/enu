
import
  godot, godottypes, godotinternal, primitive_mesh

export
  godottypes, primitive_mesh

proc height*(self: SphereMesh): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: SphereMesh; val: float64) {.gcsafe, locks: 0.}
proc isHemisphere*(self: SphereMesh): bool {.gcsafe, locks: 0.}
proc `isHemisphere=`*(self: SphereMesh; val: bool) {.gcsafe, locks: 0.}
proc radialSegments*(self: SphereMesh): int64 {.gcsafe, locks: 0.}
proc `radialSegments=`*(self: SphereMesh; val: int64) {.gcsafe, locks: 0.}
proc radius*(self: SphereMesh): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: SphereMesh; val: float64) {.gcsafe, locks: 0.}
proc rings*(self: SphereMesh): int64 {.gcsafe, locks: 0.}
proc `rings=`*(self: SphereMesh; val: int64) {.gcsafe, locks: 0.}
var sphereMeshGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: SphereMesh): float64 =
  if isNil(sphereMeshGetHeightMethodBind):
    sphereMeshGetHeightMethodBind = getMethod(cstring"SphereMesh",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sphereMeshGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sphereMeshSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: SphereMesh; val: float64) =
  if isNil(sphereMeshSetHeightMethodBind):
    sphereMeshSetHeightMethodBind = getMethod(cstring"SphereMesh",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sphereMeshSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var sphereMeshGetIsHemisphereMethodBind {.threadvar.}: ptr GodotMethodBind
proc isHemisphere(self: SphereMesh): bool =
  if isNil(sphereMeshGetIsHemisphereMethodBind):
    sphereMeshGetIsHemisphereMethodBind = getMethod(cstring"SphereMesh",
        cstring"get_is_hemisphere")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sphereMeshGetIsHemisphereMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sphereMeshSetIsHemisphereMethodBind {.threadvar.}: ptr GodotMethodBind
proc `isHemisphere=`(self: SphereMesh; val: bool) =
  if isNil(sphereMeshSetIsHemisphereMethodBind):
    sphereMeshSetIsHemisphereMethodBind = getMethod(cstring"SphereMesh",
        cstring"set_is_hemisphere")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sphereMeshSetIsHemisphereMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sphereMeshGetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc radialSegments(self: SphereMesh): int64 =
  if isNil(sphereMeshGetRadialSegmentsMethodBind):
    sphereMeshGetRadialSegmentsMethodBind = getMethod(cstring"SphereMesh",
        cstring"get_radial_segments")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sphereMeshGetRadialSegmentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sphereMeshSetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radialSegments=`(self: SphereMesh; val: int64) =
  if isNil(sphereMeshSetRadialSegmentsMethodBind):
    sphereMeshSetRadialSegmentsMethodBind = getMethod(cstring"SphereMesh",
        cstring"set_radial_segments")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sphereMeshSetRadialSegmentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sphereMeshGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: SphereMesh): float64 =
  if isNil(sphereMeshGetRadiusMethodBind):
    sphereMeshGetRadiusMethodBind = getMethod(cstring"SphereMesh",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sphereMeshGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sphereMeshSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: SphereMesh; val: float64) =
  if isNil(sphereMeshSetRadiusMethodBind):
    sphereMeshSetRadiusMethodBind = getMethod(cstring"SphereMesh",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sphereMeshSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var sphereMeshGetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc rings(self: SphereMesh): int64 =
  if isNil(sphereMeshGetRingsMethodBind):
    sphereMeshGetRingsMethodBind = getMethod(cstring"SphereMesh",
        cstring"get_rings")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sphereMeshGetRingsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sphereMeshSetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rings=`(self: SphereMesh; val: int64) =
  if isNil(sphereMeshSetRingsMethodBind):
    sphereMeshSetRingsMethodBind = getMethod(cstring"SphereMesh",
        cstring"set_rings")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sphereMeshSetRingsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
