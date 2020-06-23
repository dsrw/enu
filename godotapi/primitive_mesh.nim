
import
  godot, godottypes, godotinternal, mesh

export
  godottypes, mesh

proc customAabb*(self: PrimitiveMesh): AABB {.gcsafe, locks: 0.}
proc `customAabb=`*(self: PrimitiveMesh; val: AABB) {.gcsafe, locks: 0.}
proc flipFaces*(self: PrimitiveMesh): bool {.gcsafe, locks: 0.}
proc `flipFaces=`*(self: PrimitiveMesh; val: bool) {.gcsafe, locks: 0.}
proc material*(self: PrimitiveMesh): Material {.gcsafe, locks: 0.}
proc `material=`*(self: PrimitiveMesh; val: Material) {.gcsafe, locks: 0.}
method update*(self: PrimitiveMesh) {.gcsafe, locks: 0, base.}
proc getMeshArrays*(self: PrimitiveMesh): Array {.gcsafe, locks: 0.}
var primitiveMeshGetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc customAabb(self: PrimitiveMesh): AABB =
  if isNil(primitiveMeshGetCustomAabbMethodBind):
    primitiveMeshGetCustomAabbMethodBind = getMethod(cstring"PrimitiveMesh",
        cstring"get_custom_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  primitiveMeshGetCustomAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var primitiveMeshSetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customAabb=`(self: PrimitiveMesh; val: AABB) =
  if isNil(primitiveMeshSetCustomAabbMethodBind):
    primitiveMeshSetCustomAabbMethodBind = getMethod(cstring"PrimitiveMesh",
        cstring"set_custom_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  primitiveMeshSetCustomAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var primitiveMeshGetFlipFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipFaces(self: PrimitiveMesh): bool =
  if isNil(primitiveMeshGetFlipFacesMethodBind):
    primitiveMeshGetFlipFacesMethodBind = getMethod(cstring"PrimitiveMesh",
        cstring"get_flip_faces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  primitiveMeshGetFlipFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var primitiveMeshSetFlipFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipFaces=`(self: PrimitiveMesh; val: bool) =
  if isNil(primitiveMeshSetFlipFacesMethodBind):
    primitiveMeshSetFlipFacesMethodBind = getMethod(cstring"PrimitiveMesh",
        cstring"set_flip_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  primitiveMeshSetFlipFacesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var primitiveMeshGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: PrimitiveMesh): Material =
  if isNil(primitiveMeshGetMaterialMethodBind):
    primitiveMeshGetMaterialMethodBind = getMethod(cstring"PrimitiveMesh",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  primitiveMeshGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var primitiveMeshSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: PrimitiveMesh; val: Material) =
  if isNil(primitiveMeshSetMaterialMethodBind):
    primitiveMeshSetMaterialMethodBind = getMethod(cstring"PrimitiveMesh",
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
  primitiveMeshSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var primitiveMeshUnderscoreupdateMethodBind {.threadvar.}: ptr GodotMethodBind
method update(self: PrimitiveMesh) =
  if isNil(primitiveMeshUnderscoreupdateMethodBind):
    primitiveMeshUnderscoreupdateMethodBind = getMethod(cstring"PrimitiveMesh",
        cstring"_update")
  var ptrCallRet: pointer
  primitiveMeshUnderscoreupdateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var primitiveMeshGetMeshArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMeshArrays(self: PrimitiveMesh): Array =
  if isNil(primitiveMeshGetMeshArraysMethodBind):
    primitiveMeshGetMeshArraysMethodBind = getMethod(cstring"PrimitiveMesh",
        cstring"get_mesh_arrays")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  primitiveMeshGetMeshArraysMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)
