
import
  godot, godottypes, godotinternal, packet_peer

export
  godottypes, packet_peer

const
  WRITE_MODE_BINARY* = 1'i64
  WRITE_MODE_TEXT* = 0'i64
proc close*(self: WebSocketPeer; code: int64 = 1000'i64; reason: string = "") {.gcsafe,
    locks: 0.}
proc getConnectedHost*(self: WebSocketPeer): string {.gcsafe, locks: 0.}
proc getConnectedPort*(self: WebSocketPeer): int64 {.gcsafe, locks: 0.}
proc getWriteMode*(self: WebSocketPeer): int64 {.gcsafe, locks: 0.}
proc isConnectedToHost*(self: WebSocketPeer): bool {.gcsafe, locks: 0.}
proc setNoDelay*(self: WebSocketPeer; enabled: bool) {.gcsafe, locks: 0.}
proc setWriteMode*(self: WebSocketPeer; mode: int64) {.gcsafe, locks: 0.}
proc wasStringPacket*(self: WebSocketPeer): bool {.gcsafe, locks: 0.}
var webSocketPeerCloseMethodBind {.threadvar.}: ptr GodotMethodBind
proc close(self: WebSocketPeer; code: int64 = 1000'i64; reason: string = "") =
  if isNil(webSocketPeerCloseMethodBind):
    webSocketPeerCloseMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"close")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(code)
  var argToPassToGodot1 = toGodotString(reason)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  webSocketPeerCloseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot1)

var webSocketPeerGetConnectedHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedHost(self: WebSocketPeer): string =
  if isNil(webSocketPeerGetConnectedHostMethodBind):
    webSocketPeerGetConnectedHostMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"get_connected_host")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webSocketPeerGetConnectedHostMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webSocketPeerGetConnectedPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedPort(self: WebSocketPeer): int64 =
  if isNil(webSocketPeerGetConnectedPortMethodBind):
    webSocketPeerGetConnectedPortMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"get_connected_port")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketPeerGetConnectedPortMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webSocketPeerGetWriteModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWriteMode(self: WebSocketPeer): int64 =
  if isNil(webSocketPeerGetWriteModeMethodBind):
    webSocketPeerGetWriteModeMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"get_write_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketPeerGetWriteModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var webSocketPeerIsConnectedToHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc isConnectedToHost(self: WebSocketPeer): bool =
  if isNil(webSocketPeerIsConnectedToHostMethodBind):
    webSocketPeerIsConnectedToHostMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"is_connected_to_host")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketPeerIsConnectedToHostMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webSocketPeerSetNoDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNoDelay(self: WebSocketPeer; enabled: bool) =
  if isNil(webSocketPeerSetNoDelayMethodBind):
    webSocketPeerSetNoDelayMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"set_no_delay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  webSocketPeerSetNoDelayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var webSocketPeerSetWriteModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWriteMode(self: WebSocketPeer; mode: int64) =
  if isNil(webSocketPeerSetWriteModeMethodBind):
    webSocketPeerSetWriteModeMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"set_write_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  var ptrCallRet: pointer
  webSocketPeerSetWriteModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webSocketPeerWasStringPacketMethodBind {.threadvar.}: ptr GodotMethodBind
proc wasStringPacket(self: WebSocketPeer): bool =
  if isNil(webSocketPeerWasStringPacketMethodBind):
    webSocketPeerWasStringPacketMethodBind = getMethod(cstring"WebSocketPeer",
        cstring"was_string_packet")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webSocketPeerWasStringPacketMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
