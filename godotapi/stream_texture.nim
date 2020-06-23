
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc loadPath*(self: StreamTexture): string {.gcsafe, locks: 0.}
proc `loadPath=`*(self: StreamTexture; val: string) {.gcsafe, locks: 0.}
var streamTextureGetLoadPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadPath(self: StreamTexture): string =
  if isNil(streamTextureGetLoadPathMethodBind):
    streamTextureGetLoadPathMethodBind = getMethod(cstring"StreamTexture",
        cstring"get_load_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  streamTextureGetLoadPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var streamTextureLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loadPath=`(self: StreamTexture; val: string) =
  if isNil(streamTextureLoadMethodBind):
    streamTextureLoadMethodBind = getMethod(cstring"StreamTexture", cstring"load")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  streamTextureLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
