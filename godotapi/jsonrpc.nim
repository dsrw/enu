
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  INTERNAL_ERROR* = -32603'i64
  INVALID_PARAMS* = -32602'i64
  INVALID_REQUEST* = -32600'i64
  METHOD_NOT_FOUND* = -32601'i64
  PARSE_ERROR* = -32700'i64
proc makeNotification*(self: JSONRPC; methodd: string; params: Variant): Dictionary {.
    gcsafe, locks: 0.}
proc makeRequest*(self: JSONRPC; methodd: string; params: Variant; id: Variant): Dictionary {.
    gcsafe, locks: 0.}
proc makeResponse*(self: JSONRPC; resultVal: Variant; id: Variant): Dictionary {.gcsafe,
    locks: 0.}
proc makeResponseError*(self: JSONRPC; code: int64; message: string;
                       id: Variant = newVariant()): Dictionary {.gcsafe, locks: 0.}
proc processAction*(self: JSONRPC; action: Variant; recurse: bool = false): Variant {.
    gcsafe, locks: 0.}
proc processString*(self: JSONRPC; action: string): string {.gcsafe, locks: 0.}
proc setScope*(self: JSONRPC; scope: string; target: Object) {.gcsafe, locks: 0.}
var jSONRPCMakeNotificationMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeNotification(self: JSONRPC; methodd: string; params: Variant): Dictionary =
  if isNil(jSONRPCMakeNotificationMethodBind):
    jSONRPCMakeNotificationMethodBind = getMethod(cstring"JSONRPC",
        cstring"make_notification")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(methodd)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = params.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  jSONRPCMakeNotificationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newDictionary(ptrCallVal)

var jSONRPCMakeRequestMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeRequest(self: JSONRPC; methodd: string; params: Variant; id: Variant): Dictionary =
  if isNil(jSONRPCMakeRequestMethodBind):
    jSONRPCMakeRequestMethodBind = getMethod(cstring"JSONRPC",
        cstring"make_request")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(methodd)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = params.godotVariant
  argsToPassToGodot[][2] = id.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  jSONRPCMakeRequestMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  result = newDictionary(ptrCallVal)

var jSONRPCMakeResponseMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeResponse(self: JSONRPC; resultVal: Variant; id: Variant): Dictionary =
  if isNil(jSONRPCMakeResponseMethodBind):
    jSONRPCMakeResponseMethodBind = getMethod(cstring"JSONRPC",
        cstring"make_response")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = resultVal.godotVariant
  argsToPassToGodot[][1] = id.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  jSONRPCMakeResponseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = newDictionary(ptrCallVal)

var jSONRPCMakeResponseErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeResponseError(self: JSONRPC; code: int64; message: string;
                      id: Variant = newVariant()): Dictionary =
  if isNil(jSONRPCMakeResponseErrorMethodBind):
    jSONRPCMakeResponseErrorMethodBind = getMethod(cstring"JSONRPC",
        cstring"make_response_error")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(code)
  var argToPassToGodot1 = toGodotString(message)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = id.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  jSONRPCMakeResponseErrorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)
  result = newDictionary(ptrCallVal)

var jSONRPCProcessActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc processAction(self: JSONRPC; action: Variant; recurse: bool = false): Variant =
  if isNil(jSONRPCProcessActionMethodBind):
    jSONRPCProcessActionMethodBind = getMethod(cstring"JSONRPC",
        cstring"process_action")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = action.godotVariant
  argsToPassToGodot[][1] = unsafeAddr(recurse)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  jSONRPCProcessActionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newVariant(ptrCallVal)

var jSONRPCProcessStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc processString(self: JSONRPC; action: string): string =
  if isNil(jSONRPCProcessStringMethodBind):
    jSONRPCProcessStringMethodBind = getMethod(cstring"JSONRPC",
        cstring"process_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  jSONRPCProcessStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var jSONRPCSetScopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setScope(self: JSONRPC; scope: string; target: Object) =
  if isNil(jSONRPCSetScopeMethodBind):
    jSONRPCSetScopeMethodBind = getMethod(cstring"JSONRPC", cstring"set_scope")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(scope)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  jSONRPCSetScopeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
