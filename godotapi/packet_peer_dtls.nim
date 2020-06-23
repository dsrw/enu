
import
  godot, godottypes, godotinternal, packet_peer

export
  godottypes, packet_peer

const
  STATUS_CONNECTED* = 2'i64
  STATUS_DISCONNECTED* = 0'i64
  STATUS_ERROR* = 3'i64
  STATUS_ERROR_HOSTNAME_MISMATCH* = 4'i64
  STATUS_HANDSHAKING* = 1'i64
proc connectToPeer*(self: PacketPeerDTLS; packetPeer: PacketPeerUDP;
                   validateCerts: bool = true; forHostname: string = "";
                   validCertificate: X509Certificate = nil): Error {.gcsafe, locks: 0.}
proc disconnectFromPeer*(self: PacketPeerDTLS) {.gcsafe, locks: 0.}
proc getStatus*(self: PacketPeerDTLS): int64 {.gcsafe, locks: 0.}
proc poll*(self: PacketPeerDTLS) {.gcsafe, locks: 0.}
var packetPeerDTLSConnectToPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectToPeer(self: PacketPeerDTLS; packetPeer: PacketPeerUDP;
                  validateCerts: bool = true; forHostname: string = "";
                  validCertificate: X509Certificate = nil): Error =
  if isNil(packetPeerDTLSConnectToPeerMethodBind):
    packetPeerDTLSConnectToPeerMethodBind = getMethod(cstring"PacketPeerDTLS",
        cstring"connect_to_peer")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not packetPeer.isNil:
    packetPeer.godotObject
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
  packetPeerDTLSConnectToPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)
  result = Error(ptrCallVal)

var packetPeerDTLSDisconnectFromPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectFromPeer(self: PacketPeerDTLS) =
  if isNil(packetPeerDTLSDisconnectFromPeerMethodBind):
    packetPeerDTLSDisconnectFromPeerMethodBind = getMethod(
        cstring"PacketPeerDTLS", cstring"disconnect_from_peer")
  var ptrCallRet: pointer
  packetPeerDTLSDisconnectFromPeerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var packetPeerDTLSGetStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStatus(self: PacketPeerDTLS): int64 =
  if isNil(packetPeerDTLSGetStatusMethodBind):
    packetPeerDTLSGetStatusMethodBind = getMethod(cstring"PacketPeerDTLS",
        cstring"get_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerDTLSGetStatusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var packetPeerDTLSPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: PacketPeerDTLS) =
  if isNil(packetPeerDTLSPollMethodBind):
    packetPeerDTLSPollMethodBind = getMethod(cstring"PacketPeerDTLS",
        cstring"poll")
  var ptrCallRet: pointer
  packetPeerDTLSPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
