
import
  godot, godottypes, godotinternal, primitive_mesh

export
  godottypes, primitive_mesh

proc size*(self: CubeMesh): Vector3 {.gcsafe, locks: 0.}
proc `size=`*(self: CubeMesh; val: Vector3) {.gcsafe, locks: 0.}
proc subdivideDepth*(self: CubeMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideDepth=`*(self: CubeMesh; val: int64) {.gcsafe, locks: 0.}
proc subdivideHeight*(self: CubeMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideHeight=`*(self: CubeMesh; val: int64) {.gcsafe, locks: 0.}
proc subdivideWidth*(self: CubeMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideWidth=`*(self: CubeMesh; val: int64) {.gcsafe, locks: 0.}
var cubeMeshGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: CubeMesh): Vector3 =
  if isNil(cubeMeshGetSizeMethodBind):
    cubeMeshGetSizeMethodBind = getMethod(cstring"CubeMesh", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMeshGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMeshSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: CubeMesh; val: Vector3) =
  if isNil(cubeMeshSetSizeMethodBind):
    cubeMeshSetSizeMethodBind = getMethod(cstring"CubeMesh", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cubeMeshSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var cubeMeshGetSubdivideDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideDepth(self: CubeMesh): int64 =
  if isNil(cubeMeshGetSubdivideDepthMethodBind):
    cubeMeshGetSubdivideDepthMethodBind = getMethod(cstring"CubeMesh",
        cstring"get_subdivide_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMeshGetSubdivideDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMeshSetSubdivideDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideDepth=`(self: CubeMesh; val: int64) =
  if isNil(cubeMeshSetSubdivideDepthMethodBind):
    cubeMeshSetSubdivideDepthMethodBind = getMethod(cstring"CubeMesh",
        cstring"set_subdivide_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cubeMeshSetSubdivideDepthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cubeMeshGetSubdivideHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideHeight(self: CubeMesh): int64 =
  if isNil(cubeMeshGetSubdivideHeightMethodBind):
    cubeMeshGetSubdivideHeightMethodBind = getMethod(cstring"CubeMesh",
        cstring"get_subdivide_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMeshGetSubdivideHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMeshSetSubdivideHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideHeight=`(self: CubeMesh; val: int64) =
  if isNil(cubeMeshSetSubdivideHeightMethodBind):
    cubeMeshSetSubdivideHeightMethodBind = getMethod(cstring"CubeMesh",
        cstring"set_subdivide_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cubeMeshSetSubdivideHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cubeMeshGetSubdivideWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideWidth(self: CubeMesh): int64 =
  if isNil(cubeMeshGetSubdivideWidthMethodBind):
    cubeMeshGetSubdivideWidthMethodBind = getMethod(cstring"CubeMesh",
        cstring"get_subdivide_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMeshGetSubdivideWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMeshSetSubdivideWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideWidth=`(self: CubeMesh; val: int64) =
  if isNil(cubeMeshSetSubdivideWidthMethodBind):
    cubeMeshSetSubdivideWidthMethodBind = getMethod(cstring"CubeMesh",
        cstring"set_subdivide_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cubeMeshSetSubdivideWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
