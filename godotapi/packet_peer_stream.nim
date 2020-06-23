
import
  godot, godottypes, godotinternal, packet_peer

export
  godottypes, packet_peer

proc inputBufferMaxSize*(self: PacketPeerStream): int64 {.gcsafe, locks: 0.}
proc `inputBufferMaxSize=`*(self: PacketPeerStream; val: int64) {.gcsafe, locks: 0.}
proc outputBufferMaxSize*(self: PacketPeerStream): int64 {.gcsafe, locks: 0.}
proc `outputBufferMaxSize=`*(self: PacketPeerStream; val: int64) {.gcsafe, locks: 0.}
proc streamPeer*(self: PacketPeerStream): StreamPeer {.gcsafe, locks: 0.}
proc `streamPeer=`*(self: PacketPeerStream; val: StreamPeer) {.gcsafe, locks: 0.}
var packetPeerStreamGetInputBufferMaxSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc inputBufferMaxSize(self: PacketPeerStream): int64 =
  if isNil(packetPeerStreamGetInputBufferMaxSizeMethodBind):
    packetPeerStreamGetInputBufferMaxSizeMethodBind = getMethod(
        cstring"PacketPeerStream", cstring"get_input_buffer_max_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerStreamGetInputBufferMaxSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var packetPeerStreamSetInputBufferMaxSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inputBufferMaxSize=`(self: PacketPeerStream; val: int64) =
  if isNil(packetPeerStreamSetInputBufferMaxSizeMethodBind):
    packetPeerStreamSetInputBufferMaxSizeMethodBind = getMethod(
        cstring"PacketPeerStream", cstring"set_input_buffer_max_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  packetPeerStreamSetInputBufferMaxSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var packetPeerStreamGetOutputBufferMaxSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc outputBufferMaxSize(self: PacketPeerStream): int64 =
  if isNil(packetPeerStreamGetOutputBufferMaxSizeMethodBind):
    packetPeerStreamGetOutputBufferMaxSizeMethodBind = getMethod(
        cstring"PacketPeerStream", cstring"get_output_buffer_max_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packetPeerStreamGetOutputBufferMaxSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var packetPeerStreamSetOutputBufferMaxSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outputBufferMaxSize=`(self: PacketPeerStream; val: int64) =
  if isNil(packetPeerStreamSetOutputBufferMaxSizeMethodBind):
    packetPeerStreamSetOutputBufferMaxSizeMethodBind = getMethod(
        cstring"PacketPeerStream", cstring"set_output_buffer_max_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  packetPeerStreamSetOutputBufferMaxSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var packetPeerStreamGetStreamPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc streamPeer(self: PacketPeerStream): StreamPeer =
  if isNil(packetPeerStreamGetStreamPeerMethodBind):
    packetPeerStreamGetStreamPeerMethodBind = getMethod(
        cstring"PacketPeerStream", cstring"get_stream_peer")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  packetPeerStreamGetStreamPeerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var packetPeerStreamSetStreamPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `streamPeer=`(self: PacketPeerStream; val: StreamPeer) =
  if isNil(packetPeerStreamSetStreamPeerMethodBind):
    packetPeerStreamSetStreamPeerMethodBind = getMethod(
        cstring"PacketPeerStream", cstring"set_stream_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  packetPeerStreamSetStreamPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
