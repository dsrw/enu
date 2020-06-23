
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  RPC_MODE_DISABLED* = 0'i64
  RPC_MODE_MASTER* = 2'i64
  RPC_MODE_MASTERSYNC* = 5'i64
  RPC_MODE_PUPPET* = 3'i64
  RPC_MODE_PUPPETSYNC* = 6'i64
  RPC_MODE_REMOTE* = 1'i64
  RPC_MODE_REMOTESYNC* = 4'i64
  RPC_MODE_SLAVE* = 3'i64
  RPC_MODE_SYNC* = 4'i64
proc allowObjectDecoding*(self: MultiplayerAPI): bool {.gcsafe, locks: 0.}
proc `allowObjectDecoding=`*(self: MultiplayerAPI; val: bool) {.gcsafe, locks: 0.}
proc networkPeer*(self: MultiplayerAPI): NetworkedMultiplayerPeer {.gcsafe, locks: 0.}
proc `networkPeer=`*(self: MultiplayerAPI; val: NetworkedMultiplayerPeer) {.gcsafe,
    locks: 0.}
proc refuseNewNetworkConnections*(self: MultiplayerAPI): bool {.gcsafe, locks: 0.}
proc `refuseNewNetworkConnections=`*(self: MultiplayerAPI; val: bool) {.gcsafe,
    locks: 0.}
method addPeer*(self: MultiplayerAPI; id: int64) {.gcsafe, locks: 0, base.}
method connectedToServer*(self: MultiplayerAPI) {.gcsafe, locks: 0, base.}
method connectionFailed*(self: MultiplayerAPI) {.gcsafe, locks: 0, base.}
method delPeer*(self: MultiplayerAPI; id: int64) {.gcsafe, locks: 0, base.}
method serverDisconnected*(self: MultiplayerAPI) {.gcsafe, locks: 0, base.}
proc clear*(self: MultiplayerAPI) {.gcsafe, locks: 0.}
proc getNetworkConnectedPeers*(self: MultiplayerAPI): PoolIntArray {.gcsafe, locks: 0.}
proc getNetworkUniqueId*(self: MultiplayerAPI): int64 {.gcsafe, locks: 0.}
proc getRpcSenderId*(self: MultiplayerAPI): int64 {.gcsafe, locks: 0.}
proc hasNetworkPeer*(self: MultiplayerAPI): bool {.gcsafe, locks: 0.}
proc isNetworkServer*(self: MultiplayerAPI): bool {.gcsafe, locks: 0.}
proc poll*(self: MultiplayerAPI) {.gcsafe, locks: 0.}
proc sendBytes*(self: MultiplayerAPI; bytes: PoolByteArray; id: int64 = 0'i64;
               mode: int64 = 2'i64): Error {.gcsafe, locks: 0.}
proc setRootNode*(self: MultiplayerAPI; node: Node) {.gcsafe, locks: 0.}
var multiplayerAPIIsObjectDecodingAllowedMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowObjectDecoding(self: MultiplayerAPI): bool =
  if isNil(multiplayerAPIIsObjectDecodingAllowedMethodBind):
    multiplayerAPIIsObjectDecodingAllowedMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"is_object_decoding_allowed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiplayerAPIIsObjectDecodingAllowedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var multiplayerAPISetAllowObjectDecodingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowObjectDecoding=`(self: MultiplayerAPI; val: bool) =
  if isNil(multiplayerAPISetAllowObjectDecodingMethodBind):
    multiplayerAPISetAllowObjectDecodingMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"set_allow_object_decoding")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  multiplayerAPISetAllowObjectDecodingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiplayerAPIGetNetworkPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc networkPeer(self: MultiplayerAPI): NetworkedMultiplayerPeer =
  if isNil(multiplayerAPIGetNetworkPeerMethodBind):
    multiplayerAPIGetNetworkPeerMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"get_network_peer")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  multiplayerAPIGetNetworkPeerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var multiplayerAPISetNetworkPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `networkPeer=`(self: MultiplayerAPI; val: NetworkedMultiplayerPeer) =
  if isNil(multiplayerAPISetNetworkPeerMethodBind):
    multiplayerAPISetNetworkPeerMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"set_network_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  multiplayerAPISetNetworkPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiplayerAPIIsRefusingNewNetworkConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc refuseNewNetworkConnections(self: MultiplayerAPI): bool =
  if isNil(multiplayerAPIIsRefusingNewNetworkConnectionsMethodBind):
    multiplayerAPIIsRefusingNewNetworkConnectionsMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"is_refusing_new_network_connections")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiplayerAPIIsRefusingNewNetworkConnectionsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var multiplayerAPISetRefuseNewNetworkConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `refuseNewNetworkConnections=`(self: MultiplayerAPI; val: bool) =
  if isNil(multiplayerAPISetRefuseNewNetworkConnectionsMethodBind):
    multiplayerAPISetRefuseNewNetworkConnectionsMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"set_refuse_new_network_connections")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  multiplayerAPISetRefuseNewNetworkConnectionsMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var multiplayerAPIUnderscoreaddPeerMethodBind {.threadvar.}: ptr GodotMethodBind
method addPeer(self: MultiplayerAPI; id: int64) =
  if isNil(multiplayerAPIUnderscoreaddPeerMethodBind):
    multiplayerAPIUnderscoreaddPeerMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"_add_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  multiplayerAPIUnderscoreaddPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiplayerAPIUnderscoreconnectedToServerMethodBind {.threadvar.}: ptr GodotMethodBind
method connectedToServer(self: MultiplayerAPI) =
  if isNil(multiplayerAPIUnderscoreconnectedToServerMethodBind):
    multiplayerAPIUnderscoreconnectedToServerMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"_connected_to_server")
  var ptrCallRet: pointer
  multiplayerAPIUnderscoreconnectedToServerMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var multiplayerAPIUnderscoreconnectionFailedMethodBind {.threadvar.}: ptr GodotMethodBind
method connectionFailed(self: MultiplayerAPI) =
  if isNil(multiplayerAPIUnderscoreconnectionFailedMethodBind):
    multiplayerAPIUnderscoreconnectionFailedMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"_connection_failed")
  var ptrCallRet: pointer
  multiplayerAPIUnderscoreconnectionFailedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var multiplayerAPIUnderscoredelPeerMethodBind {.threadvar.}: ptr GodotMethodBind
method delPeer(self: MultiplayerAPI; id: int64) =
  if isNil(multiplayerAPIUnderscoredelPeerMethodBind):
    multiplayerAPIUnderscoredelPeerMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"_del_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  multiplayerAPIUnderscoredelPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiplayerAPIUnderscoreserverDisconnectedMethodBind {.threadvar.}: ptr GodotMethodBind
method serverDisconnected(self: MultiplayerAPI) =
  if isNil(multiplayerAPIUnderscoreserverDisconnectedMethodBind):
    multiplayerAPIUnderscoreserverDisconnectedMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"_server_disconnected")
  var ptrCallRet: pointer
  multiplayerAPIUnderscoreserverDisconnectedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var multiplayerAPIClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: MultiplayerAPI) =
  if isNil(multiplayerAPIClearMethodBind):
    multiplayerAPIClearMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"clear")
  var ptrCallRet: pointer
  multiplayerAPIClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiplayerAPIGetNetworkConnectedPeersMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNetworkConnectedPeers(self: MultiplayerAPI): PoolIntArray =
  if isNil(multiplayerAPIGetNetworkConnectedPeersMethodBind):
    multiplayerAPIGetNetworkConnectedPeersMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"get_network_connected_peers")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  multiplayerAPIGetNetworkConnectedPeersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var multiplayerAPIGetNetworkUniqueIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNetworkUniqueId(self: MultiplayerAPI): int64 =
  if isNil(multiplayerAPIGetNetworkUniqueIdMethodBind):
    multiplayerAPIGetNetworkUniqueIdMethodBind = getMethod(
        cstring"MultiplayerAPI", cstring"get_network_unique_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiplayerAPIGetNetworkUniqueIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var multiplayerAPIGetRpcSenderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRpcSenderId(self: MultiplayerAPI): int64 =
  if isNil(multiplayerAPIGetRpcSenderIdMethodBind):
    multiplayerAPIGetRpcSenderIdMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"get_rpc_sender_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiplayerAPIGetRpcSenderIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiplayerAPIHasNetworkPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasNetworkPeer(self: MultiplayerAPI): bool =
  if isNil(multiplayerAPIHasNetworkPeerMethodBind):
    multiplayerAPIHasNetworkPeerMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"has_network_peer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiplayerAPIHasNetworkPeerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiplayerAPIIsNetworkServerMethodBind {.threadvar.}: ptr GodotMethodBind
proc isNetworkServer(self: MultiplayerAPI): bool =
  if isNil(multiplayerAPIIsNetworkServerMethodBind):
    multiplayerAPIIsNetworkServerMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"is_network_server")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiplayerAPIIsNetworkServerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var multiplayerAPIPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: MultiplayerAPI) =
  if isNil(multiplayerAPIPollMethodBind):
    multiplayerAPIPollMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"poll")
  var ptrCallRet: pointer
  multiplayerAPIPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiplayerAPISendBytesMethodBind {.threadvar.}: ptr GodotMethodBind
proc sendBytes(self: MultiplayerAPI; bytes: PoolByteArray; id: int64 = 0'i64;
              mode: int64 = 2'i64): Error =
  if isNil(multiplayerAPISendBytesMethodBind):
    multiplayerAPISendBytesMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"send_bytes")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = bytes.godotPoolByteArray
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(mode)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  multiplayerAPISendBytesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var multiplayerAPISetRootNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRootNode(self: MultiplayerAPI; node: Node) =
  if isNil(multiplayerAPISetRootNodeMethodBind):
    multiplayerAPISetRootNodeMethodBind = getMethod(cstring"MultiplayerAPI",
        cstring"set_root_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  multiplayerAPISetRootNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
