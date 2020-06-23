
import
  godot, godottypes, godotinternal, web_socket_multiplayer_peer

export
  godottypes, web_socket_multiplayer_peer

proc trustedSslCertificate*(self: WebSocketClient): X509Certificate {.gcsafe,
    locks: 0.}
proc `trustedSslCertificate=`*(self: WebSocketClient; val: X509Certificate) {.gcsafe,
    locks: 0.}
proc verifySsl*(self: WebSocketClient): bool {.gcsafe, locks: 0.}
proc `verifySsl=`*(self: WebSocketClient; val: bool) {.gcsafe, locks: 0.}
proc connectToUrl*(self: WebSocketClient; url: string;
                  protocols: PoolStringArray = newPoolStringArray();
                  gdMpApi: bool = false;
                  customHeaders: PoolStringArray = newPoolStringArray()): Error {.
    gcsafe, locks: 0.}
proc disconnectFromHost*(self: WebSocketClient; code: int64 = 1000'i64;
                        reason: string = "") {.gcsafe, locks: 0.}
proc getConnectedHost*(self: WebSocketClient): string {.gcsafe, locks: 0.}
proc getConnectedPort*(self: WebSocketClient): int64 {.gcsafe, locks: 0.}
var webSocketClientGetTrustedSslCertificateMethodBind {.threadvar.}: ptr GodotMethodBind
proc trustedSslCertificate(self: WebSocketClient): X509Certificate =
  if isNil(webSocketClientGetTrustedSslCertificateMethodBind):
    webSocketClientGetTrustedSslCertificateMethodBind = getMethod(
        cstring"WebSocketClient", cstring"get_trusted_ssl_certificate")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  webSocketClientGetTrustedSslCertificateMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var webSocketClientSetTrustedSslCertificateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `trustedSslCertificate=`(self: WebSocketClient; val: X509Certificate) =
  if isNil(webSocketClientSetTrustedSslCertificateMethodBind):
    webSocketClientSetTrustedSslCertificateMethodBind = getMethod(
        cstring"WebSocketClient", cstring"set_trusted_ssl_certificate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  webSocketClientSetTrustedSslCertificateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webSocketClientIsVerifySslEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc verifySsl(self: WebSocketClient): bool =
  if isNil(webSocketClientIsVerifySslEnabledMethodBind):
    webSocketClientIsVerifySslEnabledMethodBind = getMethod(
        cstring"WebSocketClient", cstring"is_verify_ssl_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketClientIsVerifySslEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webSocketClientSetVerifySslEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `verifySsl=`(self: WebSocketClient; val: bool) =
  if isNil(webSocketClientSetVerifySslEnabledMethodBind):
    webSocketClientSetVerifySslEnabledMethodBind = getMethod(
        cstring"WebSocketClient", cstring"set_verify_ssl_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  webSocketClientSetVerifySslEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webSocketClientConnectToUrlMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectToUrl(self: WebSocketClient; url: string;
                 protocols: PoolStringArray = newPoolStringArray();
                 gdMpApi: bool = false;
                 customHeaders: PoolStringArray = newPoolStringArray()): Error =
  if isNil(webSocketClientConnectToUrlMethodBind):
    webSocketClientConnectToUrlMethodBind = getMethod(cstring"WebSocketClient",
        cstring"connect_to_url")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(url)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = protocols.godotPoolStringArray
  argsToPassToGodot[][2] = unsafeAddr(gdMpApi)
  argsToPassToGodot[][3] = customHeaders.godotPoolStringArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webSocketClientConnectToUrlMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var webSocketClientDisconnectFromHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectFromHost(self: WebSocketClient; code: int64 = 1000'i64;
                       reason: string = "") =
  if isNil(webSocketClientDisconnectFromHostMethodBind):
    webSocketClientDisconnectFromHostMethodBind = getMethod(
        cstring"WebSocketClient", cstring"disconnect_from_host")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(code)
  var argToPassToGodot1 = toGodotString(reason)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  webSocketClientDisconnectFromHostMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var webSocketClientGetConnectedHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedHost(self: WebSocketClient): string =
  if isNil(webSocketClientGetConnectedHostMethodBind):
    webSocketClientGetConnectedHostMethodBind = getMethod(
        cstring"WebSocketClient", cstring"get_connected_host")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webSocketClientGetConnectedHostMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webSocketClientGetConnectedPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedPort(self: WebSocketClient): int64 =
  if isNil(webSocketClientGetConnectedPortMethodBind):
    webSocketClientGetConnectedPortMethodBind = getMethod(
        cstring"WebSocketClient", cstring"get_connected_port")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketClientGetConnectedPortMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
