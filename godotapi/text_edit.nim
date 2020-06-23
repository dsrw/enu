
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  MENU_CLEAR* = 3'i64
  MENU_COPY* = 1'i64
  MENU_CUT* = 0'i64
  MENU_MAX* = 7'i64
  MENU_PASTE* = 2'i64
  MENU_REDO* = 6'i64
  MENU_SELECT_ALL* = 4'i64
  MENU_UNDO* = 5'i64
  SEARCH_BACKWARDS* = 4'i64
  SEARCH_MATCH_CASE* = 1'i64
  SEARCH_RESULT_COLUMN* = 0'i64
  SEARCH_RESULT_LINE* = 1'i64
  SEARCH_WHOLE_WORDS* = 2'i64
proc breakpointGutter*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `breakpointGutter=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc caretBlink*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `caretBlink=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc caretBlinkSpeed*(self: TextEdit): float64 {.gcsafe, locks: 0.}
proc `caretBlinkSpeed=`*(self: TextEdit; val: float64) {.gcsafe, locks: 0.}
proc caretBlockMode*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `caretBlockMode=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc caretMovingByRightClick*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `caretMovingByRightClick=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc contextMenuEnabled*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `contextMenuEnabled=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc drawSpaces*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `drawSpaces=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc drawTabs*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `drawTabs=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc foldGutter*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `foldGutter=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc hidingEnabled*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `hidingEnabled=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc highlightAllOccurrences*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `highlightAllOccurrences=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc highlightCurrentLine*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `highlightCurrentLine=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc indentSize*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc `indentSize=`*(self: TextEdit; val: int64) {.gcsafe, locks: 0.}
proc indentUsingSpaces*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `indentUsingSpaces=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc minimapDraw*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `minimapDraw=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc minimapWidth*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc `minimapWidth=`*(self: TextEdit; val: int64) {.gcsafe, locks: 0.}
proc overrideSelectedFontColor*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `overrideSelectedFontColor=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc readonly*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `readonly=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc scrollHorizontal*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc `scrollHorizontal=`*(self: TextEdit; val: int64) {.gcsafe, locks: 0.}
proc scrollVertical*(self: TextEdit): float64 {.gcsafe, locks: 0.}
proc `scrollVertical=`*(self: TextEdit; val: float64) {.gcsafe, locks: 0.}
proc selectingEnabled*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `selectingEnabled=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc shortcutKeysEnabled*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `shortcutKeysEnabled=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc showLineNumbers*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `showLineNumbers=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc smoothScrolling*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `smoothScrolling=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc syntaxHighlighting*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `syntaxHighlighting=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
proc text*(self: TextEdit): string {.gcsafe, locks: 0.}
proc `text=`*(self: TextEdit; val: string) {.gcsafe, locks: 0.}
proc vScrollSpeed*(self: TextEdit): float64 {.gcsafe, locks: 0.}
proc `vScrollSpeed=`*(self: TextEdit; val: float64) {.gcsafe, locks: 0.}
proc wrapEnabled*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc `wrapEnabled=`*(self: TextEdit; val: bool) {.gcsafe, locks: 0.}
method clickSelectionHeld*(self: TextEdit) {.gcsafe, locks: 0, base.}
method cursorChangedEmit*(self: TextEdit) {.gcsafe, locks: 0, base.}
method guiInput*(self: TextEdit; event: InputEvent) {.gcsafe, locks: 0.}
method pushCurrentOp*(self: TextEdit) {.gcsafe, locks: 0, base.}
method scrollMoved*(self: TextEdit; arg0: float64) {.gcsafe, locks: 0, base.}
method textChangedEmit*(self: TextEdit) {.gcsafe, locks: 0, base.}
method toggleDrawCaret*(self: TextEdit) {.gcsafe, locks: 0, base.}
method updateWrapAt*(self: TextEdit) {.gcsafe, locks: 0, base.}
method vScrollInput*(self: TextEdit) {.gcsafe, locks: 0, base.}
proc addColorRegion*(self: TextEdit; beginKey: string; endKey: string; color: Color;
                    lineOnly: bool = false) {.gcsafe, locks: 0.}
proc addKeywordColor*(self: TextEdit; keyword: string; color: Color) {.gcsafe, locks: 0.}
proc canFold*(self: TextEdit; line: int64): bool {.gcsafe, locks: 0.}
proc centerViewportToCursor*(self: TextEdit) {.gcsafe, locks: 0.}
proc clearColors*(self: TextEdit) {.gcsafe, locks: 0.}
proc clearUndoHistory*(self: TextEdit) {.gcsafe, locks: 0.}
proc copy*(self: TextEdit) {.gcsafe, locks: 0.}
proc cursorGetColumn*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc cursorGetLine*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc cursorSetColumn*(self: TextEdit; column: int64; adjustViewport: bool = true) {.
    gcsafe, locks: 0.}
proc cursorSetLine*(self: TextEdit; line: int64; adjustViewport: bool = true;
                   canBeHidden: bool = true; wrapIndex: int64 = 0'i64) {.gcsafe, locks: 0.}
proc cut*(self: TextEdit) {.gcsafe, locks: 0.}
proc deselect*(self: TextEdit) {.gcsafe, locks: 0.}
proc foldAllLines*(self: TextEdit) {.gcsafe, locks: 0.}
proc foldLine*(self: TextEdit; line: int64) {.gcsafe, locks: 0.}
proc getBreakpoints*(self: TextEdit): Array {.gcsafe, locks: 0.}
proc getKeywordColor*(self: TextEdit; keyword: string): Color {.gcsafe, locks: 0.}
proc getLine*(self: TextEdit; line: int64): string {.gcsafe, locks: 0.}
proc getLineCount*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc getMenu*(self: TextEdit): PopupMenu {.gcsafe, locks: 0.}
proc getSelectionFromColumn*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc getSelectionFromLine*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc getSelectionText*(self: TextEdit): string {.gcsafe, locks: 0.}
proc getSelectionToColumn*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc getSelectionToLine*(self: TextEdit): int64 {.gcsafe, locks: 0.}
proc getWordUnderCursor*(self: TextEdit): string {.gcsafe, locks: 0.}
proc hasKeywordColor*(self: TextEdit; keyword: string): bool {.gcsafe, locks: 0.}
proc insertTextAtCursor*(self: TextEdit; text: string) {.gcsafe, locks: 0.}
proc isFolded*(self: TextEdit; line: int64): bool {.gcsafe, locks: 0.}
proc isLineHidden*(self: TextEdit; line: int64): bool {.gcsafe, locks: 0.}
proc isSelectionActive*(self: TextEdit): bool {.gcsafe, locks: 0.}
proc menuOption*(self: TextEdit; option: int64) {.gcsafe, locks: 0.}
proc paste*(self: TextEdit) {.gcsafe, locks: 0.}
proc redo*(self: TextEdit) {.gcsafe, locks: 0.}
proc removeBreakpoints*(self: TextEdit) {.gcsafe, locks: 0.}
proc search*(self: TextEdit; key: string; flags: int64; fromLine: int64;
            fromColumn: int64): PoolIntArray {.gcsafe, locks: 0.}
proc select*(self: TextEdit; fromLine: int64; fromColumn: int64; toLine: int64;
            toColumn: int64) {.gcsafe, locks: 0.}
proc selectAll*(self: TextEdit) {.gcsafe, locks: 0.}
proc setLine*(self: TextEdit; line: int64; newText: string) {.gcsafe, locks: 0.}
proc setLineAsHidden*(self: TextEdit; line: int64; enable: bool) {.gcsafe, locks: 0.}
proc toggleFoldLine*(self: TextEdit; line: int64) {.gcsafe, locks: 0.}
proc undo*(self: TextEdit) {.gcsafe, locks: 0.}
proc unfoldLine*(self: TextEdit; line: int64) {.gcsafe, locks: 0.}
proc unhideAllLines*(self: TextEdit) {.gcsafe, locks: 0.}
var textEditIsBreakpointGutterEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc breakpointGutter(self: TextEdit): bool =
  if isNil(textEditIsBreakpointGutterEnabledMethodBind):
    textEditIsBreakpointGutterEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_breakpoint_gutter_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsBreakpointGutterEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetBreakpointGutterEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `breakpointGutter=`(self: TextEdit; val: bool) =
  if isNil(textEditSetBreakpointGutterEnabledMethodBind):
    textEditSetBreakpointGutterEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"set_breakpoint_gutter_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetBreakpointGutterEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditCursorGetBlinkEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc caretBlink(self: TextEdit): bool =
  if isNil(textEditCursorGetBlinkEnabledMethodBind):
    textEditCursorGetBlinkEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_get_blink_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditCursorGetBlinkEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditCursorSetBlinkEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caretBlink=`(self: TextEdit; val: bool) =
  if isNil(textEditCursorSetBlinkEnabledMethodBind):
    textEditCursorSetBlinkEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_set_blink_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditCursorSetBlinkEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditCursorGetBlinkSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc caretBlinkSpeed(self: TextEdit): float64 =
  if isNil(textEditCursorGetBlinkSpeedMethodBind):
    textEditCursorGetBlinkSpeedMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_get_blink_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditCursorGetBlinkSpeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditCursorSetBlinkSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caretBlinkSpeed=`(self: TextEdit; val: float64) =
  if isNil(textEditCursorSetBlinkSpeedMethodBind):
    textEditCursorSetBlinkSpeedMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_set_blink_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditCursorSetBlinkSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditCursorIsBlockModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc caretBlockMode(self: TextEdit): bool =
  if isNil(textEditCursorIsBlockModeMethodBind):
    textEditCursorIsBlockModeMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_is_block_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditCursorIsBlockModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditCursorSetBlockModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caretBlockMode=`(self: TextEdit; val: bool) =
  if isNil(textEditCursorSetBlockModeMethodBind):
    textEditCursorSetBlockModeMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_set_block_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditCursorSetBlockModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsRightClickMovingCaretMethodBind {.threadvar.}: ptr GodotMethodBind
proc caretMovingByRightClick(self: TextEdit): bool =
  if isNil(textEditIsRightClickMovingCaretMethodBind):
    textEditIsRightClickMovingCaretMethodBind = getMethod(cstring"TextEdit",
        cstring"is_right_click_moving_caret")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsRightClickMovingCaretMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetRightClickMovesCaretMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caretMovingByRightClick=`(self: TextEdit; val: bool) =
  if isNil(textEditSetRightClickMovesCaretMethodBind):
    textEditSetRightClickMovesCaretMethodBind = getMethod(cstring"TextEdit",
        cstring"set_right_click_moves_caret")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetRightClickMovesCaretMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsContextMenuEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc contextMenuEnabled(self: TextEdit): bool =
  if isNil(textEditIsContextMenuEnabledMethodBind):
    textEditIsContextMenuEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_context_menu_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsContextMenuEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetContextMenuEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `contextMenuEnabled=`(self: TextEdit; val: bool) =
  if isNil(textEditSetContextMenuEnabledMethodBind):
    textEditSetContextMenuEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"set_context_menu_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetContextMenuEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsDrawingSpacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawSpaces(self: TextEdit): bool =
  if isNil(textEditIsDrawingSpacesMethodBind):
    textEditIsDrawingSpacesMethodBind = getMethod(cstring"TextEdit",
        cstring"is_drawing_spaces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsDrawingSpacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetDrawSpacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawSpaces=`(self: TextEdit; val: bool) =
  if isNil(textEditSetDrawSpacesMethodBind):
    textEditSetDrawSpacesMethodBind = getMethod(cstring"TextEdit",
        cstring"set_draw_spaces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetDrawSpacesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditIsDrawingTabsMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawTabs(self: TextEdit): bool =
  if isNil(textEditIsDrawingTabsMethodBind):
    textEditIsDrawingTabsMethodBind = getMethod(cstring"TextEdit",
        cstring"is_drawing_tabs")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsDrawingTabsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetDrawTabsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawTabs=`(self: TextEdit; val: bool) =
  if isNil(textEditSetDrawTabsMethodBind):
    textEditSetDrawTabsMethodBind = getMethod(cstring"TextEdit",
        cstring"set_draw_tabs")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetDrawTabsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var textEditIsDrawingFoldGutterMethodBind {.threadvar.}: ptr GodotMethodBind
proc foldGutter(self: TextEdit): bool =
  if isNil(textEditIsDrawingFoldGutterMethodBind):
    textEditIsDrawingFoldGutterMethodBind = getMethod(cstring"TextEdit",
        cstring"is_drawing_fold_gutter")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsDrawingFoldGutterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetDrawFoldGutterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `foldGutter=`(self: TextEdit; val: bool) =
  if isNil(textEditSetDrawFoldGutterMethodBind):
    textEditSetDrawFoldGutterMethodBind = getMethod(cstring"TextEdit",
        cstring"set_draw_fold_gutter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetDrawFoldGutterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsHidingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc hidingEnabled(self: TextEdit): bool =
  if isNil(textEditIsHidingEnabledMethodBind):
    textEditIsHidingEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_hiding_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsHidingEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetHidingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hidingEnabled=`(self: TextEdit; val: bool) =
  if isNil(textEditSetHidingEnabledMethodBind):
    textEditSetHidingEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"set_hiding_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetHidingEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditIsHighlightAllOccurrencesEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc highlightAllOccurrences(self: TextEdit): bool =
  if isNil(textEditIsHighlightAllOccurrencesEnabledMethodBind):
    textEditIsHighlightAllOccurrencesEnabledMethodBind = getMethod(
        cstring"TextEdit", cstring"is_highlight_all_occurrences_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsHighlightAllOccurrencesEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var textEditSetHighlightAllOccurrencesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `highlightAllOccurrences=`(self: TextEdit; val: bool) =
  if isNil(textEditSetHighlightAllOccurrencesMethodBind):
    textEditSetHighlightAllOccurrencesMethodBind = getMethod(cstring"TextEdit",
        cstring"set_highlight_all_occurrences")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetHighlightAllOccurrencesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsHighlightCurrentLineEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc highlightCurrentLine(self: TextEdit): bool =
  if isNil(textEditIsHighlightCurrentLineEnabledMethodBind):
    textEditIsHighlightCurrentLineEnabledMethodBind = getMethod(
        cstring"TextEdit", cstring"is_highlight_current_line_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsHighlightCurrentLineEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetHighlightCurrentLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc `highlightCurrentLine=`(self: TextEdit; val: bool) =
  if isNil(textEditSetHighlightCurrentLineMethodBind):
    textEditSetHighlightCurrentLineMethodBind = getMethod(cstring"TextEdit",
        cstring"set_highlight_current_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetHighlightCurrentLineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditGetIndentSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc indentSize(self: TextEdit): int64 =
  if isNil(textEditGetIndentSizeMethodBind):
    textEditGetIndentSizeMethodBind = getMethod(cstring"TextEdit",
        cstring"get_indent_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetIndentSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetIndentSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `indentSize=`(self: TextEdit; val: int64) =
  if isNil(textEditSetIndentSizeMethodBind):
    textEditSetIndentSizeMethodBind = getMethod(cstring"TextEdit",
        cstring"set_indent_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetIndentSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditIsIndentUsingSpacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc indentUsingSpaces(self: TextEdit): bool =
  if isNil(textEditIsIndentUsingSpacesMethodBind):
    textEditIsIndentUsingSpacesMethodBind = getMethod(cstring"TextEdit",
        cstring"is_indent_using_spaces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsIndentUsingSpacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetIndentUsingSpacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `indentUsingSpaces=`(self: TextEdit; val: bool) =
  if isNil(textEditSetIndentUsingSpacesMethodBind):
    textEditSetIndentUsingSpacesMethodBind = getMethod(cstring"TextEdit",
        cstring"set_indent_using_spaces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetIndentUsingSpacesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsDrawingMinimapMethodBind {.threadvar.}: ptr GodotMethodBind
proc minimapDraw(self: TextEdit): bool =
  if isNil(textEditIsDrawingMinimapMethodBind):
    textEditIsDrawingMinimapMethodBind = getMethod(cstring"TextEdit",
        cstring"is_drawing_minimap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsDrawingMinimapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditDrawMinimapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `minimapDraw=`(self: TextEdit; val: bool) =
  if isNil(textEditDrawMinimapMethodBind):
    textEditDrawMinimapMethodBind = getMethod(cstring"TextEdit",
        cstring"draw_minimap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditDrawMinimapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var textEditGetMinimapWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc minimapWidth(self: TextEdit): int64 =
  if isNil(textEditGetMinimapWidthMethodBind):
    textEditGetMinimapWidthMethodBind = getMethod(cstring"TextEdit",
        cstring"get_minimap_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetMinimapWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetMinimapWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `minimapWidth=`(self: TextEdit; val: int64) =
  if isNil(textEditSetMinimapWidthMethodBind):
    textEditSetMinimapWidthMethodBind = getMethod(cstring"TextEdit",
        cstring"set_minimap_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetMinimapWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditIsOverridingSelectedFontColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc overrideSelectedFontColor(self: TextEdit): bool =
  if isNil(textEditIsOverridingSelectedFontColorMethodBind):
    textEditIsOverridingSelectedFontColorMethodBind = getMethod(
        cstring"TextEdit", cstring"is_overriding_selected_font_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsOverridingSelectedFontColorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetOverrideSelectedFontColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `overrideSelectedFontColor=`(self: TextEdit; val: bool) =
  if isNil(textEditSetOverrideSelectedFontColorMethodBind):
    textEditSetOverrideSelectedFontColorMethodBind = getMethod(cstring"TextEdit",
        cstring"set_override_selected_font_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetOverrideSelectedFontColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsReadonlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc readonly(self: TextEdit): bool =
  if isNil(textEditIsReadonlyMethodBind):
    textEditIsReadonlyMethodBind = getMethod(cstring"TextEdit",
        cstring"is_readonly")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsReadonlyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetReadonlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `readonly=`(self: TextEdit; val: bool) =
  if isNil(textEditSetReadonlyMethodBind):
    textEditSetReadonlyMethodBind = getMethod(cstring"TextEdit",
        cstring"set_readonly")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetReadonlyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var textEditGetHScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollHorizontal(self: TextEdit): int64 =
  if isNil(textEditGetHScrollMethodBind):
    textEditGetHScrollMethodBind = getMethod(cstring"TextEdit",
        cstring"get_h_scroll")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetHScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetHScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollHorizontal=`(self: TextEdit; val: int64) =
  if isNil(textEditSetHScrollMethodBind):
    textEditSetHScrollMethodBind = getMethod(cstring"TextEdit",
        cstring"set_h_scroll")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetHScrollMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var textEditGetVScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollVertical(self: TextEdit): float64 =
  if isNil(textEditGetVScrollMethodBind):
    textEditGetVScrollMethodBind = getMethod(cstring"TextEdit",
        cstring"get_v_scroll")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetVScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetVScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollVertical=`(self: TextEdit; val: float64) =
  if isNil(textEditSetVScrollMethodBind):
    textEditSetVScrollMethodBind = getMethod(cstring"TextEdit",
        cstring"set_v_scroll")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetVScrollMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var textEditIsSelectingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectingEnabled(self: TextEdit): bool =
  if isNil(textEditIsSelectingEnabledMethodBind):
    textEditIsSelectingEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_selecting_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsSelectingEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetSelectingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `selectingEnabled=`(self: TextEdit; val: bool) =
  if isNil(textEditSetSelectingEnabledMethodBind):
    textEditSetSelectingEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"set_selecting_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetSelectingEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsShortcutKeysEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc shortcutKeysEnabled(self: TextEdit): bool =
  if isNil(textEditIsShortcutKeysEnabledMethodBind):
    textEditIsShortcutKeysEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_shortcut_keys_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsShortcutKeysEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetShortcutKeysEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shortcutKeysEnabled=`(self: TextEdit; val: bool) =
  if isNil(textEditSetShortcutKeysEnabledMethodBind):
    textEditSetShortcutKeysEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"set_shortcut_keys_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetShortcutKeysEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsShowLineNumbersEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc showLineNumbers(self: TextEdit): bool =
  if isNil(textEditIsShowLineNumbersEnabledMethodBind):
    textEditIsShowLineNumbersEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_show_line_numbers_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsShowLineNumbersEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetShowLineNumbersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `showLineNumbers=`(self: TextEdit; val: bool) =
  if isNil(textEditSetShowLineNumbersMethodBind):
    textEditSetShowLineNumbersMethodBind = getMethod(cstring"TextEdit",
        cstring"set_show_line_numbers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetShowLineNumbersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsSmoothScrollEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc smoothScrolling(self: TextEdit): bool =
  if isNil(textEditIsSmoothScrollEnabledMethodBind):
    textEditIsSmoothScrollEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_smooth_scroll_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsSmoothScrollEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetSmoothScrollEnableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `smoothScrolling=`(self: TextEdit; val: bool) =
  if isNil(textEditSetSmoothScrollEnableMethodBind):
    textEditSetSmoothScrollEnableMethodBind = getMethod(cstring"TextEdit",
        cstring"set_smooth_scroll_enable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetSmoothScrollEnableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditIsSyntaxColoringEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc syntaxHighlighting(self: TextEdit): bool =
  if isNil(textEditIsSyntaxColoringEnabledMethodBind):
    textEditIsSyntaxColoringEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_syntax_coloring_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsSyntaxColoringEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditSetSyntaxColoringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `syntaxHighlighting=`(self: TextEdit; val: bool) =
  if isNil(textEditSetSyntaxColoringMethodBind):
    textEditSetSyntaxColoringMethodBind = getMethod(cstring"TextEdit",
        cstring"set_syntax_coloring")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetSyntaxColoringMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc text(self: TextEdit): string =
  if isNil(textEditGetTextMethodBind):
    textEditGetTextMethodBind = getMethod(cstring"TextEdit", cstring"get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  textEditGetTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var textEditSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `text=`(self: TextEdit; val: string) =
  if isNil(textEditSetTextMethodBind):
    textEditSetTextMethodBind = getMethod(cstring"TextEdit", cstring"set_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  textEditSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var textEditGetVScrollSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc vScrollSpeed(self: TextEdit): float64 =
  if isNil(textEditGetVScrollSpeedMethodBind):
    textEditGetVScrollSpeedMethodBind = getMethod(cstring"TextEdit",
        cstring"get_v_scroll_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetVScrollSpeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetVScrollSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vScrollSpeed=`(self: TextEdit; val: float64) =
  if isNil(textEditSetVScrollSpeedMethodBind):
    textEditSetVScrollSpeedMethodBind = getMethod(cstring"TextEdit",
        cstring"set_v_scroll_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetVScrollSpeedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditIsWrapEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc wrapEnabled(self: TextEdit): bool =
  if isNil(textEditIsWrapEnabledMethodBind):
    textEditIsWrapEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"is_wrap_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsWrapEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetWrapEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `wrapEnabled=`(self: TextEdit; val: bool) =
  if isNil(textEditSetWrapEnabledMethodBind):
    textEditSetWrapEnabledMethodBind = getMethod(cstring"TextEdit",
        cstring"set_wrap_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textEditSetWrapEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditUnderscoreclickSelectionHeldMethodBind {.threadvar.}: ptr GodotMethodBind
method clickSelectionHeld(self: TextEdit) =
  if isNil(textEditUnderscoreclickSelectionHeldMethodBind):
    textEditUnderscoreclickSelectionHeldMethodBind = getMethod(cstring"TextEdit",
        cstring"_click_selection_held")
  var ptrCallRet: pointer
  textEditUnderscoreclickSelectionHeldMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditUnderscorecursorChangedEmitMethodBind {.threadvar.}: ptr GodotMethodBind
method cursorChangedEmit(self: TextEdit) =
  if isNil(textEditUnderscorecursorChangedEmitMethodBind):
    textEditUnderscorecursorChangedEmitMethodBind = getMethod(cstring"TextEdit",
        cstring"_cursor_changed_emit")
  var ptrCallRet: pointer
  textEditUnderscorecursorChangedEmitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: TextEdit; event: InputEvent) =
  if isNil(textEditUnderscoreguiInputMethodBind):
    textEditUnderscoreguiInputMethodBind = getMethod(cstring"TextEdit",
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
  textEditUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditUnderscorepushCurrentOpMethodBind {.threadvar.}: ptr GodotMethodBind
method pushCurrentOp(self: TextEdit) =
  if isNil(textEditUnderscorepushCurrentOpMethodBind):
    textEditUnderscorepushCurrentOpMethodBind = getMethod(cstring"TextEdit",
        cstring"_push_current_op")
  var ptrCallRet: pointer
  textEditUnderscorepushCurrentOpMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditUnderscorescrollMovedMethodBind {.threadvar.}: ptr GodotMethodBind
method scrollMoved(self: TextEdit; arg0: float64) =
  if isNil(textEditUnderscorescrollMovedMethodBind):
    textEditUnderscorescrollMovedMethodBind = getMethod(cstring"TextEdit",
        cstring"_scroll_moved")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  textEditUnderscorescrollMovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textEditUnderscoretextChangedEmitMethodBind {.threadvar.}: ptr GodotMethodBind
method textChangedEmit(self: TextEdit) =
  if isNil(textEditUnderscoretextChangedEmitMethodBind):
    textEditUnderscoretextChangedEmitMethodBind = getMethod(cstring"TextEdit",
        cstring"_text_changed_emit")
  var ptrCallRet: pointer
  textEditUnderscoretextChangedEmitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditUnderscoretoggleDrawCaretMethodBind {.threadvar.}: ptr GodotMethodBind
method toggleDrawCaret(self: TextEdit) =
  if isNil(textEditUnderscoretoggleDrawCaretMethodBind):
    textEditUnderscoretoggleDrawCaretMethodBind = getMethod(cstring"TextEdit",
        cstring"_toggle_draw_caret")
  var ptrCallRet: pointer
  textEditUnderscoretoggleDrawCaretMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditUnderscoreupdateWrapAtMethodBind {.threadvar.}: ptr GodotMethodBind
method updateWrapAt(self: TextEdit) =
  if isNil(textEditUnderscoreupdateWrapAtMethodBind):
    textEditUnderscoreupdateWrapAtMethodBind = getMethod(cstring"TextEdit",
        cstring"_update_wrap_at")
  var ptrCallRet: pointer
  textEditUnderscoreupdateWrapAtMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditUnderscorevScrollInputMethodBind {.threadvar.}: ptr GodotMethodBind
method vScrollInput(self: TextEdit) =
  if isNil(textEditUnderscorevScrollInputMethodBind):
    textEditUnderscorevScrollInputMethodBind = getMethod(cstring"TextEdit",
        cstring"_v_scroll_input")
  var ptrCallRet: pointer
  textEditUnderscorevScrollInputMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditAddColorRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc addColorRegion(self: TextEdit; beginKey: string; endKey: string; color: Color;
                   lineOnly: bool = false) =
  if isNil(textEditAddColorRegionMethodBind):
    textEditAddColorRegionMethodBind = getMethod(cstring"TextEdit",
        cstring"add_color_region")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(beginKey)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(endKey)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(color)
  argsToPassToGodot[][3] = unsafeAddr(lineOnly)
  var ptrCallRet: pointer
  textEditAddColorRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var textEditAddKeywordColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc addKeywordColor(self: TextEdit; keyword: string; color: Color) =
  if isNil(textEditAddKeywordColorMethodBind):
    textEditAddKeywordColorMethodBind = getMethod(cstring"TextEdit",
        cstring"add_keyword_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(keyword)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  textEditAddKeywordColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var textEditCanFoldMethodBind {.threadvar.}: ptr GodotMethodBind
proc canFold(self: TextEdit; line: int64): bool =
  if isNil(textEditCanFoldMethodBind):
    textEditCanFoldMethodBind = getMethod(cstring"TextEdit", cstring"can_fold")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditCanFoldMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var textEditCenterViewportToCursorMethodBind {.threadvar.}: ptr GodotMethodBind
proc centerViewportToCursor(self: TextEdit) =
  if isNil(textEditCenterViewportToCursorMethodBind):
    textEditCenterViewportToCursorMethodBind = getMethod(cstring"TextEdit",
        cstring"center_viewport_to_cursor")
  var ptrCallRet: pointer
  textEditCenterViewportToCursorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditClearColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearColors(self: TextEdit) =
  if isNil(textEditClearColorsMethodBind):
    textEditClearColorsMethodBind = getMethod(cstring"TextEdit",
        cstring"clear_colors")
  var ptrCallRet: pointer
  textEditClearColorsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditClearUndoHistoryMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearUndoHistory(self: TextEdit) =
  if isNil(textEditClearUndoHistoryMethodBind):
    textEditClearUndoHistoryMethodBind = getMethod(cstring"TextEdit",
        cstring"clear_undo_history")
  var ptrCallRet: pointer
  textEditClearUndoHistoryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditCopyMethodBind {.threadvar.}: ptr GodotMethodBind
proc copy(self: TextEdit) =
  if isNil(textEditCopyMethodBind):
    textEditCopyMethodBind = getMethod(cstring"TextEdit", cstring"copy")
  var ptrCallRet: pointer
  textEditCopyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditCursorGetColumnMethodBind {.threadvar.}: ptr GodotMethodBind
proc cursorGetColumn(self: TextEdit): int64 =
  if isNil(textEditCursorGetColumnMethodBind):
    textEditCursorGetColumnMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_get_column")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditCursorGetColumnMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditCursorGetLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc cursorGetLine(self: TextEdit): int64 =
  if isNil(textEditCursorGetLineMethodBind):
    textEditCursorGetLineMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_get_line")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditCursorGetLineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditCursorSetColumnMethodBind {.threadvar.}: ptr GodotMethodBind
proc cursorSetColumn(self: TextEdit; column: int64; adjustViewport: bool = true) =
  if isNil(textEditCursorSetColumnMethodBind):
    textEditCursorSetColumnMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_set_column")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(adjustViewport)
  var ptrCallRet: pointer
  textEditCursorSetColumnMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditCursorSetLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc cursorSetLine(self: TextEdit; line: int64; adjustViewport: bool = true;
                  canBeHidden: bool = true; wrapIndex: int64 = 0'i64) =
  if isNil(textEditCursorSetLineMethodBind):
    textEditCursorSetLineMethodBind = getMethod(cstring"TextEdit",
        cstring"cursor_set_line")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  argsToPassToGodot[][1] = unsafeAddr(adjustViewport)
  argsToPassToGodot[][2] = unsafeAddr(canBeHidden)
  argsToPassToGodot[][3] = unsafeAddr(wrapIndex)
  var ptrCallRet: pointer
  textEditCursorSetLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditCutMethodBind {.threadvar.}: ptr GodotMethodBind
proc cut(self: TextEdit) =
  if isNil(textEditCutMethodBind):
    textEditCutMethodBind = getMethod(cstring"TextEdit", cstring"cut")
  var ptrCallRet: pointer
  textEditCutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditDeselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc deselect(self: TextEdit) =
  if isNil(textEditDeselectMethodBind):
    textEditDeselectMethodBind = getMethod(cstring"TextEdit", cstring"deselect")
  var ptrCallRet: pointer
  textEditDeselectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditFoldAllLinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc foldAllLines(self: TextEdit) =
  if isNil(textEditFoldAllLinesMethodBind):
    textEditFoldAllLinesMethodBind = getMethod(cstring"TextEdit",
        cstring"fold_all_lines")
  var ptrCallRet: pointer
  textEditFoldAllLinesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditFoldLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc foldLine(self: TextEdit; line: int64) =
  if isNil(textEditFoldLineMethodBind):
    textEditFoldLineMethodBind = getMethod(cstring"TextEdit", cstring"fold_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  textEditFoldLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var textEditGetBreakpointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBreakpoints(self: TextEdit): Array =
  if isNil(textEditGetBreakpointsMethodBind):
    textEditGetBreakpointsMethodBind = getMethod(cstring"TextEdit",
        cstring"get_breakpoints")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  textEditGetBreakpointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var textEditGetKeywordColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getKeywordColor(self: TextEdit; keyword: string): Color =
  if isNil(textEditGetKeywordColorMethodBind):
    textEditGetKeywordColorMethodBind = getMethod(cstring"TextEdit",
        cstring"get_keyword_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(keyword)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetKeywordColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var textEditGetLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLine(self: TextEdit; line: int64): string =
  if isNil(textEditGetLineMethodBind):
    textEditGetLineMethodBind = getMethod(cstring"TextEdit", cstring"get_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  textEditGetLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var textEditGetLineCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLineCount(self: TextEdit): int64 =
  if isNil(textEditGetLineCountMethodBind):
    textEditGetLineCountMethodBind = getMethod(cstring"TextEdit",
        cstring"get_line_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetLineCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditGetMenuMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMenu(self: TextEdit): PopupMenu =
  if isNil(textEditGetMenuMethodBind):
    textEditGetMenuMethodBind = getMethod(cstring"TextEdit", cstring"get_menu")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textEditGetMenuMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textEditGetSelectionFromColumnMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectionFromColumn(self: TextEdit): int64 =
  if isNil(textEditGetSelectionFromColumnMethodBind):
    textEditGetSelectionFromColumnMethodBind = getMethod(cstring"TextEdit",
        cstring"get_selection_from_column")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetSelectionFromColumnMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var textEditGetSelectionFromLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectionFromLine(self: TextEdit): int64 =
  if isNil(textEditGetSelectionFromLineMethodBind):
    textEditGetSelectionFromLineMethodBind = getMethod(cstring"TextEdit",
        cstring"get_selection_from_line")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetSelectionFromLineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditGetSelectionTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectionText(self: TextEdit): string =
  if isNil(textEditGetSelectionTextMethodBind):
    textEditGetSelectionTextMethodBind = getMethod(cstring"TextEdit",
        cstring"get_selection_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  textEditGetSelectionTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var textEditGetSelectionToColumnMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectionToColumn(self: TextEdit): int64 =
  if isNil(textEditGetSelectionToColumnMethodBind):
    textEditGetSelectionToColumnMethodBind = getMethod(cstring"TextEdit",
        cstring"get_selection_to_column")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetSelectionToColumnMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditGetSelectionToLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectionToLine(self: TextEdit): int64 =
  if isNil(textEditGetSelectionToLineMethodBind):
    textEditGetSelectionToLineMethodBind = getMethod(cstring"TextEdit",
        cstring"get_selection_to_line")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditGetSelectionToLineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditGetWordUnderCursorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWordUnderCursor(self: TextEdit): string =
  if isNil(textEditGetWordUnderCursorMethodBind):
    textEditGetWordUnderCursorMethodBind = getMethod(cstring"TextEdit",
        cstring"get_word_under_cursor")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  textEditGetWordUnderCursorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var textEditHasKeywordColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasKeywordColor(self: TextEdit; keyword: string): bool =
  if isNil(textEditHasKeywordColorMethodBind):
    textEditHasKeywordColorMethodBind = getMethod(cstring"TextEdit",
        cstring"has_keyword_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(keyword)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditHasKeywordColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var textEditInsertTextAtCursorMethodBind {.threadvar.}: ptr GodotMethodBind
proc insertTextAtCursor(self: TextEdit; text: string) =
  if isNil(textEditInsertTextAtCursorMethodBind):
    textEditInsertTextAtCursorMethodBind = getMethod(cstring"TextEdit",
        cstring"insert_text_at_cursor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  textEditInsertTextAtCursorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var textEditIsFoldedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isFolded(self: TextEdit; line: int64): bool =
  if isNil(textEditIsFoldedMethodBind):
    textEditIsFoldedMethodBind = getMethod(cstring"TextEdit", cstring"is_folded")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsFoldedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var textEditIsLineHiddenMethodBind {.threadvar.}: ptr GodotMethodBind
proc isLineHidden(self: TextEdit; line: int64): bool =
  if isNil(textEditIsLineHiddenMethodBind):
    textEditIsLineHiddenMethodBind = getMethod(cstring"TextEdit",
        cstring"is_line_hidden")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsLineHiddenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditIsSelectionActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSelectionActive(self: TextEdit): bool =
  if isNil(textEditIsSelectionActiveMethodBind):
    textEditIsSelectionActiveMethodBind = getMethod(cstring"TextEdit",
        cstring"is_selection_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textEditIsSelectionActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditMenuOptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc menuOption(self: TextEdit; option: int64) =
  if isNil(textEditMenuOptionMethodBind):
    textEditMenuOptionMethodBind = getMethod(cstring"TextEdit",
        cstring"menu_option")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(option)
  var ptrCallRet: pointer
  textEditMenuOptionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var textEditPasteMethodBind {.threadvar.}: ptr GodotMethodBind
proc paste(self: TextEdit) =
  if isNil(textEditPasteMethodBind):
    textEditPasteMethodBind = getMethod(cstring"TextEdit", cstring"paste")
  var ptrCallRet: pointer
  textEditPasteMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditRedoMethodBind {.threadvar.}: ptr GodotMethodBind
proc redo(self: TextEdit) =
  if isNil(textEditRedoMethodBind):
    textEditRedoMethodBind = getMethod(cstring"TextEdit", cstring"redo")
  var ptrCallRet: pointer
  textEditRedoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditRemoveBreakpointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeBreakpoints(self: TextEdit) =
  if isNil(textEditRemoveBreakpointsMethodBind):
    textEditRemoveBreakpointsMethodBind = getMethod(cstring"TextEdit",
        cstring"remove_breakpoints")
  var ptrCallRet: pointer
  textEditRemoveBreakpointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSearchMethodBind {.threadvar.}: ptr GodotMethodBind
proc search(self: TextEdit; key: string; flags: int64; fromLine: int64; fromColumn: int64): PoolIntArray =
  if isNil(textEditSearchMethodBind):
    textEditSearchMethodBind = getMethod(cstring"TextEdit", cstring"search")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(key)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  argsToPassToGodot[][2] = unsafeAddr(fromLine)
  argsToPassToGodot[][3] = unsafeAddr(fromColumn)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  textEditSearchMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolIntArray(ptrCallVal)

var textEditSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc select(self: TextEdit; fromLine: int64; fromColumn: int64; toLine: int64;
           toColumn: int64) =
  if isNil(textEditSelectMethodBind):
    textEditSelectMethodBind = getMethod(cstring"TextEdit", cstring"select")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromLine)
  argsToPassToGodot[][1] = unsafeAddr(fromColumn)
  argsToPassToGodot[][2] = unsafeAddr(toLine)
  argsToPassToGodot[][3] = unsafeAddr(toColumn)
  var ptrCallRet: pointer
  textEditSelectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var textEditSelectAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectAll(self: TextEdit) =
  if isNil(textEditSelectAllMethodBind):
    textEditSelectAllMethodBind = getMethod(cstring"TextEdit", cstring"select_all")
  var ptrCallRet: pointer
  textEditSelectAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditSetLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLine(self: TextEdit; line: int64; newText: string) =
  if isNil(textEditSetLineMethodBind):
    textEditSetLineMethodBind = getMethod(cstring"TextEdit", cstring"set_line")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var argToPassToGodot1 = toGodotString(newText)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  textEditSetLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot1)

var textEditSetLineAsHiddenMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLineAsHidden(self: TextEdit; line: int64; enable: bool) =
  if isNil(textEditSetLineAsHiddenMethodBind):
    textEditSetLineAsHiddenMethodBind = getMethod(cstring"TextEdit",
        cstring"set_line_as_hidden")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  textEditSetLineAsHiddenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditToggleFoldLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc toggleFoldLine(self: TextEdit; line: int64) =
  if isNil(textEditToggleFoldLineMethodBind):
    textEditToggleFoldLineMethodBind = getMethod(cstring"TextEdit",
        cstring"toggle_fold_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  textEditToggleFoldLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textEditUndoMethodBind {.threadvar.}: ptr GodotMethodBind
proc undo(self: TextEdit) =
  if isNil(textEditUndoMethodBind):
    textEditUndoMethodBind = getMethod(cstring"TextEdit", cstring"undo")
  var ptrCallRet: pointer
  textEditUndoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textEditUnfoldLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc unfoldLine(self: TextEdit; line: int64) =
  if isNil(textEditUnfoldLineMethodBind):
    textEditUnfoldLineMethodBind = getMethod(cstring"TextEdit",
        cstring"unfold_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  textEditUnfoldLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var textEditUnhideAllLinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc unhideAllLines(self: TextEdit) =
  if isNil(textEditUnhideAllLinesMethodBind):
    textEditUnhideAllLinesMethodBind = getMethod(cstring"TextEdit",
        cstring"unhide_all_lines")
  var ptrCallRet: pointer
  textEditUnhideAllLinesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
