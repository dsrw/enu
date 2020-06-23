
import
  godot, godottypes, godotinternal, packet_peer

export
  godottypes, packet_peer

proc close*(self: PacketPeerUDP) {.gcsafe, locks: 0.}
proc connectToHost*(self: PacketPeerUDP; host: string; port: int64): Error {.gcsafe,
    locks: 0.}
proc getPacketIp*(self: PacketPeerUDP): string {.gcsafe, locks: 0.}
proc getPacketPort*(self: PacketPeerUDP): int64 {.gcsafe, locks: 0.}
proc isConnectedToHost*(self: PacketPeerUDP): bool {.gcsafe, locks: 0.}
proc isListening*(self: PacketPeerUDP): bool {.gcsafe, locks: 0.}
proc joinMulticastGroup*(self: PacketPeerUDP; multicastAddress: string;
                        interfaceName: string): Error {.gcsafe, locks: 0.}
proc leaveMulticastGroup*(self: PacketPeerUDP; multicastAddress: string;
                         interfaceName: string): Error {.gcsafe, locks: 0.}
proc listen*(self: PacketPeerUDP; port: int64; bindAddress: string = "*";
            recvBufSize: int64 = 65536'i64): Error {.gcsafe, locks: 0.}
proc setBroadcastEnabled*(self: PacketPeerUDP; enabled: bool) {.gcsafe, locks: 0.}
proc setDestAddress*(self: PacketPeerUDP; host: string; port: int64): Error {.gcsafe,
    locks: 0.}
proc wait*(self: PacketPeerUDP): Error {.gcsafe, locks: 0.}
var packetPeerUDPCloseMethodBind {.threadvar.}: ptr GodotMethodBind
proc close(self: PacketPeerUDP) =
  if isNil(packetPeerUDPCloseMethodBind):
    packetPeerUDPCloseMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"close")
  var ptrCallRet: pointer
  packetPeerUDPCloseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var packetPeerUDPConnectToHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectToHost(self: PacketPeerUDP; host: string; port: int64): Error =
  if isNil(packetPeerUDPConnectToHostMethodBind):
    packetPeerUDPConnectToHostMethodBind = getMethod(cstring"PacketPeerUDP",
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
  packetPeerUDPConnectToHostMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var packetPeerUDPGetPacketIpMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPacketIp(self: PacketPeerUDP): string =
  if isNil(packetPeerUDPGetPacketIpMethodBind):
    packetPeerUDPGetPacketIpMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"get_packet_ip")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  packetPeerUDPGetPacketIpMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var packetPeerUDPGetPacketPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPacketPort(self: PacketPeerUDP): int64 =
  if isNil(packetPeerUDPGetPacketPortMethodBind):
    packetPeerUDPGetPacketPortMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"get_packet_port")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerUDPGetPacketPortMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var packetPeerUDPIsConnectedToHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc isConnectedToHost(self: PacketPeerUDP): bool =
  if isNil(packetPeerUDPIsConnectedToHostMethodBind):
    packetPeerUDPIsConnectedToHostMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"is_connected_to_host")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerUDPIsConnectedToHostMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var packetPeerUDPIsListeningMethodBind {.threadvar.}: ptr GodotMethodBind
proc isListening(self: PacketPeerUDP): bool =
  if isNil(packetPeerUDPIsListeningMethodBind):
    packetPeerUDPIsListeningMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"is_listening")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerUDPIsListeningMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var packetPeerUDPJoinMulticastGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc joinMulticastGroup(self: PacketPeerUDP; multicastAddress: string;
                       interfaceName: string): Error =
  if isNil(packetPeerUDPJoinMulticastGroupMethodBind):
    packetPeerUDPJoinMulticastGroupMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"join_multicast_group")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(multicastAddress)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(interfaceName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerUDPJoinMulticastGroupMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var packetPeerUDPLeaveMulticastGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc leaveMulticastGroup(self: PacketPeerUDP; multicastAddress: string;
                        interfaceName: string): Error =
  if isNil(packetPeerUDPLeaveMulticastGroupMethodBind):
    packetPeerUDPLeaveMulticastGroupMethodBind = getMethod(
        cstring"PacketPeerUDP", cstring"leave_multicast_group")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(multicastAddress)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(interfaceName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerUDPLeaveMulticastGroupMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var packetPeerUDPListenMethodBind {.threadvar.}: ptr GodotMethodBind
proc listen(self: PacketPeerUDP; port: int64; bindAddress: string = "*";
           recvBufSize: int64 = 65536'i64): Error =
  if isNil(packetPeerUDPListenMethodBind):
    packetPeerUDPListenMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"listen")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var argToPassToGodot1 = toGodotString(bindAddress)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(recvBufSize)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerUDPListenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var packetPeerUDPSetBroadcastEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBroadcastEnabled(self: PacketPeerUDP; enabled: bool) =
  if isNil(packetPeerUDPSetBroadcastEnabledMethodBind):
    packetPeerUDPSetBroadcastEnabledMethodBind = getMethod(
        cstring"PacketPeerUDP", cstring"set_broadcast_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  packetPeerUDPSetBroadcastEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var packetPeerUDPSetDestAddressMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDestAddress(self: PacketPeerUDP; host: string; port: int64): Error =
  if isNil(packetPeerUDPSetDestAddressMethodBind):
    packetPeerUDPSetDestAddressMethodBind = getMethod(cstring"PacketPeerUDP",
        cstring"set_dest_address")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(host)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(port)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerUDPSetDestAddressMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var packetPeerUDPWaitMethodBind {.threadvar.}: ptr GodotMethodBind
proc wait(self: PacketPeerUDP): Error =
  if isNil(packetPeerUDPWaitMethodBind):
    packetPeerUDPWaitMethodBind = getMethod(cstring"PacketPeerUDP", cstring"wait")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerUDPWaitMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)
