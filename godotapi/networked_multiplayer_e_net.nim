
import
  godot, godottypes, godotinternal, networked_multiplayer_peer

export
  godottypes, networked_multiplayer_peer

const
  COMPRESS_FASTLZ* = 2'i64
  COMPRESS_NONE* = 0'i64
  COMPRESS_RANGE_CODER* = 1'i64
  COMPRESS_ZLIB* = 3'i64
  COMPRESS_ZSTD* = 4'i64
proc alwaysOrdered*(self: NetworkedMultiplayerENet): bool {.gcsafe, locks: 0.}
proc `alwaysOrdered=`*(self: NetworkedMultiplayerENet; val: bool) {.gcsafe, locks: 0.}
proc channelCount*(self: NetworkedMultiplayerENet): int64 {.gcsafe, locks: 0.}
proc `channelCount=`*(self: NetworkedMultiplayerENet; val: int64) {.gcsafe, locks: 0.}
proc compressionMode*(self: NetworkedMultiplayerENet): int64 {.gcsafe, locks: 0.}
proc `compressionMode=`*(self: NetworkedMultiplayerENet; val: int64) {.gcsafe,
    locks: 0.}
proc dtlsVerify*(self: NetworkedMultiplayerENet): bool {.gcsafe, locks: 0.}
proc `dtlsVerify=`*(self: NetworkedMultiplayerENet; val: bool) {.gcsafe, locks: 0.}
proc serverRelay*(self: NetworkedMultiplayerENet): bool {.gcsafe, locks: 0.}
proc `serverRelay=`*(self: NetworkedMultiplayerENet; val: bool) {.gcsafe, locks: 0.}
proc transferChannel*(self: NetworkedMultiplayerENet): int64 {.gcsafe, locks: 0.}
proc `transferChannel=`*(self: NetworkedMultiplayerENet; val: int64) {.gcsafe,
    locks: 0.}
proc useDtls*(self: NetworkedMultiplayerENet): bool {.gcsafe, locks: 0.}
proc `useDtls=`*(self: NetworkedMultiplayerENet; val: bool) {.gcsafe, locks: 0.}
proc closeConnection*(self: NetworkedMultiplayerENet; waitUsec: int64 = 100'i64) {.
    gcsafe, locks: 0.}
proc createClient*(self: NetworkedMultiplayerENet; address: string; port: int64;
                  inBandwidth: int64 = 0'i64; outBandwidth: int64 = 0'i64;
                  clientPort: int64 = 0'i64): Error {.gcsafe, locks: 0.}
proc createServer*(self: NetworkedMultiplayerENet; port: int64;
                  maxClients: int64 = 32'i64; inBandwidth: int64 = 0'i64;
                  outBandwidth: int64 = 0'i64): Error {.gcsafe, locks: 0.}
proc disconnectPeer*(self: NetworkedMultiplayerENet; id: int64; now: bool = false) {.
    gcsafe, locks: 0.}
proc getLastPacketChannel*(self: NetworkedMultiplayerENet): int64 {.gcsafe, locks: 0.}
proc getPacketChannel*(self: NetworkedMultiplayerENet): int64 {.gcsafe, locks: 0.}
proc getPeerAddress*(self: NetworkedMultiplayerENet; id: int64): string {.gcsafe,
    locks: 0.}
proc getPeerPort*(self: NetworkedMultiplayerENet; id: int64): int64 {.gcsafe, locks: 0.}
proc setBindIp*(self: NetworkedMultiplayerENet; ip: string) {.gcsafe, locks: 0.}
proc setDtlsCertificate*(self: NetworkedMultiplayerENet;
                        certificate: X509Certificate) {.gcsafe, locks: 0.}
proc setDtlsKey*(self: NetworkedMultiplayerENet; key: CryptoKey) {.gcsafe, locks: 0.}
var networkedMultiplayerENetIsAlwaysOrderedMethodBind {.threadvar.}: ptr GodotMethodBind
proc alwaysOrdered(self: NetworkedMultiplayerENet): bool =
  if isNil(networkedMultiplayerENetIsAlwaysOrderedMethodBind):
    networkedMultiplayerENetIsAlwaysOrderedMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"is_always_ordered")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetIsAlwaysOrderedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var networkedMultiplayerENetSetAlwaysOrderedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `alwaysOrdered=`(self: NetworkedMultiplayerENet; val: bool) =
  if isNil(networkedMultiplayerENetSetAlwaysOrderedMethodBind):
    networkedMultiplayerENetSetAlwaysOrderedMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_always_ordered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetAlwaysOrderedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetGetChannelCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc channelCount(self: NetworkedMultiplayerENet): int64 =
  if isNil(networkedMultiplayerENetGetChannelCountMethodBind):
    networkedMultiplayerENetGetChannelCountMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"get_channel_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetGetChannelCountMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var networkedMultiplayerENetSetChannelCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `channelCount=`(self: NetworkedMultiplayerENet; val: int64) =
  if isNil(networkedMultiplayerENetSetChannelCountMethodBind):
    networkedMultiplayerENetSetChannelCountMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_channel_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetChannelCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetGetCompressionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc compressionMode(self: NetworkedMultiplayerENet): int64 =
  if isNil(networkedMultiplayerENetGetCompressionModeMethodBind):
    networkedMultiplayerENetGetCompressionModeMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"get_compression_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetGetCompressionModeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var networkedMultiplayerENetSetCompressionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `compressionMode=`(self: NetworkedMultiplayerENet; val: int64) =
  if isNil(networkedMultiplayerENetSetCompressionModeMethodBind):
    networkedMultiplayerENetSetCompressionModeMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_compression_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetCompressionModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetIsDtlsVerifyEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc dtlsVerify(self: NetworkedMultiplayerENet): bool =
  if isNil(networkedMultiplayerENetIsDtlsVerifyEnabledMethodBind):
    networkedMultiplayerENetIsDtlsVerifyEnabledMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"is_dtls_verify_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetIsDtlsVerifyEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var networkedMultiplayerENetSetDtlsVerifyEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dtlsVerify=`(self: NetworkedMultiplayerENet; val: bool) =
  if isNil(networkedMultiplayerENetSetDtlsVerifyEnabledMethodBind):
    networkedMultiplayerENetSetDtlsVerifyEnabledMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_dtls_verify_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetDtlsVerifyEnabledMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetIsServerRelayEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc serverRelay(self: NetworkedMultiplayerENet): bool =
  if isNil(networkedMultiplayerENetIsServerRelayEnabledMethodBind):
    networkedMultiplayerENetIsServerRelayEnabledMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"is_server_relay_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetIsServerRelayEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var networkedMultiplayerENetSetServerRelayEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `serverRelay=`(self: NetworkedMultiplayerENet; val: bool) =
  if isNil(networkedMultiplayerENetSetServerRelayEnabledMethodBind):
    networkedMultiplayerENetSetServerRelayEnabledMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_server_relay_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetServerRelayEnabledMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetGetTransferChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc transferChannel(self: NetworkedMultiplayerENet): int64 =
  if isNil(networkedMultiplayerENetGetTransferChannelMethodBind):
    networkedMultiplayerENetGetTransferChannelMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"get_transfer_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetGetTransferChannelMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var networkedMultiplayerENetSetTransferChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transferChannel=`(self: NetworkedMultiplayerENet; val: int64) =
  if isNil(networkedMultiplayerENetSetTransferChannelMethodBind):
    networkedMultiplayerENetSetTransferChannelMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_transfer_channel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetTransferChannelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetIsDtlsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc useDtls(self: NetworkedMultiplayerENet): bool =
  if isNil(networkedMultiplayerENetIsDtlsEnabledMethodBind):
    networkedMultiplayerENetIsDtlsEnabledMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"is_dtls_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetIsDtlsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var networkedMultiplayerENetSetDtlsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useDtls=`(self: NetworkedMultiplayerENet; val: bool) =
  if isNil(networkedMultiplayerENetSetDtlsEnabledMethodBind):
    networkedMultiplayerENetSetDtlsEnabledMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_dtls_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetDtlsEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetCloseConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc closeConnection(self: NetworkedMultiplayerENet; waitUsec: int64 = 100'i64) =
  if isNil(networkedMultiplayerENetCloseConnectionMethodBind):
    networkedMultiplayerENetCloseConnectionMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"close_connection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(waitUsec)
  var ptrCallRet: pointer
  networkedMultiplayerENetCloseConnectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetCreateClientMethodBind {.threadvar.}: ptr GodotMethodBind
proc createClient(self: NetworkedMultiplayerENet; address: string; port: int64;
                 inBandwidth: int64 = 0'i64; outBandwidth: int64 = 0'i64;
                 clientPort: int64 = 0'i64): Error =
  if isNil(networkedMultiplayerENetCreateClientMethodBind):
    networkedMultiplayerENetCreateClientMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"create_client")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(address)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(port)
  argsToPassToGodot[][2] = unsafeAddr(inBandwidth)
  argsToPassToGodot[][3] = unsafeAddr(outBandwidth)
  argsToPassToGodot[][4] = unsafeAddr(clientPort)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  networkedMultiplayerENetCreateClientMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var networkedMultiplayerENetCreateServerMethodBind {.threadvar.}: ptr GodotMethodBind
proc createServer(self: NetworkedMultiplayerENet; port: int64;
                 maxClients: int64 = 32'i64; inBandwidth: int64 = 0'i64;
                 outBandwidth: int64 = 0'i64): Error =
  if isNil(networkedMultiplayerENetCreateServerMethodBind):
    networkedMultiplayerENetCreateServerMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"create_server")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  argsToPassToGodot[][1] = unsafeAddr(maxClients)
  argsToPassToGodot[][2] = unsafeAddr(inBandwidth)
  argsToPassToGodot[][3] = unsafeAddr(outBandwidth)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  networkedMultiplayerENetCreateServerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var networkedMultiplayerENetDisconnectPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectPeer(self: NetworkedMultiplayerENet; id: int64; now: bool = false) =
  if isNil(networkedMultiplayerENetDisconnectPeerMethodBind):
    networkedMultiplayerENetDisconnectPeerMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"disconnect_peer")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(now)
  var ptrCallRet: pointer
  networkedMultiplayerENetDisconnectPeerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetGetLastPacketChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLastPacketChannel(self: NetworkedMultiplayerENet): int64 =
  if isNil(networkedMultiplayerENetGetLastPacketChannelMethodBind):
    networkedMultiplayerENetGetLastPacketChannelMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"get_last_packet_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetGetLastPacketChannelMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var networkedMultiplayerENetGetPacketChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPacketChannel(self: NetworkedMultiplayerENet): int64 =
  if isNil(networkedMultiplayerENetGetPacketChannelMethodBind):
    networkedMultiplayerENetGetPacketChannelMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"get_packet_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetGetPacketChannelMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var networkedMultiplayerENetGetPeerAddressMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPeerAddress(self: NetworkedMultiplayerENet; id: int64): string =
  if isNil(networkedMultiplayerENetGetPeerAddressMethodBind):
    networkedMultiplayerENetGetPeerAddressMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"get_peer_address")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  networkedMultiplayerENetGetPeerAddressMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var networkedMultiplayerENetGetPeerPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPeerPort(self: NetworkedMultiplayerENet; id: int64): int64 =
  if isNil(networkedMultiplayerENetGetPeerPortMethodBind):
    networkedMultiplayerENetGetPeerPortMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"get_peer_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  networkedMultiplayerENetGetPeerPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetSetBindIpMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBindIp(self: NetworkedMultiplayerENet; ip: string) =
  if isNil(networkedMultiplayerENetSetBindIpMethodBind):
    networkedMultiplayerENetSetBindIpMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_bind_ip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(ip)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  networkedMultiplayerENetSetBindIpMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var networkedMultiplayerENetSetDtlsCertificateMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDtlsCertificate(self: NetworkedMultiplayerENet;
                       certificate: X509Certificate) =
  if isNil(networkedMultiplayerENetSetDtlsCertificateMethodBind):
    networkedMultiplayerENetSetDtlsCertificateMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_dtls_certificate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not certificate.isNil:
    certificate.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  networkedMultiplayerENetSetDtlsCertificateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var networkedMultiplayerENetSetDtlsKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDtlsKey(self: NetworkedMultiplayerENet; key: CryptoKey) =
  if isNil(networkedMultiplayerENetSetDtlsKeyMethodBind):
    networkedMultiplayerENetSetDtlsKeyMethodBind = getMethod(
        cstring"NetworkedMultiplayerENet", cstring"set_dtls_key")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  networkedMultiplayerENetSetDtlsKeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
