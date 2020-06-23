
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc allowObjectDecoding*(self: PacketPeer): bool {.gcsafe, locks: 0.}
proc `allowObjectDecoding=`*(self: PacketPeer; val: bool) {.gcsafe, locks: 0.}
proc encodeBufferMaxSize*(self: PacketPeer): int64 {.gcsafe, locks: 0.}
proc `encodeBufferMaxSize=`*(self: PacketPeer; val: int64) {.gcsafe, locks: 0.}
proc getAvailablePacketCount*(self: PacketPeer): int64 {.gcsafe, locks: 0.}
proc getPacket*(self: PacketPeer): PoolByteArray {.gcsafe, locks: 0.}
proc getPacketError*(self: PacketPeer): Error {.gcsafe, locks: 0.}
proc getVar*(self: PacketPeer; allowObjects: bool = false): Variant {.gcsafe, locks: 0.}
proc putPacket*(self: PacketPeer; buffer: PoolByteArray): Error {.gcsafe, locks: 0.}
proc putVar*(self: PacketPeer; varr: Variant; fullObjects: bool = false): Error {.gcsafe,
    locks: 0.}
var packetPeerIsObjectDecodingAllowedMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowObjectDecoding(self: PacketPeer): bool =
  if isNil(packetPeerIsObjectDecodingAllowedMethodBind):
    packetPeerIsObjectDecodingAllowedMethodBind = getMethod(cstring"PacketPeer",
        cstring"is_object_decoding_allowed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerIsObjectDecodingAllowedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var packetPeerSetAllowObjectDecodingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowObjectDecoding=`(self: PacketPeer; val: bool) =
  if isNil(packetPeerSetAllowObjectDecodingMethodBind):
    packetPeerSetAllowObjectDecodingMethodBind = getMethod(cstring"PacketPeer",
        cstring"set_allow_object_decoding")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  packetPeerSetAllowObjectDecodingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var packetPeerGetEncodeBufferMaxSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc encodeBufferMaxSize(self: PacketPeer): int64 =
  if isNil(packetPeerGetEncodeBufferMaxSizeMethodBind):
    packetPeerGetEncodeBufferMaxSizeMethodBind = getMethod(cstring"PacketPeer",
        cstring"get_encode_buffer_max_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerGetEncodeBufferMaxSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var packetPeerSetEncodeBufferMaxSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `encodeBufferMaxSize=`(self: PacketPeer; val: int64) =
  if isNil(packetPeerSetEncodeBufferMaxSizeMethodBind):
    packetPeerSetEncodeBufferMaxSizeMethodBind = getMethod(cstring"PacketPeer",
        cstring"set_encode_buffer_max_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  packetPeerSetEncodeBufferMaxSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var packetPeerGetAvailablePacketCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAvailablePacketCount(self: PacketPeer): int64 =
  if isNil(packetPeerGetAvailablePacketCountMethodBind):
    packetPeerGetAvailablePacketCountMethodBind = getMethod(cstring"PacketPeer",
        cstring"get_available_packet_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerGetAvailablePacketCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var packetPeerGetPacketMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPacket(self: PacketPeer): PoolByteArray =
  if isNil(packetPeerGetPacketMethodBind):
    packetPeerGetPacketMethodBind = getMethod(cstring"PacketPeer",
        cstring"get_packet")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  packetPeerGetPacketMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var packetPeerGetPacketErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPacketError(self: PacketPeer): Error =
  if isNil(packetPeerGetPacketErrorMethodBind):
    packetPeerGetPacketErrorMethodBind = getMethod(cstring"PacketPeer",
        cstring"get_packet_error")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerGetPacketErrorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var packetPeerGetVarMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVar(self: PacketPeer; allowObjects: bool = false): Variant =
  if isNil(packetPeerGetVarMethodBind):
    packetPeerGetVarMethodBind = getMethod(cstring"PacketPeer", cstring"get_var")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(allowObjects)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  packetPeerGetVarMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = newVariant(ptrCallVal)

var packetPeerPutPacketMethodBind {.threadvar.}: ptr GodotMethodBind
proc putPacket(self: PacketPeer; buffer: PoolByteArray): Error =
  if isNil(packetPeerPutPacketMethodBind):
    packetPeerPutPacketMethodBind = getMethod(cstring"PacketPeer",
        cstring"put_packet")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = buffer.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerPutPacketMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = Error(ptrCallVal)

var packetPeerPutVarMethodBind {.threadvar.}: ptr GodotMethodBind
proc putVar(self: PacketPeer; varr: Variant; fullObjects: bool = false): Error =
  if isNil(packetPeerPutVarMethodBind):
    packetPeerPutVarMethodBind = getMethod(cstring"PacketPeer", cstring"put_var")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = varr.godotVariant
  argsToPassToGodot[][1] = unsafeAddr(fullObjects)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packetPeerPutVarMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = Error(ptrCallVal)
