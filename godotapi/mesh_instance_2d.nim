
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc mesh*(self: MeshInstance2D): Mesh {.gcsafe, locks: 0.}
proc `mesh=`*(self: MeshInstance2D; val: Mesh) {.gcsafe, locks: 0.}
proc normalMap*(self: MeshInstance2D): Texture {.gcsafe, locks: 0.}
proc `normalMap=`*(self: MeshInstance2D; val: Texture) {.gcsafe, locks: 0.}
proc texture*(self: MeshInstance2D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: MeshInstance2D; val: Texture) {.gcsafe, locks: 0.}
var meshInstance2DGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: MeshInstance2D): Mesh =
  if isNil(meshInstance2DGetMeshMethodBind):
    meshInstance2DGetMeshMethodBind = getMethod(cstring"MeshInstance2D",
        cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshInstance2DGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshInstance2DSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: MeshInstance2D; val: Mesh) =
  if isNil(meshInstance2DSetMeshMethodBind):
    meshInstance2DSetMeshMethodBind = getMethod(cstring"MeshInstance2D",
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
  meshInstance2DSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshInstance2DGetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalMap(self: MeshInstance2D): Texture =
  if isNil(meshInstance2DGetNormalMapMethodBind):
    meshInstance2DGetNormalMapMethodBind = getMethod(cstring"MeshInstance2D",
        cstring"get_normal_map")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshInstance2DGetNormalMapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshInstance2DSetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalMap=`(self: MeshInstance2D; val: Texture) =
  if isNil(meshInstance2DSetNormalMapMethodBind):
    meshInstance2DSetNormalMapMethodBind = getMethod(cstring"MeshInstance2D",
        cstring"set_normal_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  meshInstance2DSetNormalMapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshInstance2DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: MeshInstance2D): Texture =
  if isNil(meshInstance2DGetTextureMethodBind):
    meshInstance2DGetTextureMethodBind = getMethod(cstring"MeshInstance2D",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshInstance2DGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshInstance2DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: MeshInstance2D; val: Texture) =
  if isNil(meshInstance2DSetTextureMethodBind):
    meshInstance2DSetTextureMethodBind = getMethod(cstring"MeshInstance2D",
        cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  meshInstance2DSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
