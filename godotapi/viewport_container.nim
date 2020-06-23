
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

proc stretch*(self: ViewportContainer): bool {.gcsafe, locks: 0.}
proc `stretch=`*(self: ViewportContainer; val: bool) {.gcsafe, locks: 0.}
proc stretchShrink*(self: ViewportContainer): int64 {.gcsafe, locks: 0.}
proc `stretchShrink=`*(self: ViewportContainer; val: int64) {.gcsafe, locks: 0.}
method input*(self: ViewportContainer; event: InputEvent) {.gcsafe, locks: 0.}
method unhandledInput*(self: ViewportContainer; event: InputEvent) {.gcsafe, locks: 0.}
var viewportContainerIsStretchEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc stretch(self: ViewportContainer): bool =
  if isNil(viewportContainerIsStretchEnabledMethodBind):
    viewportContainerIsStretchEnabledMethodBind = getMethod(
        cstring"ViewportContainer", cstring"is_stretch_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportContainerIsStretchEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportContainerSetStretchMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stretch=`(self: ViewportContainer; val: bool) =
  if isNil(viewportContainerSetStretchMethodBind):
    viewportContainerSetStretchMethodBind = getMethod(cstring"ViewportContainer",
        cstring"set_stretch")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportContainerSetStretchMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportContainerGetStretchShrinkMethodBind {.threadvar.}: ptr GodotMethodBind
proc stretchShrink(self: ViewportContainer): int64 =
  if isNil(viewportContainerGetStretchShrinkMethodBind):
    viewportContainerGetStretchShrinkMethodBind = getMethod(
        cstring"ViewportContainer", cstring"get_stretch_shrink")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportContainerGetStretchShrinkMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportContainerSetStretchShrinkMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stretchShrink=`(self: ViewportContainer; val: int64) =
  if isNil(viewportContainerSetStretchShrinkMethodBind):
    viewportContainerSetStretchShrinkMethodBind = getMethod(
        cstring"ViewportContainer", cstring"set_stretch_shrink")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportContainerSetStretchShrinkMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportContainerUnderscoreinputMethodBind {.threadvar.}: ptr GodotMethodBind
method input(self: ViewportContainer; event: InputEvent) =
  if isNil(viewportContainerUnderscoreinputMethodBind):
    viewportContainerUnderscoreinputMethodBind = getMethod(
        cstring"ViewportContainer", cstring"_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportContainerUnderscoreinputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportContainerUnderscoreunhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledInput(self: ViewportContainer; event: InputEvent) =
  if isNil(viewportContainerUnderscoreunhandledInputMethodBind):
    viewportContainerUnderscoreunhandledInputMethodBind = getMethod(
        cstring"ViewportContainer", cstring"_unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportContainerUnderscoreunhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
