
import
  godot, godottypes, godotinternal, web_socket_multiplayer_peer

export
  godottypes, web_socket_multiplayer_peer

proc bindIp*(self: WebSocketServer): string {.gcsafe, locks: 0.}
proc `bindIp=`*(self: WebSocketServer; val: string) {.gcsafe, locks: 0.}
proc caChain*(self: WebSocketServer): X509Certificate {.gcsafe, locks: 0.}
proc `caChain=`*(self: WebSocketServer; val: X509Certificate) {.gcsafe, locks: 0.}
proc privateKey*(self: WebSocketServer): CryptoKey {.gcsafe, locks: 0.}
proc `privateKey=`*(self: WebSocketServer; val: CryptoKey) {.gcsafe, locks: 0.}
proc sslCertificate*(self: WebSocketServer): X509Certificate {.gcsafe, locks: 0.}
proc `sslCertificate=`*(self: WebSocketServer; val: X509Certificate) {.gcsafe,
    locks: 0.}
proc disconnectPeer*(self: WebSocketServer; id: int64; code: int64 = 1000'i64;
                    reason: string = "") {.gcsafe, locks: 0.}
proc getPeerAddress*(self: WebSocketServer; id: int64): string {.gcsafe, locks: 0.}
proc getPeerPort*(self: WebSocketServer; id: int64): int64 {.gcsafe, locks: 0.}
proc hasPeer*(self: WebSocketServer; id: int64): bool {.gcsafe, locks: 0.}
proc isListening*(self: WebSocketServer): bool {.gcsafe, locks: 0.}
proc listen*(self: WebSocketServer; port: int64;
            protocols: PoolStringArray = newPoolStringArray(); gdMpApi: bool = false): Error {.
    gcsafe, locks: 0.}
proc stop*(self: WebSocketServer) {.gcsafe, locks: 0.}
var webSocketServerGetBindIpMethodBind {.threadvar.}: ptr GodotMethodBind
proc bindIp(self: WebSocketServer): string =
  if isNil(webSocketServerGetBindIpMethodBind):
    webSocketServerGetBindIpMethodBind = getMethod(cstring"WebSocketServer",
        cstring"get_bind_ip")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webSocketServerGetBindIpMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webSocketServerSetBindIpMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bindIp=`(self: WebSocketServer; val: string) =
  if isNil(webSocketServerSetBindIpMethodBind):
    webSocketServerSetBindIpMethodBind = getMethod(cstring"WebSocketServer",
        cstring"set_bind_ip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webSocketServerSetBindIpMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var webSocketServerGetCaChainMethodBind {.threadvar.}: ptr GodotMethodBind
proc caChain(self: WebSocketServer): X509Certificate =
  if isNil(webSocketServerGetCaChainMethodBind):
    webSocketServerGetCaChainMethodBind = getMethod(cstring"WebSocketServer",
        cstring"get_ca_chain")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  webSocketServerGetCaChainMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var webSocketServerSetCaChainMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caChain=`(self: WebSocketServer; val: X509Certificate) =
  if isNil(webSocketServerSetCaChainMethodBind):
    webSocketServerSetCaChainMethodBind = getMethod(cstring"WebSocketServer",
        cstring"set_ca_chain")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  webSocketServerSetCaChainMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webSocketServerGetPrivateKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc privateKey(self: WebSocketServer): CryptoKey =
  if isNil(webSocketServerGetPrivateKeyMethodBind):
    webSocketServerGetPrivateKeyMethodBind = getMethod(cstring"WebSocketServer",
        cstring"get_private_key")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  webSocketServerGetPrivateKeyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var webSocketServerSetPrivateKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `privateKey=`(self: WebSocketServer; val: CryptoKey) =
  if isNil(webSocketServerSetPrivateKeyMethodBind):
    webSocketServerSetPrivateKeyMethodBind = getMethod(cstring"WebSocketServer",
        cstring"set_private_key")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  webSocketServerSetPrivateKeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webSocketServerGetSslCertificateMethodBind {.threadvar.}: ptr GodotMethodBind
proc sslCertificate(self: WebSocketServer): X509Certificate =
  if isNil(webSocketServerGetSslCertificateMethodBind):
    webSocketServerGetSslCertificateMethodBind = getMethod(
        cstring"WebSocketServer", cstring"get_ssl_certificate")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  webSocketServerGetSslCertificateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var webSocketServerSetSslCertificateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sslCertificate=`(self: WebSocketServer; val: X509Certificate) =
  if isNil(webSocketServerSetSslCertificateMethodBind):
    webSocketServerSetSslCertificateMethodBind = getMethod(
        cstring"WebSocketServer", cstring"set_ssl_certificate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  webSocketServerSetSslCertificateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webSocketServerDisconnectPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectPeer(self: WebSocketServer; id: int64; code: int64 = 1000'i64;
                   reason: string = "") =
  if isNil(webSocketServerDisconnectPeerMethodBind):
    webSocketServerDisconnectPeerMethodBind = getMethod(cstring"WebSocketServer",
        cstring"disconnect_peer")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(code)
  var argToPassToGodot2 = toGodotString(reason)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  webSocketServerDisconnectPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var webSocketServerGetPeerAddressMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPeerAddress(self: WebSocketServer; id: int64): string =
  if isNil(webSocketServerGetPeerAddressMethodBind):
    webSocketServerGetPeerAddressMethodBind = getMethod(cstring"WebSocketServer",
        cstring"get_peer_address")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webSocketServerGetPeerAddressMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webSocketServerGetPeerPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPeerPort(self: WebSocketServer; id: int64): int64 =
  if isNil(webSocketServerGetPeerPortMethodBind):
    webSocketServerGetPeerPortMethodBind = getMethod(cstring"WebSocketServer",
        cstring"get_peer_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketServerGetPeerPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webSocketServerHasPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasPeer(self: WebSocketServer; id: int64): bool =
  if isNil(webSocketServerHasPeerMethodBind):
    webSocketServerHasPeerMethodBind = getMethod(cstring"WebSocketServer",
        cstring"has_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketServerHasPeerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var webSocketServerIsListeningMethodBind {.threadvar.}: ptr GodotMethodBind
proc isListening(self: WebSocketServer): bool =
  if isNil(webSocketServerIsListeningMethodBind):
    webSocketServerIsListeningMethodBind = getMethod(cstring"WebSocketServer",
        cstring"is_listening")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketServerIsListeningMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var webSocketServerListenMethodBind {.threadvar.}: ptr GodotMethodBind
proc listen(self: WebSocketServer; port: int64;
           protocols: PoolStringArray = newPoolStringArray(); gdMpApi: bool = false): Error =
  if isNil(webSocketServerListenMethodBind):
    webSocketServerListenMethodBind = getMethod(cstring"WebSocketServer",
        cstring"listen")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  argsToPassToGodot[][1] = protocols.godotPoolStringArray
  argsToPassToGodot[][2] = unsafeAddr(gdMpApi)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webSocketServerListenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var webSocketServerStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: WebSocketServer) =
  if isNil(webSocketServerStopMethodBind):
    webSocketServerStopMethodBind = getMethod(cstring"WebSocketServer",
        cstring"stop")
  var ptrCallRet: pointer
  webSocketServerStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
