
import
  godot, godottypes, godotinternal, popup

export
  godottypes, popup

proc allowSearch*(self: PopupMenu): bool {.gcsafe, locks: 0.}
proc `allowSearch=`*(self: PopupMenu; val: bool) {.gcsafe, locks: 0.}
proc hideOnCheckableItemSelection*(self: PopupMenu): bool {.gcsafe, locks: 0.}
proc `hideOnCheckableItemSelection=`*(self: PopupMenu; val: bool) {.gcsafe, locks: 0.}
proc hideOnItemSelection*(self: PopupMenu): bool {.gcsafe, locks: 0.}
proc `hideOnItemSelection=`*(self: PopupMenu; val: bool) {.gcsafe, locks: 0.}
proc hideOnStateItemSelection*(self: PopupMenu): bool {.gcsafe, locks: 0.}
proc `hideOnStateItemSelection=`*(self: PopupMenu; val: bool) {.gcsafe, locks: 0.}
proc items*(self: PopupMenu): Array {.gcsafe, locks: 0.}
proc `items=`*(self: PopupMenu; val: Array) {.gcsafe, locks: 0.}
proc submenuPopupDelay*(self: PopupMenu): float64 {.gcsafe, locks: 0.}
proc `submenuPopupDelay=`*(self: PopupMenu; val: float64) {.gcsafe, locks: 0.}
method guiInput*(self: PopupMenu; event: InputEvent) {.gcsafe, locks: 0.}
method submenuTimeout*(self: PopupMenu) {.gcsafe, locks: 0, base.}
proc addCheckItem*(self: PopupMenu; label: string; id: int64 = -1'i64;
                  accel: int64 = 0'i64) {.gcsafe, locks: 0.}
proc addCheckShortcut*(self: PopupMenu; shortcut: ShortCut; id: int64 = -1'i64;
                      global: bool = false) {.gcsafe, locks: 0.}
proc addIconCheckItem*(self: PopupMenu; texture: Texture; label: string;
                      id: int64 = -1'i64; accel: int64 = 0'i64) {.gcsafe, locks: 0.}
proc addIconCheckShortcut*(self: PopupMenu; texture: Texture; shortcut: ShortCut;
                          id: int64 = -1'i64; global: bool = false) {.gcsafe, locks: 0.}
proc addIconItem*(self: PopupMenu; texture: Texture; label: string; id: int64 = -1'i64;
                 accel: int64 = 0'i64) {.gcsafe, locks: 0.}
proc addIconRadioCheckItem*(self: PopupMenu; texture: Texture; label: string;
                           id: int64 = -1'i64; accel: int64 = 0'i64) {.gcsafe, locks: 0.}
proc addIconRadioCheckShortcut*(self: PopupMenu; texture: Texture;
                               shortcut: ShortCut; id: int64 = -1'i64;
                               global: bool = false) {.gcsafe, locks: 0.}
proc addIconShortcut*(self: PopupMenu; texture: Texture; shortcut: ShortCut;
                     id: int64 = -1'i64; global: bool = false) {.gcsafe, locks: 0.}
proc addItem*(self: PopupMenu; label: string; id: int64 = -1'i64; accel: int64 = 0'i64) {.
    gcsafe, locks: 0.}
proc addMultistateItem*(self: PopupMenu; label: string; maxStates: int64;
                       defaultState: int64 = 0'i64; id: int64 = -1'i64;
                       accel: int64 = 0'i64) {.gcsafe, locks: 0.}
proc addRadioCheckItem*(self: PopupMenu; label: string; id: int64 = -1'i64;
                       accel: int64 = 0'i64) {.gcsafe, locks: 0.}
proc addRadioCheckShortcut*(self: PopupMenu; shortcut: ShortCut; id: int64 = -1'i64;
                           global: bool = false) {.gcsafe, locks: 0.}
proc addSeparator*(self: PopupMenu; label: string = "") {.gcsafe, locks: 0.}
proc addShortcut*(self: PopupMenu; shortcut: ShortCut; id: int64 = -1'i64;
                 global: bool = false) {.gcsafe, locks: 0.}
proc addSubmenuItem*(self: PopupMenu; label: string; submenu: string;
                    id: int64 = -1'i64) {.gcsafe, locks: 0.}
proc clear*(self: PopupMenu) {.gcsafe, locks: 0.}
proc getCurrentIndex*(self: PopupMenu): int64 {.gcsafe, locks: 0.}
proc getItemAccelerator*(self: PopupMenu; idx: int64): int64 {.gcsafe, locks: 0.}
proc getItemCount*(self: PopupMenu): int64 {.gcsafe, locks: 0.}
proc getItemIcon*(self: PopupMenu; idx: int64): Texture {.gcsafe, locks: 0.}
proc getItemId*(self: PopupMenu; idx: int64): int64 {.gcsafe, locks: 0.}
proc getItemIndex*(self: PopupMenu; id: int64): int64 {.gcsafe, locks: 0.}
proc getItemMetadata*(self: PopupMenu; idx: int64): Variant {.gcsafe, locks: 0.}
proc getItemShortcut*(self: PopupMenu; idx: int64): ShortCut {.gcsafe, locks: 0.}
proc getItemSubmenu*(self: PopupMenu; idx: int64): string {.gcsafe, locks: 0.}
proc getItemText*(self: PopupMenu; idx: int64): string {.gcsafe, locks: 0.}
proc getItemTooltip*(self: PopupMenu; idx: int64): string {.gcsafe, locks: 0.}
proc isHideOnWindowLoseFocus*(self: PopupMenu): bool {.gcsafe, locks: 0.}
proc isItemCheckable*(self: PopupMenu; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemChecked*(self: PopupMenu; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemDisabled*(self: PopupMenu; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemRadioCheckable*(self: PopupMenu; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemSeparator*(self: PopupMenu; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemShortcutDisabled*(self: PopupMenu; idx: int64): bool {.gcsafe, locks: 0.}
proc removeItem*(self: PopupMenu; idx: int64) {.gcsafe, locks: 0.}
proc setHideOnWindowLoseFocus*(self: PopupMenu; enable: bool) {.gcsafe, locks: 0.}
proc setItemAccelerator*(self: PopupMenu; idx: int64; accel: int64) {.gcsafe, locks: 0.}
proc setItemAsCheckable*(self: PopupMenu; idx: int64; enable: bool) {.gcsafe, locks: 0.}
proc setItemAsRadioCheckable*(self: PopupMenu; idx: int64; enable: bool) {.gcsafe,
    locks: 0.}
proc setItemAsSeparator*(self: PopupMenu; idx: int64; enable: bool) {.gcsafe, locks: 0.}
proc setItemChecked*(self: PopupMenu; idx: int64; checked: bool) {.gcsafe, locks: 0.}
proc setItemDisabled*(self: PopupMenu; idx: int64; disabled: bool) {.gcsafe, locks: 0.}
proc setItemIcon*(self: PopupMenu; idx: int64; icon: Texture) {.gcsafe, locks: 0.}
proc setItemId*(self: PopupMenu; idx: int64; id: int64) {.gcsafe, locks: 0.}
proc setItemMetadata*(self: PopupMenu; idx: int64; metadata: Variant) {.gcsafe, locks: 0.}
proc setItemMultistate*(self: PopupMenu; idx: int64; state: int64) {.gcsafe, locks: 0.}
proc setItemShortcut*(self: PopupMenu; idx: int64; shortcut: ShortCut;
                     global: bool = false) {.gcsafe, locks: 0.}
proc setItemShortcutDisabled*(self: PopupMenu; idx: int64; disabled: bool) {.gcsafe,
    locks: 0.}
proc setItemSubmenu*(self: PopupMenu; idx: int64; submenu: string) {.gcsafe, locks: 0.}
proc setItemText*(self: PopupMenu; idx: int64; text: string) {.gcsafe, locks: 0.}
proc setItemTooltip*(self: PopupMenu; idx: int64; tooltip: string) {.gcsafe, locks: 0.}
proc toggleItemChecked*(self: PopupMenu; idx: int64) {.gcsafe, locks: 0.}
proc toggleItemMultistate*(self: PopupMenu; idx: int64) {.gcsafe, locks: 0.}
var popupMenuGetAllowSearchMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowSearch(self: PopupMenu): bool =
  if isNil(popupMenuGetAllowSearchMethodBind):
    popupMenuGetAllowSearchMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_allow_search")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuGetAllowSearchMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var popupMenuSetAllowSearchMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowSearch=`(self: PopupMenu; val: bool) =
  if isNil(popupMenuSetAllowSearchMethodBind):
    popupMenuSetAllowSearchMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_allow_search")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  popupMenuSetAllowSearchMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuIsHideOnCheckableItemSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hideOnCheckableItemSelection(self: PopupMenu): bool =
  if isNil(popupMenuIsHideOnCheckableItemSelectionMethodBind):
    popupMenuIsHideOnCheckableItemSelectionMethodBind = getMethod(
        cstring"PopupMenu", cstring"is_hide_on_checkable_item_selection")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsHideOnCheckableItemSelectionMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var popupMenuSetHideOnCheckableItemSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hideOnCheckableItemSelection=`(self: PopupMenu; val: bool) =
  if isNil(popupMenuSetHideOnCheckableItemSelectionMethodBind):
    popupMenuSetHideOnCheckableItemSelectionMethodBind = getMethod(
        cstring"PopupMenu", cstring"set_hide_on_checkable_item_selection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  popupMenuSetHideOnCheckableItemSelectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuIsHideOnItemSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hideOnItemSelection(self: PopupMenu): bool =
  if isNil(popupMenuIsHideOnItemSelectionMethodBind):
    popupMenuIsHideOnItemSelectionMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_hide_on_item_selection")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsHideOnItemSelectionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var popupMenuSetHideOnItemSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hideOnItemSelection=`(self: PopupMenu; val: bool) =
  if isNil(popupMenuSetHideOnItemSelectionMethodBind):
    popupMenuSetHideOnItemSelectionMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_hide_on_item_selection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  popupMenuSetHideOnItemSelectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuIsHideOnStateItemSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hideOnStateItemSelection(self: PopupMenu): bool =
  if isNil(popupMenuIsHideOnStateItemSelectionMethodBind):
    popupMenuIsHideOnStateItemSelectionMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_hide_on_state_item_selection")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsHideOnStateItemSelectionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var popupMenuSetHideOnStateItemSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hideOnStateItemSelection=`(self: PopupMenu; val: bool) =
  if isNil(popupMenuSetHideOnStateItemSelectionMethodBind):
    popupMenuSetHideOnStateItemSelectionMethodBind = getMethod(
        cstring"PopupMenu", cstring"set_hide_on_state_item_selection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  popupMenuSetHideOnStateItemSelectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuUnderscoregetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc items(self: PopupMenu): Array =
  if isNil(popupMenuUnderscoregetItemsMethodBind):
    popupMenuUnderscoregetItemsMethodBind = getMethod(cstring"PopupMenu",
        cstring"_get_items")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  popupMenuUnderscoregetItemsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var popupMenuUnderscoresetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `items=`(self: PopupMenu; val: Array) =
  if isNil(popupMenuUnderscoresetItemsMethodBind):
    popupMenuUnderscoresetItemsMethodBind = getMethod(cstring"PopupMenu",
        cstring"_set_items")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  popupMenuUnderscoresetItemsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuGetSubmenuPopupDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc submenuPopupDelay(self: PopupMenu): float64 =
  if isNil(popupMenuGetSubmenuPopupDelayMethodBind):
    popupMenuGetSubmenuPopupDelayMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_submenu_popup_delay")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuGetSubmenuPopupDelayMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var popupMenuSetSubmenuPopupDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `submenuPopupDelay=`(self: PopupMenu; val: float64) =
  if isNil(popupMenuSetSubmenuPopupDelayMethodBind):
    popupMenuSetSubmenuPopupDelayMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_submenu_popup_delay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  popupMenuSetSubmenuPopupDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: PopupMenu; event: InputEvent) =
  if isNil(popupMenuUnderscoreguiInputMethodBind):
    popupMenuUnderscoreguiInputMethodBind = getMethod(cstring"PopupMenu",
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
  popupMenuUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuUnderscoresubmenuTimeoutMethodBind {.threadvar.}: ptr GodotMethodBind
method submenuTimeout(self: PopupMenu) =
  if isNil(popupMenuUnderscoresubmenuTimeoutMethodBind):
    popupMenuUnderscoresubmenuTimeoutMethodBind = getMethod(cstring"PopupMenu",
        cstring"_submenu_timeout")
  var ptrCallRet: pointer
  popupMenuUnderscoresubmenuTimeoutMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var popupMenuAddCheckItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCheckItem(self: PopupMenu; label: string; id: int64 = -1'i64;
                 accel: int64 = 0'i64) =
  if isNil(popupMenuAddCheckItemMethodBind):
    popupMenuAddCheckItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_check_item")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuAddCheckItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var popupMenuAddCheckShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCheckShortcut(self: PopupMenu; shortcut: ShortCut; id: int64 = -1'i64;
                     global: bool = false) =
  if isNil(popupMenuAddCheckShortcutMethodBind):
    popupMenuAddCheckShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_check_shortcut")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shortcut.isNil:
    shortcut.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(global)
  var ptrCallRet: pointer
  popupMenuAddCheckShortcutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuAddIconCheckItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconCheckItem(self: PopupMenu; texture: Texture; label: string;
                     id: int64 = -1'i64; accel: int64 = 0'i64) =
  if isNil(popupMenuAddIconCheckItemMethodBind):
    popupMenuAddIconCheckItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_icon_check_item")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(label)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(id)
  argsToPassToGodot[][3] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuAddIconCheckItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var popupMenuAddIconCheckShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconCheckShortcut(self: PopupMenu; texture: Texture; shortcut: ShortCut;
                         id: int64 = -1'i64; global: bool = false) =
  if isNil(popupMenuAddIconCheckShortcutMethodBind):
    popupMenuAddIconCheckShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_icon_check_shortcut")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not shortcut.isNil:
    shortcut.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(id)
  argsToPassToGodot[][3] = unsafeAddr(global)
  var ptrCallRet: pointer
  popupMenuAddIconCheckShortcutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuAddIconItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconItem(self: PopupMenu; texture: Texture; label: string; id: int64 = -1'i64;
                accel: int64 = 0'i64) =
  if isNil(popupMenuAddIconItemMethodBind):
    popupMenuAddIconItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_icon_item")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(label)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(id)
  argsToPassToGodot[][3] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuAddIconItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var popupMenuAddIconRadioCheckItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconRadioCheckItem(self: PopupMenu; texture: Texture; label: string;
                          id: int64 = -1'i64; accel: int64 = 0'i64) =
  if isNil(popupMenuAddIconRadioCheckItemMethodBind):
    popupMenuAddIconRadioCheckItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_icon_radio_check_item")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(label)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(id)
  argsToPassToGodot[][3] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuAddIconRadioCheckItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var popupMenuAddIconRadioCheckShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconRadioCheckShortcut(self: PopupMenu; texture: Texture; shortcut: ShortCut;
                              id: int64 = -1'i64; global: bool = false) =
  if isNil(popupMenuAddIconRadioCheckShortcutMethodBind):
    popupMenuAddIconRadioCheckShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_icon_radio_check_shortcut")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not shortcut.isNil:
    shortcut.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(id)
  argsToPassToGodot[][3] = unsafeAddr(global)
  var ptrCallRet: pointer
  popupMenuAddIconRadioCheckShortcutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuAddIconShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconShortcut(self: PopupMenu; texture: Texture; shortcut: ShortCut;
                    id: int64 = -1'i64; global: bool = false) =
  if isNil(popupMenuAddIconShortcutMethodBind):
    popupMenuAddIconShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_icon_shortcut")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not shortcut.isNil:
    shortcut.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(id)
  argsToPassToGodot[][3] = unsafeAddr(global)
  var ptrCallRet: pointer
  popupMenuAddIconShortcutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuAddItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addItem(self: PopupMenu; label: string; id: int64 = -1'i64; accel: int64 = 0'i64) =
  if isNil(popupMenuAddItemMethodBind):
    popupMenuAddItemMethodBind = getMethod(cstring"PopupMenu", cstring"add_item")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuAddItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var popupMenuAddMultistateItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addMultistateItem(self: PopupMenu; label: string; maxStates: int64;
                      defaultState: int64 = 0'i64; id: int64 = -1'i64;
                      accel: int64 = 0'i64) =
  if isNil(popupMenuAddMultistateItemMethodBind):
    popupMenuAddMultistateItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_multistate_item")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(maxStates)
  argsToPassToGodot[][2] = unsafeAddr(defaultState)
  argsToPassToGodot[][3] = unsafeAddr(id)
  argsToPassToGodot[][4] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuAddMultistateItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var popupMenuAddRadioCheckItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addRadioCheckItem(self: PopupMenu; label: string; id: int64 = -1'i64;
                      accel: int64 = 0'i64) =
  if isNil(popupMenuAddRadioCheckItemMethodBind):
    popupMenuAddRadioCheckItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_radio_check_item")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuAddRadioCheckItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var popupMenuAddRadioCheckShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc addRadioCheckShortcut(self: PopupMenu; shortcut: ShortCut; id: int64 = -1'i64;
                          global: bool = false) =
  if isNil(popupMenuAddRadioCheckShortcutMethodBind):
    popupMenuAddRadioCheckShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_radio_check_shortcut")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shortcut.isNil:
    shortcut.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(global)
  var ptrCallRet: pointer
  popupMenuAddRadioCheckShortcutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuAddSeparatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSeparator(self: PopupMenu; label: string = "") =
  if isNil(popupMenuAddSeparatorMethodBind):
    popupMenuAddSeparatorMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_separator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  popupMenuAddSeparatorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var popupMenuAddShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc addShortcut(self: PopupMenu; shortcut: ShortCut; id: int64 = -1'i64;
                global: bool = false) =
  if isNil(popupMenuAddShortcutMethodBind):
    popupMenuAddShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_shortcut")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shortcut.isNil:
    shortcut.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(global)
  var ptrCallRet: pointer
  popupMenuAddShortcutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuAddSubmenuItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSubmenuItem(self: PopupMenu; label: string; submenu: string; id: int64 = -1'i64) =
  if isNil(popupMenuAddSubmenuItemMethodBind):
    popupMenuAddSubmenuItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"add_submenu_item")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(submenu)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(id)
  var ptrCallRet: pointer
  popupMenuAddSubmenuItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var popupMenuClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: PopupMenu) =
  if isNil(popupMenuClearMethodBind):
    popupMenuClearMethodBind = getMethod(cstring"PopupMenu", cstring"clear")
  var ptrCallRet: pointer
  popupMenuClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var popupMenuGetCurrentIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentIndex(self: PopupMenu): int64 =
  if isNil(popupMenuGetCurrentIndexMethodBind):
    popupMenuGetCurrentIndexMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_current_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuGetCurrentIndexMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var popupMenuGetItemAcceleratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemAccelerator(self: PopupMenu; idx: int64): int64 =
  if isNil(popupMenuGetItemAcceleratorMethodBind):
    popupMenuGetItemAcceleratorMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_accelerator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuGetItemAcceleratorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuGetItemCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemCount(self: PopupMenu): int64 =
  if isNil(popupMenuGetItemCountMethodBind):
    popupMenuGetItemCountMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuGetItemCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var popupMenuGetItemIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemIcon(self: PopupMenu; idx: int64): Texture =
  if isNil(popupMenuGetItemIconMethodBind):
    popupMenuGetItemIconMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  popupMenuGetItemIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var popupMenuGetItemIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemId(self: PopupMenu; idx: int64): int64 =
  if isNil(popupMenuGetItemIdMethodBind):
    popupMenuGetItemIdMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuGetItemIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var popupMenuGetItemIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemIndex(self: PopupMenu; id: int64): int64 =
  if isNil(popupMenuGetItemIndexMethodBind):
    popupMenuGetItemIndexMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuGetItemIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuGetItemMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemMetadata(self: PopupMenu; idx: int64): Variant =
  if isNil(popupMenuGetItemMetadataMethodBind):
    popupMenuGetItemMetadataMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_metadata")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  popupMenuGetItemMetadataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newVariant(ptrCallVal)

var popupMenuGetItemShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemShortcut(self: PopupMenu; idx: int64): ShortCut =
  if isNil(popupMenuGetItemShortcutMethodBind):
    popupMenuGetItemShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_shortcut")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  popupMenuGetItemShortcutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var popupMenuGetItemSubmenuMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemSubmenu(self: PopupMenu; idx: int64): string =
  if isNil(popupMenuGetItemSubmenuMethodBind):
    popupMenuGetItemSubmenuMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_submenu")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  popupMenuGetItemSubmenuMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var popupMenuGetItemTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemText(self: PopupMenu; idx: int64): string =
  if isNil(popupMenuGetItemTextMethodBind):
    popupMenuGetItemTextMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  popupMenuGetItemTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var popupMenuGetItemTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemTooltip(self: PopupMenu; idx: int64): string =
  if isNil(popupMenuGetItemTooltipMethodBind):
    popupMenuGetItemTooltipMethodBind = getMethod(cstring"PopupMenu",
        cstring"get_item_tooltip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  popupMenuGetItemTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var popupMenuIsHideOnWindowLoseFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc isHideOnWindowLoseFocus(self: PopupMenu): bool =
  if isNil(popupMenuIsHideOnWindowLoseFocusMethodBind):
    popupMenuIsHideOnWindowLoseFocusMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_hide_on_window_lose_focus")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsHideOnWindowLoseFocusMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var popupMenuIsItemCheckableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemCheckable(self: PopupMenu; idx: int64): bool =
  if isNil(popupMenuIsItemCheckableMethodBind):
    popupMenuIsItemCheckableMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_item_checkable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsItemCheckableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuIsItemCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemChecked(self: PopupMenu; idx: int64): bool =
  if isNil(popupMenuIsItemCheckedMethodBind):
    popupMenuIsItemCheckedMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_item_checked")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsItemCheckedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuIsItemDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemDisabled(self: PopupMenu; idx: int64): bool =
  if isNil(popupMenuIsItemDisabledMethodBind):
    popupMenuIsItemDisabledMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_item_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsItemDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuIsItemRadioCheckableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemRadioCheckable(self: PopupMenu; idx: int64): bool =
  if isNil(popupMenuIsItemRadioCheckableMethodBind):
    popupMenuIsItemRadioCheckableMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_item_radio_checkable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsItemRadioCheckableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuIsItemSeparatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemSeparator(self: PopupMenu; idx: int64): bool =
  if isNil(popupMenuIsItemSeparatorMethodBind):
    popupMenuIsItemSeparatorMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_item_separator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsItemSeparatorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuIsItemShortcutDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemShortcutDisabled(self: PopupMenu; idx: int64): bool =
  if isNil(popupMenuIsItemShortcutDisabledMethodBind):
    popupMenuIsItemShortcutDisabledMethodBind = getMethod(cstring"PopupMenu",
        cstring"is_item_shortcut_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupMenuIsItemShortcutDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuRemoveItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeItem(self: PopupMenu; idx: int64) =
  if isNil(popupMenuRemoveItemMethodBind):
    popupMenuRemoveItemMethodBind = getMethod(cstring"PopupMenu",
        cstring"remove_item")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  popupMenuRemoveItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var popupMenuSetHideOnWindowLoseFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc setHideOnWindowLoseFocus(self: PopupMenu; enable: bool) =
  if isNil(popupMenuSetHideOnWindowLoseFocusMethodBind):
    popupMenuSetHideOnWindowLoseFocusMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_hide_on_window_lose_focus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  popupMenuSetHideOnWindowLoseFocusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuSetItemAcceleratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemAccelerator(self: PopupMenu; idx: int64; accel: int64) =
  if isNil(popupMenuSetItemAcceleratorMethodBind):
    popupMenuSetItemAcceleratorMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_accelerator")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(accel)
  var ptrCallRet: pointer
  popupMenuSetItemAcceleratorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuSetItemAsCheckableMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemAsCheckable(self: PopupMenu; idx: int64; enable: bool) =
  if isNil(popupMenuSetItemAsCheckableMethodBind):
    popupMenuSetItemAsCheckableMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_as_checkable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  popupMenuSetItemAsCheckableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuSetItemAsRadioCheckableMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemAsRadioCheckable(self: PopupMenu; idx: int64; enable: bool) =
  if isNil(popupMenuSetItemAsRadioCheckableMethodBind):
    popupMenuSetItemAsRadioCheckableMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_as_radio_checkable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  popupMenuSetItemAsRadioCheckableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuSetItemAsSeparatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemAsSeparator(self: PopupMenu; idx: int64; enable: bool) =
  if isNil(popupMenuSetItemAsSeparatorMethodBind):
    popupMenuSetItemAsSeparatorMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_as_separator")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  popupMenuSetItemAsSeparatorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuSetItemCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemChecked(self: PopupMenu; idx: int64; checked: bool) =
  if isNil(popupMenuSetItemCheckedMethodBind):
    popupMenuSetItemCheckedMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_checked")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(checked)
  var ptrCallRet: pointer
  popupMenuSetItemCheckedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuSetItemDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemDisabled(self: PopupMenu; idx: int64; disabled: bool) =
  if isNil(popupMenuSetItemDisabledMethodBind):
    popupMenuSetItemDisabledMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  popupMenuSetItemDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuSetItemIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemIcon(self: PopupMenu; idx: int64; icon: Texture) =
  if isNil(popupMenuSetItemIconMethodBind):
    popupMenuSetItemIconMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  let argToPassToGodot1 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  popupMenuSetItemIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuSetItemIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemId(self: PopupMenu; idx: int64; id: int64) =
  if isNil(popupMenuSetItemIdMethodBind):
    popupMenuSetItemIdMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  popupMenuSetItemIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var popupMenuSetItemMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemMetadata(self: PopupMenu; idx: int64; metadata: Variant) =
  if isNil(popupMenuSetItemMetadataMethodBind):
    popupMenuSetItemMetadataMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_metadata")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = metadata.godotVariant
  var ptrCallRet: pointer
  popupMenuSetItemMetadataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuSetItemMultistateMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemMultistate(self: PopupMenu; idx: int64; state: int64) =
  if isNil(popupMenuSetItemMultistateMethodBind):
    popupMenuSetItemMultistateMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_multistate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(state)
  var ptrCallRet: pointer
  popupMenuSetItemMultistateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuSetItemShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemShortcut(self: PopupMenu; idx: int64; shortcut: ShortCut;
                    global: bool = false) =
  if isNil(popupMenuSetItemShortcutMethodBind):
    popupMenuSetItemShortcutMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_shortcut")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  let argToPassToGodot1 = if not shortcut.isNil:
    shortcut.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(global)
  var ptrCallRet: pointer
  popupMenuSetItemShortcutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupMenuSetItemShortcutDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemShortcutDisabled(self: PopupMenu; idx: int64; disabled: bool) =
  if isNil(popupMenuSetItemShortcutDisabledMethodBind):
    popupMenuSetItemShortcutDisabledMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_shortcut_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  popupMenuSetItemShortcutDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuSetItemSubmenuMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemSubmenu(self: PopupMenu; idx: int64; submenu: string) =
  if isNil(popupMenuSetItemSubmenuMethodBind):
    popupMenuSetItemSubmenuMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_submenu")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var argToPassToGodot1 = toGodotString(submenu)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  popupMenuSetItemSubmenuMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var popupMenuSetItemTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemText(self: PopupMenu; idx: int64; text: string) =
  if isNil(popupMenuSetItemTextMethodBind):
    popupMenuSetItemTextMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_text")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var argToPassToGodot1 = toGodotString(text)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  popupMenuSetItemTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var popupMenuSetItemTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemTooltip(self: PopupMenu; idx: int64; tooltip: string) =
  if isNil(popupMenuSetItemTooltipMethodBind):
    popupMenuSetItemTooltipMethodBind = getMethod(cstring"PopupMenu",
        cstring"set_item_tooltip")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var argToPassToGodot1 = toGodotString(tooltip)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  popupMenuSetItemTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var popupMenuToggleItemCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
proc toggleItemChecked(self: PopupMenu; idx: int64) =
  if isNil(popupMenuToggleItemCheckedMethodBind):
    popupMenuToggleItemCheckedMethodBind = getMethod(cstring"PopupMenu",
        cstring"toggle_item_checked")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  popupMenuToggleItemCheckedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupMenuToggleItemMultistateMethodBind {.threadvar.}: ptr GodotMethodBind
proc toggleItemMultistate(self: PopupMenu; idx: int64) =
  if isNil(popupMenuToggleItemMultistateMethodBind):
    popupMenuToggleItemMultistateMethodBind = getMethod(cstring"PopupMenu",
        cstring"toggle_item_multistate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  popupMenuToggleItemMultistateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
