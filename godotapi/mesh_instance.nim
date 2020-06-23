
import
  godot, godottypes, godotinternal, geometry_instance

export
  godottypes, geometry_instance

proc mesh*(self: MeshInstance): Mesh {.gcsafe, locks: 0.}
proc `mesh=`*(self: MeshInstance; val: Mesh) {.gcsafe, locks: 0.}
proc skeleton*(self: MeshInstance): NodePath {.gcsafe, locks: 0.}
proc `skeleton=`*(self: MeshInstance; val: NodePath) {.gcsafe, locks: 0.}
proc skin*(self: MeshInstance): Skin {.gcsafe, locks: 0.}
proc `skin=`*(self: MeshInstance; val: Skin) {.gcsafe, locks: 0.}
method meshChanged*(self: MeshInstance) {.gcsafe, locks: 0, base.}
proc createConvexCollision*(self: MeshInstance) {.gcsafe, locks: 0.}
proc createDebugTangents*(self: MeshInstance) {.gcsafe, locks: 0.}
proc createTrimeshCollision*(self: MeshInstance) {.gcsafe, locks: 0.}
proc getSurfaceMaterial*(self: MeshInstance; surface: int64): Material {.gcsafe,
    locks: 0.}
proc getSurfaceMaterialCount*(self: MeshInstance): int64 {.gcsafe, locks: 0.}
proc setSurfaceMaterial*(self: MeshInstance; surface: int64; material: Material) {.
    gcsafe, locks: 0.}
var meshInstanceGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: MeshInstance): Mesh =
  if isNil(meshInstanceGetMeshMethodBind):
    meshInstanceGetMeshMethodBind = getMethod(cstring"MeshInstance",
        cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshInstanceGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshInstanceSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: MeshInstance; val: Mesh) =
  if isNil(meshInstanceSetMeshMethodBind):
    meshInstanceSetMeshMethodBind = getMethod(cstring"MeshInstance",
        cstring"set_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  meshInstanceSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var meshInstanceGetSkeletonPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeleton(self: MeshInstance): NodePath =
  if isNil(meshInstanceGetSkeletonPathMethodBind):
    meshInstanceGetSkeletonPathMethodBind = getMethod(cstring"MeshInstance",
        cstring"get_skeleton_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  meshInstanceGetSkeletonPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var meshInstanceSetSkeletonPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skeleton=`(self: MeshInstance; val: NodePath) =
  if isNil(meshInstanceSetSkeletonPathMethodBind):
    meshInstanceSetSkeletonPathMethodBind = getMethod(cstring"MeshInstance",
        cstring"set_skeleton_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  meshInstanceSetSkeletonPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshInstanceGetSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc skin(self: MeshInstance): Skin =
  if isNil(meshInstanceGetSkinMethodBind):
    meshInstanceGetSkinMethodBind = getMethod(cstring"MeshInstance",
        cstring"get_skin")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshInstanceGetSkinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshInstanceSetSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skin=`(self: MeshInstance; val: Skin) =
  if isNil(meshInstanceSetSkinMethodBind):
    meshInstanceSetSkinMethodBind = getMethod(cstring"MeshInstance",
        cstring"set_skin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  meshInstanceSetSkinMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var meshInstanceUnderscoremeshChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method meshChanged(self: MeshInstance) =
  if isNil(meshInstanceUnderscoremeshChangedMethodBind):
    meshInstanceUnderscoremeshChangedMethodBind = getMethod(
        cstring"MeshInstance", cstring"_mesh_changed")
  var ptrCallRet: pointer
  meshInstanceUnderscoremeshChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var meshInstanceCreateConvexCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc createConvexCollision(self: MeshInstance) =
  if isNil(meshInstanceCreateConvexCollisionMethodBind):
    meshInstanceCreateConvexCollisionMethodBind = getMethod(
        cstring"MeshInstance", cstring"create_convex_collision")
  var ptrCallRet: pointer
  meshInstanceCreateConvexCollisionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var meshInstanceCreateDebugTangentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc createDebugTangents(self: MeshInstance) =
  if isNil(meshInstanceCreateDebugTangentsMethodBind):
    meshInstanceCreateDebugTangentsMethodBind = getMethod(cstring"MeshInstance",
        cstring"create_debug_tangents")
  var ptrCallRet: pointer
  meshInstanceCreateDebugTangentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var meshInstanceCreateTrimeshCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc createTrimeshCollision(self: MeshInstance) =
  if isNil(meshInstanceCreateTrimeshCollisionMethodBind):
    meshInstanceCreateTrimeshCollisionMethodBind = getMethod(
        cstring"MeshInstance", cstring"create_trimesh_collision")
  var ptrCallRet: pointer
  meshInstanceCreateTrimeshCollisionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var meshInstanceGetSurfaceMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSurfaceMaterial(self: MeshInstance; surface: int64): Material =
  if isNil(meshInstanceGetSurfaceMaterialMethodBind):
    meshInstanceGetSurfaceMaterialMethodBind = getMethod(cstring"MeshInstance",
        cstring"get_surface_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surface)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshInstanceGetSurfaceMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshInstanceGetSurfaceMaterialCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSurfaceMaterialCount(self: MeshInstance): int64 =
  if isNil(meshInstanceGetSurfaceMaterialCountMethodBind):
    meshInstanceGetSurfaceMaterialCountMethodBind = getMethod(
        cstring"MeshInstance", cstring"get_surface_material_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshInstanceGetSurfaceMaterialCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var meshInstanceSetSurfaceMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSurfaceMaterial(self: MeshInstance; surface: int64; material: Material) =
  if isNil(meshInstanceSetSurfaceMaterialMethodBind):
    meshInstanceSetSurfaceMaterialMethodBind = getMethod(cstring"MeshInstance",
        cstring"set_surface_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(surface)
  let argToPassToGodot1 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  meshInstanceSetSurfaceMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
