
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc clear*(self: MeshLibrary) {.gcsafe, locks: 0.}
proc createItem*(self: MeshLibrary; id: int64) {.gcsafe, locks: 0.}
proc findItemByName*(self: MeshLibrary; name: string): int64 {.gcsafe, locks: 0.}
proc getItemList*(self: MeshLibrary): PoolIntArray {.gcsafe, locks: 0.}
proc getItemMesh*(self: MeshLibrary; id: int64): Mesh {.gcsafe, locks: 0.}
proc getItemName*(self: MeshLibrary; id: int64): string {.gcsafe, locks: 0.}
proc getItemNavmesh*(self: MeshLibrary; id: int64): NavigationMesh {.gcsafe, locks: 0.}
proc getItemNavmeshTransform*(self: MeshLibrary; id: int64): Transform {.gcsafe,
    locks: 0.}
proc getItemPreview*(self: MeshLibrary; id: int64): Texture {.gcsafe, locks: 0.}
proc getItemShapes*(self: MeshLibrary; id: int64): Array {.gcsafe, locks: 0.}
proc getLastUnusedItemId*(self: MeshLibrary): int64 {.gcsafe, locks: 0.}
proc removeItem*(self: MeshLibrary; id: int64) {.gcsafe, locks: 0.}
proc setItemMesh*(self: MeshLibrary; id: int64; mesh: Mesh) {.gcsafe, locks: 0.}
proc setItemName*(self: MeshLibrary; id: int64; name: string) {.gcsafe, locks: 0.}
proc setItemNavmesh*(self: MeshLibrary; id: int64; navmesh: NavigationMesh) {.gcsafe,
    locks: 0.}
proc setItemNavmeshTransform*(self: MeshLibrary; id: int64; navmesh: Transform) {.
    gcsafe, locks: 0.}
proc setItemPreview*(self: MeshLibrary; id: int64; texture: Texture) {.gcsafe, locks: 0.}
proc setItemShapes*(self: MeshLibrary; id: int64; shapes: Array) {.gcsafe, locks: 0.}
var meshLibraryClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: MeshLibrary) =
  if isNil(meshLibraryClearMethodBind):
    meshLibraryClearMethodBind = getMethod(cstring"MeshLibrary", cstring"clear")
  var ptrCallRet: pointer
  meshLibraryClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshLibraryCreateItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc createItem(self: MeshLibrary; id: int64) =
  if isNil(meshLibraryCreateItemMethodBind):
    meshLibraryCreateItemMethodBind = getMethod(cstring"MeshLibrary",
        cstring"create_item")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  meshLibraryCreateItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshLibraryFindItemByNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc findItemByName(self: MeshLibrary; name: string): int64 =
  if isNil(meshLibraryFindItemByNameMethodBind):
    meshLibraryFindItemByNameMethodBind = getMethod(cstring"MeshLibrary",
        cstring"find_item_by_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshLibraryFindItemByNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var meshLibraryGetItemListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemList(self: MeshLibrary): PoolIntArray =
  if isNil(meshLibraryGetItemListMethodBind):
    meshLibraryGetItemListMethodBind = getMethod(cstring"MeshLibrary",
        cstring"get_item_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  meshLibraryGetItemListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var meshLibraryGetItemMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemMesh(self: MeshLibrary; id: int64): Mesh =
  if isNil(meshLibraryGetItemMeshMethodBind):
    meshLibraryGetItemMeshMethodBind = getMethod(cstring"MeshLibrary",
        cstring"get_item_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshLibraryGetItemMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshLibraryGetItemNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemName(self: MeshLibrary; id: int64): string =
  if isNil(meshLibraryGetItemNameMethodBind):
    meshLibraryGetItemNameMethodBind = getMethod(cstring"MeshLibrary",
        cstring"get_item_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  meshLibraryGetItemNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var meshLibraryGetItemNavmeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemNavmesh(self: MeshLibrary; id: int64): NavigationMesh =
  if isNil(meshLibraryGetItemNavmeshMethodBind):
    meshLibraryGetItemNavmeshMethodBind = getMethod(cstring"MeshLibrary",
        cstring"get_item_navmesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshLibraryGetItemNavmeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshLibraryGetItemNavmeshTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemNavmeshTransform(self: MeshLibrary; id: int64): Transform =
  if isNil(meshLibraryGetItemNavmeshTransformMethodBind):
    meshLibraryGetItemNavmeshTransformMethodBind = getMethod(
        cstring"MeshLibrary", cstring"get_item_navmesh_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshLibraryGetItemNavmeshTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshLibraryGetItemPreviewMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemPreview(self: MeshLibrary; id: int64): Texture =
  if isNil(meshLibraryGetItemPreviewMethodBind):
    meshLibraryGetItemPreviewMethodBind = getMethod(cstring"MeshLibrary",
        cstring"get_item_preview")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshLibraryGetItemPreviewMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshLibraryGetItemShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemShapes(self: MeshLibrary; id: int64): Array =
  if isNil(meshLibraryGetItemShapesMethodBind):
    meshLibraryGetItemShapesMethodBind = getMethod(cstring"MeshLibrary",
        cstring"get_item_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  meshLibraryGetItemShapesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var meshLibraryGetLastUnusedItemIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLastUnusedItemId(self: MeshLibrary): int64 =
  if isNil(meshLibraryGetLastUnusedItemIdMethodBind):
    meshLibraryGetLastUnusedItemIdMethodBind = getMethod(cstring"MeshLibrary",
        cstring"get_last_unused_item_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshLibraryGetLastUnusedItemIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var meshLibraryRemoveItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeItem(self: MeshLibrary; id: int64) =
  if isNil(meshLibraryRemoveItemMethodBind):
    meshLibraryRemoveItemMethodBind = getMethod(cstring"MeshLibrary",
        cstring"remove_item")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  meshLibraryRemoveItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshLibrarySetItemMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemMesh(self: MeshLibrary; id: int64; mesh: Mesh) =
  if isNil(meshLibrarySetItemMeshMethodBind):
    meshLibrarySetItemMeshMethodBind = getMethod(cstring"MeshLibrary",
        cstring"set_item_mesh")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  meshLibrarySetItemMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshLibrarySetItemNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemName(self: MeshLibrary; id: int64; name: string) =
  if isNil(meshLibrarySetItemNameMethodBind):
    meshLibrarySetItemNameMethodBind = getMethod(cstring"MeshLibrary",
        cstring"set_item_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  meshLibrarySetItemNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var meshLibrarySetItemNavmeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemNavmesh(self: MeshLibrary; id: int64; navmesh: NavigationMesh) =
  if isNil(meshLibrarySetItemNavmeshMethodBind):
    meshLibrarySetItemNavmeshMethodBind = getMethod(cstring"MeshLibrary",
        cstring"set_item_navmesh")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not navmesh.isNil:
    navmesh.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  meshLibrarySetItemNavmeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshLibrarySetItemNavmeshTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemNavmeshTransform(self: MeshLibrary; id: int64; navmesh: Transform) =
  if isNil(meshLibrarySetItemNavmeshTransformMethodBind):
    meshLibrarySetItemNavmeshTransformMethodBind = getMethod(
        cstring"MeshLibrary", cstring"set_item_navmesh_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(navmesh)
  var ptrCallRet: pointer
  meshLibrarySetItemNavmeshTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshLibrarySetItemPreviewMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemPreview(self: MeshLibrary; id: int64; texture: Texture) =
  if isNil(meshLibrarySetItemPreviewMethodBind):
    meshLibrarySetItemPreviewMethodBind = getMethod(cstring"MeshLibrary",
        cstring"set_item_preview")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  meshLibrarySetItemPreviewMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshLibrarySetItemShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemShapes(self: MeshLibrary; id: int64; shapes: Array) =
  if isNil(meshLibrarySetItemShapesMethodBind):
    meshLibrarySetItemShapesMethodBind = getMethod(cstring"MeshLibrary",
        cstring"set_item_shapes")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = shapes.godotArray
  var ptrCallRet: pointer
  meshLibrarySetItemShapesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
