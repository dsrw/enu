
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc load*(self: CryptoKey; path: string): Error {.gcsafe, locks: 0.}
proc save*(self: CryptoKey; path: string): Error {.gcsafe, locks: 0.}
var cryptoKeyLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc load(self: CryptoKey; path: string): Error =
  if isNil(cryptoKeyLoadMethodBind):
    cryptoKeyLoadMethodBind = getMethod(cstring"CryptoKey", cstring"load")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  cryptoKeyLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var cryptoKeySaveMethodBind {.threadvar.}: ptr GodotMethodBind
proc save(self: CryptoKey; path: string): Error =
  if isNil(cryptoKeySaveMethodBind):
    cryptoKeySaveMethodBind = getMethod(cstring"CryptoKey", cstring"save")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  cryptoKeySaveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)
