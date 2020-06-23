
import
  godot, godottypes, godotinternal, packet_peer

export
  godottypes, packet_peer

const
  STATE_CLOSED* = 3'i64
  STATE_CLOSING* = 2'i64
  STATE_CONNECTING* = 0'i64
  STATE_OPEN* = 1'i64
  WRITE_MODE_BINARY* = 1'i64
  WRITE_MODE_TEXT* = 0'i64
proc writeMode*(self: WebRTCDataChannel): int64 {.gcsafe, locks: 0.}
proc `writeMode=`*(self: WebRTCDataChannel; val: int64) {.gcsafe, locks: 0.}
proc close*(self: WebRTCDataChannel) {.gcsafe, locks: 0.}
proc getId*(self: WebRTCDataChannel): int64 {.gcsafe, locks: 0.}
proc getLabel*(self: WebRTCDataChannel): string {.gcsafe, locks: 0.}
proc getMaxPacketLifeTime*(self: WebRTCDataChannel): int64 {.gcsafe, locks: 0.}
proc getMaxRetransmits*(self: WebRTCDataChannel): int64 {.gcsafe, locks: 0.}
proc getProtocol*(self: WebRTCDataChannel): string {.gcsafe, locks: 0.}
proc getReadyState*(self: WebRTCDataChannel): int64 {.gcsafe, locks: 0.}
proc isNegotiated*(self: WebRTCDataChannel): bool {.gcsafe, locks: 0.}
proc isOrdered*(self: WebRTCDataChannel): bool {.gcsafe, locks: 0.}
proc poll*(self: WebRTCDataChannel): Error {.gcsafe, locks: 0.}
proc wasStringPacket*(self: WebRTCDataChannel): bool {.gcsafe, locks: 0.}
var webRTCDataChannelGetWriteModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc writeMode(self: WebRTCDataChannel): int64 =
  if isNil(webRTCDataChannelGetWriteModeMethodBind):
    webRTCDataChannelGetWriteModeMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"get_write_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelGetWriteModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webRTCDataChannelSetWriteModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `writeMode=`(self: WebRTCDataChannel; val: int64) =
  if isNil(webRTCDataChannelSetWriteModeMethodBind):
    webRTCDataChannelSetWriteModeMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"set_write_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  webRTCDataChannelSetWriteModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var webRTCDataChannelCloseMethodBind {.threadvar.}: ptr GodotMethodBind
proc close(self: WebRTCDataChannel) =
  if isNil(webRTCDataChannelCloseMethodBind):
    webRTCDataChannelCloseMethodBind = getMethod(cstring"WebRTCDataChannel",
        cstring"close")
  var ptrCallRet: pointer
  webRTCDataChannelCloseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var webRTCDataChannelGetIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getId(self: WebRTCDataChannel): int64 =
  if isNil(webRTCDataChannelGetIdMethodBind):
    webRTCDataChannelGetIdMethodBind = getMethod(cstring"WebRTCDataChannel",
        cstring"get_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelGetIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var webRTCDataChannelGetLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLabel(self: WebRTCDataChannel): string =
  if isNil(webRTCDataChannelGetLabelMethodBind):
    webRTCDataChannelGetLabelMethodBind = getMethod(cstring"WebRTCDataChannel",
        cstring"get_label")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webRTCDataChannelGetLabelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webRTCDataChannelGetMaxPacketLifeTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMaxPacketLifeTime(self: WebRTCDataChannel): int64 =
  if isNil(webRTCDataChannelGetMaxPacketLifeTimeMethodBind):
    webRTCDataChannelGetMaxPacketLifeTimeMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"get_max_packet_life_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelGetMaxPacketLifeTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webRTCDataChannelGetMaxRetransmitsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMaxRetransmits(self: WebRTCDataChannel): int64 =
  if isNil(webRTCDataChannelGetMaxRetransmitsMethodBind):
    webRTCDataChannelGetMaxRetransmitsMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"get_max_retransmits")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelGetMaxRetransmitsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webRTCDataChannelGetProtocolMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProtocol(self: WebRTCDataChannel): string =
  if isNil(webRTCDataChannelGetProtocolMethodBind):
    webRTCDataChannelGetProtocolMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"get_protocol")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webRTCDataChannelGetProtocolMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webRTCDataChannelGetReadyStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getReadyState(self: WebRTCDataChannel): int64 =
  if isNil(webRTCDataChannelGetReadyStateMethodBind):
    webRTCDataChannelGetReadyStateMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"get_ready_state")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelGetReadyStateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webRTCDataChannelIsNegotiatedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isNegotiated(self: WebRTCDataChannel): bool =
  if isNil(webRTCDataChannelIsNegotiatedMethodBind):
    webRTCDataChannelIsNegotiatedMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"is_negotiated")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelIsNegotiatedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webRTCDataChannelIsOrderedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOrdered(self: WebRTCDataChannel): bool =
  if isNil(webRTCDataChannelIsOrderedMethodBind):
    webRTCDataChannelIsOrderedMethodBind = getMethod(cstring"WebRTCDataChannel",
        cstring"is_ordered")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelIsOrderedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var webRTCDataChannelPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: WebRTCDataChannel): Error =
  if isNil(webRTCDataChannelPollMethodBind):
    webRTCDataChannelPollMethodBind = getMethod(cstring"WebRTCDataChannel",
        cstring"poll")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCDataChannelPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var webRTCDataChannelWasStringPacketMethodBind {.threadvar.}: ptr GodotMethodBind
proc wasStringPacket(self: WebRTCDataChannel): bool =
  if isNil(webRTCDataChannelWasStringPacketMethodBind):
    webRTCDataChannelWasStringPacketMethodBind = getMethod(
        cstring"WebRTCDataChannel", cstring"was_string_packet")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCDataChannelWasStringPacketMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
