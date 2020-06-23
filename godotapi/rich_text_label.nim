
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  ALIGN_CENTER* = 1'i64
  ALIGN_FILL* = 3'i64
  ALIGN_LEFT* = 0'i64
  ALIGN_RIGHT* = 2'i64
  ITEM_ALIGN* = 8'i64
  ITEM_COLOR* = 5'i64
  ITEM_CUSTOMFX* = 18'i64
  ITEM_FADE* = 12'i64
  ITEM_FONT* = 4'i64
  ITEM_FRAME* = 0'i64
  ITEM_IMAGE* = 2'i64
  ITEM_INDENT* = 9'i64
  ITEM_LIST* = 10'i64
  ITEM_META* = 17'i64
  ITEM_NEWLINE* = 3'i64
  ITEM_RAINBOW* = 16'i64
  ITEM_SHAKE* = 13'i64
  ITEM_STRIKETHROUGH* = 7'i64
  ITEM_TABLE* = 11'i64
  ITEM_TEXT* = 1'i64
  ITEM_TORNADO* = 15'i64
  ITEM_UNDERLINE* = 6'i64
  ITEM_WAVE* = 14'i64
  LIST_DOTS* = 2'i64
  LIST_LETTERS* = 1'i64
  LIST_NUMBERS* = 0'i64
proc bbcodeEnabled*(self: RichTextLabel): bool {.gcsafe, locks: 0.}
proc `bbcodeEnabled=`*(self: RichTextLabel; val: bool) {.gcsafe, locks: 0.}
proc bbcodeText*(self: RichTextLabel): string {.gcsafe, locks: 0.}
proc `bbcodeText=`*(self: RichTextLabel; val: string) {.gcsafe, locks: 0.}
proc customEffects*(self: RichTextLabel): Array {.gcsafe, locks: 0.}
proc `customEffects=`*(self: RichTextLabel; val: Array) {.gcsafe, locks: 0.}
proc fitContentHeight*(self: RichTextLabel): bool {.gcsafe, locks: 0.}
proc `fitContentHeight=`*(self: RichTextLabel; val: bool) {.gcsafe, locks: 0.}
proc metaUnderlined*(self: RichTextLabel): bool {.gcsafe, locks: 0.}
proc `metaUnderlined=`*(self: RichTextLabel; val: bool) {.gcsafe, locks: 0.}
proc overrideSelectedFontColor*(self: RichTextLabel): bool {.gcsafe, locks: 0.}
proc `overrideSelectedFontColor=`*(self: RichTextLabel; val: bool) {.gcsafe, locks: 0.}
proc percentVisible*(self: RichTextLabel): float64 {.gcsafe, locks: 0.}
proc `percentVisible=`*(self: RichTextLabel; val: float64) {.gcsafe, locks: 0.}
proc scrollActive*(self: RichTextLabel): bool {.gcsafe, locks: 0.}
proc `scrollActive=`*(self: RichTextLabel; val: bool) {.gcsafe, locks: 0.}
proc scrollFollowing*(self: RichTextLabel): bool {.gcsafe, locks: 0.}
proc `scrollFollowing=`*(self: RichTextLabel; val: bool) {.gcsafe, locks: 0.}
proc selectionEnabled*(self: RichTextLabel): bool {.gcsafe, locks: 0.}
proc `selectionEnabled=`*(self: RichTextLabel; val: bool) {.gcsafe, locks: 0.}
proc tabSize*(self: RichTextLabel): int64 {.gcsafe, locks: 0.}
proc `tabSize=`*(self: RichTextLabel; val: int64) {.gcsafe, locks: 0.}
proc text*(self: RichTextLabel): string {.gcsafe, locks: 0.}
proc `text=`*(self: RichTextLabel; val: string) {.gcsafe, locks: 0.}
proc visibleCharacters*(self: RichTextLabel): int64 {.gcsafe, locks: 0.}
proc `visibleCharacters=`*(self: RichTextLabel; val: int64) {.gcsafe, locks: 0.}
method guiInput*(self: RichTextLabel; event: InputEvent) {.gcsafe, locks: 0.}
method scrollChanged*(self: RichTextLabel; arg0: float64) {.gcsafe, locks: 0, base.}
proc addImage*(self: RichTextLabel; image: Texture; width: int64 = 0'i64;
              height: int64 = 0'i64) {.gcsafe, locks: 0.}
proc addText*(self: RichTextLabel; text: string) {.gcsafe, locks: 0.}
proc appendBbcode*(self: RichTextLabel; bbcode: string): Error {.gcsafe, locks: 0.}
proc clear*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc getContentHeight*(self: RichTextLabel): int64 {.gcsafe, locks: 0.}
proc getLineCount*(self: RichTextLabel): int64 {.gcsafe, locks: 0.}
proc getTotalCharacterCount*(self: RichTextLabel): int64 {.gcsafe, locks: 0.}
proc getVScroll*(self: RichTextLabel): VScrollBar {.gcsafe, locks: 0.}
proc getVisibleLineCount*(self: RichTextLabel): int64 {.gcsafe, locks: 0.}
proc installEffect*(self: RichTextLabel; effect: Variant) {.gcsafe, locks: 0.}
proc newline*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc parseBbcode*(self: RichTextLabel; bbcode: string): Error {.gcsafe, locks: 0.}
proc parseExpressionsForValues*(self: RichTextLabel; expressions: PoolStringArray): Dictionary {.
    gcsafe, locks: 0.}
proc pop*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushAlign*(self: RichTextLabel; align: int64) {.gcsafe, locks: 0.}
proc pushBold*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushBoldItalics*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushCell*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushColor*(self: RichTextLabel; color: Color) {.gcsafe, locks: 0.}
proc pushFont*(self: RichTextLabel; font: Font) {.gcsafe, locks: 0.}
proc pushIndent*(self: RichTextLabel; level: int64) {.gcsafe, locks: 0.}
proc pushItalics*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushList*(self: RichTextLabel; typee: int64) {.gcsafe, locks: 0.}
proc pushMeta*(self: RichTextLabel; data: Variant) {.gcsafe, locks: 0.}
proc pushMono*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushNormal*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushStrikethrough*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc pushTable*(self: RichTextLabel; columns: int64) {.gcsafe, locks: 0.}
proc pushUnderline*(self: RichTextLabel) {.gcsafe, locks: 0.}
proc removeLine*(self: RichTextLabel; line: int64): bool {.gcsafe, locks: 0.}
proc scrollToLine*(self: RichTextLabel; line: int64) {.gcsafe, locks: 0.}
proc setTableColumnExpand*(self: RichTextLabel; column: int64; expand: bool;
                          ratio: int64) {.gcsafe, locks: 0.}
var richTextLabelIsUsingBbcodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bbcodeEnabled(self: RichTextLabel): bool =
  if isNil(richTextLabelIsUsingBbcodeMethodBind):
    richTextLabelIsUsingBbcodeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"is_using_bbcode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelIsUsingBbcodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelSetUseBbcodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bbcodeEnabled=`(self: RichTextLabel; val: bool) =
  if isNil(richTextLabelSetUseBbcodeMethodBind):
    richTextLabelSetUseBbcodeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_use_bbcode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetUseBbcodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelGetBbcodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bbcodeText(self: RichTextLabel): string =
  if isNil(richTextLabelGetBbcodeMethodBind):
    richTextLabelGetBbcodeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_bbcode")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  richTextLabelGetBbcodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var richTextLabelSetBbcodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bbcodeText=`(self: RichTextLabel; val: string) =
  if isNil(richTextLabelSetBbcodeMethodBind):
    richTextLabelSetBbcodeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_bbcode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  richTextLabelSetBbcodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var richTextLabelGetEffectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc customEffects(self: RichTextLabel): Array =
  if isNil(richTextLabelGetEffectsMethodBind):
    richTextLabelGetEffectsMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_effects")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  richTextLabelGetEffectsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var richTextLabelSetEffectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customEffects=`(self: RichTextLabel; val: Array) =
  if isNil(richTextLabelSetEffectsMethodBind):
    richTextLabelSetEffectsMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_effects")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  richTextLabelSetEffectsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelIsFitContentHeightEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc fitContentHeight(self: RichTextLabel): bool =
  if isNil(richTextLabelIsFitContentHeightEnabledMethodBind):
    richTextLabelIsFitContentHeightEnabledMethodBind = getMethod(
        cstring"RichTextLabel", cstring"is_fit_content_height_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelIsFitContentHeightEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelSetFitContentHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fitContentHeight=`(self: RichTextLabel; val: bool) =
  if isNil(richTextLabelSetFitContentHeightMethodBind):
    richTextLabelSetFitContentHeightMethodBind = getMethod(
        cstring"RichTextLabel", cstring"set_fit_content_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetFitContentHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelIsMetaUnderlinedMethodBind {.threadvar.}: ptr GodotMethodBind
proc metaUnderlined(self: RichTextLabel): bool =
  if isNil(richTextLabelIsMetaUnderlinedMethodBind):
    richTextLabelIsMetaUnderlinedMethodBind = getMethod(cstring"RichTextLabel",
        cstring"is_meta_underlined")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelIsMetaUnderlinedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelSetMetaUnderlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc `metaUnderlined=`(self: RichTextLabel; val: bool) =
  if isNil(richTextLabelSetMetaUnderlineMethodBind):
    richTextLabelSetMetaUnderlineMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_meta_underline")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetMetaUnderlineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelIsOverridingSelectedFontColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc overrideSelectedFontColor(self: RichTextLabel): bool =
  if isNil(richTextLabelIsOverridingSelectedFontColorMethodBind):
    richTextLabelIsOverridingSelectedFontColorMethodBind = getMethod(
        cstring"RichTextLabel", cstring"is_overriding_selected_font_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelIsOverridingSelectedFontColorMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var richTextLabelSetOverrideSelectedFontColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `overrideSelectedFontColor=`(self: RichTextLabel; val: bool) =
  if isNil(richTextLabelSetOverrideSelectedFontColorMethodBind):
    richTextLabelSetOverrideSelectedFontColorMethodBind = getMethod(
        cstring"RichTextLabel", cstring"set_override_selected_font_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetOverrideSelectedFontColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelGetPercentVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc percentVisible(self: RichTextLabel): float64 =
  if isNil(richTextLabelGetPercentVisibleMethodBind):
    richTextLabelGetPercentVisibleMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_percent_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelGetPercentVisibleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelSetPercentVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `percentVisible=`(self: RichTextLabel; val: float64) =
  if isNil(richTextLabelSetPercentVisibleMethodBind):
    richTextLabelSetPercentVisibleMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_percent_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetPercentVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelIsScrollActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollActive(self: RichTextLabel): bool =
  if isNil(richTextLabelIsScrollActiveMethodBind):
    richTextLabelIsScrollActiveMethodBind = getMethod(cstring"RichTextLabel",
        cstring"is_scroll_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelIsScrollActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelSetScrollActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollActive=`(self: RichTextLabel; val: bool) =
  if isNil(richTextLabelSetScrollActiveMethodBind):
    richTextLabelSetScrollActiveMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_scroll_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetScrollActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelIsScrollFollowingMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollFollowing(self: RichTextLabel): bool =
  if isNil(richTextLabelIsScrollFollowingMethodBind):
    richTextLabelIsScrollFollowingMethodBind = getMethod(cstring"RichTextLabel",
        cstring"is_scroll_following")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelIsScrollFollowingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelSetScrollFollowMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollFollowing=`(self: RichTextLabel; val: bool) =
  if isNil(richTextLabelSetScrollFollowMethodBind):
    richTextLabelSetScrollFollowMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_scroll_follow")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetScrollFollowMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelIsSelectionEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectionEnabled(self: RichTextLabel): bool =
  if isNil(richTextLabelIsSelectionEnabledMethodBind):
    richTextLabelIsSelectionEnabledMethodBind = getMethod(cstring"RichTextLabel",
        cstring"is_selection_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelIsSelectionEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelSetSelectionEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `selectionEnabled=`(self: RichTextLabel; val: bool) =
  if isNil(richTextLabelSetSelectionEnabledMethodBind):
    richTextLabelSetSelectionEnabledMethodBind = getMethod(
        cstring"RichTextLabel", cstring"set_selection_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetSelectionEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelGetTabSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc tabSize(self: RichTextLabel): int64 =
  if isNil(richTextLabelGetTabSizeMethodBind):
    richTextLabelGetTabSizeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_tab_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelGetTabSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelSetTabSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tabSize=`(self: RichTextLabel; val: int64) =
  if isNil(richTextLabelSetTabSizeMethodBind):
    richTextLabelSetTabSizeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_tab_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetTabSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc text(self: RichTextLabel): string =
  if isNil(richTextLabelGetTextMethodBind):
    richTextLabelGetTextMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  richTextLabelGetTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var richTextLabelSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `text=`(self: RichTextLabel; val: string) =
  if isNil(richTextLabelSetTextMethodBind):
    richTextLabelSetTextMethodBind = getMethod(cstring"RichTextLabel",
        cstring"set_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  richTextLabelSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var richTextLabelGetVisibleCharactersMethodBind {.threadvar.}: ptr GodotMethodBind
proc visibleCharacters(self: RichTextLabel): int64 =
  if isNil(richTextLabelGetVisibleCharactersMethodBind):
    richTextLabelGetVisibleCharactersMethodBind = getMethod(
        cstring"RichTextLabel", cstring"get_visible_characters")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelGetVisibleCharactersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelSetVisibleCharactersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visibleCharacters=`(self: RichTextLabel; val: int64) =
  if isNil(richTextLabelSetVisibleCharactersMethodBind):
    richTextLabelSetVisibleCharactersMethodBind = getMethod(
        cstring"RichTextLabel", cstring"set_visible_characters")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  richTextLabelSetVisibleCharactersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: RichTextLabel; event: InputEvent) =
  if isNil(richTextLabelUnderscoreguiInputMethodBind):
    richTextLabelUnderscoreguiInputMethodBind = getMethod(cstring"RichTextLabel",
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
  richTextLabelUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelUnderscorescrollChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method scrollChanged(self: RichTextLabel; arg0: float64) =
  if isNil(richTextLabelUnderscorescrollChangedMethodBind):
    richTextLabelUnderscorescrollChangedMethodBind = getMethod(
        cstring"RichTextLabel", cstring"_scroll_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  richTextLabelUnderscorescrollChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelAddImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc addImage(self: RichTextLabel; image: Texture; width: int64 = 0'i64;
             height: int64 = 0'i64) =
  if isNil(richTextLabelAddImageMethodBind):
    richTextLabelAddImageMethodBind = getMethod(cstring"RichTextLabel",
        cstring"add_image")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(width)
  argsToPassToGodot[][2] = unsafeAddr(height)
  var ptrCallRet: pointer
  richTextLabelAddImageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelAddTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc addText(self: RichTextLabel; text: string) =
  if isNil(richTextLabelAddTextMethodBind):
    richTextLabelAddTextMethodBind = getMethod(cstring"RichTextLabel",
        cstring"add_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  richTextLabelAddTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var richTextLabelAppendBbcodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc appendBbcode(self: RichTextLabel; bbcode: string): Error =
  if isNil(richTextLabelAppendBbcodeMethodBind):
    richTextLabelAppendBbcodeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"append_bbcode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(bbcode)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  richTextLabelAppendBbcodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var richTextLabelClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: RichTextLabel) =
  if isNil(richTextLabelClearMethodBind):
    richTextLabelClearMethodBind = getMethod(cstring"RichTextLabel",
        cstring"clear")
  var ptrCallRet: pointer
  richTextLabelClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelGetContentHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getContentHeight(self: RichTextLabel): int64 =
  if isNil(richTextLabelGetContentHeightMethodBind):
    richTextLabelGetContentHeightMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_content_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelGetContentHeightMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelGetLineCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLineCount(self: RichTextLabel): int64 =
  if isNil(richTextLabelGetLineCountMethodBind):
    richTextLabelGetLineCountMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_line_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelGetLineCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelGetTotalCharacterCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTotalCharacterCount(self: RichTextLabel): int64 =
  if isNil(richTextLabelGetTotalCharacterCountMethodBind):
    richTextLabelGetTotalCharacterCountMethodBind = getMethod(
        cstring"RichTextLabel", cstring"get_total_character_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelGetTotalCharacterCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelGetVScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVScroll(self: RichTextLabel): VScrollBar =
  if isNil(richTextLabelGetVScrollMethodBind):
    richTextLabelGetVScrollMethodBind = getMethod(cstring"RichTextLabel",
        cstring"get_v_scroll")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  richTextLabelGetVScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var richTextLabelGetVisibleLineCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVisibleLineCount(self: RichTextLabel): int64 =
  if isNil(richTextLabelGetVisibleLineCountMethodBind):
    richTextLabelGetVisibleLineCountMethodBind = getMethod(
        cstring"RichTextLabel", cstring"get_visible_line_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelGetVisibleLineCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelInstallEffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc installEffect(self: RichTextLabel; effect: Variant) =
  if isNil(richTextLabelInstallEffectMethodBind):
    richTextLabelInstallEffectMethodBind = getMethod(cstring"RichTextLabel",
        cstring"install_effect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = effect.godotVariant
  var ptrCallRet: pointer
  richTextLabelInstallEffectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelNewlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc newline(self: RichTextLabel) =
  if isNil(richTextLabelNewlineMethodBind):
    richTextLabelNewlineMethodBind = getMethod(cstring"RichTextLabel",
        cstring"newline")
  var ptrCallRet: pointer
  richTextLabelNewlineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelParseBbcodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc parseBbcode(self: RichTextLabel; bbcode: string): Error =
  if isNil(richTextLabelParseBbcodeMethodBind):
    richTextLabelParseBbcodeMethodBind = getMethod(cstring"RichTextLabel",
        cstring"parse_bbcode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(bbcode)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  richTextLabelParseBbcodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var richTextLabelParseExpressionsForValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc parseExpressionsForValues(self: RichTextLabel; expressions: PoolStringArray): Dictionary =
  if isNil(richTextLabelParseExpressionsForValuesMethodBind):
    richTextLabelParseExpressionsForValuesMethodBind = getMethod(
        cstring"RichTextLabel", cstring"parse_expressions_for_values")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = expressions.godotPoolStringArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  richTextLabelParseExpressionsForValuesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var richTextLabelPopMethodBind {.threadvar.}: ptr GodotMethodBind
proc pop(self: RichTextLabel) =
  if isNil(richTextLabelPopMethodBind):
    richTextLabelPopMethodBind = getMethod(cstring"RichTextLabel", cstring"pop")
  var ptrCallRet: pointer
  richTextLabelPopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelPushAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushAlign(self: RichTextLabel; align: int64) =
  if isNil(richTextLabelPushAlignMethodBind):
    richTextLabelPushAlignMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(align)
  var ptrCallRet: pointer
  richTextLabelPushAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelPushBoldMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushBold(self: RichTextLabel) =
  if isNil(richTextLabelPushBoldMethodBind):
    richTextLabelPushBoldMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_bold")
  var ptrCallRet: pointer
  richTextLabelPushBoldMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelPushBoldItalicsMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushBoldItalics(self: RichTextLabel) =
  if isNil(richTextLabelPushBoldItalicsMethodBind):
    richTextLabelPushBoldItalicsMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_bold_italics")
  var ptrCallRet: pointer
  richTextLabelPushBoldItalicsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelPushCellMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushCell(self: RichTextLabel) =
  if isNil(richTextLabelPushCellMethodBind):
    richTextLabelPushCellMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_cell")
  var ptrCallRet: pointer
  richTextLabelPushCellMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelPushColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushColor(self: RichTextLabel; color: Color) =
  if isNil(richTextLabelPushColorMethodBind):
    richTextLabelPushColorMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(color)
  var ptrCallRet: pointer
  richTextLabelPushColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelPushFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushFont(self: RichTextLabel; font: Font) =
  if isNil(richTextLabelPushFontMethodBind):
    richTextLabelPushFontMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_font")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not font.isNil:
    font.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  richTextLabelPushFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelPushIndentMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushIndent(self: RichTextLabel; level: int64) =
  if isNil(richTextLabelPushIndentMethodBind):
    richTextLabelPushIndentMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_indent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(level)
  var ptrCallRet: pointer
  richTextLabelPushIndentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelPushItalicsMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushItalics(self: RichTextLabel) =
  if isNil(richTextLabelPushItalicsMethodBind):
    richTextLabelPushItalicsMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_italics")
  var ptrCallRet: pointer
  richTextLabelPushItalicsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelPushListMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushList(self: RichTextLabel; typee: int64) =
  if isNil(richTextLabelPushListMethodBind):
    richTextLabelPushListMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  richTextLabelPushListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelPushMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushMeta(self: RichTextLabel; data: Variant) =
  if isNil(richTextLabelPushMetaMethodBind):
    richTextLabelPushMetaMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_meta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = data.godotVariant
  var ptrCallRet: pointer
  richTextLabelPushMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelPushMonoMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushMono(self: RichTextLabel) =
  if isNil(richTextLabelPushMonoMethodBind):
    richTextLabelPushMonoMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_mono")
  var ptrCallRet: pointer
  richTextLabelPushMonoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelPushNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushNormal(self: RichTextLabel) =
  if isNil(richTextLabelPushNormalMethodBind):
    richTextLabelPushNormalMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_normal")
  var ptrCallRet: pointer
  richTextLabelPushNormalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelPushStrikethroughMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushStrikethrough(self: RichTextLabel) =
  if isNil(richTextLabelPushStrikethroughMethodBind):
    richTextLabelPushStrikethroughMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_strikethrough")
  var ptrCallRet: pointer
  richTextLabelPushStrikethroughMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var richTextLabelPushTableMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushTable(self: RichTextLabel; columns: int64) =
  if isNil(richTextLabelPushTableMethodBind):
    richTextLabelPushTableMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_table")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(columns)
  var ptrCallRet: pointer
  richTextLabelPushTableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelPushUnderlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc pushUnderline(self: RichTextLabel) =
  if isNil(richTextLabelPushUnderlineMethodBind):
    richTextLabelPushUnderlineMethodBind = getMethod(cstring"RichTextLabel",
        cstring"push_underline")
  var ptrCallRet: pointer
  richTextLabelPushUnderlineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var richTextLabelRemoveLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeLine(self: RichTextLabel; line: int64): bool =
  if isNil(richTextLabelRemoveLineMethodBind):
    richTextLabelRemoveLineMethodBind = getMethod(cstring"RichTextLabel",
        cstring"remove_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextLabelRemoveLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var richTextLabelScrollToLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollToLine(self: RichTextLabel; line: int64) =
  if isNil(richTextLabelScrollToLineMethodBind):
    richTextLabelScrollToLineMethodBind = getMethod(cstring"RichTextLabel",
        cstring"scroll_to_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(line)
  var ptrCallRet: pointer
  richTextLabelScrollToLineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var richTextLabelSetTableColumnExpandMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTableColumnExpand(self: RichTextLabel; column: int64; expand: bool;
                         ratio: int64) =
  if isNil(richTextLabelSetTableColumnExpandMethodBind):
    richTextLabelSetTableColumnExpandMethodBind = getMethod(
        cstring"RichTextLabel", cstring"set_table_column_expand")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(expand)
  argsToPassToGodot[][2] = unsafeAddr(ratio)
  var ptrCallRet: pointer
  richTextLabelSetTableColumnExpandMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
