
import
  godot, godottypes, godotinternal, primitive_mesh

export
  godottypes, primitive_mesh

proc midHeight*(self: CapsuleMesh): float64 {.gcsafe, locks: 0.}
proc `midHeight=`*(self: CapsuleMesh; val: float64) {.gcsafe, locks: 0.}
proc radialSegments*(self: CapsuleMesh): int64 {.gcsafe, locks: 0.}
proc `radialSegments=`*(self: CapsuleMesh; val: int64) {.gcsafe, locks: 0.}
proc radius*(self: CapsuleMesh): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: CapsuleMesh; val: float64) {.gcsafe, locks: 0.}
proc rings*(self: CapsuleMesh): int64 {.gcsafe, locks: 0.}
proc `rings=`*(self: CapsuleMesh; val: int64) {.gcsafe, locks: 0.}
var capsuleMeshGetMidHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc midHeight(self: CapsuleMesh): float64 =
  if isNil(capsuleMeshGetMidHeightMethodBind):
    capsuleMeshGetMidHeightMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"get_mid_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleMeshGetMidHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleMeshSetMidHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `midHeight=`(self: CapsuleMesh; val: float64) =
  if isNil(capsuleMeshSetMidHeightMethodBind):
    capsuleMeshSetMidHeightMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"set_mid_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleMeshSetMidHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var capsuleMeshGetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc radialSegments(self: CapsuleMesh): int64 =
  if isNil(capsuleMeshGetRadialSegmentsMethodBind):
    capsuleMeshGetRadialSegmentsMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"get_radial_segments")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleMeshGetRadialSegmentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleMeshSetRadialSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radialSegments=`(self: CapsuleMesh; val: int64) =
  if isNil(capsuleMeshSetRadialSegmentsMethodBind):
    capsuleMeshSetRadialSegmentsMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"set_radial_segments")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleMeshSetRadialSegmentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var capsuleMeshGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: CapsuleMesh): float64 =
  if isNil(capsuleMeshGetRadiusMethodBind):
    capsuleMeshGetRadiusMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleMeshGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleMeshSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: CapsuleMesh; val: float64) =
  if isNil(capsuleMeshSetRadiusMethodBind):
    capsuleMeshSetRadiusMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleMeshSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var capsuleMeshGetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc rings(self: CapsuleMesh): int64 =
  if isNil(capsuleMeshGetRingsMethodBind):
    capsuleMeshGetRingsMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"get_rings")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleMeshGetRingsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleMeshSetRingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rings=`(self: CapsuleMesh; val: int64) =
  if isNil(capsuleMeshSetRingsMethodBind):
    capsuleMeshSetRingsMethodBind = getMethod(cstring"CapsuleMesh",
        cstring"set_rings")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleMeshSetRingsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
