
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc generateRandomBytes*(self: Crypto; size: int64): PoolByteArray {.gcsafe, locks: 0.}
proc generateRsa*(self: Crypto; size: int64): CryptoKey {.gcsafe, locks: 0.}
proc generateSelfSignedCertificate*(self: Crypto; key: CryptoKey; issuerName: string = "CN=myserver,O=myorganisation,C=IT";
                                   notBefore: string = "20140101000000";
                                   notAfter: string = "20340101000000"): X509Certificate {.
    gcsafe, locks: 0.}
var cryptoGenerateRandomBytesMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateRandomBytes(self: Crypto; size: int64): PoolByteArray =
  if isNil(cryptoGenerateRandomBytesMethodBind):
    cryptoGenerateRandomBytesMethodBind = getMethod(cstring"Crypto",
        cstring"generate_random_bytes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  cryptoGenerateRandomBytesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var cryptoGenerateRsaMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateRsa(self: Crypto; size: int64): CryptoKey =
  if isNil(cryptoGenerateRsaMethodBind):
    cryptoGenerateRsaMethodBind = getMethod(cstring"Crypto", cstring"generate_rsa")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cryptoGenerateRsaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cryptoGenerateSelfSignedCertificateMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateSelfSignedCertificate(self: Crypto; key: CryptoKey; issuerName: string = "CN=myserver,O=myorganisation,C=IT";
                                  notBefore: string = "20140101000000";
                                  notAfter: string = "20340101000000"): X509Certificate =
  if isNil(cryptoGenerateSelfSignedCertificateMethodBind):
    cryptoGenerateSelfSignedCertificateMethodBind = getMethod(cstring"Crypto",
        cstring"generate_self_signed_certificate")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(issuerName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var argToPassToGodot2 = toGodotString(notBefore)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var argToPassToGodot3 = toGodotString(notAfter)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cryptoGenerateSelfSignedCertificateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot3)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
