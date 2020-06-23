
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc setup*(self: DTLSServer; key: CryptoKey; certificate: X509Certificate;
           chain: X509Certificate = nil): Error {.gcsafe, locks: 0.}
proc takeConnection*(self: DTLSServer; udpPeer: PacketPeerUDP): PacketPeerDTLS {.
    gcsafe, locks: 0.}
var dTLSServerSetupMethodBind {.threadvar.}: ptr GodotMethodBind
proc setup(self: DTLSServer; key: CryptoKey; certificate: X509Certificate;
          chain: X509Certificate = nil): Error =
  if isNil(dTLSServerSetupMethodBind):
    dTLSServerSetupMethodBind = getMethod(cstring"DTLSServer", cstring"setup")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not certificate.isNil:
    certificate.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not chain.isNil:
    chain.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  dTLSServerSetupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = Error(ptrCallVal)

var dTLSServerTakeConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc takeConnection(self: DTLSServer; udpPeer: PacketPeerUDP): PacketPeerDTLS =
  if isNil(dTLSServerTakeConnectionMethodBind):
    dTLSServerTakeConnectionMethodBind = getMethod(cstring"DTLSServer",
        cstring"take_connection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not udpPeer.isNil:
    udpPeer.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  dTLSServerTakeConnectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
