
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc clear*(self: RegEx) {.gcsafe, locks: 0.}
proc compile*(self: RegEx; pattern: string): Error {.gcsafe, locks: 0.}
proc getGroupCount*(self: RegEx): int64 {.gcsafe, locks: 0.}
proc getNames*(self: RegEx): Array {.gcsafe, locks: 0.}
proc getPattern*(self: RegEx): string {.gcsafe, locks: 0.}
proc isValid*(self: RegEx): bool {.gcsafe, locks: 0.}
proc search*(self: RegEx; subject: string; offset: int64 = 0'i64; endd: int64 = -1'i64): RegExMatch {.
    gcsafe, locks: 0.}
proc searchAll*(self: RegEx; subject: string; offset: int64 = 0'i64; endd: int64 = -1'i64): Array {.
    gcsafe, locks: 0.}
proc sub*(self: RegEx; subject: string; replacement: string; all: bool = false;
         offset: int64 = 0'i64; endd: int64 = -1'i64): string {.gcsafe, locks: 0.}
var regExClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: RegEx) =
  if isNil(regExClearMethodBind):
    regExClearMethodBind = getMethod(cstring"RegEx", cstring"clear")
  var ptrCallRet: pointer
  regExClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var regExCompileMethodBind {.threadvar.}: ptr GodotMethodBind
proc compile(self: RegEx; pattern: string): Error =
  if isNil(regExCompileMethodBind):
    regExCompileMethodBind = getMethod(cstring"RegEx", cstring"compile")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(pattern)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  regExCompileMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var regExGetGroupCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGroupCount(self: RegEx): int64 =
  if isNil(regExGetGroupCountMethodBind):
    regExGetGroupCountMethodBind = getMethod(cstring"RegEx",
        cstring"get_group_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  regExGetGroupCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var regExGetNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNames(self: RegEx): Array =
  if isNil(regExGetNamesMethodBind):
    regExGetNamesMethodBind = getMethod(cstring"RegEx", cstring"get_names")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  regExGetNamesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var regExGetPatternMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPattern(self: RegEx): string =
  if isNil(regExGetPatternMethodBind):
    regExGetPatternMethodBind = getMethod(cstring"RegEx", cstring"get_pattern")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  regExGetPatternMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var regExIsValidMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValid(self: RegEx): bool =
  if isNil(regExIsValidMethodBind):
    regExIsValidMethodBind = getMethod(cstring"RegEx", cstring"is_valid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  regExIsValidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var regExSearchMethodBind {.threadvar.}: ptr GodotMethodBind
proc search(self: RegEx; subject: string; offset: int64 = 0'i64; endd: int64 = -1'i64): RegExMatch =
  if isNil(regExSearchMethodBind):
    regExSearchMethodBind = getMethod(cstring"RegEx", cstring"search")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(subject)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  argsToPassToGodot[][2] = unsafeAddr(endd)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  regExSearchMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var regExSearchAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc searchAll(self: RegEx; subject: string; offset: int64 = 0'i64; endd: int64 = -1'i64): Array =
  if isNil(regExSearchAllMethodBind):
    regExSearchAllMethodBind = getMethod(cstring"RegEx", cstring"search_all")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(subject)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  argsToPassToGodot[][2] = unsafeAddr(endd)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  regExSearchAllMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var regExSubMethodBind {.threadvar.}: ptr GodotMethodBind
proc sub(self: RegEx; subject: string; replacement: string; all: bool = false;
        offset: int64 = 0'i64; endd: int64 = -1'i64): string =
  if isNil(regExSubMethodBind):
    regExSubMethodBind = getMethod(cstring"RegEx", cstring"sub")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(subject)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(replacement)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(all)
  argsToPassToGodot[][3] = unsafeAddr(offset)
  argsToPassToGodot[][4] = unsafeAddr(endd)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  regExSubMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = $ptrCallVal
  deinit(ptrCallVal)
