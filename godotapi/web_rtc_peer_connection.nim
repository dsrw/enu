
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  STATE_CLOSED* = 5'i64
  STATE_CONNECTED* = 2'i64
  STATE_CONNECTING* = 1'i64
  STATE_DISCONNECTED* = 3'i64
  STATE_FAILED* = 4'i64
  STATE_NEW* = 0'i64
proc addIceCandidate*(self: WebRTCPeerConnection; media: string; index: int64;
                     name: string): Error {.gcsafe, locks: 0.}
proc close*(self: WebRTCPeerConnection) {.gcsafe, locks: 0.}
proc createDataChannel*(self: WebRTCPeerConnection; label: string;
                       options: Dictionary = newDictionary()): WebRTCDataChannel {.
    gcsafe, locks: 0.}
proc createOffer*(self: WebRTCPeerConnection): Error {.gcsafe, locks: 0.}
proc getConnectionState*(self: WebRTCPeerConnection): int64 {.gcsafe, locks: 0.}
proc initialize*(self: WebRTCPeerConnection;
                configuration: Dictionary = newDictionary()): Error {.gcsafe, locks: 0.}
proc poll*(self: WebRTCPeerConnection): Error {.gcsafe, locks: 0.}
proc setLocalDescription*(self: WebRTCPeerConnection; typee: string; sdp: string): Error {.
    gcsafe, locks: 0.}
proc setRemoteDescription*(self: WebRTCPeerConnection; typee: string; sdp: string): Error {.
    gcsafe, locks: 0.}
var webRTCPeerConnectionAddIceCandidateMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIceCandidate(self: WebRTCPeerConnection; media: string; index: int64;
                    name: string): Error =
  if isNil(webRTCPeerConnectionAddIceCandidateMethodBind):
    webRTCPeerConnectionAddIceCandidateMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"add_ice_candidate")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(media)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(index)
  var argToPassToGodot2 = toGodotString(name)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCPeerConnectionAddIceCandidateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)
  result = Error(ptrCallVal)

var webRTCPeerConnectionCloseMethodBind {.threadvar.}: ptr GodotMethodBind
proc close(self: WebRTCPeerConnection) =
  if isNil(webRTCPeerConnectionCloseMethodBind):
    webRTCPeerConnectionCloseMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"close")
  var ptrCallRet: pointer
  webRTCPeerConnectionCloseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var webRTCPeerConnectionCreateDataChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc createDataChannel(self: WebRTCPeerConnection; label: string;
                      options: Dictionary = newDictionary()): WebRTCDataChannel =
  if isNil(webRTCPeerConnectionCreateDataChannelMethodBind):
    webRTCPeerConnectionCreateDataChannelMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"create_data_channel")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = options.godotDictionary
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  webRTCPeerConnectionCreateDataChannelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var webRTCPeerConnectionCreateOfferMethodBind {.threadvar.}: ptr GodotMethodBind
proc createOffer(self: WebRTCPeerConnection): Error =
  if isNil(webRTCPeerConnectionCreateOfferMethodBind):
    webRTCPeerConnectionCreateOfferMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"create_offer")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCPeerConnectionCreateOfferMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = Error(ptrCallVal)

var webRTCPeerConnectionGetConnectionStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionState(self: WebRTCPeerConnection): int64 =
  if isNil(webRTCPeerConnectionGetConnectionStateMethodBind):
    webRTCPeerConnectionGetConnectionStateMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"get_connection_state")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  webRTCPeerConnectionGetConnectionStateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var webRTCPeerConnectionInitializeMethodBind {.threadvar.}: ptr GodotMethodBind
proc initialize(self: WebRTCPeerConnection;
               configuration: Dictionary = newDictionary()): Error =
  if isNil(webRTCPeerConnectionInitializeMethodBind):
    webRTCPeerConnectionInitializeMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"initialize")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = configuration.godotDictionary
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCPeerConnectionInitializeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var webRTCPeerConnectionPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: WebRTCPeerConnection): Error =
  if isNil(webRTCPeerConnectionPollMethodBind):
    webRTCPeerConnectionPollMethodBind = getMethod(cstring"WebRTCPeerConnection",
        cstring"poll")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCPeerConnectionPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var webRTCPeerConnectionSetLocalDescriptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLocalDescription(self: WebRTCPeerConnection; typee: string; sdp: string): Error =
  if isNil(webRTCPeerConnectionSetLocalDescriptionMethodBind):
    webRTCPeerConnectionSetLocalDescriptionMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"set_local_description")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(sdp)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCPeerConnectionSetLocalDescriptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var webRTCPeerConnectionSetRemoteDescriptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRemoteDescription(self: WebRTCPeerConnection; typee: string; sdp: string): Error =
  if isNil(webRTCPeerConnectionSetRemoteDescriptionMethodBind):
    webRTCPeerConnectionSetRemoteDescriptionMethodBind = getMethod(
        cstring"WebRTCPeerConnection", cstring"set_remote_description")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(sdp)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  webRTCPeerConnectionSetRemoteDescriptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)
