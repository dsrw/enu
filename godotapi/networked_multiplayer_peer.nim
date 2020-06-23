
import
  godot, godottypes, godotinternal, packet_peer

export
  godottypes, packet_peer

const
  CONNECTION_CONNECTED* = 2'i64
  CONNECTION_CONNECTING* = 1'i64
  CONNECTION_DISCONNECTED* = 0'i64
  TARGET_PEER_BROADCAST* = 0'i64
  TARGET_PEER_SERVER* = 1'i64
  TRANSFER_MODE_RELIABLE* = 2'i64
  TRANSFER_MODE_UNRELIABLE* = 0'i64
  TRANSFER_MODE_UNRELIABLE_ORDERED* = 1'i64
proc refuseNewConnections*(self: NetworkedMultiplayerPeer): bool {.gcsafe, locks: 0.}
proc `refuseNewConnections=`*(self: NetworkedMultiplayerPeer; val: bool) {.gcsafe,
    locks: 0.}
proc transferMode*(self: NetworkedMultiplayerPeer): int64 {.gcsafe, locks: 0.}
proc `transferMode=`*(self: NetworkedMultiplayerPeer; val: int64) {.gcsafe, locks: 0.}
proc getConnectionStatus*(self: NetworkedMultiplayerPeer): int64 {.gcsafe, locks: 0.}
proc getPacketPeer*(self: NetworkedMultiplayerPeer): int64 {.gcsafe, locks: 0.}
proc getUniqueId*(self: NetworkedMultiplayerPeer): int64 {.gcsafe, locks: 0.}
proc poll*(self: NetworkedMultiplayerPeer) {.gcsafe, locks: 0.}
proc setTargetPeer*(self: NetworkedMultiplayerPeer; id: int64) {.gcsafe, locks: 0.}
var networkedMultiplayerPeerIsRefusingNewConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc refuseNewConnections(self: NetworkedMultiplayerPeer): bool =
  if isNil(networkedMultiplayerPeerIsRefusingNewConnectionsMethodBind):
    networkedMultiplayerPeerIsRefusingNewConnectionsMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"is_refusing_new_connections")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerPeerIsRefusingNewConnectionsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var networkedMultiplayerPeerSetRefuseNewConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `refuseNewConnections=`(self: NetworkedMultiplayerPeer; val: bool) =
  if isNil(networkedMultiplayerPeerSetRefuseNewConnectionsMethodBind):
    networkedMultiplayerPeerSetRefuseNewConnectionsMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"set_refuse_new_connections")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerPeerSetRefuseNewConnectionsMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var networkedMultiplayerPeerGetTransferModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc transferMode(self: NetworkedMultiplayerPeer): int64 =
  if isNil(networkedMultiplayerPeerGetTransferModeMethodBind):
    networkedMultiplayerPeerGetTransferModeMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"get_transfer_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerPeerGetTransferModeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var networkedMultiplayerPeerSetTransferModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transferMode=`(self: NetworkedMultiplayerPeer; val: int64) =
  if isNil(networkedMultiplayerPeerSetTransferModeMethodBind):
    networkedMultiplayerPeerSetTransferModeMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"set_transfer_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerPeerSetTransferModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerPeerGetConnectionStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionStatus(self: NetworkedMultiplayerPeer): int64 =
  if isNil(networkedMultiplayerPeerGetConnectionStatusMethodBind):
    networkedMultiplayerPeerGetConnectionStatusMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"get_connection_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerPeerGetConnectionStatusMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var networkedMultiplayerPeerGetPacketPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPacketPeer(self: NetworkedMultiplayerPeer): int64 =
  if isNil(networkedMultiplayerPeerGetPacketPeerMethodBind):
    networkedMultiplayerPeerGetPacketPeerMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"get_packet_peer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerPeerGetPacketPeerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var networkedMultiplayerPeerGetUniqueIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUniqueId(self: NetworkedMultiplayerPeer): int64 =
  if isNil(networkedMultiplayerPeerGetUniqueIdMethodBind):
    networkedMultiplayerPeerGetUniqueIdMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"get_unique_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerPeerGetUniqueIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var networkedMultiplayerPeerPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: NetworkedMultiplayerPeer) =
  if isNil(networkedMultiplayerPeerPollMethodBind):
    networkedMultiplayerPeerPollMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"poll")
  var ptrCallRet: pointer
  networkedMultiplayerPeerPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var networkedMultiplayerPeerSetTargetPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTargetPeer(self: NetworkedMultiplayerPeer; id: int64) =
  if isNil(networkedMultiplayerPeerSetTargetPeerMethodBind):
    networkedMultiplayerPeerSetTargetPeerMethodBind = getMethod(
        cstring"NetworkedMultiplayerPeer", cstring"set_target_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  networkedMultiplayerPeerSetTargetPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
