
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc base*(self: ProxyTexture): Texture {.gcsafe, locks: 0.}
proc `base=`*(self: ProxyTexture; val: Texture) {.gcsafe, locks: 0.}
var proxyTextureGetBaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc base(self: ProxyTexture): Texture =
  if isNil(proxyTextureGetBaseMethodBind):
    proxyTextureGetBaseMethodBind = getMethod(cstring"ProxyTexture",
        cstring"get_base")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  proxyTextureGetBaseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var proxyTextureSetBaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc `base=`(self: ProxyTexture; val: Texture) =
  if isNil(proxyTextureSetBaseMethodBind):
    proxyTextureSetBaseMethodBind = getMethod(cstring"ProxyTexture",
        cstring"set_base")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  proxyTextureSetBaseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
