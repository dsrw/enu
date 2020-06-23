
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc baseTexture*(self: MeshTexture): Texture {.gcsafe, locks: 0.}
proc `baseTexture=`*(self: MeshTexture; val: Texture) {.gcsafe, locks: 0.}
proc imageSize*(self: MeshTexture): Vector2 {.gcsafe, locks: 0.}
proc `imageSize=`*(self: MeshTexture; val: Vector2) {.gcsafe, locks: 0.}
proc mesh*(self: MeshTexture): Mesh {.gcsafe, locks: 0.}
proc `mesh=`*(self: MeshTexture; val: Mesh) {.gcsafe, locks: 0.}
var meshTextureGetBaseTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseTexture(self: MeshTexture): Texture =
  if isNil(meshTextureGetBaseTextureMethodBind):
    meshTextureGetBaseTextureMethodBind = getMethod(cstring"MeshTexture",
        cstring"get_base_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshTextureGetBaseTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshTextureSetBaseTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseTexture=`(self: MeshTexture; val: Texture) =
  if isNil(meshTextureSetBaseTextureMethodBind):
    meshTextureSetBaseTextureMethodBind = getMethod(cstring"MeshTexture",
        cstring"set_base_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  meshTextureSetBaseTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var meshTextureGetImageSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc imageSize(self: MeshTexture): Vector2 =
  if isNil(meshTextureGetImageSizeMethodBind):
    meshTextureGetImageSizeMethodBind = getMethod(cstring"MeshTexture",
        cstring"get_image_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  meshTextureGetImageSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var meshTextureSetImageSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `imageSize=`(self: MeshTexture; val: Vector2) =
  if isNil(meshTextureSetImageSizeMethodBind):
    meshTextureSetImageSizeMethodBind = getMethod(cstring"MeshTexture",
        cstring"set_image_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  meshTextureSetImageSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var meshTextureGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: MeshTexture): Mesh =
  if isNil(meshTextureGetMeshMethodBind):
    meshTextureGetMeshMethodBind = getMethod(cstring"MeshTexture",
        cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  meshTextureGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var meshTextureSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: MeshTexture; val: Mesh) =
  if isNil(meshTextureSetMeshMethodBind):
    meshTextureSetMeshMethodBind = getMethod(cstring"MeshTexture",
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
  meshTextureSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
