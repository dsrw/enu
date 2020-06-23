
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

proc allowGreater*(self: Range): bool {.gcsafe, locks: 0.}
proc `allowGreater=`*(self: Range; val: bool) {.gcsafe, locks: 0.}
proc allowLesser*(self: Range): bool {.gcsafe, locks: 0.}
proc `allowLesser=`*(self: Range; val: bool) {.gcsafe, locks: 0.}
proc expEdit*(self: Range): bool {.gcsafe, locks: 0.}
proc `expEdit=`*(self: Range; val: bool) {.gcsafe, locks: 0.}
proc maxValue*(self: Range): float64 {.gcsafe, locks: 0.}
proc `maxValue=`*(self: Range; val: float64) {.gcsafe, locks: 0.}
proc minValue*(self: Range): float64 {.gcsafe, locks: 0.}
proc `minValue=`*(self: Range; val: float64) {.gcsafe, locks: 0.}
proc page*(self: Range): float64 {.gcsafe, locks: 0.}
proc `page=`*(self: Range; val: float64) {.gcsafe, locks: 0.}
proc ratio*(self: Range): float64 {.gcsafe, locks: 0.}
proc `ratio=`*(self: Range; val: float64) {.gcsafe, locks: 0.}
proc rounded*(self: Range): bool {.gcsafe, locks: 0.}
proc `rounded=`*(self: Range; val: bool) {.gcsafe, locks: 0.}
proc step*(self: Range): float64 {.gcsafe, locks: 0.}
proc `step=`*(self: Range; val: float64) {.gcsafe, locks: 0.}
proc value*(self: Range): float64 {.gcsafe, locks: 0.}
proc `value=`*(self: Range; val: float64) {.gcsafe, locks: 0.}
proc share*(self: Range; with: Node) {.gcsafe, locks: 0.}
proc unshare*(self: Range) {.gcsafe, locks: 0.}
var rangeIsGreaterAllowedMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowGreater(self: Range): bool =
  if isNil(rangeIsGreaterAllowedMethodBind):
    rangeIsGreaterAllowedMethodBind = getMethod(cstring"Range",
        cstring"is_greater_allowed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeIsGreaterAllowedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetAllowGreaterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowGreater=`(self: Range; val: bool) =
  if isNil(rangeSetAllowGreaterMethodBind):
    rangeSetAllowGreaterMethodBind = getMethod(cstring"Range",
        cstring"set_allow_greater")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetAllowGreaterMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rangeIsLesserAllowedMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowLesser(self: Range): bool =
  if isNil(rangeIsLesserAllowedMethodBind):
    rangeIsLesserAllowedMethodBind = getMethod(cstring"Range",
        cstring"is_lesser_allowed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeIsLesserAllowedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetAllowLesserMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowLesser=`(self: Range; val: bool) =
  if isNil(rangeSetAllowLesserMethodBind):
    rangeSetAllowLesserMethodBind = getMethod(cstring"Range",
        cstring"set_allow_lesser")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetAllowLesserMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var rangeIsRatioExpMethodBind {.threadvar.}: ptr GodotMethodBind
proc expEdit(self: Range): bool =
  if isNil(rangeIsRatioExpMethodBind):
    rangeIsRatioExpMethodBind = getMethod(cstring"Range", cstring"is_ratio_exp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeIsRatioExpMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetExpRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expEdit=`(self: Range; val: bool) =
  if isNil(rangeSetExpRatioMethodBind):
    rangeSetExpRatioMethodBind = getMethod(cstring"Range", cstring"set_exp_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetExpRatioMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var rangeGetMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxValue(self: Range): float64 =
  if isNil(rangeGetMaxMethodBind):
    rangeGetMaxMethodBind = getMethod(cstring"Range", cstring"get_max")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeGetMaxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxValue=`(self: Range; val: float64) =
  if isNil(rangeSetMaxMethodBind):
    rangeSetMaxMethodBind = getMethod(cstring"Range", cstring"set_max")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetMaxMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var rangeGetMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc minValue(self: Range): float64 =
  if isNil(rangeGetMinMethodBind):
    rangeGetMinMethodBind = getMethod(cstring"Range", cstring"get_min")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeGetMinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `minValue=`(self: Range; val: float64) =
  if isNil(rangeSetMinMethodBind):
    rangeSetMinMethodBind = getMethod(cstring"Range", cstring"set_min")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetMinMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var rangeGetPageMethodBind {.threadvar.}: ptr GodotMethodBind
proc page(self: Range): float64 =
  if isNil(rangeGetPageMethodBind):
    rangeGetPageMethodBind = getMethod(cstring"Range", cstring"get_page")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeGetPageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetPageMethodBind {.threadvar.}: ptr GodotMethodBind
proc `page=`(self: Range; val: float64) =
  if isNil(rangeSetPageMethodBind):
    rangeSetPageMethodBind = getMethod(cstring"Range", cstring"set_page")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetPageMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var rangeGetAsRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc ratio(self: Range): float64 =
  if isNil(rangeGetAsRatioMethodBind):
    rangeGetAsRatioMethodBind = getMethod(cstring"Range", cstring"get_as_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeGetAsRatioMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetAsRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ratio=`(self: Range; val: float64) =
  if isNil(rangeSetAsRatioMethodBind):
    rangeSetAsRatioMethodBind = getMethod(cstring"Range", cstring"set_as_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetAsRatioMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var rangeIsUsingRoundedValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc rounded(self: Range): bool =
  if isNil(rangeIsUsingRoundedValuesMethodBind):
    rangeIsUsingRoundedValuesMethodBind = getMethod(cstring"Range",
        cstring"is_using_rounded_values")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeIsUsingRoundedValuesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetUseRoundedValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rounded=`(self: Range; val: bool) =
  if isNil(rangeSetUseRoundedValuesMethodBind):
    rangeSetUseRoundedValuesMethodBind = getMethod(cstring"Range",
        cstring"set_use_rounded_values")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetUseRoundedValuesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rangeGetStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc step(self: Range): float64 =
  if isNil(rangeGetStepMethodBind):
    rangeGetStepMethodBind = getMethod(cstring"Range", cstring"get_step")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeGetStepMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc `step=`(self: Range; val: float64) =
  if isNil(rangeSetStepMethodBind):
    rangeSetStepMethodBind = getMethod(cstring"Range", cstring"set_step")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetStepMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var rangeGetValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc value(self: Range): float64 =
  if isNil(rangeGetValueMethodBind):
    rangeGetValueMethodBind = getMethod(cstring"Range", cstring"get_value")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rangeGetValueMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rangeSetValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `value=`(self: Range; val: float64) =
  if isNil(rangeSetValueMethodBind):
    rangeSetValueMethodBind = getMethod(cstring"Range", cstring"set_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rangeSetValueMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var rangeShareMethodBind {.threadvar.}: ptr GodotMethodBind
proc share(self: Range; with: Node) =
  if isNil(rangeShareMethodBind):
    rangeShareMethodBind = getMethod(cstring"Range", cstring"share")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not with.isNil:
    with.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rangeShareMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var rangeUnshareMethodBind {.threadvar.}: ptr GodotMethodBind
proc unshare(self: Range) =
  if isNil(rangeUnshareMethodBind):
    rangeUnshareMethodBind = getMethod(cstring"Range", cstring"unshare")
  var ptrCallRet: pointer
  rangeUnshareMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
