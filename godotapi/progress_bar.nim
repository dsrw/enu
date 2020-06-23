
import
  godot, godottypes, godotinternal, range

export
  godottypes, range

proc percentVisible*(self: ProgressBar): bool {.gcsafe, locks: 0.}
proc `percentVisible=`*(self: ProgressBar; val: bool) {.gcsafe, locks: 0.}
var progressBarIsPercentVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc percentVisible(self: ProgressBar): bool =
  if isNil(progressBarIsPercentVisibleMethodBind):
    progressBarIsPercentVisibleMethodBind = getMethod(cstring"ProgressBar",
        cstring"is_percent_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  progressBarIsPercentVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var progressBarSetPercentVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `percentVisible=`(self: ProgressBar; val: bool) =
  if isNil(progressBarSetPercentVisibleMethodBind):
    progressBarSetPercentVisibleMethodBind = getMethod(cstring"ProgressBar",
        cstring"set_percent_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  progressBarSetPercentVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
