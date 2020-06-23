
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc clear*(self: MeshDataTool) {.gcsafe, locks: 0.}
proc commitToSurface*(self: MeshDataTool; mesh: ArrayMesh): Error {.gcsafe, locks: 0.}
proc createFromSurface*(self: MeshDataTool; mesh: ArrayMesh; surface: int64): Error {.
    gcsafe, locks: 0.}
proc getEdgeCount*(self: MeshDataTool): int64 {.gcsafe, locks: 0.}
proc getEdgeFaces*(self: MeshDataTool; idx: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getEdgeMeta*(self: MeshDataTool; idx: int64): Variant {.gcsafe, locks: 0.}
proc getEdgeVertex*(self: MeshDataTool; idx: int64; vertex: int64): int64 {.gcsafe,
    locks: 0.}
proc getFaceCount*(self: MeshDataTool): int64 {.gcsafe, locks: 0.}
proc getFaceEdge*(self: MeshDataTool; idx: int64; edge: int64): int64 {.gcsafe, locks: 0.}
proc getFaceMeta*(self: MeshDataTool; idx: int64): Variant {.gcsafe, locks: 0.}
proc getFaceNormal*(self: MeshDataTool; idx: int64): Vector3 {.gcsafe, locks: 0.}
proc getFaceVertex*(self: MeshDataTool; idx: int64; vertex: int64): int64 {.gcsafe,
    locks: 0.}
proc getFormat*(self: MeshDataTool): int64 {.gcsafe, locks: 0.}
proc getMaterial*(self: MeshDataTool): Material {.gcsafe, locks: 0.}
proc getVertex*(self: MeshDataTool; idx: int64): Vector3 {.gcsafe, locks: 0.}
proc getVertexBones*(self: MeshDataTool; idx: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getVertexColor*(self: MeshDataTool; idx: int64): Color {.gcsafe, locks: 0.}
proc getVertexCount*(self: MeshDataTool): int64 {.gcsafe, locks: 0.}
proc getVertexEdges*(self: MeshDataTool; idx: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getVertexFaces*(self: MeshDataTool; idx: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getVertexMeta*(self: MeshDataTool; idx: int64): Variant {.gcsafe, locks: 0.}
proc getVertexNormal*(self: MeshDataTool; idx: int64): Vector3 {.gcsafe, locks: 0.}
proc getVertexTangent*(self: MeshDataTool; idx: int64): Plane {.gcsafe, locks: 0.}
proc getVertexUv*(self: MeshDataTool; idx: int64): Vector2 {.gcsafe, locks: 0.}
proc getVertexUv2*(self: MeshDataTool; idx: int64): Vector2 {.gcsafe, locks: 0.}
proc getVertexWeights*(self: MeshDataTool; idx: int64): PoolRealArray {.gcsafe,
    locks: 0.}
proc setEdgeMeta*(self: MeshDataTool; idx: int64; meta: Variant) {.gcsafe, locks: 0.}
proc setFaceMeta*(self: MeshDataTool; idx: int64; meta: Variant) {.gcsafe, locks: 0.}
proc setMaterial*(self: MeshDataTool; material: Material) {.gcsafe, locks: 0.}
proc setVertex*(self: MeshDataTool; idx: int64; vertex: Vector3) {.gcsafe, locks: 0.}
proc setVertexBones*(self: MeshDataTool; idx: int64; bones: PoolIntArray) {.gcsafe,
    locks: 0.}
proc setVertexColor*(self: MeshDataTool; idx: int64; color: Color) {.gcsafe, locks: 0.}
proc setVertexMeta*(self: MeshDataTool; idx: int64; meta: Variant) {.gcsafe, locks: 0.}
proc setVertexNormal*(self: MeshDataTool; idx: int64; normal: Vector3) {.gcsafe,
    locks: 0.}
proc setVertexTangent*(self: MeshDataTool; idx: int64; tangent: Plane) {.gcsafe,
    locks: 0.}
proc setVertexUv*(self: MeshDataTool; idx: int64; uv: Vector2) {.gcsafe, locks: 0.}
proc setVertexUv2*(self: MeshDataTool; idx: int64; uv2: Vector2) {.gcsafe, locks: 0.}
proc setVertexWeights*(self: MeshDataTool; idx: int64; weights: PoolRealArray) {.
    gcsafe, locks: 0.}
var meshDataToolClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: MeshDataTool) =
  if isNil(meshDataToolClearMethodBind):
    meshDataToolClearMethodBind = getMethod(cstring"MeshDataTool", cstring"clear")
  var ptrCallRet: pointer
  meshDataToolClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshDataToolCommitToSurfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc commitToSurface(self: MeshDataTool; mesh: ArrayMesh): Error =
  if isNil(meshDataToolCommitToSurfaceMethodBind):
    meshDataToolCommitToSurfaceMethodBind = getMethod(cstring"MeshDataTool",
        cstring"commit_to_surface")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  meshDataToolCommitToSurfaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var meshDataToolCreateFromSurfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFromSurface(self: MeshDataTool; mesh: ArrayMesh; surface: int64): Error =
  if isNil(meshDataToolCreateFromSurfaceMethodBind):
    meshDataToolCreateFromSurfaceMethodBind = getMethod(cstring"MeshDataTool",
        cstring"create_from_surface")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  meshDataToolCreateFromSurfaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var meshDataToolGetEdgeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEdgeCount(self: MeshDataTool): int64 =
  if isNil(meshDataToolGetEdgeCountMethodBind):
    meshDataToolGetEdgeCountMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_edge_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetEdgeCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshDataToolGetEdgeFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEdgeFaces(self: MeshDataTool; idx: int64): PoolIntArray =
  if isNil(meshDataToolGetEdgeFacesMethodBind):
    meshDataToolGetEdgeFacesMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_edge_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetEdgeFacesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var meshDataToolGetEdgeMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEdgeMeta(self: MeshDataTool; idx: int64): Variant =
  if isNil(meshDataToolGetEdgeMetaMethodBind):
    meshDataToolGetEdgeMetaMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_edge_meta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetEdgeMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newVariant(ptrCallVal)

var meshDataToolGetEdgeVertexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEdgeVertex(self: MeshDataTool; idx: int64; vertex: int64): int64 =
  if isNil(meshDataToolGetEdgeVertexMethodBind):
    meshDataToolGetEdgeVertexMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_edge_vertex")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(vertex)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetEdgeVertexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolGetFaceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFaceCount(self: MeshDataTool): int64 =
  if isNil(meshDataToolGetFaceCountMethodBind):
    meshDataToolGetFaceCountMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_face_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetFaceCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshDataToolGetFaceEdgeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFaceEdge(self: MeshDataTool; idx: int64; edge: int64): int64 =
  if isNil(meshDataToolGetFaceEdgeMethodBind):
    meshDataToolGetFaceEdgeMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_face_edge")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(edge)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetFaceEdgeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolGetFaceMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFaceMeta(self: MeshDataTool; idx: int64): Variant =
  if isNil(meshDataToolGetFaceMetaMethodBind):
    meshDataToolGetFaceMetaMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_face_meta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetFaceMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newVariant(ptrCallVal)

var meshDataToolGetFaceNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFaceNormal(self: MeshDataTool; idx: int64): Vector3 =
  if isNil(meshDataToolGetFaceNormalMethodBind):
    meshDataToolGetFaceNormalMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_face_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetFaceNormalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolGetFaceVertexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFaceVertex(self: MeshDataTool; idx: int64; vertex: int64): int64 =
  if isNil(meshDataToolGetFaceVertexMethodBind):
    meshDataToolGetFaceVertexMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_face_vertex")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(vertex)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetFaceVertexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFormat(self: MeshDataTool): int64 =
  if isNil(meshDataToolGetFormatMethodBind):
    meshDataToolGetFormatMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshDataToolGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMaterial(self: MeshDataTool): Material =
  if isNil(meshDataToolGetMaterialMethodBind):
    meshDataToolGetMaterialMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshDataToolGetVertexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertex(self: MeshDataTool; idx: int64): Vector3 =
  if isNil(meshDataToolGetVertexMethodBind):
    meshDataToolGetVertexMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetVertexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolGetVertexBonesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexBones(self: MeshDataTool; idx: int64): PoolIntArray =
  if isNil(meshDataToolGetVertexBonesMethodBind):
    meshDataToolGetVertexBonesMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_bones")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetVertexBonesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var meshDataToolGetVertexColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexColor(self: MeshDataTool; idx: int64): Color =
  if isNil(meshDataToolGetVertexColorMethodBind):
    meshDataToolGetVertexColorMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetVertexColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolGetVertexCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexCount(self: MeshDataTool): int64 =
  if isNil(meshDataToolGetVertexCountMethodBind):
    meshDataToolGetVertexCountMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetVertexCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshDataToolGetVertexEdgesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexEdges(self: MeshDataTool; idx: int64): PoolIntArray =
  if isNil(meshDataToolGetVertexEdgesMethodBind):
    meshDataToolGetVertexEdgesMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_edges")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetVertexEdgesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var meshDataToolGetVertexFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexFaces(self: MeshDataTool; idx: int64): PoolIntArray =
  if isNil(meshDataToolGetVertexFacesMethodBind):
    meshDataToolGetVertexFacesMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetVertexFacesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var meshDataToolGetVertexMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexMeta(self: MeshDataTool; idx: int64): Variant =
  if isNil(meshDataToolGetVertexMetaMethodBind):
    meshDataToolGetVertexMetaMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_meta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetVertexMetaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var meshDataToolGetVertexNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexNormal(self: MeshDataTool; idx: int64): Vector3 =
  if isNil(meshDataToolGetVertexNormalMethodBind):
    meshDataToolGetVertexNormalMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetVertexNormalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolGetVertexTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexTangent(self: MeshDataTool; idx: int64): Plane =
  if isNil(meshDataToolGetVertexTangentMethodBind):
    meshDataToolGetVertexTangentMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_tangent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetVertexTangentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolGetVertexUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexUv(self: MeshDataTool; idx: int64): Vector2 =
  if isNil(meshDataToolGetVertexUvMethodBind):
    meshDataToolGetVertexUvMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_uv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetVertexUvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolGetVertexUv2MethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexUv2(self: MeshDataTool; idx: int64): Vector2 =
  if isNil(meshDataToolGetVertexUv2MethodBind):
    meshDataToolGetVertexUv2MethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_uv2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshDataToolGetVertexUv2MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolGetVertexWeightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVertexWeights(self: MeshDataTool; idx: int64): PoolRealArray =
  if isNil(meshDataToolGetVertexWeightsMethodBind):
    meshDataToolGetVertexWeightsMethodBind = getMethod(cstring"MeshDataTool",
        cstring"get_vertex_weights")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  ptrCallRet = addr(ptrCallVal)
  meshDataToolGetVertexWeightsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var meshDataToolSetEdgeMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc setEdgeMeta(self: MeshDataTool; idx: int64; meta: Variant) =
  if isNil(meshDataToolSetEdgeMetaMethodBind):
    meshDataToolSetEdgeMetaMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_edge_meta")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = meta.godotVariant
  var ptrCallRet: pointer
  meshDataToolSetEdgeMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolSetFaceMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFaceMeta(self: MeshDataTool; idx: int64; meta: Variant) =
  if isNil(meshDataToolSetFaceMetaMethodBind):
    meshDataToolSetFaceMetaMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_face_meta")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = meta.godotVariant
  var ptrCallRet: pointer
  meshDataToolSetFaceMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMaterial(self: MeshDataTool; material: Material) =
  if isNil(meshDataToolSetMaterialMethodBind):
    meshDataToolSetMaterialMethodBind = getMethod(cstring"MeshDataTool",
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
  meshDataToolSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolSetVertexMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertex(self: MeshDataTool; idx: int64; vertex: Vector3) =
  if isNil(meshDataToolSetVertexMethodBind):
    meshDataToolSetVertexMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(vertex)
  var ptrCallRet: pointer
  meshDataToolSetVertexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolSetVertexBonesMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexBones(self: MeshDataTool; idx: int64; bones: PoolIntArray) =
  if isNil(meshDataToolSetVertexBonesMethodBind):
    meshDataToolSetVertexBonesMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_bones")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = bones.godotPoolIntArray
  var ptrCallRet: pointer
  meshDataToolSetVertexBonesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolSetVertexColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexColor(self: MeshDataTool; idx: int64; color: Color) =
  if isNil(meshDataToolSetVertexColorMethodBind):
    meshDataToolSetVertexColorMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  meshDataToolSetVertexColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolSetVertexMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexMeta(self: MeshDataTool; idx: int64; meta: Variant) =
  if isNil(meshDataToolSetVertexMetaMethodBind):
    meshDataToolSetVertexMetaMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_meta")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = meta.godotVariant
  var ptrCallRet: pointer
  meshDataToolSetVertexMetaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolSetVertexNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexNormal(self: MeshDataTool; idx: int64; normal: Vector3) =
  if isNil(meshDataToolSetVertexNormalMethodBind):
    meshDataToolSetVertexNormalMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_normal")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(normal)
  var ptrCallRet: pointer
  meshDataToolSetVertexNormalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolSetVertexTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexTangent(self: MeshDataTool; idx: int64; tangent: Plane) =
  if isNil(meshDataToolSetVertexTangentMethodBind):
    meshDataToolSetVertexTangentMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_tangent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(tangent)
  var ptrCallRet: pointer
  meshDataToolSetVertexTangentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshDataToolSetVertexUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexUv(self: MeshDataTool; idx: int64; uv: Vector2) =
  if isNil(meshDataToolSetVertexUvMethodBind):
    meshDataToolSetVertexUvMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_uv")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(uv)
  var ptrCallRet: pointer
  meshDataToolSetVertexUvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolSetVertexUv2MethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexUv2(self: MeshDataTool; idx: int64; uv2: Vector2) =
  if isNil(meshDataToolSetVertexUv2MethodBind):
    meshDataToolSetVertexUv2MethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_uv2")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(uv2)
  var ptrCallRet: pointer
  meshDataToolSetVertexUv2MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshDataToolSetVertexWeightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVertexWeights(self: MeshDataTool; idx: int64; weights: PoolRealArray) =
  if isNil(meshDataToolSetVertexWeightsMethodBind):
    meshDataToolSetVertexWeightsMethodBind = getMethod(cstring"MeshDataTool",
        cstring"set_vertex_weights")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = weights.godotPoolRealArray
  var ptrCallRet: pointer
  meshDataToolSetVertexWeightsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
