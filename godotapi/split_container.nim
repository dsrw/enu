
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

const
  DRAGGER_HIDDEN* = 1'i64
  DRAGGER_HIDDEN_COLLAPSED* = 2'i64
  DRAGGER_VISIBLE* = 0'i64
proc collapsed*(self: SplitContainer): bool {.gcsafe, locks: 0.}
proc `collapsed=`*(self: SplitContainer; val: bool) {.gcsafe, locks: 0.}
proc draggerVisibility*(self: SplitContainer): int64 {.gcsafe, locks: 0.}
proc `draggerVisibility=`*(self: SplitContainer; val: int64) {.gcsafe, locks: 0.}
proc splitOffset*(self: SplitContainer): int64 {.gcsafe, locks: 0.}
proc `splitOffset=`*(self: SplitContainer; val: int64) {.gcsafe, locks: 0.}
method guiInput*(self: SplitContainer; event: InputEvent) {.gcsafe, locks: 0.}
proc clampSplitOffset*(self: SplitContainer) {.gcsafe, locks: 0.}
var splitContainerIsCollapsedMethodBind {.threadvar.}: ptr GodotMethodBind
proc collapsed(self: SplitContainer): bool =
  if isNil(splitContainerIsCollapsedMethodBind):
    splitContainerIsCollapsedMethodBind = getMethod(cstring"SplitContainer",
        cstring"is_collapsed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  splitContainerIsCollapsedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var splitContainerSetCollapsedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collapsed=`(self: SplitContainer; val: bool) =
  if isNil(splitContainerSetCollapsedMethodBind):
    splitContainerSetCollapsedMethodBind = getMethod(cstring"SplitContainer",
        cstring"set_collapsed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  splitContainerSetCollapsedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var splitContainerGetDraggerVisibilityMethodBind {.threadvar.}: ptr GodotMethodBind
proc draggerVisibility(self: SplitContainer): int64 =
  if isNil(splitContainerGetDraggerVisibilityMethodBind):
    splitContainerGetDraggerVisibilityMethodBind = getMethod(
        cstring"SplitContainer", cstring"get_dragger_visibility")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  splitContainerGetDraggerVisibilityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var splitContainerSetDraggerVisibilityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `draggerVisibility=`(self: SplitContainer; val: int64) =
  if isNil(splitContainerSetDraggerVisibilityMethodBind):
    splitContainerSetDraggerVisibilityMethodBind = getMethod(
        cstring"SplitContainer", cstring"set_dragger_visibility")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  splitContainerSetDraggerVisibilityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var splitContainerGetSplitOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc splitOffset(self: SplitContainer): int64 =
  if isNil(splitContainerGetSplitOffsetMethodBind):
    splitContainerGetSplitOffsetMethodBind = getMethod(cstring"SplitContainer",
        cstring"get_split_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  splitContainerGetSplitOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var splitContainerSetSplitOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `splitOffset=`(self: SplitContainer; val: int64) =
  if isNil(splitContainerSetSplitOffsetMethodBind):
    splitContainerSetSplitOffsetMethodBind = getMethod(cstring"SplitContainer",
        cstring"set_split_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  splitContainerSetSplitOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var splitContainerUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: SplitContainer; event: InputEvent) =
  if isNil(splitContainerUnderscoreguiInputMethodBind):
    splitContainerUnderscoreguiInputMethodBind = getMethod(
        cstring"SplitContainer", cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  splitContainerUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var splitContainerClampSplitOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc clampSplitOffset(self: SplitContainer) =
  if isNil(splitContainerClampSplitOffsetMethodBind):
    splitContainerClampSplitOffsetMethodBind = getMethod(cstring"SplitContainer",
        cstring"clamp_split_offset")
  var ptrCallRet: pointer
  splitContainerClampSplitOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
