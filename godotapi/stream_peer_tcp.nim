
import
  godot, godottypes, godotinternal, stream_peer

export
  godottypes, stream_peer

const
  STATUS_CONNECTED* = 2'i64
  STATUS_CONNECTING* = 1'i64
  STATUS_ERROR* = 3'i64
  STATUS_NONE* = 0'i64
proc connectToHost*(self: StreamPeerTCP; host: string; port: int64): Error {.gcsafe,
    locks: 0.}
proc disconnectFromHost*(self: StreamPeerTCP) {.gcsafe, locks: 0.}
proc getConnectedHost*(self: StreamPeerTCP): string {.gcsafe, locks: 0.}
proc getConnectedPort*(self: StreamPeerTCP): int64 {.gcsafe, locks: 0.}
proc getStatus*(self: StreamPeerTCP): int64 {.gcsafe, locks: 0.}
proc isConnectedToHost*(self: StreamPeerTCP): bool {.gcsafe, locks: 0.}
proc setNoDelay*(self: StreamPeerTCP; enabled: bool) {.gcsafe, locks: 0.}
var streamPeerTCPConnectToHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectToHost(self: StreamPeerTCP; host: string; port: int64): Error =
  if isNil(streamPeerTCPConnectToHostMethodBind):
    streamPeerTCPConnectToHostMethodBind = getMethod(cstring"StreamPeerTCP",
        cstring"connect_to_host")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(host)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(port)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  streamPeerTCPConnectToHostMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var streamPeerTCPDisconnectFromHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectFromHost(self: StreamPeerTCP) =
  if isNil(streamPeerTCPDisconnectFromHostMethodBind):
    streamPeerTCPDisconnectFromHostMethodBind = getMethod(cstring"StreamPeerTCP",
        cstring"disconnect_from_host")
  var ptrCallRet: pointer
  streamPeerTCPDisconnectFromHostMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var streamPeerTCPGetConnectedHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedHost(self: StreamPeerTCP): string =
  if isNil(streamPeerTCPGetConnectedHostMethodBind):
    streamPeerTCPGetConnectedHostMethodBind = getMethod(cstring"StreamPeerTCP",
        cstring"get_connected_host")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  streamPeerTCPGetConnectedHostMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var streamPeerTCPGetConnectedPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedPort(self: StreamPeerTCP): int64 =
  if isNil(streamPeerTCPGetConnectedPortMethodBind):
    streamPeerTCPGetConnectedPortMethodBind = getMethod(cstring"StreamPeerTCP",
        cstring"get_connected_port")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerTCPGetConnectedPortMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var streamPeerTCPGetStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStatus(self: StreamPeerTCP): int64 =
  if isNil(streamPeerTCPGetStatusMethodBind):
    streamPeerTCPGetStatusMethodBind = getMethod(cstring"StreamPeerTCP",
        cstring"get_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerTCPGetStatusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerTCPIsConnectedToHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc isConnectedToHost(self: StreamPeerTCP): bool =
  if isNil(streamPeerTCPIsConnectedToHostMethodBind):
    streamPeerTCPIsConnectedToHostMethodBind = getMethod(cstring"StreamPeerTCP",
        cstring"is_connected_to_host")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerTCPIsConnectedToHostMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var streamPeerTCPSetNoDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNoDelay(self: StreamPeerTCP; enabled: bool) =
  if isNil(streamPeerTCPSetNoDelayMethodBind):
    streamPeerTCPSetNoDelayMethodBind = getMethod(cstring"StreamPeerTCP",
        cstring"set_no_delay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  streamPeerTCPSetNoDelayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
