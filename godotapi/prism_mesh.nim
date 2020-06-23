
import
  godot, godottypes, godotinternal, primitive_mesh

export
  godottypes, primitive_mesh

proc leftToRight*(self: PrismMesh): float64 {.gcsafe, locks: 0.}
proc `leftToRight=`*(self: PrismMesh; val: float64) {.gcsafe, locks: 0.}
proc size*(self: PrismMesh): Vector3 {.gcsafe, locks: 0.}
proc `size=`*(self: PrismMesh; val: Vector3) {.gcsafe, locks: 0.}
proc subdivideDepth*(self: PrismMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideDepth=`*(self: PrismMesh; val: int64) {.gcsafe, locks: 0.}
proc subdivideHeight*(self: PrismMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideHeight=`*(self: PrismMesh; val: int64) {.gcsafe, locks: 0.}
proc subdivideWidth*(self: PrismMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideWidth=`*(self: PrismMesh; val: int64) {.gcsafe, locks: 0.}
var prismMeshGetLeftToRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc leftToRight(self: PrismMesh): float64 =
  if isNil(prismMeshGetLeftToRightMethodBind):
    prismMeshGetLeftToRightMethodBind = getMethod(cstring"PrismMesh",
        cstring"get_left_to_right")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  prismMeshGetLeftToRightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var prismMeshSetLeftToRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `leftToRight=`(self: PrismMesh; val: float64) =
  if isNil(prismMeshSetLeftToRightMethodBind):
    prismMeshSetLeftToRightMethodBind = getMethod(cstring"PrismMesh",
        cstring"set_left_to_right")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  prismMeshSetLeftToRightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var prismMeshGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: PrismMesh): Vector3 =
  if isNil(prismMeshGetSizeMethodBind):
    prismMeshGetSizeMethodBind = getMethod(cstring"PrismMesh", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  prismMeshGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var prismMeshSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: PrismMesh; val: Vector3) =
  if isNil(prismMeshSetSizeMethodBind):
    prismMeshSetSizeMethodBind = getMethod(cstring"PrismMesh", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  prismMeshSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var prismMeshGetSubdivideDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideDepth(self: PrismMesh): int64 =
  if isNil(prismMeshGetSubdivideDepthMethodBind):
    prismMeshGetSubdivideDepthMethodBind = getMethod(cstring"PrismMesh",
        cstring"get_subdivide_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  prismMeshGetSubdivideDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var prismMeshSetSubdivideDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideDepth=`(self: PrismMesh; val: int64) =
  if isNil(prismMeshSetSubdivideDepthMethodBind):
    prismMeshSetSubdivideDepthMethodBind = getMethod(cstring"PrismMesh",
        cstring"set_subdivide_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  prismMeshSetSubdivideDepthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var prismMeshGetSubdivideHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideHeight(self: PrismMesh): int64 =
  if isNil(prismMeshGetSubdivideHeightMethodBind):
    prismMeshGetSubdivideHeightMethodBind = getMethod(cstring"PrismMesh",
        cstring"get_subdivide_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  prismMeshGetSubdivideHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var prismMeshSetSubdivideHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideHeight=`(self: PrismMesh; val: int64) =
  if isNil(prismMeshSetSubdivideHeightMethodBind):
    prismMeshSetSubdivideHeightMethodBind = getMethod(cstring"PrismMesh",
        cstring"set_subdivide_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  prismMeshSetSubdivideHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var prismMeshGetSubdivideWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideWidth(self: PrismMesh): int64 =
  if isNil(prismMeshGetSubdivideWidthMethodBind):
    prismMeshGetSubdivideWidthMethodBind = getMethod(cstring"PrismMesh",
        cstring"get_subdivide_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  prismMeshGetSubdivideWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var prismMeshSetSubdivideWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideWidth=`(self: PrismMesh; val: int64) =
  if isNil(prismMeshSetSubdivideWidthMethodBind):
    prismMeshSetSubdivideWidthMethodBind = getMethod(cstring"PrismMesh",
        cstring"set_subdivide_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  prismMeshSetSubdivideWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
