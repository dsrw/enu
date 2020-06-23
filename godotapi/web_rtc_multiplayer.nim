
import
  godot, godottypes, godotinternal, networked_multiplayer_peer

export
  godottypes, networked_multiplayer_peer

proc addPeer*(self: WebRTCMultiplayer; peer: WebRTCPeerConnection; peerId: int64;
             unreliableLifetime: int64 = 1'i64): Error {.gcsafe, locks: 0.}
proc close*(self: WebRTCMultiplayer) {.gcsafe, locks: 0.}
proc getPeer*(self: WebRTCMultiplayer; peerId: int64): Dictionary {.gcsafe, locks: 0.}
proc getPeers*(self: WebRTCMultiplayer): Dictionary {.gcsafe, locks: 0.}
proc hasPeer*(self: WebRTCMultiplayer; peerId: int64): bool {.gcsafe, locks: 0.}
proc initialize*(self: WebRTCMultiplayer; peerId: int64;
                serverCompatibility: bool = false): Error {.gcsafe, locks: 0.}
proc removePeer*(self: WebRTCMultiplayer; peerId: int64) {.gcsafe, locks: 0.}
var webRTCMultiplayerAddPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPeer(self: WebRTCMultiplayer; peer: WebRTCPeerConnection; peerId: int64;
            unreliableLifetime: int64 = 1'i64): Error =
  if isNil(webRTCMultiplayerAddPeerMethodBind):
    webRTCMultiplayerAddPeerMethodBind = getMethod(cstring"WebRTCMultiplayer",
        cstring"add_peer")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not peer.isNil:
    peer.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(peerId)
  argsToPassToGodot[][2] = unsafeAddr(unreliableLifetime)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCMultiplayerAddPeerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var webRTCMultiplayerCloseMethodBind {.threadvar.}: ptr GodotMethodBind
proc close(self: WebRTCMultiplayer) =
  if isNil(webRTCMultiplayerCloseMethodBind):
    webRTCMultiplayerCloseMethodBind = getMethod(cstring"WebRTCMultiplayer",
        cstring"close")
  var ptrCallRet: pointer
  webRTCMultiplayerCloseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var webRTCMultiplayerGetPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPeer(self: WebRTCMultiplayer; peerId: int64): Dictionary =
  if isNil(webRTCMultiplayerGetPeerMethodBind):
    webRTCMultiplayerGetPeerMethodBind = getMethod(cstring"WebRTCMultiplayer",
        cstring"get_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(peerId)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  webRTCMultiplayerGetPeerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var webRTCMultiplayerGetPeersMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPeers(self: WebRTCMultiplayer): Dictionary =
  if isNil(webRTCMultiplayerGetPeersMethodBind):
    webRTCMultiplayerGetPeersMethodBind = getMethod(cstring"WebRTCMultiplayer",
        cstring"get_peers")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  webRTCMultiplayerGetPeersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var webRTCMultiplayerHasPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasPeer(self: WebRTCMultiplayer; peerId: int64): bool =
  if isNil(webRTCMultiplayerHasPeerMethodBind):
    webRTCMultiplayerHasPeerMethodBind = getMethod(cstring"WebRTCMultiplayer",
        cstring"has_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(peerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCMultiplayerHasPeerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var webRTCMultiplayerInitializeMethodBind {.threadvar.}: ptr GodotMethodBind
proc initialize(self: WebRTCMultiplayer; peerId: int64;
               serverCompatibility: bool = false): Error =
  if isNil(webRTCMultiplayerInitializeMethodBind):
    webRTCMultiplayerInitializeMethodBind = getMethod(cstring"WebRTCMultiplayer",
        cstring"initialize")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(peerId)
  argsToPassToGodot[][1] = unsafeAddr(serverCompatibility)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCMultiplayerInitializeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var webRTCMultiplayerRemovePeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePeer(self: WebRTCMultiplayer; peerId: int64) =
  if isNil(webRTCMultiplayerRemovePeerMethodBind):
    webRTCMultiplayerRemovePeerMethodBind = getMethod(cstring"WebRTCMultiplayer",
        cstring"remove_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(peerId)
  var ptrCallRet: pointer
  webRTCMultiplayerRemovePeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
