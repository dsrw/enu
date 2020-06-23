
import
  godot, godottypes, godotinternal, stream_peer

export
  godottypes, stream_peer

const
  STATUS_CONNECTED* = 2'i64
  STATUS_DISCONNECTED* = 0'i64
  STATUS_ERROR* = 3'i64
  STATUS_ERROR_HOSTNAME_MISMATCH* = 4'i64
  STATUS_HANDSHAKING* = 1'i64
proc blockingHandshake*(self: StreamPeerSSL): bool {.gcsafe, locks: 0.}
proc `blockingHandshake=`*(self: StreamPeerSSL; val: bool) {.gcsafe, locks: 0.}
proc acceptStream*(self: StreamPeerSSL; stream: StreamPeer; privateKey: CryptoKey;
                  certificate: X509Certificate; chain: X509Certificate = nil): Error {.
    gcsafe, locks: 0.}
proc connectToStream*(self: StreamPeerSSL; stream: StreamPeer;
                     validateCerts: bool = false; forHostname: string = "";
                     validCertificate: X509Certificate = nil): Error {.gcsafe,
    locks: 0.}
proc disconnectFromStream*(self: StreamPeerSSL) {.gcsafe, locks: 0.}
proc getStatus*(self: StreamPeerSSL): int64 {.gcsafe, locks: 0.}
proc poll*(self: StreamPeerSSL) {.gcsafe, locks: 0.}
var streamPeerSSLIsBlockingHandshakeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc blockingHandshake(self: StreamPeerSSL): bool =
  if isNil(streamPeerSSLIsBlockingHandshakeEnabledMethodBind):
    streamPeerSSLIsBlockingHandshakeEnabledMethodBind = getMethod(
        cstring"StreamPeerSSL", cstring"is_blocking_handshake_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerSSLIsBlockingHandshakeEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var streamPeerSSLSetBlockingHandshakeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blockingHandshake=`(self: StreamPeerSSL; val: bool) =
  if isNil(streamPeerSSLSetBlockingHandshakeEnabledMethodBind):
    streamPeerSSLSetBlockingHandshakeEnabledMethodBind = getMethod(
        cstring"StreamPeerSSL", cstring"set_blocking_handshake_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  streamPeerSSLSetBlockingHandshakeEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var streamPeerSSLAcceptStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc acceptStream(self: StreamPeerSSL; stream: StreamPeer; privateKey: CryptoKey;
                 certificate: X509Certificate; chain: X509Certificate = nil): Error =
  if isNil(streamPeerSSLAcceptStreamMethodBind):
    streamPeerSSLAcceptStreamMethodBind = getMethod(cstring"StreamPeerSSL",
        cstring"accept_stream")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not stream.isNil:
    stream.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not privateKey.isNil:
    privateKey.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not certificate.isNil:
    certificate.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  let argToPassToGodot3 = if not chain.isNil:
    chain.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  streamPeerSSLAcceptStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var streamPeerSSLConnectToStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectToStream(self: StreamPeerSSL; stream: StreamPeer;
                    validateCerts: bool = false; forHostname: string = "";
                    validCertificate: X509Certificate = nil): Error =
  if isNil(streamPeerSSLConnectToStreamMethodBind):
    streamPeerSSLConnectToStreamMethodBind = getMethod(cstring"StreamPeerSSL",
        cstring"connect_to_stream")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not stream.isNil:
    stream.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(validateCerts)
  var argToPassToGodot2 = toGodotString(forHostname)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  let argToPassToGodot3 = if not validCertificate.isNil:
    validCertificate.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  streamPeerSSLConnectToStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)
  result = Error(ptrCallVal)

var streamPeerSSLDisconnectFromStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectFromStream(self: StreamPeerSSL) =
  if isNil(streamPeerSSLDisconnectFromStreamMethodBind):
    streamPeerSSLDisconnectFromStreamMethodBind = getMethod(
        cstring"StreamPeerSSL", cstring"disconnect_from_stream")
  var ptrCallRet: pointer
  streamPeerSSLDisconnectFromStreamMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var streamPeerSSLGetStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStatus(self: StreamPeerSSL): int64 =
  if isNil(streamPeerSSLGetStatusMethodBind):
    streamPeerSSLGetStatusMethodBind = getMethod(cstring"StreamPeerSSL",
        cstring"get_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerSSLGetStatusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerSSLPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: StreamPeerSSL) =
  if isNil(streamPeerSSLPollMethodBind):
    streamPeerSSLPollMethodBind = getMethod(cstring"StreamPeerSSL", cstring"poll")
  var ptrCallRet: pointer
  streamPeerSSLPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
