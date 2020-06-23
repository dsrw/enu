
import
  godot, godottypes, godotinternal, primitive_mesh

export
  godottypes, primitive_mesh

proc size*(self: PlaneMesh): Vector2 {.gcsafe, locks: 0.}
proc `size=`*(self: PlaneMesh; val: Vector2) {.gcsafe, locks: 0.}
proc subdivideDepth*(self: PlaneMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideDepth=`*(self: PlaneMesh; val: int64) {.gcsafe, locks: 0.}
proc subdivideWidth*(self: PlaneMesh): int64 {.gcsafe, locks: 0.}
proc `subdivideWidth=`*(self: PlaneMesh; val: int64) {.gcsafe, locks: 0.}
var planeMeshGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: PlaneMesh): Vector2 =
  if isNil(planeMeshGetSizeMethodBind):
    planeMeshGetSizeMethodBind = getMethod(cstring"PlaneMesh", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  planeMeshGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var planeMeshSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: PlaneMesh; val: Vector2) =
  if isNil(planeMeshSetSizeMethodBind):
    planeMeshSetSizeMethodBind = getMethod(cstring"PlaneMesh", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  planeMeshSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var planeMeshGetSubdivideDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideDepth(self: PlaneMesh): int64 =
  if isNil(planeMeshGetSubdivideDepthMethodBind):
    planeMeshGetSubdivideDepthMethodBind = getMethod(cstring"PlaneMesh",
        cstring"get_subdivide_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  planeMeshGetSubdivideDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var planeMeshSetSubdivideDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideDepth=`(self: PlaneMesh; val: int64) =
  if isNil(planeMeshSetSubdivideDepthMethodBind):
    planeMeshSetSubdivideDepthMethodBind = getMethod(cstring"PlaneMesh",
        cstring"set_subdivide_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  planeMeshSetSubdivideDepthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var planeMeshGetSubdivideWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc subdivideWidth(self: PlaneMesh): int64 =
  if isNil(planeMeshGetSubdivideWidthMethodBind):
    planeMeshGetSubdivideWidthMethodBind = getMethod(cstring"PlaneMesh",
        cstring"get_subdivide_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  planeMeshGetSubdivideWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var planeMeshSetSubdivideWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subdivideWidth=`(self: PlaneMesh; val: int64) =
  if isNil(planeMeshSetSubdivideWidthMethodBind):
    planeMeshSetSubdivideWidthMethodBind = getMethod(cstring"PlaneMesh",
        cstring"set_subdivide_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  planeMeshSetSubdivideWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
