
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc size*(self: ExternalTexture): Vector2 {.gcsafe, locks: 0.}
proc `size=`*(self: ExternalTexture; val: Vector2) {.gcsafe, locks: 0.}
proc getExternalTextureId*(self: ExternalTexture): int64 {.gcsafe, locks: 0.}
var externalTextureGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: ExternalTexture): Vector2 =
  if isNil(externalTextureGetSizeMethodBind):
    externalTextureGetSizeMethodBind = getMethod(cstring"ExternalTexture",
        cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  externalTextureGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var externalTextureSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: ExternalTexture; val: Vector2) =
  if isNil(externalTextureSetSizeMethodBind):
    externalTextureSetSizeMethodBind = getMethod(cstring"ExternalTexture",
        cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  externalTextureSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var externalTextureGetExternalTextureIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getExternalTextureId(self: ExternalTexture): int64 =
  if isNil(externalTextureGetExternalTextureIdMethodBind):
    externalTextureGetExternalTextureIdMethodBind = getMethod(
        cstring"ExternalTexture", cstring"get_external_texture_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  externalTextureGetExternalTextureIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
