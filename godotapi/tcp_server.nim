
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc isConnectionAvailable*(self: TCPServer): bool {.gcsafe, locks: 0.}
proc isListening*(self: TCPServer): bool {.gcsafe, locks: 0.}
proc listen*(self: TCPServer; port: int64; bindAddress: string = "*"): Error {.gcsafe,
    locks: 0.}
proc stop*(self: TCPServer) {.gcsafe, locks: 0.}
proc takeConnection*(self: TCPServer): StreamPeerTCP {.gcsafe, locks: 0.}
var tCPServerIsConnectionAvailableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isConnectionAvailable(self: TCPServer): bool =
  if isNil(tCPServerIsConnectionAvailableMethodBind):
    tCPServerIsConnectionAvailableMethodBind = getMethod(cstring"TCP_Server",
        cstring"is_connection_available")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tCPServerIsConnectionAvailableMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tCPServerIsListeningMethodBind {.threadvar.}: ptr GodotMethodBind
proc isListening(self: TCPServer): bool =
  if isNil(tCPServerIsListeningMethodBind):
    tCPServerIsListeningMethodBind = getMethod(cstring"TCP_Server",
        cstring"is_listening")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tCPServerIsListeningMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tCPServerListenMethodBind {.threadvar.}: ptr GodotMethodBind
proc listen(self: TCPServer; port: int64; bindAddress: string = "*"): Error =
  if isNil(tCPServerListenMethodBind):
    tCPServerListenMethodBind = getMethod(cstring"TCP_Server", cstring"listen")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var argToPassToGodot1 = toGodotString(bindAddress)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  tCPServerListenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var tCPServerStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: TCPServer) =
  if isNil(tCPServerStopMethodBind):
    tCPServerStopMethodBind = getMethod(cstring"TCP_Server", cstring"stop")
  var ptrCallRet: pointer
  tCPServerStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tCPServerTakeConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc takeConnection(self: TCPServer): StreamPeerTCP =
  if isNil(tCPServerTakeConnectionMethodBind):
    tCPServerTakeConnectionMethodBind = getMethod(cstring"TCP_Server",
        cstring"take_connection")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tCPServerTakeConnectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
