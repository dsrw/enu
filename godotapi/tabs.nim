
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  ALIGN_CENTER* = 1'i64
  ALIGN_LEFT* = 0'i64
  ALIGN_MAX* = 3'i64
  ALIGN_RIGHT* = 2'i64
  CLOSE_BUTTON_MAX* = 3'i64
  CLOSE_BUTTON_SHOW_ACTIVE_ONLY* = 1'i64
  CLOSE_BUTTON_SHOW_ALWAYS* = 2'i64
  CLOSE_BUTTON_SHOW_NEVER* = 0'i64
proc currentTab*(self: Tabs): int64 {.gcsafe, locks: 0.}
proc `currentTab=`*(self: Tabs; val: int64) {.gcsafe, locks: 0.}
proc dragToRearrangeEnabled*(self: Tabs): bool {.gcsafe, locks: 0.}
proc `dragToRearrangeEnabled=`*(self: Tabs; val: bool) {.gcsafe, locks: 0.}
proc scrollingEnabled*(self: Tabs): bool {.gcsafe, locks: 0.}
proc `scrollingEnabled=`*(self: Tabs; val: bool) {.gcsafe, locks: 0.}
proc tabAlign*(self: Tabs): int64 {.gcsafe, locks: 0.}
proc `tabAlign=`*(self: Tabs; val: int64) {.gcsafe, locks: 0.}
proc tabCloseDisplayPolicy*(self: Tabs): int64 {.gcsafe, locks: 0.}
proc `tabCloseDisplayPolicy=`*(self: Tabs; val: int64) {.gcsafe, locks: 0.}
method guiInput*(self: Tabs; event: InputEvent) {.gcsafe, locks: 0.}
method onMouseExited*(self: Tabs) {.gcsafe, locks: 0, base.}
method updateHover*(self: Tabs) {.gcsafe, locks: 0, base.}
proc addTab*(self: Tabs; title: string = ""; icon: Texture = nil) {.gcsafe, locks: 0.}
proc ensureTabVisible*(self: Tabs; idx: int64) {.gcsafe, locks: 0.}
proc getOffsetButtonsVisible*(self: Tabs): bool {.gcsafe, locks: 0.}
proc getSelectWithRmb*(self: Tabs): bool {.gcsafe, locks: 0.}
proc getTabCount*(self: Tabs): int64 {.gcsafe, locks: 0.}
proc getTabDisabled*(self: Tabs; tabIdx: int64): bool {.gcsafe, locks: 0.}
proc getTabIcon*(self: Tabs; tabIdx: int64): Texture {.gcsafe, locks: 0.}
proc getTabOffset*(self: Tabs): int64 {.gcsafe, locks: 0.}
proc getTabRect*(self: Tabs; tabIdx: int64): Rect2 {.gcsafe, locks: 0.}
proc getTabTitle*(self: Tabs; tabIdx: int64): string {.gcsafe, locks: 0.}
proc getTabsRearrangeGroup*(self: Tabs): int64 {.gcsafe, locks: 0.}
proc moveTab*(self: Tabs; fromm: int64; to: int64) {.gcsafe, locks: 0.}
proc removeTab*(self: Tabs; tabIdx: int64) {.gcsafe, locks: 0.}
proc setSelectWithRmb*(self: Tabs; enabled: bool) {.gcsafe, locks: 0.}
proc setTabDisabled*(self: Tabs; tabIdx: int64; disabled: bool) {.gcsafe, locks: 0.}
proc setTabIcon*(self: Tabs; tabIdx: int64; icon: Texture) {.gcsafe, locks: 0.}
proc setTabTitle*(self: Tabs; tabIdx: int64; title: string) {.gcsafe, locks: 0.}
proc setTabsRearrangeGroup*(self: Tabs; groupId: int64) {.gcsafe, locks: 0.}
var tabsGetCurrentTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentTab(self: Tabs): int64 =
  if isNil(tabsGetCurrentTabMethodBind):
    tabsGetCurrentTabMethodBind = getMethod(cstring"Tabs",
        cstring"get_current_tab")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetCurrentTabMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsSetCurrentTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentTab=`(self: Tabs; val: int64) =
  if isNil(tabsSetCurrentTabMethodBind):
    tabsSetCurrentTabMethodBind = getMethod(cstring"Tabs",
        cstring"set_current_tab")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabsSetCurrentTabMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var tabsGetDragToRearrangeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc dragToRearrangeEnabled(self: Tabs): bool =
  if isNil(tabsGetDragToRearrangeEnabledMethodBind):
    tabsGetDragToRearrangeEnabledMethodBind = getMethod(cstring"Tabs",
        cstring"get_drag_to_rearrange_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetDragToRearrangeEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var tabsSetDragToRearrangeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dragToRearrangeEnabled=`(self: Tabs; val: bool) =
  if isNil(tabsSetDragToRearrangeEnabledMethodBind):
    tabsSetDragToRearrangeEnabledMethodBind = getMethod(cstring"Tabs",
        cstring"set_drag_to_rearrange_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabsSetDragToRearrangeEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabsGetScrollingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollingEnabled(self: Tabs): bool =
  if isNil(tabsGetScrollingEnabledMethodBind):
    tabsGetScrollingEnabledMethodBind = getMethod(cstring"Tabs",
        cstring"get_scrolling_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetScrollingEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsSetScrollingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollingEnabled=`(self: Tabs; val: bool) =
  if isNil(tabsSetScrollingEnabledMethodBind):
    tabsSetScrollingEnabledMethodBind = getMethod(cstring"Tabs",
        cstring"set_scrolling_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabsSetScrollingEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tabsGetTabAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc tabAlign(self: Tabs): int64 =
  if isNil(tabsGetTabAlignMethodBind):
    tabsGetTabAlignMethodBind = getMethod(cstring"Tabs", cstring"get_tab_align")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetTabAlignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsSetTabAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tabAlign=`(self: Tabs; val: int64) =
  if isNil(tabsSetTabAlignMethodBind):
    tabsSetTabAlignMethodBind = getMethod(cstring"Tabs", cstring"set_tab_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabsSetTabAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var tabsGetTabCloseDisplayPolicyMethodBind {.threadvar.}: ptr GodotMethodBind
proc tabCloseDisplayPolicy(self: Tabs): int64 =
  if isNil(tabsGetTabCloseDisplayPolicyMethodBind):
    tabsGetTabCloseDisplayPolicyMethodBind = getMethod(cstring"Tabs",
        cstring"get_tab_close_display_policy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetTabCloseDisplayPolicyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsSetTabCloseDisplayPolicyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tabCloseDisplayPolicy=`(self: Tabs; val: int64) =
  if isNil(tabsSetTabCloseDisplayPolicyMethodBind):
    tabsSetTabCloseDisplayPolicyMethodBind = getMethod(cstring"Tabs",
        cstring"set_tab_close_display_policy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tabsSetTabCloseDisplayPolicyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tabsUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: Tabs; event: InputEvent) =
  if isNil(tabsUnderscoreguiInputMethodBind):
    tabsUnderscoreguiInputMethodBind = getMethod(cstring"Tabs",
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
  tabsUnderscoreguiInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tabsUnderscoreonMouseExitedMethodBind {.threadvar.}: ptr GodotMethodBind
method onMouseExited(self: Tabs) =
  if isNil(tabsUnderscoreonMouseExitedMethodBind):
    tabsUnderscoreonMouseExitedMethodBind = getMethod(cstring"Tabs",
        cstring"_on_mouse_exited")
  var ptrCallRet: pointer
  tabsUnderscoreonMouseExitedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsUnderscoreupdateHoverMethodBind {.threadvar.}: ptr GodotMethodBind
method updateHover(self: Tabs) =
  if isNil(tabsUnderscoreupdateHoverMethodBind):
    tabsUnderscoreupdateHoverMethodBind = getMethod(cstring"Tabs",
        cstring"_update_hover")
  var ptrCallRet: pointer
  tabsUnderscoreupdateHoverMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsAddTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTab(self: Tabs; title: string = ""; icon: Texture = nil) =
  if isNil(tabsAddTabMethodBind):
    tabsAddTabMethodBind = getMethod(cstring"Tabs", cstring"add_tab")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(title)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  tabsAddTabMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var tabsEnsureTabVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc ensureTabVisible(self: Tabs; idx: int64) =
  if isNil(tabsEnsureTabVisibleMethodBind):
    tabsEnsureTabVisibleMethodBind = getMethod(cstring"Tabs",
        cstring"ensure_tab_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  tabsEnsureTabVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tabsGetOffsetButtonsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOffsetButtonsVisible(self: Tabs): bool =
  if isNil(tabsGetOffsetButtonsVisibleMethodBind):
    tabsGetOffsetButtonsVisibleMethodBind = getMethod(cstring"Tabs",
        cstring"get_offset_buttons_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetOffsetButtonsVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsGetSelectWithRmbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectWithRmb(self: Tabs): bool =
  if isNil(tabsGetSelectWithRmbMethodBind):
    tabsGetSelectWithRmbMethodBind = getMethod(cstring"Tabs",
        cstring"get_select_with_rmb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetSelectWithRmbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsGetTabCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabCount(self: Tabs): int64 =
  if isNil(tabsGetTabCountMethodBind):
    tabsGetTabCountMethodBind = getMethod(cstring"Tabs", cstring"get_tab_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetTabCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsGetTabDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabDisabled(self: Tabs; tabIdx: int64): bool =
  if isNil(tabsGetTabDisabledMethodBind):
    tabsGetTabDisabledMethodBind = getMethod(cstring"Tabs",
        cstring"get_tab_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetTabDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var tabsGetTabIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabIcon(self: Tabs; tabIdx: int64): Texture =
  if isNil(tabsGetTabIconMethodBind):
    tabsGetTabIconMethodBind = getMethod(cstring"Tabs", cstring"get_tab_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  tabsGetTabIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var tabsGetTabOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabOffset(self: Tabs): int64 =
  if isNil(tabsGetTabOffsetMethodBind):
    tabsGetTabOffsetMethodBind = getMethod(cstring"Tabs", cstring"get_tab_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetTabOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsGetTabRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabRect(self: Tabs; tabIdx: int64): Rect2 =
  if isNil(tabsGetTabRectMethodBind):
    tabsGetTabRectMethodBind = getMethod(cstring"Tabs", cstring"get_tab_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetTabRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tabsGetTabTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabTitle(self: Tabs; tabIdx: int64): string =
  if isNil(tabsGetTabTitleMethodBind):
    tabsGetTabTitleMethodBind = getMethod(cstring"Tabs", cstring"get_tab_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  tabsGetTabTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var tabsGetTabsRearrangeGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabsRearrangeGroup(self: Tabs): int64 =
  if isNil(tabsGetTabsRearrangeGroupMethodBind):
    tabsGetTabsRearrangeGroupMethodBind = getMethod(cstring"Tabs",
        cstring"get_tabs_rearrange_group")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tabsGetTabsRearrangeGroupMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tabsMoveTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveTab(self: Tabs; fromm: int64; to: int64) =
  if isNil(tabsMoveTabMethodBind):
    tabsMoveTabMethodBind = getMethod(cstring"Tabs", cstring"move_tab")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  var ptrCallRet: pointer
  tabsMoveTabMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tabsRemoveTabMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeTab(self: Tabs; tabIdx: int64) =
  if isNil(tabsRemoveTabMethodBind):
    tabsRemoveTabMethodBind = getMethod(cstring"Tabs", cstring"remove_tab")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var ptrCallRet: pointer
  tabsRemoveTabMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tabsSetSelectWithRmbMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSelectWithRmb(self: Tabs; enabled: bool) =
  if isNil(tabsSetSelectWithRmbMethodBind):
    tabsSetSelectWithRmbMethodBind = getMethod(cstring"Tabs",
        cstring"set_select_with_rmb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  tabsSetSelectWithRmbMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tabsSetTabDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabDisabled(self: Tabs; tabIdx: int64; disabled: bool) =
  if isNil(tabsSetTabDisabledMethodBind):
    tabsSetTabDisabledMethodBind = getMethod(cstring"Tabs",
        cstring"set_tab_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  tabsSetTabDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var tabsSetTabIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabIcon(self: Tabs; tabIdx: int64; icon: Texture) =
  if isNil(tabsSetTabIconMethodBind):
    tabsSetTabIconMethodBind = getMethod(cstring"Tabs", cstring"set_tab_icon")
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
  tabsSetTabIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tabsSetTabTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabTitle(self: Tabs; tabIdx: int64; title: string) =
  if isNil(tabsSetTabTitleMethodBind):
    tabsSetTabTitleMethodBind = getMethod(cstring"Tabs", cstring"set_tab_title")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tabIdx)
  var argToPassToGodot1 = toGodotString(title)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  tabsSetTabTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot1)

var tabsSetTabsRearrangeGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTabsRearrangeGroup(self: Tabs; groupId: int64) =
  if isNil(tabsSetTabsRearrangeGroupMethodBind):
    tabsSetTabsRearrangeGroupMethodBind = getMethod(cstring"Tabs",
        cstring"set_tabs_rearrange_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(groupId)
  var ptrCallRet: pointer
  tabsSetTabsRearrangeGroupMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
