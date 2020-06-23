
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc addBones*(self: SurfaceTool; bones: PoolIntArray) {.gcsafe, locks: 0.}
proc addColor*(self: SurfaceTool; color: Color) {.gcsafe, locks: 0.}
proc addIndex*(self: SurfaceTool; index: int64) {.gcsafe, locks: 0.}
proc addNormal*(self: SurfaceTool; normal: Vector3) {.gcsafe, locks: 0.}
proc addSmoothGroup*(self: SurfaceTool; smooth: bool) {.gcsafe, locks: 0.}
proc addTangent*(self: SurfaceTool; tangent: Plane) {.gcsafe, locks: 0.}
proc addTriangleFan*(self: SurfaceTool; vertices: PoolVector3Array;
                    uvs: PoolVector2Array = newPoolVector2Array();
                    colors: PoolColorArray = newPoolColorArray();
                    uv2s: PoolVector2Array = newPoolVector2Array();
                    normals: PoolVector3Array = newPoolVector3Array();
                    tangents: Array = newArray()) {.gcsafe, locks: 0.}
proc addUv*(self: SurfaceTool; uv: Vector2) {.gcsafe, locks: 0.}
proc addUv2*(self: SurfaceTool; uv2: Vector2) {.gcsafe, locks: 0.}
proc addVertex*(self: SurfaceTool; vertex: Vector3) {.gcsafe, locks: 0.}
proc addWeights*(self: SurfaceTool; weights: PoolRealArray) {.gcsafe, locks: 0.}
proc appendFrom*(self: SurfaceTool; existing: Mesh; surface: int64;
                transform: Transform) {.gcsafe, locks: 0.}
proc begin*(self: SurfaceTool; primitive: int64) {.gcsafe, locks: 0.}
proc clear*(self: SurfaceTool) {.gcsafe, locks: 0.}
proc commit*(self: SurfaceTool; existing: ArrayMesh = nil; flags: int64 = 97280'i64): ArrayMesh {.
    gcsafe, locks: 0.}
proc commitToArrays*(self: SurfaceTool): Array {.gcsafe, locks: 0.}
proc createFrom*(self: SurfaceTool; existing: Mesh; surface: int64) {.gcsafe, locks: 0.}
proc createFromBlendShape*(self: SurfaceTool; existing: Mesh; surface: int64;
                          blendShape: string) {.gcsafe, locks: 0.}
proc deindex*(self: SurfaceTool) {.gcsafe, locks: 0.}
proc generateNormals*(self: SurfaceTool; flip: bool = false) {.gcsafe, locks: 0.}
proc generateTangents*(self: SurfaceTool) {.gcsafe, locks: 0.}
proc index*(self: SurfaceTool) {.gcsafe, locks: 0.}
proc setMaterial*(self: SurfaceTool; material: Material) {.gcsafe, locks: 0.}
var surfaceToolAddBonesMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBones(self: SurfaceTool; bones: PoolIntArray) =
  if isNil(surfaceToolAddBonesMethodBind):
    surfaceToolAddBonesMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_bones")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = bones.godotPoolIntArray
  var ptrCallRet: pointer
  surfaceToolAddBonesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var surfaceToolAddColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc addColor(self: SurfaceTool; color: Color) =
  if isNil(surfaceToolAddColorMethodBind):
    surfaceToolAddColorMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(color)
  var ptrCallRet: pointer
  surfaceToolAddColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var surfaceToolAddIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIndex(self: SurfaceTool; index: int64) =
  if isNil(surfaceToolAddIndexMethodBind):
    surfaceToolAddIndexMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  surfaceToolAddIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var surfaceToolAddNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc addNormal(self: SurfaceTool; normal: Vector3) =
  if isNil(surfaceToolAddNormalMethodBind):
    surfaceToolAddNormalMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(normal)
  var ptrCallRet: pointer
  surfaceToolAddNormalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var surfaceToolAddSmoothGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSmoothGroup(self: SurfaceTool; smooth: bool) =
  if isNil(surfaceToolAddSmoothGroupMethodBind):
    surfaceToolAddSmoothGroupMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_smooth_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(smooth)
  var ptrCallRet: pointer
  surfaceToolAddSmoothGroupMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var surfaceToolAddTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTangent(self: SurfaceTool; tangent: Plane) =
  if isNil(surfaceToolAddTangentMethodBind):
    surfaceToolAddTangentMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_tangent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tangent)
  var ptrCallRet: pointer
  surfaceToolAddTangentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var surfaceToolAddTriangleFanMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTriangleFan(self: SurfaceTool; vertices: PoolVector3Array;
                   uvs: PoolVector2Array = newPoolVector2Array();
                   colors: PoolColorArray = newPoolColorArray();
                   uv2s: PoolVector2Array = newPoolVector2Array();
                   normals: PoolVector3Array = newPoolVector3Array();
                   tangents: Array = newArray()) =
  if isNil(surfaceToolAddTriangleFanMethodBind):
    surfaceToolAddTriangleFanMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_triangle_fan")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = vertices.godotPoolVector3Array
  argsToPassToGodot[][1] = uvs.godotPoolVector2Array
  argsToPassToGodot[][2] = colors.godotPoolColorArray
  argsToPassToGodot[][3] = uv2s.godotPoolVector2Array
  argsToPassToGodot[][4] = normals.godotPoolVector3Array
  argsToPassToGodot[][5] = tangents.godotArray
  var ptrCallRet: pointer
  surfaceToolAddTriangleFanMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var surfaceToolAddUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc addUv(self: SurfaceTool; uv: Vector2) =
  if isNil(surfaceToolAddUvMethodBind):
    surfaceToolAddUvMethodBind = getMethod(cstring"SurfaceTool", cstring"add_uv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(uv)
  var ptrCallRet: pointer
  surfaceToolAddUvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var surfaceToolAddUv2MethodBind {.threadvar.}: ptr GodotMethodBind
proc addUv2(self: SurfaceTool; uv2: Vector2) =
  if isNil(surfaceToolAddUv2MethodBind):
    surfaceToolAddUv2MethodBind = getMethod(cstring"SurfaceTool", cstring"add_uv2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(uv2)
  var ptrCallRet: pointer
  surfaceToolAddUv2MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var surfaceToolAddVertexMethodBind {.threadvar.}: ptr GodotMethodBind
proc addVertex(self: SurfaceTool; vertex: Vector3) =
  if isNil(surfaceToolAddVertexMethodBind):
    surfaceToolAddVertexMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_vertex")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(vertex)
  var ptrCallRet: pointer
  surfaceToolAddVertexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var surfaceToolAddWeightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc addWeights(self: SurfaceTool; weights: PoolRealArray) =
  if isNil(surfaceToolAddWeightsMethodBind):
    surfaceToolAddWeightsMethodBind = getMethod(cstring"SurfaceTool",
        cstring"add_weights")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = weights.godotPoolRealArray
  var ptrCallRet: pointer
  surfaceToolAddWeightsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var surfaceToolAppendFromMethodBind {.threadvar.}: ptr GodotMethodBind
proc appendFrom(self: SurfaceTool; existing: Mesh; surface: int64; transform: Transform) =
  if isNil(surfaceToolAppendFromMethodBind):
    surfaceToolAppendFromMethodBind = getMethod(cstring"SurfaceTool",
        cstring"append_from")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not existing.isNil:
    existing.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(surface)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  surfaceToolAppendFromMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var surfaceToolBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc begin(self: SurfaceTool; primitive: int64) =
  if isNil(surfaceToolBeginMethodBind):
    surfaceToolBeginMethodBind = getMethod(cstring"SurfaceTool", cstring"begin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(primitive)
  var ptrCallRet: pointer
  surfaceToolBeginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var surfaceToolClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: SurfaceTool) =
  if isNil(surfaceToolClearMethodBind):
    surfaceToolClearMethodBind = getMethod(cstring"SurfaceTool", cstring"clear")
  var ptrCallRet: pointer
  surfaceToolClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var surfaceToolCommitMethodBind {.threadvar.}: ptr GodotMethodBind
proc commit(self: SurfaceTool; existing: ArrayMesh = nil; flags: int64 = 97280'i64): ArrayMesh =
  if isNil(surfaceToolCommitMethodBind):
    surfaceToolCommitMethodBind = getMethod(cstring"SurfaceTool", cstring"commit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not existing.isNil:
    existing.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(flags)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  surfaceToolCommitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var surfaceToolCommitToArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc commitToArrays(self: SurfaceTool): Array =
  if isNil(surfaceToolCommitToArraysMethodBind):
    surfaceToolCommitToArraysMethodBind = getMethod(cstring"SurfaceTool",
        cstring"commit_to_arrays")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  surfaceToolCommitToArraysMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var surfaceToolCreateFromMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFrom(self: SurfaceTool; existing: Mesh; surface: int64) =
  if isNil(surfaceToolCreateFromMethodBind):
    surfaceToolCreateFromMethodBind = getMethod(cstring"SurfaceTool",
        cstring"create_from")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not existing.isNil:
    existing.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  surfaceToolCreateFromMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var surfaceToolCreateFromBlendShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFromBlendShape(self: SurfaceTool; existing: Mesh; surface: int64;
                         blendShape: string) =
  if isNil(surfaceToolCreateFromBlendShapeMethodBind):
    surfaceToolCreateFromBlendShapeMethodBind = getMethod(cstring"SurfaceTool",
        cstring"create_from_blend_shape")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not existing.isNil:
    existing.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var argToPassToGodot2 = toGodotString(blendShape)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  surfaceToolCreateFromBlendShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var surfaceToolDeindexMethodBind {.threadvar.}: ptr GodotMethodBind
proc deindex(self: SurfaceTool) =
  if isNil(surfaceToolDeindexMethodBind):
    surfaceToolDeindexMethodBind = getMethod(cstring"SurfaceTool",
        cstring"deindex")
  var ptrCallRet: pointer
  surfaceToolDeindexMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var surfaceToolGenerateNormalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateNormals(self: SurfaceTool; flip: bool = false) =
  if isNil(surfaceToolGenerateNormalsMethodBind):
    surfaceToolGenerateNormalsMethodBind = getMethod(cstring"SurfaceTool",
        cstring"generate_normals")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(flip)
  var ptrCallRet: pointer
  surfaceToolGenerateNormalsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var surfaceToolGenerateTangentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateTangents(self: SurfaceTool) =
  if isNil(surfaceToolGenerateTangentsMethodBind):
    surfaceToolGenerateTangentsMethodBind = getMethod(cstring"SurfaceTool",
        cstring"generate_tangents")
  var ptrCallRet: pointer
  surfaceToolGenerateTangentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var surfaceToolIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc index(self: SurfaceTool) =
  if isNil(surfaceToolIndexMethodBind):
    surfaceToolIndexMethodBind = getMethod(cstring"SurfaceTool", cstring"index")
  var ptrCallRet: pointer
  surfaceToolIndexMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var surfaceToolSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMaterial(self: SurfaceTool; material: Material) =
  if isNil(surfaceToolSetMaterialMethodBind):
    surfaceToolSetMaterialMethodBind = getMethod(cstring"SurfaceTool",
        cstring"set_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  surfaceToolSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
