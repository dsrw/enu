
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  ALIGN_CENTER* = 1'i64
  ALIGN_FILL* = 3'i64
  ALIGN_LEFT* = 0'i64
  ALIGN_RIGHT* = 2'i64
  MENU_CLEAR* = 3'i64
  MENU_COPY* = 1'i64
  MENU_CUT* = 0'i64
  MENU_MAX* = 7'i64
  MENU_PASTE* = 2'i64
  MENU_REDO* = 6'i64
  MENU_SELECT_ALL* = 4'i64
  MENU_UNDO* = 5'i64
proc align*(self: LineEdit): int64 {.gcsafe, locks: 0.}
proc `align=`*(self: LineEdit; val: int64) {.gcsafe, locks: 0.}
proc caretBlink*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `caretBlink=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc caretBlinkSpeed*(self: LineEdit): float64 {.gcsafe, locks: 0.}
proc `caretBlinkSpeed=`*(self: LineEdit; val: float64) {.gcsafe, locks: 0.}
proc caretPosition*(self: LineEdit): int64 {.gcsafe, locks: 0.}
proc `caretPosition=`*(self: LineEdit; val: int64) {.gcsafe, locks: 0.}
proc clearButtonEnabled*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `clearButtonEnabled=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc contextMenuEnabled*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `contextMenuEnabled=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc editable*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `editable=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc expandToTextLength*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `expandToTextLength=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc maxLength*(self: LineEdit): int64 {.gcsafe, locks: 0.}
proc `maxLength=`*(self: LineEdit; val: int64) {.gcsafe, locks: 0.}
proc placeholderAlpha*(self: LineEdit): float64 {.gcsafe, locks: 0.}
proc `placeholderAlpha=`*(self: LineEdit; val: float64) {.gcsafe, locks: 0.}
proc placeholderText*(self: LineEdit): string {.gcsafe, locks: 0.}
proc `placeholderText=`*(self: LineEdit; val: string) {.gcsafe, locks: 0.}
proc rightIcon*(self: LineEdit): Texture {.gcsafe, locks: 0.}
proc `rightIcon=`*(self: LineEdit; val: Texture) {.gcsafe, locks: 0.}
proc secret*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `secret=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc secretCharacter*(self: LineEdit): string {.gcsafe, locks: 0.}
proc `secretCharacter=`*(self: LineEdit; val: string) {.gcsafe, locks: 0.}
proc selectingEnabled*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `selectingEnabled=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc shortcutKeysEnabled*(self: LineEdit): bool {.gcsafe, locks: 0.}
proc `shortcutKeysEnabled=`*(self: LineEdit; val: bool) {.gcsafe, locks: 0.}
proc text*(self: LineEdit): string {.gcsafe, locks: 0.}
proc `text=`*(self: LineEdit; val: string) {.gcsafe, locks: 0.}
method editorSettingsChanged*(self: LineEdit) {.gcsafe, locks: 0, base.}
method guiInput*(self: LineEdit; event: InputEvent) {.gcsafe, locks: 0.}
method textChanged*(self: LineEdit) {.gcsafe, locks: 0, base.}
method toggleDrawCaret*(self: LineEdit) {.gcsafe, locks: 0, base.}
proc appendAtCursor*(self: LineEdit; text: string) {.gcsafe, locks: 0.}
proc clear*(self: LineEdit) {.gcsafe, locks: 0.}
proc deleteCharAtCursor*(self: LineEdit) {.gcsafe, locks: 0.}
proc deleteText*(self: LineEdit; fromColumn: int64; toColumn: int64) {.gcsafe, locks: 0.}
proc deselect*(self: LineEdit) {.gcsafe, locks: 0.}
proc getMenu*(self: LineEdit): PopupMenu {.gcsafe, locks: 0.}
proc menuOption*(self: LineEdit; option: int64) {.gcsafe, locks: 0.}
proc select*(self: LineEdit; fromm: int64 = 0'i64; to: int64 = -1'i64) {.gcsafe, locks: 0.}
proc selectAll*(self: LineEdit) {.gcsafe, locks: 0.}
var lineEditGetAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc align(self: LineEdit): int64 =
  if isNil(lineEditGetAlignMethodBind):
    lineEditGetAlignMethodBind = getMethod(cstring"LineEdit", cstring"get_align")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditGetAlignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc `align=`(self: LineEdit; val: int64) =
  if isNil(lineEditSetAlignMethodBind):
    lineEditSetAlignMethodBind = getMethod(cstring"LineEdit", cstring"set_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var lineEditCursorGetBlinkEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc caretBlink(self: LineEdit): bool =
  if isNil(lineEditCursorGetBlinkEnabledMethodBind):
    lineEditCursorGetBlinkEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"cursor_get_blink_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditCursorGetBlinkEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var lineEditCursorSetBlinkEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caretBlink=`(self: LineEdit; val: bool) =
  if isNil(lineEditCursorSetBlinkEnabledMethodBind):
    lineEditCursorSetBlinkEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"cursor_set_blink_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditCursorSetBlinkEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditCursorGetBlinkSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc caretBlinkSpeed(self: LineEdit): float64 =
  if isNil(lineEditCursorGetBlinkSpeedMethodBind):
    lineEditCursorGetBlinkSpeedMethodBind = getMethod(cstring"LineEdit",
        cstring"cursor_get_blink_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditCursorGetBlinkSpeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditCursorSetBlinkSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caretBlinkSpeed=`(self: LineEdit; val: float64) =
  if isNil(lineEditCursorSetBlinkSpeedMethodBind):
    lineEditCursorSetBlinkSpeedMethodBind = getMethod(cstring"LineEdit",
        cstring"cursor_set_blink_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditCursorSetBlinkSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditGetCursorPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc caretPosition(self: LineEdit): int64 =
  if isNil(lineEditGetCursorPositionMethodBind):
    lineEditGetCursorPositionMethodBind = getMethod(cstring"LineEdit",
        cstring"get_cursor_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditGetCursorPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetCursorPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `caretPosition=`(self: LineEdit; val: int64) =
  if isNil(lineEditSetCursorPositionMethodBind):
    lineEditSetCursorPositionMethodBind = getMethod(cstring"LineEdit",
        cstring"set_cursor_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetCursorPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditIsClearButtonEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearButtonEnabled(self: LineEdit): bool =
  if isNil(lineEditIsClearButtonEnabledMethodBind):
    lineEditIsClearButtonEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"is_clear_button_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditIsClearButtonEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetClearButtonEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `clearButtonEnabled=`(self: LineEdit; val: bool) =
  if isNil(lineEditSetClearButtonEnabledMethodBind):
    lineEditSetClearButtonEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"set_clear_button_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetClearButtonEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditIsContextMenuEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc contextMenuEnabled(self: LineEdit): bool =
  if isNil(lineEditIsContextMenuEnabledMethodBind):
    lineEditIsContextMenuEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"is_context_menu_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditIsContextMenuEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetContextMenuEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `contextMenuEnabled=`(self: LineEdit; val: bool) =
  if isNil(lineEditSetContextMenuEnabledMethodBind):
    lineEditSetContextMenuEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"set_context_menu_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetContextMenuEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditIsEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc editable(self: LineEdit): bool =
  if isNil(lineEditIsEditableMethodBind):
    lineEditIsEditableMethodBind = getMethod(cstring"LineEdit",
        cstring"is_editable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditIsEditableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editable=`(self: LineEdit; val: bool) =
  if isNil(lineEditSetEditableMethodBind):
    lineEditSetEditableMethodBind = getMethod(cstring"LineEdit",
        cstring"set_editable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetEditableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var lineEditGetExpandToTextLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc expandToTextLength(self: LineEdit): bool =
  if isNil(lineEditGetExpandToTextLengthMethodBind):
    lineEditGetExpandToTextLengthMethodBind = getMethod(cstring"LineEdit",
        cstring"get_expand_to_text_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditGetExpandToTextLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var lineEditSetExpandToTextLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expandToTextLength=`(self: LineEdit; val: bool) =
  if isNil(lineEditSetExpandToTextLengthMethodBind):
    lineEditSetExpandToTextLengthMethodBind = getMethod(cstring"LineEdit",
        cstring"set_expand_to_text_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetExpandToTextLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditGetMaxLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxLength(self: LineEdit): int64 =
  if isNil(lineEditGetMaxLengthMethodBind):
    lineEditGetMaxLengthMethodBind = getMethod(cstring"LineEdit",
        cstring"get_max_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditGetMaxLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetMaxLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxLength=`(self: LineEdit; val: int64) =
  if isNil(lineEditSetMaxLengthMethodBind):
    lineEditSetMaxLengthMethodBind = getMethod(cstring"LineEdit",
        cstring"set_max_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetMaxLengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var lineEditGetPlaceholderAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc placeholderAlpha(self: LineEdit): float64 =
  if isNil(lineEditGetPlaceholderAlphaMethodBind):
    lineEditGetPlaceholderAlphaMethodBind = getMethod(cstring"LineEdit",
        cstring"get_placeholder_alpha")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditGetPlaceholderAlphaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetPlaceholderAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `placeholderAlpha=`(self: LineEdit; val: float64) =
  if isNil(lineEditSetPlaceholderAlphaMethodBind):
    lineEditSetPlaceholderAlphaMethodBind = getMethod(cstring"LineEdit",
        cstring"set_placeholder_alpha")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetPlaceholderAlphaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditGetPlaceholderMethodBind {.threadvar.}: ptr GodotMethodBind
proc placeholderText(self: LineEdit): string =
  if isNil(lineEditGetPlaceholderMethodBind):
    lineEditGetPlaceholderMethodBind = getMethod(cstring"LineEdit",
        cstring"get_placeholder")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  lineEditGetPlaceholderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var lineEditSetPlaceholderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `placeholderText=`(self: LineEdit; val: string) =
  if isNil(lineEditSetPlaceholderMethodBind):
    lineEditSetPlaceholderMethodBind = getMethod(cstring"LineEdit",
        cstring"set_placeholder")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  lineEditSetPlaceholderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var lineEditGetRightIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc rightIcon(self: LineEdit): Texture =
  if isNil(lineEditGetRightIconMethodBind):
    lineEditGetRightIconMethodBind = getMethod(cstring"LineEdit",
        cstring"get_right_icon")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  lineEditGetRightIconMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var lineEditSetRightIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rightIcon=`(self: LineEdit; val: Texture) =
  if isNil(lineEditSetRightIconMethodBind):
    lineEditSetRightIconMethodBind = getMethod(cstring"LineEdit",
        cstring"set_right_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  lineEditSetRightIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var lineEditIsSecretMethodBind {.threadvar.}: ptr GodotMethodBind
proc secret(self: LineEdit): bool =
  if isNil(lineEditIsSecretMethodBind):
    lineEditIsSecretMethodBind = getMethod(cstring"LineEdit", cstring"is_secret")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditIsSecretMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetSecretMethodBind {.threadvar.}: ptr GodotMethodBind
proc `secret=`(self: LineEdit; val: bool) =
  if isNil(lineEditSetSecretMethodBind):
    lineEditSetSecretMethodBind = getMethod(cstring"LineEdit", cstring"set_secret")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetSecretMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var lineEditGetSecretCharacterMethodBind {.threadvar.}: ptr GodotMethodBind
proc secretCharacter(self: LineEdit): string =
  if isNil(lineEditGetSecretCharacterMethodBind):
    lineEditGetSecretCharacterMethodBind = getMethod(cstring"LineEdit",
        cstring"get_secret_character")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  lineEditGetSecretCharacterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var lineEditSetSecretCharacterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `secretCharacter=`(self: LineEdit; val: string) =
  if isNil(lineEditSetSecretCharacterMethodBind):
    lineEditSetSecretCharacterMethodBind = getMethod(cstring"LineEdit",
        cstring"set_secret_character")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  lineEditSetSecretCharacterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var lineEditIsSelectingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectingEnabled(self: LineEdit): bool =
  if isNil(lineEditIsSelectingEnabledMethodBind):
    lineEditIsSelectingEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"is_selecting_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditIsSelectingEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditSetSelectingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `selectingEnabled=`(self: LineEdit; val: bool) =
  if isNil(lineEditSetSelectingEnabledMethodBind):
    lineEditSetSelectingEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"set_selecting_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetSelectingEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditIsShortcutKeysEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc shortcutKeysEnabled(self: LineEdit): bool =
  if isNil(lineEditIsShortcutKeysEnabledMethodBind):
    lineEditIsShortcutKeysEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"is_shortcut_keys_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineEditIsShortcutKeysEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var lineEditSetShortcutKeysEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shortcutKeysEnabled=`(self: LineEdit; val: bool) =
  if isNil(lineEditSetShortcutKeysEnabledMethodBind):
    lineEditSetShortcutKeysEnabledMethodBind = getMethod(cstring"LineEdit",
        cstring"set_shortcut_keys_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineEditSetShortcutKeysEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc text(self: LineEdit): string =
  if isNil(lineEditGetTextMethodBind):
    lineEditGetTextMethodBind = getMethod(cstring"LineEdit", cstring"get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  lineEditGetTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var lineEditSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `text=`(self: LineEdit; val: string) =
  if isNil(lineEditSetTextMethodBind):
    lineEditSetTextMethodBind = getMethod(cstring"LineEdit", cstring"set_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  lineEditSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var lineEditUnderscoreeditorSettingsChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method editorSettingsChanged(self: LineEdit) =
  if isNil(lineEditUnderscoreeditorSettingsChangedMethodBind):
    lineEditUnderscoreeditorSettingsChangedMethodBind = getMethod(
        cstring"LineEdit", cstring"_editor_settings_changed")
  var ptrCallRet: pointer
  lineEditUnderscoreeditorSettingsChangedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var lineEditUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: LineEdit; event: InputEvent) =
  if isNil(lineEditUnderscoreguiInputMethodBind):
    lineEditUnderscoreguiInputMethodBind = getMethod(cstring"LineEdit",
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
  lineEditUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lineEditUnderscoretextChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method textChanged(self: LineEdit) =
  if isNil(lineEditUnderscoretextChangedMethodBind):
    lineEditUnderscoretextChangedMethodBind = getMethod(cstring"LineEdit",
        cstring"_text_changed")
  var ptrCallRet: pointer
  lineEditUnderscoretextChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var lineEditUnderscoretoggleDrawCaretMethodBind {.threadvar.}: ptr GodotMethodBind
method toggleDrawCaret(self: LineEdit) =
  if isNil(lineEditUnderscoretoggleDrawCaretMethodBind):
    lineEditUnderscoretoggleDrawCaretMethodBind = getMethod(cstring"LineEdit",
        cstring"_toggle_draw_caret")
  var ptrCallRet: pointer
  lineEditUnderscoretoggleDrawCaretMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var lineEditAppendAtCursorMethodBind {.threadvar.}: ptr GodotMethodBind
proc appendAtCursor(self: LineEdit; text: string) =
  if isNil(lineEditAppendAtCursorMethodBind):
    lineEditAppendAtCursorMethodBind = getMethod(cstring"LineEdit",
        cstring"append_at_cursor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  lineEditAppendAtCursorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var lineEditClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: LineEdit) =
  if isNil(lineEditClearMethodBind):
    lineEditClearMethodBind = getMethod(cstring"LineEdit", cstring"clear")
  var ptrCallRet: pointer
  lineEditClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditDeleteCharAtCursorMethodBind {.threadvar.}: ptr GodotMethodBind
proc deleteCharAtCursor(self: LineEdit) =
  if isNil(lineEditDeleteCharAtCursorMethodBind):
    lineEditDeleteCharAtCursorMethodBind = getMethod(cstring"LineEdit",
        cstring"delete_char_at_cursor")
  var ptrCallRet: pointer
  lineEditDeleteCharAtCursorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditDeleteTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc deleteText(self: LineEdit; fromColumn: int64; toColumn: int64) =
  if isNil(lineEditDeleteTextMethodBind):
    lineEditDeleteTextMethodBind = getMethod(cstring"LineEdit",
        cstring"delete_text")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromColumn)
  argsToPassToGodot[][1] = unsafeAddr(toColumn)
  var ptrCallRet: pointer
  lineEditDeleteTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var lineEditDeselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc deselect(self: LineEdit) =
  if isNil(lineEditDeselectMethodBind):
    lineEditDeselectMethodBind = getMethod(cstring"LineEdit", cstring"deselect")
  var ptrCallRet: pointer
  lineEditDeselectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineEditGetMenuMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMenu(self: LineEdit): PopupMenu =
  if isNil(lineEditGetMenuMethodBind):
    lineEditGetMenuMethodBind = getMethod(cstring"LineEdit", cstring"get_menu")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  lineEditGetMenuMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var lineEditMenuOptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc menuOption(self: LineEdit; option: int64) =
  if isNil(lineEditMenuOptionMethodBind):
    lineEditMenuOptionMethodBind = getMethod(cstring"LineEdit",
        cstring"menu_option")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(option)
  var ptrCallRet: pointer
  lineEditMenuOptionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var lineEditSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc select(self: LineEdit; fromm: int64 = 0'i64; to: int64 = -1'i64) =
  if isNil(lineEditSelectMethodBind):
    lineEditSelectMethodBind = getMethod(cstring"LineEdit", cstring"select")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  var ptrCallRet: pointer
  lineEditSelectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var lineEditSelectAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectAll(self: LineEdit) =
  if isNil(lineEditSelectAllMethodBind):
    lineEditSelectAllMethodBind = getMethod(cstring"LineEdit", cstring"select_all")
  var ptrCallRet: pointer
  lineEditSelectAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
