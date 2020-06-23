
import
  godot, godottypes, godotinternal, mesh

export
  godottypes, mesh

const
  ARRAY_BONES* = 6'i64
  ARRAY_COLOR* = 3'i64
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
  ARRAY_WEIGHTS_SIZE* = 4'i64
  NO_INDEX_ARRAY* = -1'i64
proc blendShapeMode*(self: ArrayMesh): int64 {.gcsafe, locks: 0.}
proc `blendShapeMode=`*(self: ArrayMesh; val: int64) {.gcsafe, locks: 0.}
proc customAabb*(self: ArrayMesh): AABB {.gcsafe, locks: 0.}
proc `customAabb=`*(self: ArrayMesh; val: AABB) {.gcsafe, locks: 0.}
proc addBlendShape*(self: ArrayMesh; name: string) {.gcsafe, locks: 0.}
proc addSurfaceFromArrays*(self: ArrayMesh; primitive: int64; arrays: Array;
                          blendShapes: Array = newArray();
                          compressFlags: int64 = 97280'i64) {.gcsafe, locks: 0.}
proc clearBlendShapes*(self: ArrayMesh) {.gcsafe, locks: 0.}
proc getBlendShapeCount*(self: ArrayMesh): int64 {.gcsafe, locks: 0.}
proc getBlendShapeName*(self: ArrayMesh; index: int64): string {.gcsafe, locks: 0.}
proc lightmapUnwrap*(self: ArrayMesh; transform: Transform; texelSize: float64): Error {.
    gcsafe, locks: 0.}
proc regenNormalmaps*(self: ArrayMesh) {.gcsafe, locks: 0.}
proc surfaceFindByName*(self: ArrayMesh; name: string): int64 {.gcsafe, locks: 0.}
proc surfaceGetArrayIndexLen*(self: ArrayMesh; surfIdx: int64): int64 {.gcsafe,
    locks: 0.}
proc surfaceGetArrayLen*(self: ArrayMesh; surfIdx: int64): int64 {.gcsafe, locks: 0.}
proc surfaceGetFormat*(self: ArrayMesh; surfIdx: int64): int64 {.gcsafe, locks: 0.}
proc surfaceGetName*(self: ArrayMesh; surfIdx: int64): string {.gcsafe, locks: 0.}
proc surfaceGetPrimitiveType*(self: ArrayMesh; surfIdx: int64): int64 {.gcsafe,
    locks: 0.}
proc surfaceRemove*(self: ArrayMesh; surfIdx: int64) {.gcsafe, locks: 0.}
proc surfaceSetName*(self: ArrayMesh; surfIdx: int64; name: string) {.gcsafe, locks: 0.}
proc surfaceUpdateRegion*(self: ArrayMesh; surfIdx: int64; offset: int64;
                         data: PoolByteArray) {.gcsafe, locks: 0.}
var arrayMeshGetBlendShapeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendShapeMode(self: ArrayMesh): int64 =
  if isNil(arrayMeshGetBlendShapeModeMethodBind):
    arrayMeshGetBlendShapeModeMethodBind = getMethod(cstring"ArrayMesh",
        cstring"get_blend_shape_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshGetBlendShapeModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var arrayMeshSetBlendShapeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blendShapeMode=`(self: ArrayMesh; val: int64) =
  if isNil(arrayMeshSetBlendShapeModeMethodBind):
    arrayMeshSetBlendShapeModeMethodBind = getMethod(cstring"ArrayMesh",
        cstring"set_blend_shape_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  arrayMeshSetBlendShapeModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var arrayMeshGetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc customAabb(self: ArrayMesh): AABB =
  if isNil(arrayMeshGetCustomAabbMethodBind):
    arrayMeshGetCustomAabbMethodBind = getMethod(cstring"ArrayMesh",
        cstring"get_custom_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshGetCustomAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var arrayMeshSetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customAabb=`(self: ArrayMesh; val: AABB) =
  if isNil(arrayMeshSetCustomAabbMethodBind):
    arrayMeshSetCustomAabbMethodBind = getMethod(cstring"ArrayMesh",
        cstring"set_custom_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  arrayMeshSetCustomAabbMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var arrayMeshAddBlendShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBlendShape(self: ArrayMesh; name: string) =
  if isNil(arrayMeshAddBlendShapeMethodBind):
    arrayMeshAddBlendShapeMethodBind = getMethod(cstring"ArrayMesh",
        cstring"add_blend_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  arrayMeshAddBlendShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var arrayMeshAddSurfaceFromArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSurfaceFromArrays(self: ArrayMesh; primitive: int64; arrays: Array;
                         blendShapes: Array = newArray();
                         compressFlags: int64 = 97280'i64) =
  if isNil(arrayMeshAddSurfaceFromArraysMethodBind):
    arrayMeshAddSurfaceFromArraysMethodBind = getMethod(cstring"ArrayMesh",
        cstring"add_surface_from_arrays")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(primitive)
  argsToPassToGodot[][1] = arrays.godotArray
  argsToPassToGodot[][2] = blendShapes.godotArray
  argsToPassToGodot[][3] = unsafeAddr(compressFlags)
  var ptrCallRet: pointer
  arrayMeshAddSurfaceFromArraysMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var arrayMeshClearBlendShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBlendShapes(self: ArrayMesh) =
  if isNil(arrayMeshClearBlendShapesMethodBind):
    arrayMeshClearBlendShapesMethodBind = getMethod(cstring"ArrayMesh",
        cstring"clear_blend_shapes")
  var ptrCallRet: pointer
  arrayMeshClearBlendShapesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var arrayMeshGetBlendShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBlendShapeCount(self: ArrayMesh): int64 =
  if isNil(arrayMeshGetBlendShapeCountMethodBind):
    arrayMeshGetBlendShapeCountMethodBind = getMethod(cstring"ArrayMesh",
        cstring"get_blend_shape_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshGetBlendShapeCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var arrayMeshGetBlendShapeNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBlendShapeName(self: ArrayMesh; index: int64): string =
  if isNil(arrayMeshGetBlendShapeNameMethodBind):
    arrayMeshGetBlendShapeNameMethodBind = getMethod(cstring"ArrayMesh",
        cstring"get_blend_shape_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  arrayMeshGetBlendShapeNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var arrayMeshLightmapUnwrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapUnwrap(self: ArrayMesh; transform: Transform; texelSize: float64): Error =
  if isNil(arrayMeshLightmapUnwrapMethodBind):
    arrayMeshLightmapUnwrapMethodBind = getMethod(cstring"ArrayMesh",
        cstring"lightmap_unwrap")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(transform)
  argsToPassToGodot[][1] = unsafeAddr(texelSize)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  arrayMeshLightmapUnwrapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var arrayMeshRegenNormalmapsMethodBind {.threadvar.}: ptr GodotMethodBind
proc regenNormalmaps(self: ArrayMesh) =
  if isNil(arrayMeshRegenNormalmapsMethodBind):
    arrayMeshRegenNormalmapsMethodBind = getMethod(cstring"ArrayMesh",
        cstring"regen_normalmaps")
  var ptrCallRet: pointer
  arrayMeshRegenNormalmapsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var arrayMeshSurfaceFindByNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceFindByName(self: ArrayMesh; name: string): int64 =
  if isNil(arrayMeshSurfaceFindByNameMethodBind):
    arrayMeshSurfaceFindByNameMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_find_by_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshSurfaceFindByNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var arrayMeshSurfaceGetArrayIndexLenMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetArrayIndexLen(self: ArrayMesh; surfIdx: int64): int64 =
  if isNil(arrayMeshSurfaceGetArrayIndexLenMethodBind):
    arrayMeshSurfaceGetArrayIndexLenMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_get_array_index_len")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshSurfaceGetArrayIndexLenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var arrayMeshSurfaceGetArrayLenMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetArrayLen(self: ArrayMesh; surfIdx: int64): int64 =
  if isNil(arrayMeshSurfaceGetArrayLenMethodBind):
    arrayMeshSurfaceGetArrayLenMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_get_array_len")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshSurfaceGetArrayLenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var arrayMeshSurfaceGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetFormat(self: ArrayMesh; surfIdx: int64): int64 =
  if isNil(arrayMeshSurfaceGetFormatMethodBind):
    arrayMeshSurfaceGetFormatMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_get_format")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshSurfaceGetFormatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var arrayMeshSurfaceGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetName(self: ArrayMesh; surfIdx: int64): string =
  if isNil(arrayMeshSurfaceGetNameMethodBind):
    arrayMeshSurfaceGetNameMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_get_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  arrayMeshSurfaceGetNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var arrayMeshSurfaceGetPrimitiveTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceGetPrimitiveType(self: ArrayMesh; surfIdx: int64): int64 =
  if isNil(arrayMeshSurfaceGetPrimitiveTypeMethodBind):
    arrayMeshSurfaceGetPrimitiveTypeMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_get_primitive_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  arrayMeshSurfaceGetPrimitiveTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var arrayMeshSurfaceRemoveMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceRemove(self: ArrayMesh; surfIdx: int64) =
  if isNil(arrayMeshSurfaceRemoveMethodBind):
    arrayMeshSurfaceRemoveMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_remove")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var ptrCallRet: pointer
  arrayMeshSurfaceRemoveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var arrayMeshSurfaceSetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceSetName(self: ArrayMesh; surfIdx: int64; name: string) =
  if isNil(arrayMeshSurfaceSetNameMethodBind):
    arrayMeshSurfaceSetNameMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_set_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  arrayMeshSurfaceSetNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var arrayMeshSurfaceUpdateRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc surfaceUpdateRegion(self: ArrayMesh; surfIdx: int64; offset: int64;
                        data: PoolByteArray) =
  if isNil(arrayMeshSurfaceUpdateRegionMethodBind):
    arrayMeshSurfaceUpdateRegionMethodBind = getMethod(cstring"ArrayMesh",
        cstring"surface_update_region")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surfIdx)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  argsToPassToGodot[][2] = data.godotPoolByteArray
  var ptrCallRet: pointer
  arrayMeshSurfaceUpdateRegionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
