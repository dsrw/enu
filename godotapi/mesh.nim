
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  ARRAY_BONES* = 6'i64
  ARRAY_COLOR* = 3'i64
  ARRAY_COMPRESS_BASE* = 9'i64
  ARRAY_COMPRESS_BONES* = 32768'i64
  ARRAY_COMPRESS_COLOR* = 4096'i64
  ARRAY_COMPRESS_DEFAULT* = 97280'i64
  ARRAY_COMPRESS_INDEX* = 131072'i64
  ARRAY_COMPRESS_NORMAL* = 1024'i64
  ARRAY_COMPRESS_TANGENT* = 2048'i64
  ARRAY_COMPRESS_TEX_UV* = 8192'i64
  ARRAY_COMPRESS_TEX_UV2* = 16384'i64
  ARRAY_COMPRESS_VERTEX* = 512'i64
  ARRAY_COMPRESS_WEIGHTS* = 65536'i64
  ARRAY_FLAG_USE_16_BIT_BONES* = 524288'i64
  ARRAY_FLAG_USE_2D_VERTICES* = 262144'i64
  ARRAY_FORMAT_BONES* = 64'i64
  ARRAY_FORMAT_COLOR* = 8'i64
  ARRAY_FORMAT_INDEX* = 256'i64
  ARRAY_FORMAT_NORMAL* = 2'i64
  ARRAY_FORMAT_TANGENT* = 4'i64
  ARRAY_FORMAT_TEX_UV* = 16'i64
  ARRAY_FORMAT_TEX_UV2* = 32'i64
  ARRAY_FORMAT_VERTEX* = 1'i64
  ARRAY_FORMAT_WEIGHTS* = 128'i64
  ARRAY_INDEX* = 8'i64
  ARRAY_MAX* = 9'i64
  ARRAY_NORMAL* = 1'i64
  ARRAY_TANGENT* = 2'i64
  ARRAY_TEX_UV* = 4'i64
  ARRAY_TEX_UV2* = 5'i64
  ARRAY_VERTEX* = 0'i64
  ARRAY_WEIGHTS* = 7'i64
  BLEND_SHAPE_MODE_NORMALIZED* = 0'i64
  BLEND_SHAPE_MODE_RELATIVE* = 1'i64
  PRIMITIVE_LINES* = 1'i64
  PRIMITIVE_LINE_LOOP* = 3'i64
  PRIMITIVE_LINE_STRIP* = 2'i64
  PRIMITIVE_POINTS* = 0'i64
  PRIMITIVE_TRIANGLES* = 4'i64
  PRIMITIVE_TRIANGLE_FAN* = 6'i64
  PRIMITIVE_TRIANGLE_STRIP* = 5'i64
proc lightmapSizeHint*(self: Mesh): Vector2 {.gcsafe, locks: 0.}
proc `lightmapSizeHint=`*(self: Mesh; val: Vector2) {.gcsafe, locks: 0.}
proc createConvexShape*(self: Mesh): Shape {.gcsafe, locks: 0.}
proc createOutline*(self: Mesh; margin: float64): Mesh {.gcsafe, locks: 0.}
proc createTrimeshShape*(self: Mesh): Shape {.gcsafe, locks: 0.}
proc generateTriangleMesh*(self: Mesh): TriangleMesh {.gcsafe, locks: 0.}
proc getAabb*(self: Mesh): AABB {.gcsafe, locks: 0.}
proc getFaces*(self: Mesh): PoolVector3Array {.gcsafe, locks: 0.}
proc getSurfaceCount*(self: Mesh): int64 {.gcsafe, locks: 0.}
proc surfaceGetArrays*(self: Mesh; surfIdx: int64): Array {.gcsafe, locks: 0.}
proc surfaceGetBlendShapeArrays*(self: Mesh; surfIdx: int64): Array {.gcsafe, locks: 0.}
proc surfaceGetMaterial*(self: Mesh; surfIdx: int64): Material {.gcsafe, locks: 0.}
proc surfaceSetMaterial*(self: Mesh; surfIdx: int64; material: Material) {.gcsafe,
    locks: 0.}
var meshGetLightmapSizeHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapSizeHint(self: Mesh): Vector2 =
  if isNil(meshGetLightmapSizeHintMethodBind):
    meshGetLightmapSizeHintMethodBind = getMethod(cstring"Mesh",
        cstring"get_lightmap_size_hint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshGetLightmapSizeHintMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshSetLightmapSizeHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightmapSizeHint=`(self: Mesh; val: Vector2) =
  if isNil(meshSetLightmapSizeHintMethodBind):
    meshSetLightmapSizeHintMethodBind = getMethod(cstring"Mesh",
        cstring"set_lightmap_size_hint")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  meshSetLightmapSizeHintMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshCreateConvexShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc createConvexShape(self: Mesh): Shape =
  if isNil(meshCreateConvexShapeMethodBind):
    meshCreateConvexShapeMethodBind = getMethod(cstring"Mesh",
        cstring"create_convex_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshCreateConvexShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshCreateOutlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc createOutline(self: Mesh; margin: float64): Mesh =
  if isNil(meshCreateOutlineMethodBind):
    meshCreateOutlineMethodBind = getMethod(cstring"Mesh", cstring"create_outline")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(margin)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshCreateOutlineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshCreateTrimeshShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc createTrimeshShape(self: Mesh): Shape =
  if isNil(meshCreateTrimeshShapeMethodBind):
    meshCreateTrimeshShapeMethodBind = getMethod(cstring"Mesh",
        cstring"create_trimesh_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshCreateTrimeshShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshGenerateTriangleMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateTriangleMesh(self: Mesh): TriangleMesh =
  if isNil(meshGenerateTriangleMeshMethodBind):
    meshGenerateTriangleMeshMethodBind = getMethod(cstring"Mesh",
        cstring"generate_triangle_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshGenerateTriangleMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshGetAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAabb(self: Mesh): AABB =
  if isNil(meshGetAabbMethodBind):
    meshGetAabbMethodBind = getMethod(cstring"Mesh", cstring"get_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshGetAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshGetFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFaces(self: Mesh): PoolVector3Array =
  if isNil(meshGetFacesMethodBind):
    meshGetFacesMethodBind = getMethod(cstring"Mesh", cstring"get_faces")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  meshGetFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var meshGetSurfaceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSurfaceCount(self: Mesh): int64 =
  if isNil(meshGetSurfaceCountMethodBind):
    meshGetSurfaceCountMethodBind = getMethod(cstring"Mesh",
        cstring"get_surface_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshGetSurfaceCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshSurfaceGetArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetArrays(self: Mesh; surfIdx: int64): Array =
  if isNil(meshSurfaceGetArraysMethodBind):
    meshSurfaceGetArraysMethodBind = getMethod(cstring"Mesh",
        cstring"surface_get_arrays")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  meshSurfaceGetArraysMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var meshSurfaceGetBlendShapeArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetBlendShapeArrays(self: Mesh; surfIdx: int64): Array =
  if isNil(meshSurfaceGetBlendShapeArraysMethodBind):
    meshSurfaceGetBlendShapeArraysMethodBind = getMethod(cstring"Mesh",
        cstring"surface_get_blend_shape_arrays")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  meshSurfaceGetBlendShapeArraysMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var meshSurfaceGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetMaterial(self: Mesh; surfIdx: int64): Material =
  if isNil(meshSurfaceGetMaterialMethodBind):
    meshSurfaceGetMaterialMethodBind = getMethod(cstring"Mesh",
        cstring"surface_get_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshSurfaceGetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshSurfaceSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceSetMaterial(self: Mesh; surfIdx: int64; material: Material) =
  if isNil(meshSurfaceSetMaterialMethodBind):
    meshSurfaceSetMaterialMethodBind = getMethod(cstring"Mesh",
        cstring"surface_set_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  let argToPassToGodot1 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  meshSurfaceSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
