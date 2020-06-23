
import
  godot, godottypes, godotinternal, range

export
  godottypes, range

proc customStep*(self: ScrollBar): float64 {.gcsafe, locks: 0.}
proc `customStep=`*(self: ScrollBar; val: float64) {.gcsafe, locks: 0.}
method dragNodeExit*(self: ScrollBar) {.gcsafe, locks: 0, base.}
method dragNodeInput*(self: ScrollBar; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method guiInput*(self: ScrollBar; event: InputEvent) {.gcsafe, locks: 0.}
var scrollBarGetCustomStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc customStep(self: ScrollBar): float64 =
  if isNil(scrollBarGetCustomStepMethodBind):
    scrollBarGetCustomStepMethodBind = getMethod(cstring"ScrollBar",
        cstring"get_custom_step")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scrollBarGetCustomStepMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var scrollBarSetCustomStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customStep=`(self: ScrollBar; val: float64) =
  if isNil(scrollBarSetCustomStepMethodBind):
    scrollBarSetCustomStepMethodBind = getMethod(cstring"ScrollBar",
        cstring"set_custom_step")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  scrollBarSetCustomStepMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var scrollBarUnderscoredragNodeExitMethodBind {.threadvar.}: ptr GodotMethodBind
method dragNodeExit(self: ScrollBar) =
  if isNil(scrollBarUnderscoredragNodeExitMethodBind):
    scrollBarUnderscoredragNodeExitMethodBind = getMethod(cstring"ScrollBar",
        cstring"_drag_node_exit")
  var ptrCallRet: pointer
  scrollBarUnderscoredragNodeExitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scrollBarUnderscoredragNodeInputMethodBind {.threadvar.}: ptr GodotMethodBind
method dragNodeInput(self: ScrollBar; arg0: InputEvent) =
  if isNil(scrollBarUnderscoredragNodeInputMethodBind):
    scrollBarUnderscoredragNodeInputMethodBind = getMethod(cstring"ScrollBar",
        cstring"_drag_node_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scrollBarUnderscoredragNodeInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollBarUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: ScrollBar; event: InputEvent) =
  if isNil(scrollBarUnderscoreguiInputMethodBind):
    scrollBarUnderscoreguiInputMethodBind = getMethod(cstring"ScrollBar",
        cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scrollBarUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
