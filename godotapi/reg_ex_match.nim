
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc names*(self: RegExMatch): Dictionary {.gcsafe, locks: 0.}
proc `names=`*(self: RegExMatch; val: Dictionary) {.gcsafe, locks: 0.}
proc strings*(self: RegExMatch): Array {.gcsafe, locks: 0.}
proc `strings=`*(self: RegExMatch; val: Array) {.gcsafe, locks: 0.}
proc subject*(self: RegExMatch): string {.gcsafe, locks: 0.}
proc `subject=`*(self: RegExMatch; val: string) {.gcsafe, locks: 0.}
proc getEnd*(self: RegExMatch; name: Variant = newVariant(0)): int64 {.gcsafe, locks: 0.}
proc getGroupCount*(self: RegExMatch): int64 {.gcsafe, locks: 0.}
proc getStart*(self: RegExMatch; name: Variant = newVariant(0)): int64 {.gcsafe, locks: 0.}
proc getString*(self: RegExMatch; name: Variant = newVariant(0)): string {.gcsafe,
    locks: 0.}
var regExMatchGetNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc names(self: RegExMatch): Dictionary =
  if isNil(regExMatchGetNamesMethodBind):
    regExMatchGetNamesMethodBind = getMethod(cstring"RegExMatch",
        cstring"get_names")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  regExMatchGetNamesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var regExMatchMethodBind {.threadvar.}: ptr GodotMethodBind
proc `names=`(self: RegExMatch; val: Dictionary) =
  if isNil(regExMatchMethodBind):
    regExMatchMethodBind = getMethod(cstring"RegExMatch", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  regExMatchMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var regExMatchGetStringsMethodBind {.threadvar.}: ptr GodotMethodBind
proc strings(self: RegExMatch): Array =
  if isNil(regExMatchGetStringsMethodBind):
    regExMatchGetStringsMethodBind = getMethod(cstring"RegExMatch",
        cstring"get_strings")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  regExMatchGetStringsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

proc `strings=`(self: RegExMatch; val: Array) =
  if isNil(regExMatchMethodBind):
    regExMatchMethodBind = getMethod(cstring"RegExMatch", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  regExMatchMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var regExMatchGetSubjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc subject(self: RegExMatch): string =
  if isNil(regExMatchGetSubjectMethodBind):
    regExMatchGetSubjectMethodBind = getMethod(cstring"RegExMatch",
        cstring"get_subject")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  regExMatchGetSubjectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

proc `subject=`(self: RegExMatch; val: string) =
  if isNil(regExMatchMethodBind):
    regExMatchMethodBind = getMethod(cstring"RegExMatch", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  regExMatchMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var regExMatchGetEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEnd(self: RegExMatch; name: Variant = newVariant(0)): int64 =
  if isNil(regExMatchGetEndMethodBind):
    regExMatchGetEndMethodBind = getMethod(cstring"RegExMatch", cstring"get_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = name.godotVariant
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  regExMatchGetEndMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var regExMatchGetGroupCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGroupCount(self: RegExMatch): int64 =
  if isNil(regExMatchGetGroupCountMethodBind):
    regExMatchGetGroupCountMethodBind = getMethod(cstring"RegExMatch",
        cstring"get_group_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  regExMatchGetGroupCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var regExMatchGetStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStart(self: RegExMatch; name: Variant = newVariant(0)): int64 =
  if isNil(regExMatchGetStartMethodBind):
    regExMatchGetStartMethodBind = getMethod(cstring"RegExMatch",
        cstring"get_start")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = name.godotVariant
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  regExMatchGetStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var regExMatchGetStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getString(self: RegExMatch; name: Variant = newVariant(0)): string =
  if isNil(regExMatchGetStringMethodBind):
    regExMatchGetStringMethodBind = getMethod(cstring"RegExMatch",
        cstring"get_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = name.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  regExMatchGetStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
