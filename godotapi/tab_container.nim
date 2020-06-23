
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

const
  ALIGN_CENTER* = 1'i64
  ALIGN_LEFT* = 0'i64
  ALIGN_RIGHT* = 2'i64
proc currentTab*(self: TabContainer): int64 {.gcsafe, locks: 0.}
proc `currentTab=`*(self: TabContainer; val: int64) {.gcsafe, locks: 0.}
proc dragToRearrangeEnabled*(self: TabContainer): bool {.gcsafe, locks: 0.}
proc `dragToRearrangeEnabled=`*(self: TabContainer; val: bool) {.gcsafe, locks: 0.}
proc tabAlign*(self: TabContainer): int64 {.gcsafe, locks: 0.}
proc `tabAlign=`*(self: TabContainer; val: int64) {.gcsafe, locks: 0.}
proc tabsVisible*(self: TabContainer): bool {.gcsafe, locks: 0.}
proc `tabsVisible=`*(self: TabContainer; val: bool) {.gcsafe, locks: 0.}
proc useHiddenTabsForMinSize*(self: TabContainer): bool {.gcsafe, locks: 0.}
proc `useHiddenTabsForMinSize=`*(self: TabContainer; val: bool) {.gcsafe, locks: 0.}
method childRenamedCallback*(self: TabContainer) {.gcsafe, locks: 0, base.}
method guiInput*(self: TabContainer; event: InputEvent) {.gcsafe, locks: 0.}
method onMouseExited*(self: TabContainer) {.gcsafe, locks: 0, base.}
method onThemeChanged*(self: TabContainer) {.gcsafe, locks: 0, base.}
method updateCurrentTab*(self: TabContainer) {.gcsafe, locks: 0, base.}
proc getCurrentTabControl*(self: TabContainer): Control {.gcsafe, locks: 0.}
proc getPopup*(self: TabContainer): Popup {.gcsafe, locks: 0.}
proc getPreviousTab*(self: TabContainer): int64 {.gcsafe, locks: 0.}
proc getTabControl*(self: TabContainer; tabIdx: int64): Control {.gcsafe, locks: 0.}
proc getTabCount*(self: TabContainer): int64 {.gcsafe, locks: 0.}
proc getTabDisabled*(self: TabContainer; tabIdx: int64): bool {.gcsafe, locks: 0.}
proc getTabIcon*(self: TabContainer; tabIdx: int64): Texture {.gcsafe, locks: 0.}
proc getTabTitle*(self: TabContainer; tabIdx: int64): string {.gcsafe, locks: 0.}
proc getTabsRearrangeGroup*(self: TabContainer): int64 {.gcsafe, locks: 0.}
proc setPopup*(self: TabContainer; popup: Node) {.gcsafe, locks: 0.}
proc setTabDisabled*(self: TabContainer; tabIdx: int64; disabled: bool) {.gcsafe,
    locks: 0.}
proc setTabIcon*(self: TabContainer; tabIdx: int64; icon: Texture) {.gcsafe, locks: 0.}
proc setTabTitle*(self: TabContainer; tabIdx: int64; title: string) {.gcsafe, locks: 0.}
proc setTabsRearrangeGroup*(self: TabContainer; groupId: int64) {.gcsafe, locks: 0.}
var tabContainerGetCurrentTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentTab(self: TabContainer): int64 =
  if isNil(tabContainerGetCurrentTabMethodBind):
    tabContainerGetCurrentTabMethodBind = getMethod(cstring"TabContainer",
        cstring"get_current_tab")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetCurrentTabMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabContainerSetCurrentTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentTab=`(self: TabContainer; val: int64) =
  if isNil(tabContainerSetCurrentTabMethodBind):
    tabContainerSetCurrentTabMethodBind = getMethod(cstring"TabContainer",
        cstring"set_current_tab")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabContainerSetCurrentTabMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabContainerGetDragToRearrangeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc dragToRearrangeEnabled(self: TabContainer): bool =
  if isNil(tabContainerGetDragToRearrangeEnabledMethodBind):
    tabContainerGetDragToRearrangeEnabledMethodBind = getMethod(
        cstring"TabContainer", cstring"get_drag_to_rearrange_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetDragToRearrangeEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tabContainerSetDragToRearrangeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dragToRearrangeEnabled=`(self: TabContainer; val: bool) =
  if isNil(tabContainerSetDragToRearrangeEnabledMethodBind):
    tabContainerSetDragToRearrangeEnabledMethodBind = getMethod(
        cstring"TabContainer", cstring"set_drag_to_rearrange_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabContainerSetDragToRearrangeEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabContainerGetTabAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc tabAlign(self: TabContainer): int64 =
  if isNil(tabContainerGetTabAlignMethodBind):
    tabContainerGetTabAlignMethodBind = getMethod(cstring"TabContainer",
        cstring"get_tab_align")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetTabAlignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabContainerSetTabAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tabAlign=`(self: TabContainer; val: int64) =
  if isNil(tabContainerSetTabAlignMethodBind):
    tabContainerSetTabAlignMethodBind = getMethod(cstring"TabContainer",
        cstring"set_tab_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabContainerSetTabAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tabContainerAreTabsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc tabsVisible(self: TabContainer): bool =
  if isNil(tabContainerAreTabsVisibleMethodBind):
    tabContainerAreTabsVisibleMethodBind = getMethod(cstring"TabContainer",
        cstring"are_tabs_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerAreTabsVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabContainerSetTabsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tabsVisible=`(self: TabContainer; val: bool) =
  if isNil(tabContainerSetTabsVisibleMethodBind):
    tabContainerSetTabsVisibleMethodBind = getMethod(cstring"TabContainer",
        cstring"set_tabs_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabContainerSetTabsVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabContainerGetUseHiddenTabsForMinSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc useHiddenTabsForMinSize(self: TabContainer): bool =
  if isNil(tabContainerGetUseHiddenTabsForMinSizeMethodBind):
    tabContainerGetUseHiddenTabsForMinSizeMethodBind = getMethod(
        cstring"TabContainer", cstring"get_use_hidden_tabs_for_min_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetUseHiddenTabsForMinSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tabContainerSetUseHiddenTabsForMinSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useHiddenTabsForMinSize=`(self: TabContainer; val: bool) =
  if isNil(tabContainerSetUseHiddenTabsForMinSizeMethodBind):
    tabContainerSetUseHiddenTabsForMinSizeMethodBind = getMethod(
        cstring"TabContainer", cstring"set_use_hidden_tabs_for_min_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabContainerSetUseHiddenTabsForMinSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabContainerUnderscorechildRenamedCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
method childRenamedCallback(self: TabContainer) =
  if isNil(tabContainerUnderscorechildRenamedCallbackMethodBind):
    tabContainerUnderscorechildRenamedCallbackMethodBind = getMethod(
        cstring"TabContainer", cstring"_child_renamed_callback")
  var ptrCallRet: pointer
  tabContainerUnderscorechildRenamedCallbackMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var tabContainerUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: TabContainer; event: InputEvent) =
  if isNil(tabContainerUnderscoreguiInputMethodBind):
    tabContainerUnderscoreguiInputMethodBind = getMethod(cstring"TabContainer",
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
  tabContainerUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabContainerUnderscoreonMouseExitedMethodBind {.threadvar.}: ptr GodotMethodBind
method onMouseExited(self: TabContainer) =
  if isNil(tabContainerUnderscoreonMouseExitedMethodBind):
    tabContainerUnderscoreonMouseExitedMethodBind = getMethod(
        cstring"TabContainer", cstring"_on_mouse_exited")
  var ptrCallRet: pointer
  tabContainerUnderscoreonMouseExitedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tabContainerUnderscoreonThemeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method onThemeChanged(self: TabContainer) =
  if isNil(tabContainerUnderscoreonThemeChangedMethodBind):
    tabContainerUnderscoreonThemeChangedMethodBind = getMethod(
        cstring"TabContainer", cstring"_on_theme_changed")
  var ptrCallRet: pointer
  tabContainerUnderscoreonThemeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tabContainerUnderscoreupdateCurrentTabMethodBind {.threadvar.}: ptr GodotMethodBind
method updateCurrentTab(self: TabContainer) =
  if isNil(tabContainerUnderscoreupdateCurrentTabMethodBind):
    tabContainerUnderscoreupdateCurrentTabMethodBind = getMethod(
        cstring"TabContainer", cstring"_update_current_tab")
  var ptrCallRet: pointer
  tabContainerUnderscoreupdateCurrentTabMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tabContainerGetCurrentTabControlMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentTabControl(self: TabContainer): Control =
  if isNil(tabContainerGetCurrentTabControlMethodBind):
    tabContainerGetCurrentTabControlMethodBind = getMethod(cstring"TabContainer",
        cstring"get_current_tab_control")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tabContainerGetCurrentTabControlMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tabContainerGetPopupMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPopup(self: TabContainer): Popup =
  if isNil(tabContainerGetPopupMethodBind):
    tabContainerGetPopupMethodBind = getMethod(cstring"TabContainer",
        cstring"get_popup")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tabContainerGetPopupMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tabContainerGetPreviousTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPreviousTab(self: TabContainer): int64 =
  if isNil(tabContainerGetPreviousTabMethodBind):
    tabContainerGetPreviousTabMethodBind = getMethod(cstring"TabContainer",
        cstring"get_previous_tab")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetPreviousTabMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabContainerGetTabControlMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabControl(self: TabContainer; tabIdx: int64): Control =
  if isNil(tabContainerGetTabControlMethodBind):
    tabContainerGetTabControlMethodBind = getMethod(cstring"TabContainer",
        cstring"get_tab_control")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tabContainerGetTabControlMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tabContainerGetTabCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabCount(self: TabContainer): int64 =
  if isNil(tabContainerGetTabCountMethodBind):
    tabContainerGetTabCountMethodBind = getMethod(cstring"TabContainer",
        cstring"get_tab_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetTabCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabContainerGetTabDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabDisabled(self: TabContainer; tabIdx: int64): bool =
  if isNil(tabContainerGetTabDisabledMethodBind):
    tabContainerGetTabDisabledMethodBind = getMethod(cstring"TabContainer",
        cstring"get_tab_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetTabDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabContainerGetTabIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabIcon(self: TabContainer; tabIdx: int64): Texture =
  if isNil(tabContainerGetTabIconMethodBind):
    tabContainerGetTabIconMethodBind = getMethod(cstring"TabContainer",
        cstring"get_tab_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tabContainerGetTabIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tabContainerGetTabTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabTitle(self: TabContainer; tabIdx: int64): string =
  if isNil(tabContainerGetTabTitleMethodBind):
    tabContainerGetTabTitleMethodBind = getMethod(cstring"TabContainer",
        cstring"get_tab_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  tabContainerGetTabTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var tabContainerGetTabsRearrangeGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabsRearrangeGroup(self: TabContainer): int64 =
  if isNil(tabContainerGetTabsRearrangeGroupMethodBind):
    tabContainerGetTabsRearrangeGroupMethodBind = getMethod(
        cstring"TabContainer", cstring"get_tabs_rearrange_group")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabContainerGetTabsRearrangeGroupMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tabContainerSetPopupMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPopup(self: TabContainer; popup: Node) =
  if isNil(tabContainerSetPopupMethodBind):
    tabContainerSetPopupMethodBind = getMethod(cstring"TabContainer",
        cstring"set_popup")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not popup.isNil:
    popup.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  tabContainerSetPopupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tabContainerSetTabDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabDisabled(self: TabContainer; tabIdx: int64; disabled: bool) =
  if isNil(tabContainerSetTabDisabledMethodBind):
    tabContainerSetTabDisabledMethodBind = getMethod(cstring"TabContainer",
        cstring"set_tab_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  tabContainerSetTabDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabContainerSetTabIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabIcon(self: TabContainer; tabIdx: int64; icon: Texture) =
  if isNil(tabContainerSetTabIconMethodBind):
    tabContainerSetTabIconMethodBind = getMethod(cstring"TabContainer",
        cstring"set_tab_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  let argToPassToGodot1 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  tabContainerSetTabIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tabContainerSetTabTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabTitle(self: TabContainer; tabIdx: int64; title: string) =
  if isNil(tabContainerSetTabTitleMethodBind):
    tabContainerSetTabTitleMethodBind = getMethod(cstring"TabContainer",
        cstring"set_tab_title")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var argToPassToGodot1 = toGodotString(title)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  tabContainerSetTabTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var tabContainerSetTabsRearrangeGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabsRearrangeGroup(self: TabContainer; groupId: int64) =
  if isNil(tabContainerSetTabsRearrangeGroupMethodBind):
    tabContainerSetTabsRearrangeGroupMethodBind = getMethod(
        cstring"TabContainer", cstring"set_tabs_rearrange_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(groupId)
  var ptrCallRet: pointer
  tabContainerSetTabsRearrangeGroupMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
