
import
  godot, godottypes, godotinternal, box_container

export
  godottypes, box_container

proc color*(self: ColorPicker): Color {.gcsafe, locks: 0.}
proc `color=`*(self: ColorPicker; val: Color) {.gcsafe, locks: 0.}
proc deferredMode*(self: ColorPicker): bool {.gcsafe, locks: 0.}
proc `deferredMode=`*(self: ColorPicker; val: bool) {.gcsafe, locks: 0.}
proc editAlpha*(self: ColorPicker): bool {.gcsafe, locks: 0.}
proc `editAlpha=`*(self: ColorPicker; val: bool) {.gcsafe, locks: 0.}
proc hsvMode*(self: ColorPicker): bool {.gcsafe, locks: 0.}
proc `hsvMode=`*(self: ColorPicker; val: bool) {.gcsafe, locks: 0.}
proc presetsEnabled*(self: ColorPicker): bool {.gcsafe, locks: 0.}
proc `presetsEnabled=`*(self: ColorPicker; val: bool) {.gcsafe, locks: 0.}
proc presetsVisible*(self: ColorPicker): bool {.gcsafe, locks: 0.}
proc `presetsVisible=`*(self: ColorPicker; val: bool) {.gcsafe, locks: 0.}
proc rawMode*(self: ColorPicker): bool {.gcsafe, locks: 0.}
proc `rawMode=`*(self: ColorPicker; val: bool) {.gcsafe, locks: 0.}
method addPresetPressed*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method focusEnter*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method focusExit*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method hsvDraw*(self: ColorPicker; arg0: int64; arg1: Control) {.gcsafe, locks: 0, base.}
method htmlEntered*(self: ColorPicker; arg0: string) {.gcsafe, locks: 0, base.}
method htmlFocusExit*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method presetInput*(self: ColorPicker; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method sampleDraw*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method screenInput*(self: ColorPicker; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method screenPickPressed*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method textTypeToggled*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method updatePresets*(self: ColorPicker) {.gcsafe, locks: 0, base.}
method uvInput*(self: ColorPicker; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method valueChanged*(self: ColorPicker; arg0: float64) {.gcsafe, locks: 0, base.}
method wInput*(self: ColorPicker; arg0: InputEvent) {.gcsafe, locks: 0, base.}
proc addPreset*(self: ColorPicker; color: Color) {.gcsafe, locks: 0.}
proc erasePreset*(self: ColorPicker; color: Color) {.gcsafe, locks: 0.}
proc getPresets*(self: ColorPicker): PoolColorArray {.gcsafe, locks: 0.}
var colorPickerGetPickColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: ColorPicker): Color =
  if isNil(colorPickerGetPickColorMethodBind):
    colorPickerGetPickColorMethodBind = getMethod(cstring"ColorPicker",
        cstring"get_pick_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerGetPickColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorPickerSetPickColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: ColorPicker; val: Color) =
  if isNil(colorPickerSetPickColorMethodBind):
    colorPickerSetPickColorMethodBind = getMethod(cstring"ColorPicker",
        cstring"set_pick_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerSetPickColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var colorPickerIsDeferredModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc deferredMode(self: ColorPicker): bool =
  if isNil(colorPickerIsDeferredModeMethodBind):
    colorPickerIsDeferredModeMethodBind = getMethod(cstring"ColorPicker",
        cstring"is_deferred_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerIsDeferredModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorPickerSetDeferredModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `deferredMode=`(self: ColorPicker; val: bool) =
  if isNil(colorPickerSetDeferredModeMethodBind):
    colorPickerSetDeferredModeMethodBind = getMethod(cstring"ColorPicker",
        cstring"set_deferred_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerSetDeferredModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerIsEditingAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc editAlpha(self: ColorPicker): bool =
  if isNil(colorPickerIsEditingAlphaMethodBind):
    colorPickerIsEditingAlphaMethodBind = getMethod(cstring"ColorPicker",
        cstring"is_editing_alpha")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerIsEditingAlphaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorPickerSetEditAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editAlpha=`(self: ColorPicker; val: bool) =
  if isNil(colorPickerSetEditAlphaMethodBind):
    colorPickerSetEditAlphaMethodBind = getMethod(cstring"ColorPicker",
        cstring"set_edit_alpha")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerSetEditAlphaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var colorPickerIsHsvModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc hsvMode(self: ColorPicker): bool =
  if isNil(colorPickerIsHsvModeMethodBind):
    colorPickerIsHsvModeMethodBind = getMethod(cstring"ColorPicker",
        cstring"is_hsv_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerIsHsvModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorPickerSetHsvModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hsvMode=`(self: ColorPicker; val: bool) =
  if isNil(colorPickerSetHsvModeMethodBind):
    colorPickerSetHsvModeMethodBind = getMethod(cstring"ColorPicker",
        cstring"set_hsv_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerSetHsvModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var colorPickerArePresetsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc presetsEnabled(self: ColorPicker): bool =
  if isNil(colorPickerArePresetsEnabledMethodBind):
    colorPickerArePresetsEnabledMethodBind = getMethod(cstring"ColorPicker",
        cstring"are_presets_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerArePresetsEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorPickerSetPresetsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `presetsEnabled=`(self: ColorPicker; val: bool) =
  if isNil(colorPickerSetPresetsEnabledMethodBind):
    colorPickerSetPresetsEnabledMethodBind = getMethod(cstring"ColorPicker",
        cstring"set_presets_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerSetPresetsEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerArePresetsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc presetsVisible(self: ColorPicker): bool =
  if isNil(colorPickerArePresetsVisibleMethodBind):
    colorPickerArePresetsVisibleMethodBind = getMethod(cstring"ColorPicker",
        cstring"are_presets_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerArePresetsVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorPickerSetPresetsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `presetsVisible=`(self: ColorPicker; val: bool) =
  if isNil(colorPickerSetPresetsVisibleMethodBind):
    colorPickerSetPresetsVisibleMethodBind = getMethod(cstring"ColorPicker",
        cstring"set_presets_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerSetPresetsVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerIsRawModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc rawMode(self: ColorPicker): bool =
  if isNil(colorPickerIsRawModeMethodBind):
    colorPickerIsRawModeMethodBind = getMethod(cstring"ColorPicker",
        cstring"is_raw_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerIsRawModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorPickerSetRawModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rawMode=`(self: ColorPicker; val: bool) =
  if isNil(colorPickerSetRawModeMethodBind):
    colorPickerSetRawModeMethodBind = getMethod(cstring"ColorPicker",
        cstring"set_raw_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerSetRawModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var colorPickerUnderscoreaddPresetPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method addPresetPressed(self: ColorPicker) =
  if isNil(colorPickerUnderscoreaddPresetPressedMethodBind):
    colorPickerUnderscoreaddPresetPressedMethodBind = getMethod(
        cstring"ColorPicker", cstring"_add_preset_pressed")
  var ptrCallRet: pointer
  colorPickerUnderscoreaddPresetPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscorefocusEnterMethodBind {.threadvar.}: ptr GodotMethodBind
method focusEnter(self: ColorPicker) =
  if isNil(colorPickerUnderscorefocusEnterMethodBind):
    colorPickerUnderscorefocusEnterMethodBind = getMethod(cstring"ColorPicker",
        cstring"_focus_enter")
  var ptrCallRet: pointer
  colorPickerUnderscorefocusEnterMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscorefocusExitMethodBind {.threadvar.}: ptr GodotMethodBind
method focusExit(self: ColorPicker) =
  if isNil(colorPickerUnderscorefocusExitMethodBind):
    colorPickerUnderscorefocusExitMethodBind = getMethod(cstring"ColorPicker",
        cstring"_focus_exit")
  var ptrCallRet: pointer
  colorPickerUnderscorefocusExitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscorehsvDrawMethodBind {.threadvar.}: ptr GodotMethodBind
method hsvDraw(self: ColorPicker; arg0: int64; arg1: Control) =
  if isNil(colorPickerUnderscorehsvDrawMethodBind):
    colorPickerUnderscorehsvDrawMethodBind = getMethod(cstring"ColorPicker",
        cstring"_hsv_draw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  colorPickerUnderscorehsvDrawMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerUnderscorehtmlEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method htmlEntered(self: ColorPicker; arg0: string) =
  if isNil(colorPickerUnderscorehtmlEnteredMethodBind):
    colorPickerUnderscorehtmlEnteredMethodBind = getMethod(cstring"ColorPicker",
        cstring"_html_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  colorPickerUnderscorehtmlEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var colorPickerUnderscorehtmlFocusExitMethodBind {.threadvar.}: ptr GodotMethodBind
method htmlFocusExit(self: ColorPicker) =
  if isNil(colorPickerUnderscorehtmlFocusExitMethodBind):
    colorPickerUnderscorehtmlFocusExitMethodBind = getMethod(
        cstring"ColorPicker", cstring"_html_focus_exit")
  var ptrCallRet: pointer
  colorPickerUnderscorehtmlFocusExitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscorepresetInputMethodBind {.threadvar.}: ptr GodotMethodBind
method presetInput(self: ColorPicker; arg0: InputEvent) =
  if isNil(colorPickerUnderscorepresetInputMethodBind):
    colorPickerUnderscorepresetInputMethodBind = getMethod(cstring"ColorPicker",
        cstring"_preset_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  colorPickerUnderscorepresetInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerUnderscoresampleDrawMethodBind {.threadvar.}: ptr GodotMethodBind
method sampleDraw(self: ColorPicker) =
  if isNil(colorPickerUnderscoresampleDrawMethodBind):
    colorPickerUnderscoresampleDrawMethodBind = getMethod(cstring"ColorPicker",
        cstring"_sample_draw")
  var ptrCallRet: pointer
  colorPickerUnderscoresampleDrawMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscorescreenInputMethodBind {.threadvar.}: ptr GodotMethodBind
method screenInput(self: ColorPicker; arg0: InputEvent) =
  if isNil(colorPickerUnderscorescreenInputMethodBind):
    colorPickerUnderscorescreenInputMethodBind = getMethod(cstring"ColorPicker",
        cstring"_screen_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  colorPickerUnderscorescreenInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerUnderscorescreenPickPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method screenPickPressed(self: ColorPicker) =
  if isNil(colorPickerUnderscorescreenPickPressedMethodBind):
    colorPickerUnderscorescreenPickPressedMethodBind = getMethod(
        cstring"ColorPicker", cstring"_screen_pick_pressed")
  var ptrCallRet: pointer
  colorPickerUnderscorescreenPickPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscoretextTypeToggledMethodBind {.threadvar.}: ptr GodotMethodBind
method textTypeToggled(self: ColorPicker) =
  if isNil(colorPickerUnderscoretextTypeToggledMethodBind):
    colorPickerUnderscoretextTypeToggledMethodBind = getMethod(
        cstring"ColorPicker", cstring"_text_type_toggled")
  var ptrCallRet: pointer
  colorPickerUnderscoretextTypeToggledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscoreupdatePresetsMethodBind {.threadvar.}: ptr GodotMethodBind
method updatePresets(self: ColorPicker) =
  if isNil(colorPickerUnderscoreupdatePresetsMethodBind):
    colorPickerUnderscoreupdatePresetsMethodBind = getMethod(
        cstring"ColorPicker", cstring"_update_presets")
  var ptrCallRet: pointer
  colorPickerUnderscoreupdatePresetsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerUnderscoreuvInputMethodBind {.threadvar.}: ptr GodotMethodBind
method uvInput(self: ColorPicker; arg0: InputEvent) =
  if isNil(colorPickerUnderscoreuvInputMethodBind):
    colorPickerUnderscoreuvInputMethodBind = getMethod(cstring"ColorPicker",
        cstring"_uv_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  colorPickerUnderscoreuvInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerUnderscorevalueChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method valueChanged(self: ColorPicker; arg0: float64) =
  if isNil(colorPickerUnderscorevalueChangedMethodBind):
    colorPickerUnderscorevalueChangedMethodBind = getMethod(cstring"ColorPicker",
        cstring"_value_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  colorPickerUnderscorevalueChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerUnderscorewInputMethodBind {.threadvar.}: ptr GodotMethodBind
method wInput(self: ColorPicker; arg0: InputEvent) =
  if isNil(colorPickerUnderscorewInputMethodBind):
    colorPickerUnderscorewInputMethodBind = getMethod(cstring"ColorPicker",
        cstring"_w_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  colorPickerUnderscorewInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerAddPresetMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPreset(self: ColorPicker; color: Color) =
  if isNil(colorPickerAddPresetMethodBind):
    colorPickerAddPresetMethodBind = getMethod(cstring"ColorPicker",
        cstring"add_preset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(color)
  var ptrCallRet: pointer
  colorPickerAddPresetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var colorPickerErasePresetMethodBind {.threadvar.}: ptr GodotMethodBind
proc erasePreset(self: ColorPicker; color: Color) =
  if isNil(colorPickerErasePresetMethodBind):
    colorPickerErasePresetMethodBind = getMethod(cstring"ColorPicker",
        cstring"erase_preset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(color)
  var ptrCallRet: pointer
  colorPickerErasePresetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var colorPickerGetPresetsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPresets(self: ColorPicker): PoolColorArray =
  if isNil(colorPickerGetPresetsMethodBind):
    colorPickerGetPresetsMethodBind = getMethod(cstring"ColorPicker",
        cstring"get_presets")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolColorArray
  ptrCallRet = addr(ptrCallVal)
  colorPickerGetPresetsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolColorArray(ptrCallVal)
