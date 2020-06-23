
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  DROP_MODE_DISABLED* = 0'i64
  DROP_MODE_INBETWEEN* = 2'i64
  DROP_MODE_ON_ITEM* = 1'i64
  SELECT_MULTI* = 2'i64
  SELECT_ROW* = 1'i64
  SELECT_SINGLE* = 0'i64
proc allowReselect*(self: Tree): bool {.gcsafe, locks: 0.}
proc `allowReselect=`*(self: Tree; val: bool) {.gcsafe, locks: 0.}
proc allowRmbSelect*(self: Tree): bool {.gcsafe, locks: 0.}
proc `allowRmbSelect=`*(self: Tree; val: bool) {.gcsafe, locks: 0.}
proc columns*(self: Tree): int64 {.gcsafe, locks: 0.}
proc `columns=`*(self: Tree; val: int64) {.gcsafe, locks: 0.}
proc dropModeFlags*(self: Tree): int64 {.gcsafe, locks: 0.}
proc `dropModeFlags=`*(self: Tree; val: int64) {.gcsafe, locks: 0.}
proc hideFolding*(self: Tree): bool {.gcsafe, locks: 0.}
proc `hideFolding=`*(self: Tree; val: bool) {.gcsafe, locks: 0.}
proc hideRoot*(self: Tree): bool {.gcsafe, locks: 0.}
proc `hideRoot=`*(self: Tree; val: bool) {.gcsafe, locks: 0.}
proc selectMode*(self: Tree): int64 {.gcsafe, locks: 0.}
proc `selectMode=`*(self: Tree; val: int64) {.gcsafe, locks: 0.}
method guiInput*(self: Tree; event: InputEvent) {.gcsafe, locks: 0.}
method popupSelect*(self: Tree; arg0: int64) {.gcsafe, locks: 0, base.}
method rangeClickTimeout*(self: Tree) {.gcsafe, locks: 0, base.}
method scrollMoved*(self: Tree; arg0: float64) {.gcsafe, locks: 0, base.}
method textEditorEnter*(self: Tree; arg0: string) {.gcsafe, locks: 0, base.}
method textEditorModalClose*(self: Tree) {.gcsafe, locks: 0, base.}
method valueEditorChanged*(self: Tree; arg0: float64) {.gcsafe, locks: 0, base.}
proc areColumnTitlesVisible*(self: Tree): bool {.gcsafe, locks: 0.}
proc clear*(self: Tree) {.gcsafe, locks: 0.}
proc createItem*(self: Tree; parent: Object = nil; idx: int64 = -1'i64): TreeItem {.gcsafe,
    locks: 0.}
proc ensureCursorIsVisible*(self: Tree) {.gcsafe, locks: 0.}
proc getColumnAtPosition*(self: Tree; position: Vector2): int64 {.gcsafe, locks: 0.}
proc getColumnTitle*(self: Tree; column: int64): string {.gcsafe, locks: 0.}
proc getColumnWidth*(self: Tree; column: int64): int64 {.gcsafe, locks: 0.}
proc getCustomPopupRect*(self: Tree): Rect2 {.gcsafe, locks: 0.}
proc getDropSectionAtPosition*(self: Tree; position: Vector2): int64 {.gcsafe, locks: 0.}
proc getEdited*(self: Tree): TreeItem {.gcsafe, locks: 0.}
proc getEditedColumn*(self: Tree): int64 {.gcsafe, locks: 0.}
proc getItemAreaRect*(self: Tree; item: Object; column: int64 = -1'i64): Rect2 {.gcsafe,
    locks: 0.}
proc getItemAtPosition*(self: Tree; position: Vector2): TreeItem {.gcsafe, locks: 0.}
proc getNextSelected*(self: Tree; fromm: Object): TreeItem {.gcsafe, locks: 0.}
proc getPressedButton*(self: Tree): int64 {.gcsafe, locks: 0.}
proc getRoot*(self: Tree): TreeItem {.gcsafe, locks: 0.}
proc getScroll*(self: Tree): Vector2 {.gcsafe, locks: 0.}
proc getSelected*(self: Tree): TreeItem {.gcsafe, locks: 0.}
proc getSelectedColumn*(self: Tree): int64 {.gcsafe, locks: 0.}
proc setColumnExpand*(self: Tree; column: int64; expand: bool) {.gcsafe, locks: 0.}
proc setColumnMinWidth*(self: Tree; column: int64; minWidth: int64) {.gcsafe, locks: 0.}
proc setColumnTitle*(self: Tree; column: int64; title: string) {.gcsafe, locks: 0.}
proc setColumnTitlesVisible*(self: Tree; visible: bool) {.gcsafe, locks: 0.}
var treeGetAllowReselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowReselect(self: Tree): bool =
  if isNil(treeGetAllowReselectMethodBind):
    treeGetAllowReselectMethodBind = getMethod(cstring"Tree",
        cstring"get_allow_reselect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetAllowReselectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetAllowReselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowReselect=`(self: Tree; val: bool) =
  if isNil(treeSetAllowReselectMethodBind):
    treeSetAllowReselectMethodBind = getMethod(cstring"Tree",
        cstring"set_allow_reselect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeSetAllowReselectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeGetAllowRmbSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowRmbSelect(self: Tree): bool =
  if isNil(treeGetAllowRmbSelectMethodBind):
    treeGetAllowRmbSelectMethodBind = getMethod(cstring"Tree",
        cstring"get_allow_rmb_select")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetAllowRmbSelectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetAllowRmbSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowRmbSelect=`(self: Tree; val: bool) =
  if isNil(treeSetAllowRmbSelectMethodBind):
    treeSetAllowRmbSelectMethodBind = getMethod(cstring"Tree",
        cstring"set_allow_rmb_select")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeSetAllowRmbSelectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeGetColumnsMethodBind {.threadvar.}: ptr GodotMethodBind
proc columns(self: Tree): int64 =
  if isNil(treeGetColumnsMethodBind):
    treeGetColumnsMethodBind = getMethod(cstring"Tree", cstring"get_columns")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetColumnsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetColumnsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `columns=`(self: Tree; val: int64) =
  if isNil(treeSetColumnsMethodBind):
    treeSetColumnsMethodBind = getMethod(cstring"Tree", cstring"set_columns")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeSetColumnsMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var treeGetDropModeFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc dropModeFlags(self: Tree): int64 =
  if isNil(treeGetDropModeFlagsMethodBind):
    treeGetDropModeFlagsMethodBind = getMethod(cstring"Tree",
        cstring"get_drop_mode_flags")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetDropModeFlagsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetDropModeFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dropModeFlags=`(self: Tree; val: int64) =
  if isNil(treeSetDropModeFlagsMethodBind):
    treeSetDropModeFlagsMethodBind = getMethod(cstring"Tree",
        cstring"set_drop_mode_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeSetDropModeFlagsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeIsFoldingHiddenMethodBind {.threadvar.}: ptr GodotMethodBind
proc hideFolding(self: Tree): bool =
  if isNil(treeIsFoldingHiddenMethodBind):
    treeIsFoldingHiddenMethodBind = getMethod(cstring"Tree",
        cstring"is_folding_hidden")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeIsFoldingHiddenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetHideFoldingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hideFolding=`(self: Tree; val: bool) =
  if isNil(treeSetHideFoldingMethodBind):
    treeSetHideFoldingMethodBind = getMethod(cstring"Tree",
        cstring"set_hide_folding")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeSetHideFoldingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var treeIsRootHiddenMethodBind {.threadvar.}: ptr GodotMethodBind
proc hideRoot(self: Tree): bool =
  if isNil(treeIsRootHiddenMethodBind):
    treeIsRootHiddenMethodBind = getMethod(cstring"Tree", cstring"is_root_hidden")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeIsRootHiddenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetHideRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hideRoot=`(self: Tree; val: bool) =
  if isNil(treeSetHideRootMethodBind):
    treeSetHideRootMethodBind = getMethod(cstring"Tree", cstring"set_hide_root")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeSetHideRootMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var treeGetSelectModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectMode(self: Tree): int64 =
  if isNil(treeGetSelectModeMethodBind):
    treeGetSelectModeMethodBind = getMethod(cstring"Tree",
        cstring"get_select_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetSelectModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetSelectModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `selectMode=`(self: Tree; val: int64) =
  if isNil(treeSetSelectModeMethodBind):
    treeSetSelectModeMethodBind = getMethod(cstring"Tree",
        cstring"set_select_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeSetSelectModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var treeUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: Tree; event: InputEvent) =
  if isNil(treeUnderscoreguiInputMethodBind):
    treeUnderscoreguiInputMethodBind = getMethod(cstring"Tree",
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
  treeUnderscoreguiInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeUnderscorepopupSelectMethodBind {.threadvar.}: ptr GodotMethodBind
method popupSelect(self: Tree; arg0: int64) =
  if isNil(treeUnderscorepopupSelectMethodBind):
    treeUnderscorepopupSelectMethodBind = getMethod(cstring"Tree",
        cstring"_popup_select")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  treeUnderscorepopupSelectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeUnderscorerangeClickTimeoutMethodBind {.threadvar.}: ptr GodotMethodBind
method rangeClickTimeout(self: Tree) =
  if isNil(treeUnderscorerangeClickTimeoutMethodBind):
    treeUnderscorerangeClickTimeoutMethodBind = getMethod(cstring"Tree",
        cstring"_range_click_timeout")
  var ptrCallRet: pointer
  treeUnderscorerangeClickTimeoutMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var treeUnderscorescrollMovedMethodBind {.threadvar.}: ptr GodotMethodBind
method scrollMoved(self: Tree; arg0: float64) =
  if isNil(treeUnderscorescrollMovedMethodBind):
    treeUnderscorescrollMovedMethodBind = getMethod(cstring"Tree",
        cstring"_scroll_moved")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  treeUnderscorescrollMovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeUnderscoretextEditorEnterMethodBind {.threadvar.}: ptr GodotMethodBind
method textEditorEnter(self: Tree; arg0: string) =
  if isNil(treeUnderscoretextEditorEnterMethodBind):
    treeUnderscoretextEditorEnterMethodBind = getMethod(cstring"Tree",
        cstring"_text_editor_enter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  treeUnderscoretextEditorEnterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var treeUnderscoretextEditorModalCloseMethodBind {.threadvar.}: ptr GodotMethodBind
method textEditorModalClose(self: Tree) =
  if isNil(treeUnderscoretextEditorModalCloseMethodBind):
    treeUnderscoretextEditorModalCloseMethodBind = getMethod(cstring"Tree",
        cstring"_text_editor_modal_close")
  var ptrCallRet: pointer
  treeUnderscoretextEditorModalCloseMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var treeUnderscorevalueEditorChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method valueEditorChanged(self: Tree; arg0: float64) =
  if isNil(treeUnderscorevalueEditorChangedMethodBind):
    treeUnderscorevalueEditorChangedMethodBind = getMethod(cstring"Tree",
        cstring"_value_editor_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  treeUnderscorevalueEditorChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeAreColumnTitlesVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc areColumnTitlesVisible(self: Tree): bool =
  if isNil(treeAreColumnTitlesVisibleMethodBind):
    treeAreColumnTitlesVisibleMethodBind = getMethod(cstring"Tree",
        cstring"are_column_titles_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeAreColumnTitlesVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: Tree) =
  if isNil(treeClearMethodBind):
    treeClearMethodBind = getMethod(cstring"Tree", cstring"clear")
  var ptrCallRet: pointer
  treeClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeCreateItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc createItem(self: Tree; parent: Object = nil; idx: int64 = -1'i64): TreeItem =
  if isNil(treeCreateItemMethodBind):
    treeCreateItemMethodBind = getMethod(cstring"Tree", cstring"create_item")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not parent.isNil:
    parent.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeCreateItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeEnsureCursorIsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc ensureCursorIsVisible(self: Tree) =
  if isNil(treeEnsureCursorIsVisibleMethodBind):
    treeEnsureCursorIsVisibleMethodBind = getMethod(cstring"Tree",
        cstring"ensure_cursor_is_visible")
  var ptrCallRet: pointer
  treeEnsureCursorIsVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeGetColumnAtPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColumnAtPosition(self: Tree; position: Vector2): int64 =
  if isNil(treeGetColumnAtPositionMethodBind):
    treeGetColumnAtPositionMethodBind = getMethod(cstring"Tree",
        cstring"get_column_at_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetColumnAtPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeGetColumnTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColumnTitle(self: Tree; column: int64): string =
  if isNil(treeGetColumnTitleMethodBind):
    treeGetColumnTitleMethodBind = getMethod(cstring"Tree",
        cstring"get_column_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  treeGetColumnTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var treeGetColumnWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColumnWidth(self: Tree; column: int64): int64 =
  if isNil(treeGetColumnWidthMethodBind):
    treeGetColumnWidthMethodBind = getMethod(cstring"Tree",
        cstring"get_column_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetColumnWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var treeGetCustomPopupRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCustomPopupRect(self: Tree): Rect2 =
  if isNil(treeGetCustomPopupRectMethodBind):
    treeGetCustomPopupRectMethodBind = getMethod(cstring"Tree",
        cstring"get_custom_popup_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetCustomPopupRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeGetDropSectionAtPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDropSectionAtPosition(self: Tree; position: Vector2): int64 =
  if isNil(treeGetDropSectionAtPositionMethodBind):
    treeGetDropSectionAtPositionMethodBind = getMethod(cstring"Tree",
        cstring"get_drop_section_at_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetDropSectionAtPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeGetEditedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEdited(self: Tree): TreeItem =
  if isNil(treeGetEditedMethodBind):
    treeGetEditedMethodBind = getMethod(cstring"Tree", cstring"get_edited")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeGetEditedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeGetEditedColumnMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditedColumn(self: Tree): int64 =
  if isNil(treeGetEditedColumnMethodBind):
    treeGetEditedColumnMethodBind = getMethod(cstring"Tree",
        cstring"get_edited_column")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetEditedColumnMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeGetItemAreaRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemAreaRect(self: Tree; item: Object; column: int64 = -1'i64): Rect2 =
  if isNil(treeGetItemAreaRectMethodBind):
    treeGetItemAreaRectMethodBind = getMethod(cstring"Tree",
        cstring"get_item_area_rect")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not item.isNil:
    item.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetItemAreaRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeGetItemAtPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemAtPosition(self: Tree; position: Vector2): TreeItem =
  if isNil(treeGetItemAtPositionMethodBind):
    treeGetItemAtPositionMethodBind = getMethod(cstring"Tree",
        cstring"get_item_at_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeGetItemAtPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeGetNextSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNextSelected(self: Tree; fromm: Object): TreeItem =
  if isNil(treeGetNextSelectedMethodBind):
    treeGetNextSelectedMethodBind = getMethod(cstring"Tree",
        cstring"get_next_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeGetNextSelectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeGetPressedButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPressedButton(self: Tree): int64 =
  if isNil(treeGetPressedButtonMethodBind):
    treeGetPressedButtonMethodBind = getMethod(cstring"Tree",
        cstring"get_pressed_button")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetPressedButtonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeGetRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRoot(self: Tree): TreeItem =
  if isNil(treeGetRootMethodBind):
    treeGetRootMethodBind = getMethod(cstring"Tree", cstring"get_root")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeGetRootMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeGetScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScroll(self: Tree): Vector2 =
  if isNil(treeGetScrollMethodBind):
    treeGetScrollMethodBind = getMethod(cstring"Tree", cstring"get_scroll")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeGetSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelected(self: Tree): TreeItem =
  if isNil(treeGetSelectedMethodBind):
    treeGetSelectedMethodBind = getMethod(cstring"Tree", cstring"get_selected")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeGetSelectedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeGetSelectedColumnMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectedColumn(self: Tree): int64 =
  if isNil(treeGetSelectedColumnMethodBind):
    treeGetSelectedColumnMethodBind = getMethod(cstring"Tree",
        cstring"get_selected_column")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeGetSelectedColumnMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeSetColumnExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc setColumnExpand(self: Tree; column: int64; expand: bool) =
  if isNil(treeSetColumnExpandMethodBind):
    treeSetColumnExpandMethodBind = getMethod(cstring"Tree",
        cstring"set_column_expand")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(expand)
  var ptrCallRet: pointer
  treeSetColumnExpandMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeSetColumnMinWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc setColumnMinWidth(self: Tree; column: int64; minWidth: int64) =
  if isNil(treeSetColumnMinWidthMethodBind):
    treeSetColumnMinWidthMethodBind = getMethod(cstring"Tree",
        cstring"set_column_min_width")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(minWidth)
  var ptrCallRet: pointer
  treeSetColumnMinWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeSetColumnTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setColumnTitle(self: Tree; column: int64; title: string) =
  if isNil(treeSetColumnTitleMethodBind):
    treeSetColumnTitleMethodBind = getMethod(cstring"Tree",
        cstring"set_column_title")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var argToPassToGodot1 = toGodotString(title)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  treeSetColumnTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot1)

var treeSetColumnTitlesVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setColumnTitlesVisible(self: Tree; visible: bool) =
  if isNil(treeSetColumnTitlesVisibleMethodBind):
    treeSetColumnTitlesVisibleMethodBind = getMethod(cstring"Tree",
        cstring"set_column_titles_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(visible)
  var ptrCallRet: pointer
  treeSetColumnTitlesVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
