
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc load*(self: X509Certificate; path: string): Error {.gcsafe, locks: 0.}
proc save*(self: X509Certificate; path: string): Error {.gcsafe, locks: 0.}
var x509CertificateLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc load(self: X509Certificate; path: string): Error =
  if isNil(x509CertificateLoadMethodBind):
    x509CertificateLoadMethodBind = getMethod(cstring"X509Certificate",
        cstring"load")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  x509CertificateLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var x509CertificateSaveMethodBind {.threadvar.}: ptr GodotMethodBind
proc save(self: X509Certificate; path: string): Error =
  if isNil(x509CertificateSaveMethodBind):
    x509CertificateSaveMethodBind = getMethod(cstring"X509Certificate",
        cstring"save")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  x509CertificateSaveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)
