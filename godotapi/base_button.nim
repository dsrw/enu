
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  ACTION_MODE_BUTTON_PRESS* = 0'i64
  ACTION_MODE_BUTTON_RELEASE* = 1'i64
  DRAW_DISABLED* = 3'i64
  DRAW_HOVER* = 2'i64
  DRAW_HOVER_PRESSED* = 4'i64
  DRAW_NORMAL* = 0'i64
  DRAW_PRESSED* = 1'i64
proc actionMode*(self: BaseButton): int64 {.gcsafe, locks: 0.}
proc `actionMode=`*(self: BaseButton; val: int64) {.gcsafe, locks: 0.}
proc buttonMask*(self: BaseButton): int64 {.gcsafe, locks: 0.}
proc `buttonMask=`*(self: BaseButton; val: int64) {.gcsafe, locks: 0.}
proc disabled*(self: BaseButton): bool {.gcsafe, locks: 0.}
proc `disabled=`*(self: BaseButton; val: bool) {.gcsafe, locks: 0.}
proc enabledFocusMode*(self: BaseButton): int64 {.gcsafe, locks: 0.}
proc `enabledFocusMode=`*(self: BaseButton; val: int64) {.gcsafe, locks: 0.}
proc group*(self: BaseButton): ButtonGroup {.gcsafe, locks: 0.}
proc `group=`*(self: BaseButton; val: ButtonGroup) {.gcsafe, locks: 0.}
proc keepPressedOutside*(self: BaseButton): bool {.gcsafe, locks: 0.}
proc `keepPressedOutside=`*(self: BaseButton; val: bool) {.gcsafe, locks: 0.}
proc shortcut*(self: BaseButton): ShortCut {.gcsafe, locks: 0.}
proc `shortcut=`*(self: BaseButton; val: ShortCut) {.gcsafe, locks: 0.}
proc shortcutInTooltip*(self: BaseButton): bool {.gcsafe, locks: 0.}
proc `shortcutInTooltip=`*(self: BaseButton; val: bool) {.gcsafe, locks: 0.}
proc toggleMode*(self: BaseButton): bool {.gcsafe, locks: 0.}
proc `toggleMode=`*(self: BaseButton; val: bool) {.gcsafe, locks: 0.}
method guiInput*(self: BaseButton; event: InputEvent) {.gcsafe, locks: 0.}
method pressed*(self: BaseButton) {.gcsafe, locks: 0, base.}
method toggled*(self: BaseButton; buttonPressed: bool) {.gcsafe, locks: 0, base.}
method unhandledInput*(self: BaseButton; event: InputEvent) {.gcsafe, locks: 0.}
proc getDrawMode*(self: BaseButton): int64 {.gcsafe, locks: 0.}
proc isHovered*(self: BaseButton): bool {.gcsafe, locks: 0.}
proc isPressed*(self: BaseButton): bool {.gcsafe, locks: 0.}
proc setPressed*(self: BaseButton; pressed: bool) {.gcsafe, locks: 0.}
var baseButtonGetActionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionMode(self: BaseButton): int64 =
  if isNil(baseButtonGetActionModeMethodBind):
    baseButtonGetActionModeMethodBind = getMethod(cstring"BaseButton",
        cstring"get_action_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonGetActionModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonSetActionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `actionMode=`(self: BaseButton; val: int64) =
  if isNil(baseButtonSetActionModeMethodBind):
    baseButtonSetActionModeMethodBind = getMethod(cstring"BaseButton",
        cstring"set_action_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  baseButtonSetActionModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var baseButtonGetButtonMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc buttonMask(self: BaseButton): int64 =
  if isNil(baseButtonGetButtonMaskMethodBind):
    baseButtonGetButtonMaskMethodBind = getMethod(cstring"BaseButton",
        cstring"get_button_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonGetButtonMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonSetButtonMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `buttonMask=`(self: BaseButton; val: int64) =
  if isNil(baseButtonSetButtonMaskMethodBind):
    baseButtonSetButtonMaskMethodBind = getMethod(cstring"BaseButton",
        cstring"set_button_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  baseButtonSetButtonMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var baseButtonIsDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disabled(self: BaseButton): bool =
  if isNil(baseButtonIsDisabledMethodBind):
    baseButtonIsDisabledMethodBind = getMethod(cstring"BaseButton",
        cstring"is_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonIsDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disabled=`(self: BaseButton; val: bool) =
  if isNil(baseButtonSetDisabledMethodBind):
    baseButtonSetDisabledMethodBind = getMethod(cstring"BaseButton",
        cstring"set_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  baseButtonSetDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var baseButtonGetEnabledFocusModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc enabledFocusMode(self: BaseButton): int64 =
  if isNil(baseButtonGetEnabledFocusModeMethodBind):
    baseButtonGetEnabledFocusModeMethodBind = getMethod(cstring"BaseButton",
        cstring"get_enabled_focus_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonGetEnabledFocusModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var baseButtonSetEnabledFocusModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enabledFocusMode=`(self: BaseButton; val: int64) =
  if isNil(baseButtonSetEnabledFocusModeMethodBind):
    baseButtonSetEnabledFocusModeMethodBind = getMethod(cstring"BaseButton",
        cstring"set_enabled_focus_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  baseButtonSetEnabledFocusModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var baseButtonGetButtonGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc group(self: BaseButton): ButtonGroup =
  if isNil(baseButtonGetButtonGroupMethodBind):
    baseButtonGetButtonGroupMethodBind = getMethod(cstring"BaseButton",
        cstring"get_button_group")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  baseButtonGetButtonGroupMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var baseButtonSetButtonGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc `group=`(self: BaseButton; val: ButtonGroup) =
  if isNil(baseButtonSetButtonGroupMethodBind):
    baseButtonSetButtonGroupMethodBind = getMethod(cstring"BaseButton",
        cstring"set_button_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  baseButtonSetButtonGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var baseButtonIsKeepPressedOutsideMethodBind {.threadvar.}: ptr GodotMethodBind
proc keepPressedOutside(self: BaseButton): bool =
  if isNil(baseButtonIsKeepPressedOutsideMethodBind):
    baseButtonIsKeepPressedOutsideMethodBind = getMethod(cstring"BaseButton",
        cstring"is_keep_pressed_outside")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonIsKeepPressedOutsideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var baseButtonSetKeepPressedOutsideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `keepPressedOutside=`(self: BaseButton; val: bool) =
  if isNil(baseButtonSetKeepPressedOutsideMethodBind):
    baseButtonSetKeepPressedOutsideMethodBind = getMethod(cstring"BaseButton",
        cstring"set_keep_pressed_outside")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  baseButtonSetKeepPressedOutsideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var baseButtonGetShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc shortcut(self: BaseButton): ShortCut =
  if isNil(baseButtonGetShortcutMethodBind):
    baseButtonGetShortcutMethodBind = getMethod(cstring"BaseButton",
        cstring"get_shortcut")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  baseButtonGetShortcutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var baseButtonSetShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shortcut=`(self: BaseButton; val: ShortCut) =
  if isNil(baseButtonSetShortcutMethodBind):
    baseButtonSetShortcutMethodBind = getMethod(cstring"BaseButton",
        cstring"set_shortcut")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  baseButtonSetShortcutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var baseButtonIsShortcutInTooltipEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc shortcutInTooltip(self: BaseButton): bool =
  if isNil(baseButtonIsShortcutInTooltipEnabledMethodBind):
    baseButtonIsShortcutInTooltipEnabledMethodBind = getMethod(
        cstring"BaseButton", cstring"is_shortcut_in_tooltip_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonIsShortcutInTooltipEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var baseButtonSetShortcutInTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shortcutInTooltip=`(self: BaseButton; val: bool) =
  if isNil(baseButtonSetShortcutInTooltipMethodBind):
    baseButtonSetShortcutInTooltipMethodBind = getMethod(cstring"BaseButton",
        cstring"set_shortcut_in_tooltip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  baseButtonSetShortcutInTooltipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var baseButtonIsToggleModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc toggleMode(self: BaseButton): bool =
  if isNil(baseButtonIsToggleModeMethodBind):
    baseButtonIsToggleModeMethodBind = getMethod(cstring"BaseButton",
        cstring"is_toggle_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonIsToggleModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonSetToggleModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `toggleMode=`(self: BaseButton; val: bool) =
  if isNil(baseButtonSetToggleModeMethodBind):
    baseButtonSetToggleModeMethodBind = getMethod(cstring"BaseButton",
        cstring"set_toggle_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  baseButtonSetToggleModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var baseButtonUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: BaseButton; event: InputEvent) =
  if isNil(baseButtonUnderscoreguiInputMethodBind):
    baseButtonUnderscoreguiInputMethodBind = getMethod(cstring"BaseButton",
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
  baseButtonUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var baseButtonUnderscorepressedMethodBind {.threadvar.}: ptr GodotMethodBind
method pressed(self: BaseButton) =
  if isNil(baseButtonUnderscorepressedMethodBind):
    baseButtonUnderscorepressedMethodBind = getMethod(cstring"BaseButton",
        cstring"_pressed")
  var ptrCallRet: pointer
  baseButtonUnderscorepressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonUnderscoretoggledMethodBind {.threadvar.}: ptr GodotMethodBind
method toggled(self: BaseButton; buttonPressed: bool) =
  if isNil(baseButtonUnderscoretoggledMethodBind):
    baseButtonUnderscoretoggledMethodBind = getMethod(cstring"BaseButton",
        cstring"_toggled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(buttonPressed)
  var ptrCallRet: pointer
  baseButtonUnderscoretoggledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var baseButtonUnderscoreunhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledInput(self: BaseButton; event: InputEvent) =
  if isNil(baseButtonUnderscoreunhandledInputMethodBind):
    baseButtonUnderscoreunhandledInputMethodBind = getMethod(cstring"BaseButton",
        cstring"_unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  baseButtonUnderscoreunhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var baseButtonGetDrawModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDrawMode(self: BaseButton): int64 =
  if isNil(baseButtonGetDrawModeMethodBind):
    baseButtonGetDrawModeMethodBind = getMethod(cstring"BaseButton",
        cstring"get_draw_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonGetDrawModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonIsHoveredMethodBind {.threadvar.}: ptr GodotMethodBind
proc isHovered(self: BaseButton): bool =
  if isNil(baseButtonIsHoveredMethodBind):
    baseButtonIsHoveredMethodBind = getMethod(cstring"BaseButton",
        cstring"is_hovered")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonIsHoveredMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPressed(self: BaseButton): bool =
  if isNil(baseButtonIsPressedMethodBind):
    baseButtonIsPressedMethodBind = getMethod(cstring"BaseButton",
        cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  baseButtonIsPressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var baseButtonSetPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPressed(self: BaseButton; pressed: bool) =
  if isNil(baseButtonSetPressedMethodBind):
    baseButtonSetPressedMethodBind = getMethod(cstring"BaseButton",
        cstring"set_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pressed)
  var ptrCallRet: pointer
  baseButtonSetPressedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
