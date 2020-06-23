
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  RESULT_BODY_SIZE_LIMIT_EXCEEDED* = 7'i64
  RESULT_CANT_CONNECT* = 2'i64
  RESULT_CANT_RESOLVE* = 3'i64
  RESULT_CHUNKED_BODY_SIZE_MISMATCH* = 1'i64
  RESULT_CONNECTION_ERROR* = 4'i64
  RESULT_DOWNLOAD_FILE_CANT_OPEN* = 9'i64
  RESULT_DOWNLOAD_FILE_WRITE_ERROR* = 10'i64
  RESULT_NO_RESPONSE* = 6'i64
  RESULT_REDIRECT_LIMIT_REACHED* = 11'i64
  RESULT_REQUEST_FAILED* = 8'i64
  RESULT_SSL_HANDSHAKE_ERROR* = 5'i64
  RESULT_SUCCESS* = 0'i64
  RESULT_TIMEOUT* = 12'i64
proc bodySizeLimit*(self: HTTPRequest): int64 {.gcsafe, locks: 0.}
proc `bodySizeLimit=`*(self: HTTPRequest; val: int64) {.gcsafe, locks: 0.}
proc downloadChunkSize*(self: HTTPRequest): int64 {.gcsafe, locks: 0.}
proc `downloadChunkSize=`*(self: HTTPRequest; val: int64) {.gcsafe, locks: 0.}
proc downloadFile*(self: HTTPRequest): string {.gcsafe, locks: 0.}
proc `downloadFile=`*(self: HTTPRequest; val: string) {.gcsafe, locks: 0.}
proc maxRedirects*(self: HTTPRequest): int64 {.gcsafe, locks: 0.}
proc `maxRedirects=`*(self: HTTPRequest; val: int64) {.gcsafe, locks: 0.}
proc useThreads*(self: HTTPRequest): bool {.gcsafe, locks: 0.}
proc `useThreads=`*(self: HTTPRequest; val: bool) {.gcsafe, locks: 0.}
method redirectRequest*(self: HTTPRequest; arg0: string) {.gcsafe, locks: 0, base.}
method requestDone*(self: HTTPRequest; arg0: int64; arg1: int64; arg2: PoolStringArray;
                   arg3: PoolByteArray) {.gcsafe, locks: 0, base.}
method timeout*(self: HTTPRequest) {.gcsafe, locks: 0, base.}
proc cancelRequest*(self: HTTPRequest) {.gcsafe, locks: 0.}
proc getBodySize*(self: HTTPRequest): int64 {.gcsafe, locks: 0.}
proc getDownloadedBytes*(self: HTTPRequest): int64 {.gcsafe, locks: 0.}
proc getHttpClientStatus*(self: HTTPRequest): int64 {.gcsafe, locks: 0.}
proc getTimeout*(self: HTTPRequest): int64 {.gcsafe, locks: 0.}
proc request*(self: HTTPRequest; url: string;
             customHeaders: PoolStringArray = newPoolStringArray();
             sslValidateDomain: bool = true; methodd: int64 = 0'i64;
             requestData: string = ""): Error {.gcsafe, locks: 0.}
proc setTimeout*(self: HTTPRequest; timeout: int64) {.gcsafe, locks: 0.}
var hTTPRequestGetBodySizeLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc bodySizeLimit(self: HTTPRequest): int64 =
  if isNil(hTTPRequestGetBodySizeLimitMethodBind):
    hTTPRequestGetBodySizeLimitMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_body_size_limit")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestGetBodySizeLimitMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPRequestSetBodySizeLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bodySizeLimit=`(self: HTTPRequest; val: int64) =
  if isNil(hTTPRequestSetBodySizeLimitMethodBind):
    hTTPRequestSetBodySizeLimitMethodBind = getMethod(cstring"HTTPRequest",
        cstring"set_body_size_limit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hTTPRequestSetBodySizeLimitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var hTTPRequestGetDownloadChunkSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc downloadChunkSize(self: HTTPRequest): int64 =
  if isNil(hTTPRequestGetDownloadChunkSizeMethodBind):
    hTTPRequestGetDownloadChunkSizeMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_download_chunk_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestGetDownloadChunkSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var hTTPRequestSetDownloadChunkSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `downloadChunkSize=`(self: HTTPRequest; val: int64) =
  if isNil(hTTPRequestSetDownloadChunkSizeMethodBind):
    hTTPRequestSetDownloadChunkSizeMethodBind = getMethod(cstring"HTTPRequest",
        cstring"set_download_chunk_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hTTPRequestSetDownloadChunkSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var hTTPRequestGetDownloadFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc downloadFile(self: HTTPRequest): string =
  if isNil(hTTPRequestGetDownloadFileMethodBind):
    hTTPRequestGetDownloadFileMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_download_file")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  hTTPRequestGetDownloadFileMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var hTTPRequestSetDownloadFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc `downloadFile=`(self: HTTPRequest; val: string) =
  if isNil(hTTPRequestSetDownloadFileMethodBind):
    hTTPRequestSetDownloadFileMethodBind = getMethod(cstring"HTTPRequest",
        cstring"set_download_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  hTTPRequestSetDownloadFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var hTTPRequestGetMaxRedirectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxRedirects(self: HTTPRequest): int64 =
  if isNil(hTTPRequestGetMaxRedirectsMethodBind):
    hTTPRequestGetMaxRedirectsMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_max_redirects")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestGetMaxRedirectsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPRequestSetMaxRedirectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxRedirects=`(self: HTTPRequest; val: int64) =
  if isNil(hTTPRequestSetMaxRedirectsMethodBind):
    hTTPRequestSetMaxRedirectsMethodBind = getMethod(cstring"HTTPRequest",
        cstring"set_max_redirects")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hTTPRequestSetMaxRedirectsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var hTTPRequestIsUsingThreadsMethodBind {.threadvar.}: ptr GodotMethodBind
proc useThreads(self: HTTPRequest): bool =
  if isNil(hTTPRequestIsUsingThreadsMethodBind):
    hTTPRequestIsUsingThreadsMethodBind = getMethod(cstring"HTTPRequest",
        cstring"is_using_threads")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestIsUsingThreadsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPRequestSetUseThreadsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useThreads=`(self: HTTPRequest; val: bool) =
  if isNil(hTTPRequestSetUseThreadsMethodBind):
    hTTPRequestSetUseThreadsMethodBind = getMethod(cstring"HTTPRequest",
        cstring"set_use_threads")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  hTTPRequestSetUseThreadsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var hTTPRequestUnderscoreredirectRequestMethodBind {.threadvar.}: ptr GodotMethodBind
method redirectRequest(self: HTTPRequest; arg0: string) =
  if isNil(hTTPRequestUnderscoreredirectRequestMethodBind):
    hTTPRequestUnderscoreredirectRequestMethodBind = getMethod(
        cstring"HTTPRequest", cstring"_redirect_request")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  hTTPRequestUnderscoreredirectRequestMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var hTTPRequestUnderscorerequestDoneMethodBind {.threadvar.}: ptr GodotMethodBind
method requestDone(self: HTTPRequest; arg0: int64; arg1: int64; arg2: PoolStringArray;
                  arg3: PoolByteArray) =
  if isNil(hTTPRequestUnderscorerequestDoneMethodBind):
    hTTPRequestUnderscorerequestDoneMethodBind = getMethod(cstring"HTTPRequest",
        cstring"_request_done")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  argsToPassToGodot[][2] = arg2.godotPoolStringArray
  argsToPassToGodot[][3] = arg3.godotPoolByteArray
  var ptrCallRet: pointer
  hTTPRequestUnderscorerequestDoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var hTTPRequestUnderscoretimeoutMethodBind {.threadvar.}: ptr GodotMethodBind
method timeout(self: HTTPRequest) =
  if isNil(hTTPRequestUnderscoretimeoutMethodBind):
    hTTPRequestUnderscoretimeoutMethodBind = getMethod(cstring"HTTPRequest",
        cstring"_timeout")
  var ptrCallRet: pointer
  hTTPRequestUnderscoretimeoutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPRequestCancelRequestMethodBind {.threadvar.}: ptr GodotMethodBind
proc cancelRequest(self: HTTPRequest) =
  if isNil(hTTPRequestCancelRequestMethodBind):
    hTTPRequestCancelRequestMethodBind = getMethod(cstring"HTTPRequest",
        cstring"cancel_request")
  var ptrCallRet: pointer
  hTTPRequestCancelRequestMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPRequestGetBodySizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBodySize(self: HTTPRequest): int64 =
  if isNil(hTTPRequestGetBodySizeMethodBind):
    hTTPRequestGetBodySizeMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_body_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestGetBodySizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPRequestGetDownloadedBytesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDownloadedBytes(self: HTTPRequest): int64 =
  if isNil(hTTPRequestGetDownloadedBytesMethodBind):
    hTTPRequestGetDownloadedBytesMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_downloaded_bytes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestGetDownloadedBytesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var hTTPRequestGetHttpClientStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHttpClientStatus(self: HTTPRequest): int64 =
  if isNil(hTTPRequestGetHttpClientStatusMethodBind):
    hTTPRequestGetHttpClientStatusMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_http_client_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestGetHttpClientStatusMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var hTTPRequestGetTimeoutMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTimeout(self: HTTPRequest): int64 =
  if isNil(hTTPRequestGetTimeoutMethodBind):
    hTTPRequestGetTimeoutMethodBind = getMethod(cstring"HTTPRequest",
        cstring"get_timeout")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  hTTPRequestGetTimeoutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var hTTPRequestRequestMethodBind {.threadvar.}: ptr GodotMethodBind
proc request(self: HTTPRequest; url: string;
            customHeaders: PoolStringArray = newPoolStringArray();
            sslValidateDomain: bool = true; methodd: int64 = 0'i64;
            requestData: string = ""): Error =
  if isNil(hTTPRequestRequestMethodBind):
    hTTPRequestRequestMethodBind = getMethod(cstring"HTTPRequest",
        cstring"request")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(url)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = customHeaders.godotPoolStringArray
  argsToPassToGodot[][2] = unsafeAddr(sslValidateDomain)
  argsToPassToGodot[][3] = unsafeAddr(methodd)
  var argToPassToGodot4 = toGodotString(requestData)
  argsToPassToGodot[][4] = unsafeAddr(argToPassToGodot4)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hTTPRequestRequestMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot4)
  result = Error(ptrCallVal)

var hTTPRequestSetTimeoutMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTimeout(self: HTTPRequest; timeout: int64) =
  if isNil(hTTPRequestSetTimeoutMethodBind):
    hTTPRequestSetTimeoutMethodBind = getMethod(cstring"HTTPRequest",
        cstring"set_timeout")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(timeout)
  var ptrCallRet: pointer
  hTTPRequestSetTimeoutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
