
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  METHOD_CONNECT* = 7'i64
  METHOD_DELETE* = 4'i64
  METHOD_GET* = 0'i64
  METHOD_HEAD* = 1'i64
  METHOD_MAX* = 9'i64
  METHOD_OPTIONS* = 5'i64
  METHOD_PATCH* = 8'i64
  METHOD_POST* = 2'i64
  METHOD_PUT* = 3'i64
  METHOD_TRACE* = 6'i64
  RESPONSE_ACCEPTED* = 202'i64
  RESPONSE_ALREADY_REPORTED* = 208'i64
  RESPONSE_BAD_GATEWAY* = 502'i64
  RESPONSE_BAD_REQUEST* = 400'i64
  RESPONSE_CONFLICT* = 409'i64
  RESPONSE_CONTINUE* = 100'i64
  RESPONSE_CREATED* = 201'i64
  RESPONSE_EXPECTATION_FAILED* = 417'i64
  RESPONSE_FAILED_DEPENDENCY* = 424'i64
  RESPONSE_FORBIDDEN* = 403'i64
  RESPONSE_FOUND* = 302'i64
  RESPONSE_GATEWAY_TIMEOUT* = 504'i64
  RESPONSE_GONE* = 410'i64
  RESPONSE_HTTP_VERSION_NOT_SUPPORTED* = 505'i64
  RESPONSE_IM_A_TEAPOT* = 418'i64
  RESPONSE_IM_USED* = 226'i64
  RESPONSE_INSUFFICIENT_STORAGE* = 507'i64
  RESPONSE_INTERNAL_SERVER_ERROR* = 500'i64
  RESPONSE_LENGTH_REQUIRED* = 411'i64
  RESPONSE_LOCKED* = 423'i64
  RESPONSE_LOOP_DETECTED* = 508'i64
  RESPONSE_METHOD_NOT_ALLOWED* = 405'i64
  RESPONSE_MISDIRECTED_REQUEST* = 421'i64
  RESPONSE_MOVED_PERMANENTLY* = 301'i64
  RESPONSE_MULTIPLE_CHOICES* = 300'i64
  RESPONSE_MULTI_STATUS* = 207'i64
  RESPONSE_NETWORK_AUTH_REQUIRED* = 511'i64
  RESPONSE_NON_AUTHORITATIVE_INFORMATION* = 203'i64
  RESPONSE_NOT_ACCEPTABLE* = 406'i64
  RESPONSE_NOT_EXTENDED* = 510'i64
  RESPONSE_NOT_FOUND* = 404'i64
  RESPONSE_NOT_IMPLEMENTED* = 501'i64
  RESPONSE_NOT_MODIFIED* = 304'i64
  RESPONSE_NO_CONTENT* = 204'i64
  RESPONSE_OK* = 200'i64
  RESPONSE_PARTIAL_CONTENT* = 206'i64
  RESPONSE_PAYMENT_REQUIRED* = 402'i64
  RESPONSE_PERMANENT_REDIRECT* = 308'i64
  RESPONSE_PRECONDITION_FAILED* = 412'i64
  RESPONSE_PRECONDITION_REQUIRED* = 428'i64
  RESPONSE_PROCESSING* = 102'i64
  RESPONSE_PROXY_AUTHENTICATION_REQUIRED* = 407'i64
  RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE* = 416'i64
  RESPONSE_REQUEST_ENTITY_TOO_LARGE* = 413'i64
  RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE* = 431'i64
  RESPONSE_REQUEST_TIMEOUT* = 408'i64
  RESPONSE_REQUEST_URI_TOO_LONG* = 414'i64
  RESPONSE_RESET_CONTENT* = 205'i64
  RESPONSE_SEE_OTHER* = 303'i64
  RESPONSE_SERVICE_UNAVAILABLE* = 503'i64
  RESPONSE_SWITCHING_PROTOCOLS* = 101'i64
  RESPONSE_SWITCH_PROXY* = 306'i64
  RESPONSE_TEMPORARY_REDIRECT* = 307'i64
  RESPONSE_TOO_MANY_REQUESTS* = 429'i64
  RESPONSE_UNAUTHORIZED* = 401'i64
  RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS* = 451'i64
  RESPONSE_UNPROCESSABLE_ENTITY* = 422'i64
  RESPONSE_UNSUPPORTED_MEDIA_TYPE* = 415'i64
  RESPONSE_UPGRADE_REQUIRED* = 426'i64
  RESPONSE_USE_PROXY* = 305'i64
  RESPONSE_VARIANT_ALSO_NEGOTIATES* = 506'i64
  STATUS_BODY* = 7'i64
  STATUS_CANT_CONNECT* = 4'i64
  STATUS_CANT_RESOLVE* = 2'i64
  STATUS_CONNECTED* = 5'i64
  STATUS_CONNECTING* = 3'i64
  STATUS_CONNECTION_ERROR* = 8'i64
  STATUS_DISCONNECTED* = 0'i64
  STATUS_REQUESTING* = 6'i64
  STATUS_RESOLVING* = 1'i64
  STATUS_SSL_HANDSHAKE_ERROR* = 9'i64
proc blockingModeEnabled*(self: HTTPClient): bool {.gcsafe, locks: 0.}
proc `blockingModeEnabled=`*(self: HTTPClient; val: bool) {.gcsafe, locks: 0.}
proc connection*(self: HTTPClient): StreamPeer {.gcsafe, locks: 0.}
proc `connection=`*(self: HTTPClient; val: StreamPeer) {.gcsafe, locks: 0.}
proc readChunkSize*(self: HTTPClient): int64 {.gcsafe, locks: 0.}
proc `readChunkSize=`*(self: HTTPClient; val: int64) {.gcsafe, locks: 0.}
proc close*(self: HTTPClient) {.gcsafe, locks: 0.}
proc connectToHost*(self: HTTPClient; host: string; port: int64 = -1'i64;
                   useSsl: bool = false; verifyHost: bool = true): Error {.gcsafe,
    locks: 0.}
proc getResponseBodyLength*(self: HTTPClient): int64 {.gcsafe, locks: 0.}
proc getResponseCode*(self: HTTPClient): int64 {.gcsafe, locks: 0.}
proc getResponseHeaders*(self: HTTPClient): PoolStringArray {.gcsafe, locks: 0.}
proc getResponseHeadersAsDictionary*(self: HTTPClient): Dictionary {.gcsafe, locks: 0.}
proc getStatus*(self: HTTPClient): int64 {.gcsafe, locks: 0.}
proc hasResponse*(self: HTTPClient): bool {.gcsafe, locks: 0.}
proc isResponseChunked*(self: HTTPClient): bool {.gcsafe, locks: 0.}
proc poll*(self: HTTPClient): Error {.gcsafe, locks: 0.}
proc queryStringFromDict*(self: HTTPClient; fields: Dictionary): string {.gcsafe,
    locks: 0.}
proc readResponseBodyChunk*(self: HTTPClient): PoolByteArray {.gcsafe, locks: 0.}
proc request*(self: HTTPClient; methodd: int64; url: string; headers: PoolStringArray;
             body: string = ""): Error {.gcsafe, locks: 0.}
proc requestRaw*(self: HTTPClient; methodd: int64; url: string;
                headers: PoolStringArray; body: PoolByteArray): Error {.gcsafe,
    locks: 0.}
var hTTPClientIsBlockingModeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc blockingModeEnabled(self: HTTPClient): bool =
  if isNil(hTTPClientIsBlockingModeEnabledMethodBind):
    hTTPClientIsBlockingModeEnabledMethodBind = getMethod(cstring"HTTPClient",
        cstring"is_blocking_mode_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPClientIsBlockingModeEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var hTTPClientSetBlockingModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blockingModeEnabled=`(self: HTTPClient; val: bool) =
  if isNil(hTTPClientSetBlockingModeMethodBind):
    hTTPClientSetBlockingModeMethodBind = getMethod(cstring"HTTPClient",
        cstring"set_blocking_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hTTPClientSetBlockingModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var hTTPClientGetConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc connection(self: HTTPClient): StreamPeer =
  if isNil(hTTPClientGetConnectionMethodBind):
    hTTPClientGetConnectionMethodBind = getMethod(cstring"HTTPClient",
        cstring"get_connection")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  hTTPClientGetConnectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var hTTPClientSetConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `connection=`(self: HTTPClient; val: StreamPeer) =
  if isNil(hTTPClientSetConnectionMethodBind):
    hTTPClientSetConnectionMethodBind = getMethod(cstring"HTTPClient",
        cstring"set_connection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  hTTPClientSetConnectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var hTTPClientGetReadChunkSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc readChunkSize(self: HTTPClient): int64 =
  if isNil(hTTPClientGetReadChunkSizeMethodBind):
    hTTPClientGetReadChunkSizeMethodBind = getMethod(cstring"HTTPClient",
        cstring"get_read_chunk_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPClientGetReadChunkSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPClientSetReadChunkSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `readChunkSize=`(self: HTTPClient; val: int64) =
  if isNil(hTTPClientSetReadChunkSizeMethodBind):
    hTTPClientSetReadChunkSizeMethodBind = getMethod(cstring"HTTPClient",
        cstring"set_read_chunk_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hTTPClientSetReadChunkSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var hTTPClientCloseMethodBind {.threadvar.}: ptr GodotMethodBind
proc close(self: HTTPClient) =
  if isNil(hTTPClientCloseMethodBind):
    hTTPClientCloseMethodBind = getMethod(cstring"HTTPClient", cstring"close")
  var ptrCallRet: pointer
  hTTPClientCloseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPClientConnectToHostMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectToHost(self: HTTPClient; host: string; port: int64 = -1'i64;
                  useSsl: bool = false; verifyHost: bool = true): Error =
  if isNil(hTTPClientConnectToHostMethodBind):
    hTTPClientConnectToHostMethodBind = getMethod(cstring"HTTPClient",
        cstring"connect_to_host")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(host)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(port)
  argsToPassToGodot[][2] = unsafeAddr(useSsl)
  argsToPassToGodot[][3] = unsafeAddr(verifyHost)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hTTPClientConnectToHostMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var hTTPClientGetResponseBodyLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResponseBodyLength(self: HTTPClient): int64 =
  if isNil(hTTPClientGetResponseBodyLengthMethodBind):
    hTTPClientGetResponseBodyLengthMethodBind = getMethod(cstring"HTTPClient",
        cstring"get_response_body_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPClientGetResponseBodyLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var hTTPClientGetResponseCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResponseCode(self: HTTPClient): int64 =
  if isNil(hTTPClientGetResponseCodeMethodBind):
    hTTPClientGetResponseCodeMethodBind = getMethod(cstring"HTTPClient",
        cstring"get_response_code")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPClientGetResponseCodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPClientGetResponseHeadersMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResponseHeaders(self: HTTPClient): PoolStringArray =
  if isNil(hTTPClientGetResponseHeadersMethodBind):
    hTTPClientGetResponseHeadersMethodBind = getMethod(cstring"HTTPClient",
        cstring"get_response_headers")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  hTTPClientGetResponseHeadersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var hTTPClientGetResponseHeadersAsDictionaryMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResponseHeadersAsDictionary(self: HTTPClient): Dictionary =
  if isNil(hTTPClientGetResponseHeadersAsDictionaryMethodBind):
    hTTPClientGetResponseHeadersAsDictionaryMethodBind = getMethod(
        cstring"HTTPClient", cstring"get_response_headers_as_dictionary")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  hTTPClientGetResponseHeadersAsDictionaryMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var hTTPClientGetStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStatus(self: HTTPClient): int64 =
  if isNil(hTTPClientGetStatusMethodBind):
    hTTPClientGetStatusMethodBind = getMethod(cstring"HTTPClient",
        cstring"get_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPClientGetStatusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPClientHasResponseMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasResponse(self: HTTPClient): bool =
  if isNil(hTTPClientHasResponseMethodBind):
    hTTPClientHasResponseMethodBind = getMethod(cstring"HTTPClient",
        cstring"has_response")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPClientHasResponseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPClientIsResponseChunkedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isResponseChunked(self: HTTPClient): bool =
  if isNil(hTTPClientIsResponseChunkedMethodBind):
    hTTPClientIsResponseChunkedMethodBind = getMethod(cstring"HTTPClient",
        cstring"is_response_chunked")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPClientIsResponseChunkedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPClientPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: HTTPClient): Error =
  if isNil(hTTPClientPollMethodBind):
    hTTPClientPollMethodBind = getMethod(cstring"HTTPClient", cstring"poll")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hTTPClientPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var hTTPClientQueryStringFromDictMethodBind {.threadvar.}: ptr GodotMethodBind
proc queryStringFromDict(self: HTTPClient; fields: Dictionary): string =
  if isNil(hTTPClientQueryStringFromDictMethodBind):
    hTTPClientQueryStringFromDictMethodBind = getMethod(cstring"HTTPClient",
        cstring"query_string_from_dict")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = fields.godotDictionary
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  hTTPClientQueryStringFromDictMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var hTTPClientReadResponseBodyChunkMethodBind {.threadvar.}: ptr GodotMethodBind
proc readResponseBodyChunk(self: HTTPClient): PoolByteArray =
  if isNil(hTTPClientReadResponseBodyChunkMethodBind):
    hTTPClientReadResponseBodyChunkMethodBind = getMethod(cstring"HTTPClient",
        cstring"read_response_body_chunk")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  hTTPClientReadResponseBodyChunkMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var hTTPClientRequestMethodBind {.threadvar.}: ptr GodotMethodBind
proc request(self: HTTPClient; methodd: int64; url: string; headers: PoolStringArray;
            body: string = ""): Error =
  if isNil(hTTPClientRequestMethodBind):
    hTTPClientRequestMethodBind = getMethod(cstring"HTTPClient", cstring"request")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(methodd)
  var argToPassToGodot1 = toGodotString(url)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = headers.godotPoolStringArray
  var argToPassToGodot3 = toGodotString(body)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hTTPClientRequestMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot1)
  deinit(argToPassToGodot3)
  result = Error(ptrCallVal)

var hTTPClientRequestRawMethodBind {.threadvar.}: ptr GodotMethodBind
proc requestRaw(self: HTTPClient; methodd: int64; url: string;
               headers: PoolStringArray; body: PoolByteArray): Error =
  if isNil(hTTPClientRequestRawMethodBind):
    hTTPClientRequestRawMethodBind = getMethod(cstring"HTTPClient",
        cstring"request_raw")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(methodd)
  var argToPassToGodot1 = toGodotString(url)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = headers.godotPoolStringArray
  argsToPassToGodot[][3] = body.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hTTPClientRequestRawMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)
