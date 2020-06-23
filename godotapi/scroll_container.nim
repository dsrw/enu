
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

proc followFocus*(self: ScrollContainer): bool {.gcsafe, locks: 0.}
proc `followFocus=`*(self: ScrollContainer; val: bool) {.gcsafe, locks: 0.}
proc scrollDeadzone*(self: ScrollContainer): int64 {.gcsafe, locks: 0.}
proc `scrollDeadzone=`*(self: ScrollContainer; val: int64) {.gcsafe, locks: 0.}
proc scrollHorizontal*(self: ScrollContainer): int64 {.gcsafe, locks: 0.}
proc `scrollHorizontal=`*(self: ScrollContainer; val: int64) {.gcsafe, locks: 0.}
proc scrollHorizontalEnabled*(self: ScrollContainer): bool {.gcsafe, locks: 0.}
proc `scrollHorizontalEnabled=`*(self: ScrollContainer; val: bool) {.gcsafe, locks: 0.}
proc scrollVertical*(self: ScrollContainer): int64 {.gcsafe, locks: 0.}
proc `scrollVertical=`*(self: ScrollContainer; val: int64) {.gcsafe, locks: 0.}
proc scrollVerticalEnabled*(self: ScrollContainer): bool {.gcsafe, locks: 0.}
proc `scrollVerticalEnabled=`*(self: ScrollContainer; val: bool) {.gcsafe, locks: 0.}
method ensureFocusedVisible*(self: ScrollContainer; arg0: Control) {.gcsafe, locks: 0,
    base.}
method guiInput*(self: ScrollContainer; event: InputEvent) {.gcsafe, locks: 0.}
method scrollMoved*(self: ScrollContainer; arg0: float64) {.gcsafe, locks: 0, base.}
method updateScrollbarPosition*(self: ScrollContainer) {.gcsafe, locks: 0, base.}
proc getHScrollbar*(self: ScrollContainer): HScrollBar {.gcsafe, locks: 0.}
proc getVScrollbar*(self: ScrollContainer): VScrollBar {.gcsafe, locks: 0.}
var scrollContainerIsFollowingFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc followFocus(self: ScrollContainer): bool =
  if isNil(scrollContainerIsFollowingFocusMethodBind):
    scrollContainerIsFollowingFocusMethodBind = getMethod(
        cstring"ScrollContainer", cstring"is_following_focus")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scrollContainerIsFollowingFocusMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scrollContainerSetFollowFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `followFocus=`(self: ScrollContainer; val: bool) =
  if isNil(scrollContainerSetFollowFocusMethodBind):
    scrollContainerSetFollowFocusMethodBind = getMethod(cstring"ScrollContainer",
        cstring"set_follow_focus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  scrollContainerSetFollowFocusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerGetDeadzoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollDeadzone(self: ScrollContainer): int64 =
  if isNil(scrollContainerGetDeadzoneMethodBind):
    scrollContainerGetDeadzoneMethodBind = getMethod(cstring"ScrollContainer",
        cstring"get_deadzone")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scrollContainerGetDeadzoneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var scrollContainerSetDeadzoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollDeadzone=`(self: ScrollContainer; val: int64) =
  if isNil(scrollContainerSetDeadzoneMethodBind):
    scrollContainerSetDeadzoneMethodBind = getMethod(cstring"ScrollContainer",
        cstring"set_deadzone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  scrollContainerSetDeadzoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerGetHScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollHorizontal(self: ScrollContainer): int64 =
  if isNil(scrollContainerGetHScrollMethodBind):
    scrollContainerGetHScrollMethodBind = getMethod(cstring"ScrollContainer",
        cstring"get_h_scroll")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scrollContainerGetHScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var scrollContainerSetHScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollHorizontal=`(self: ScrollContainer; val: int64) =
  if isNil(scrollContainerSetHScrollMethodBind):
    scrollContainerSetHScrollMethodBind = getMethod(cstring"ScrollContainer",
        cstring"set_h_scroll")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  scrollContainerSetHScrollMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerIsHScrollEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollHorizontalEnabled(self: ScrollContainer): bool =
  if isNil(scrollContainerIsHScrollEnabledMethodBind):
    scrollContainerIsHScrollEnabledMethodBind = getMethod(
        cstring"ScrollContainer", cstring"is_h_scroll_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scrollContainerIsHScrollEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scrollContainerSetEnableHScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollHorizontalEnabled=`(self: ScrollContainer; val: bool) =
  if isNil(scrollContainerSetEnableHScrollMethodBind):
    scrollContainerSetEnableHScrollMethodBind = getMethod(
        cstring"ScrollContainer", cstring"set_enable_h_scroll")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  scrollContainerSetEnableHScrollMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerGetVScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollVertical(self: ScrollContainer): int64 =
  if isNil(scrollContainerGetVScrollMethodBind):
    scrollContainerGetVScrollMethodBind = getMethod(cstring"ScrollContainer",
        cstring"get_v_scroll")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scrollContainerGetVScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var scrollContainerSetVScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollVertical=`(self: ScrollContainer; val: int64) =
  if isNil(scrollContainerSetVScrollMethodBind):
    scrollContainerSetVScrollMethodBind = getMethod(cstring"ScrollContainer",
        cstring"set_v_scroll")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  scrollContainerSetVScrollMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerIsVScrollEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollVerticalEnabled(self: ScrollContainer): bool =
  if isNil(scrollContainerIsVScrollEnabledMethodBind):
    scrollContainerIsVScrollEnabledMethodBind = getMethod(
        cstring"ScrollContainer", cstring"is_v_scroll_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scrollContainerIsVScrollEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scrollContainerSetEnableVScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollVerticalEnabled=`(self: ScrollContainer; val: bool) =
  if isNil(scrollContainerSetEnableVScrollMethodBind):
    scrollContainerSetEnableVScrollMethodBind = getMethod(
        cstring"ScrollContainer", cstring"set_enable_v_scroll")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  scrollContainerSetEnableVScrollMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerUnderscoreensureFocusedVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
method ensureFocusedVisible(self: ScrollContainer; arg0: Control) =
  if isNil(scrollContainerUnderscoreensureFocusedVisibleMethodBind):
    scrollContainerUnderscoreensureFocusedVisibleMethodBind = getMethod(
        cstring"ScrollContainer", cstring"_ensure_focused_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scrollContainerUnderscoreensureFocusedVisibleMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var scrollContainerUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: ScrollContainer; event: InputEvent) =
  if isNil(scrollContainerUnderscoreguiInputMethodBind):
    scrollContainerUnderscoreguiInputMethodBind = getMethod(
        cstring"ScrollContainer", cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scrollContainerUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerUnderscorescrollMovedMethodBind {.threadvar.}: ptr GodotMethodBind
method scrollMoved(self: ScrollContainer; arg0: float64) =
  if isNil(scrollContainerUnderscorescrollMovedMethodBind):
    scrollContainerUnderscorescrollMovedMethodBind = getMethod(
        cstring"ScrollContainer", cstring"_scroll_moved")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scrollContainerUnderscorescrollMovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scrollContainerUnderscoreupdateScrollbarPositionMethodBind {.threadvar.}: ptr GodotMethodBind
method updateScrollbarPosition(self: ScrollContainer) =
  if isNil(scrollContainerUnderscoreupdateScrollbarPositionMethodBind):
    scrollContainerUnderscoreupdateScrollbarPositionMethodBind = getMethod(
        cstring"ScrollContainer", cstring"_update_scrollbar_position")
  var ptrCallRet: pointer
  scrollContainerUnderscoreupdateScrollbarPositionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var scrollContainerGetHScrollbarMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHScrollbar(self: ScrollContainer): HScrollBar =
  if isNil(scrollContainerGetHScrollbarMethodBind):
    scrollContainerGetHScrollbarMethodBind = getMethod(cstring"ScrollContainer",
        cstring"get_h_scrollbar")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  scrollContainerGetHScrollbarMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var scrollContainerGetVScrollbarMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVScrollbar(self: ScrollContainer): VScrollBar =
  if isNil(scrollContainerGetVScrollbarMethodBind):
    scrollContainerGetVScrollbarMethodBind = getMethod(cstring"ScrollContainer",
        cstring"get_v_scrollbar")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  scrollContainerGetVScrollbarMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
