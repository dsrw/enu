
import
  godot, godottypes, godotinternal, networked_multiplayer_peer

export
  godottypes, networked_multiplayer_peer

proc getPeer*(self: WebSocketMultiplayerPeer; peerId: int64): WebSocketPeer {.gcsafe,
    locks: 0.}
proc setBuffers*(self: WebSocketMultiplayerPeer; inputBufferSizeKb: int64;
                inputMaxPackets: int64; outputBufferSizeKb: int64;
                outputMaxPackets: int64): Error {.gcsafe, locks: 0.}
var webSocketMultiplayerPeerGetPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPeer(self: WebSocketMultiplayerPeer; peerId: int64): WebSocketPeer =
  if isNil(webSocketMultiplayerPeerGetPeerMethodBind):
    webSocketMultiplayerPeerGetPeerMethodBind = getMethod(
        cstring"WebSocketMultiplayerPeer", cstring"get_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(peerId)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  webSocketMultiplayerPeerGetPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var webSocketMultiplayerPeerSetBuffersMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBuffers(self: WebSocketMultiplayerPeer; inputBufferSizeKb: int64;
               inputMaxPackets: int64; outputBufferSizeKb: int64;
               outputMaxPackets: int64): Error =
  if isNil(webSocketMultiplayerPeerSetBuffersMethodBind):
    webSocketMultiplayerPeerSetBuffersMethodBind = getMethod(
        cstring"WebSocketMultiplayerPeer", cstring"set_buffers")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(inputBufferSizeKb)
  argsToPassToGodot[][1] = unsafeAddr(inputMaxPackets)
  argsToPassToGodot[][2] = unsafeAddr(outputBufferSizeKb)
  argsToPassToGodot[][3] = unsafeAddr(outputMaxPackets)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webSocketMultiplayerPeerSetBuffersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)
