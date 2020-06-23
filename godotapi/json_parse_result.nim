
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc error*(self: JSONParseResult): Error {.gcsafe, locks: 0.}
proc `error=`*(self: JSONParseResult; val: Error) {.gcsafe, locks: 0.}
proc errorLine*(self: JSONParseResult): int64 {.gcsafe, locks: 0.}
proc `errorLine=`*(self: JSONParseResult; val: int64) {.gcsafe, locks: 0.}
proc errorString*(self: JSONParseResult): string {.gcsafe, locks: 0.}
proc `errorString=`*(self: JSONParseResult; val: string) {.gcsafe, locks: 0.}
proc resultVal*(self: JSONParseResult): Variant {.gcsafe, locks: 0.}
proc `resultVal=`*(self: JSONParseResult; val: Variant) {.gcsafe, locks: 0.}
var jSONParseResultGetErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc error(self: JSONParseResult): Error =
  if isNil(jSONParseResultGetErrorMethodBind):
    jSONParseResultGetErrorMethodBind = getMethod(cstring"JSONParseResult",
        cstring"get_error")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  jSONParseResultGetErrorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var jSONParseResultSetErrorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `error=`(self: JSONParseResult; val: Error) =
  if isNil(jSONParseResultSetErrorMethodBind):
    jSONParseResultSetErrorMethodBind = getMethod(cstring"JSONParseResult",
        cstring"set_error")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  jSONParseResultSetErrorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var jSONParseResultGetErrorLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc errorLine(self: JSONParseResult): int64 =
  if isNil(jSONParseResultGetErrorLineMethodBind):
    jSONParseResultGetErrorLineMethodBind = getMethod(cstring"JSONParseResult",
        cstring"get_error_line")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  jSONParseResultGetErrorLineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var jSONParseResultSetErrorLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc `errorLine=`(self: JSONParseResult; val: int64) =
  if isNil(jSONParseResultSetErrorLineMethodBind):
    jSONParseResultSetErrorLineMethodBind = getMethod(cstring"JSONParseResult",
        cstring"set_error_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  jSONParseResultSetErrorLineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var jSONParseResultGetErrorStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc errorString(self: JSONParseResult): string =
  if isNil(jSONParseResultGetErrorStringMethodBind):
    jSONParseResultGetErrorStringMethodBind = getMethod(cstring"JSONParseResult",
        cstring"get_error_string")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  jSONParseResultGetErrorStringMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var jSONParseResultSetErrorStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `errorString=`(self: JSONParseResult; val: string) =
  if isNil(jSONParseResultSetErrorStringMethodBind):
    jSONParseResultSetErrorStringMethodBind = getMethod(cstring"JSONParseResult",
        cstring"set_error_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  jSONParseResultSetErrorStringMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var jSONParseResultGetResultMethodBind {.threadvar.}: ptr GodotMethodBind
proc resultVal(self: JSONParseResult): Variant =
  if isNil(jSONParseResultGetResultMethodBind):
    jSONParseResultGetResultMethodBind = getMethod(cstring"JSONParseResult",
        cstring"get_result")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  jSONParseResultGetResultMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newVariant(ptrCallVal)

var jSONParseResultSetResultMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resultVal=`(self: JSONParseResult; val: Variant) =
  if isNil(jSONParseResultSetResultMethodBind):
    jSONParseResultSetResultMethodBind = getMethod(cstring"JSONParseResult",
        cstring"set_result")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotVariant
  var ptrCallRet: pointer
  jSONParseResultSetResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
