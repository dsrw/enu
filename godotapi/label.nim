
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  ALIGN_CENTER* = 1'i64
  ALIGN_FILL* = 3'i64
  ALIGN_LEFT* = 0'i64
  ALIGN_RIGHT* = 2'i64
  VALIGN_BOTTOM* = 2'i64
  VALIGN_CENTER* = 1'i64
  VALIGN_FILL* = 3'i64
  VALIGN_TOP* = 0'i64
proc align*(self: Label): int64 {.gcsafe, locks: 0.}
proc `align=`*(self: Label; val: int64) {.gcsafe, locks: 0.}
proc autowrap*(self: Label): bool {.gcsafe, locks: 0.}
proc `autowrap=`*(self: Label; val: bool) {.gcsafe, locks: 0.}
proc clipText*(self: Label): bool {.gcsafe, locks: 0.}
proc `clipText=`*(self: Label; val: bool) {.gcsafe, locks: 0.}
proc linesSkipped*(self: Label): int64 {.gcsafe, locks: 0.}
proc `linesSkipped=`*(self: Label; val: int64) {.gcsafe, locks: 0.}
proc maxLinesVisible*(self: Label): int64 {.gcsafe, locks: 0.}
proc `maxLinesVisible=`*(self: Label; val: int64) {.gcsafe, locks: 0.}
proc percentVisible*(self: Label): float64 {.gcsafe, locks: 0.}
proc `percentVisible=`*(self: Label; val: float64) {.gcsafe, locks: 0.}
proc text*(self: Label): string {.gcsafe, locks: 0.}
proc `text=`*(self: Label; val: string) {.gcsafe, locks: 0.}
proc uppercase*(self: Label): bool {.gcsafe, locks: 0.}
proc `uppercase=`*(self: Label; val: bool) {.gcsafe, locks: 0.}
proc valign*(self: Label): int64 {.gcsafe, locks: 0.}
proc `valign=`*(self: Label; val: int64) {.gcsafe, locks: 0.}
proc visibleCharacters*(self: Label): int64 {.gcsafe, locks: 0.}
proc `visibleCharacters=`*(self: Label; val: int64) {.gcsafe, locks: 0.}
proc getLineCount*(self: Label): int64 {.gcsafe, locks: 0.}
proc getLineHeight*(self: Label): int64 {.gcsafe, locks: 0.}
proc getTotalCharacterCount*(self: Label): int64 {.gcsafe, locks: 0.}
proc getVisibleLineCount*(self: Label): int64 {.gcsafe, locks: 0.}
var labelGetAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc align(self: Label): int64 =
  if isNil(labelGetAlignMethodBind):
    labelGetAlignMethodBind = getMethod(cstring"Label", cstring"get_align")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetAlignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc `align=`(self: Label; val: int64) =
  if isNil(labelSetAlignMethodBind):
    labelSetAlignMethodBind = getMethod(cstring"Label", cstring"set_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var labelHasAutowrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc autowrap(self: Label): bool =
  if isNil(labelHasAutowrapMethodBind):
    labelHasAutowrapMethodBind = getMethod(cstring"Label", cstring"has_autowrap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelHasAutowrapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetAutowrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autowrap=`(self: Label; val: bool) =
  if isNil(labelSetAutowrapMethodBind):
    labelSetAutowrapMethodBind = getMethod(cstring"Label", cstring"set_autowrap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetAutowrapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var labelIsClippingTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc clipText(self: Label): bool =
  if isNil(labelIsClippingTextMethodBind):
    labelIsClippingTextMethodBind = getMethod(cstring"Label",
        cstring"is_clipping_text")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelIsClippingTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetClipTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `clipText=`(self: Label; val: bool) =
  if isNil(labelSetClipTextMethodBind):
    labelSetClipTextMethodBind = getMethod(cstring"Label", cstring"set_clip_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetClipTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var labelGetLinesSkippedMethodBind {.threadvar.}: ptr GodotMethodBind
proc linesSkipped(self: Label): int64 =
  if isNil(labelGetLinesSkippedMethodBind):
    labelGetLinesSkippedMethodBind = getMethod(cstring"Label",
        cstring"get_lines_skipped")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetLinesSkippedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetLinesSkippedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linesSkipped=`(self: Label; val: int64) =
  if isNil(labelSetLinesSkippedMethodBind):
    labelSetLinesSkippedMethodBind = getMethod(cstring"Label",
        cstring"set_lines_skipped")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetLinesSkippedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var labelGetMaxLinesVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxLinesVisible(self: Label): int64 =
  if isNil(labelGetMaxLinesVisibleMethodBind):
    labelGetMaxLinesVisibleMethodBind = getMethod(cstring"Label",
        cstring"get_max_lines_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetMaxLinesVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetMaxLinesVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxLinesVisible=`(self: Label; val: int64) =
  if isNil(labelSetMaxLinesVisibleMethodBind):
    labelSetMaxLinesVisibleMethodBind = getMethod(cstring"Label",
        cstring"set_max_lines_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetMaxLinesVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var labelGetPercentVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc percentVisible(self: Label): float64 =
  if isNil(labelGetPercentVisibleMethodBind):
    labelGetPercentVisibleMethodBind = getMethod(cstring"Label",
        cstring"get_percent_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetPercentVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetPercentVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `percentVisible=`(self: Label; val: float64) =
  if isNil(labelSetPercentVisibleMethodBind):
    labelSetPercentVisibleMethodBind = getMethod(cstring"Label",
        cstring"set_percent_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetPercentVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var labelGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc text(self: Label): string =
  if isNil(labelGetTextMethodBind):
    labelGetTextMethodBind = getMethod(cstring"Label", cstring"get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  labelGetTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var labelSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `text=`(self: Label; val: string) =
  if isNil(labelSetTextMethodBind):
    labelSetTextMethodBind = getMethod(cstring"Label", cstring"set_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  labelSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var labelIsUppercaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc uppercase(self: Label): bool =
  if isNil(labelIsUppercaseMethodBind):
    labelIsUppercaseMethodBind = getMethod(cstring"Label", cstring"is_uppercase")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelIsUppercaseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetUppercaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uppercase=`(self: Label; val: bool) =
  if isNil(labelSetUppercaseMethodBind):
    labelSetUppercaseMethodBind = getMethod(cstring"Label", cstring"set_uppercase")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetUppercaseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var labelGetValignMethodBind {.threadvar.}: ptr GodotMethodBind
proc valign(self: Label): int64 =
  if isNil(labelGetValignMethodBind):
    labelGetValignMethodBind = getMethod(cstring"Label", cstring"get_valign")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetValignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetValignMethodBind {.threadvar.}: ptr GodotMethodBind
proc `valign=`(self: Label; val: int64) =
  if isNil(labelSetValignMethodBind):
    labelSetValignMethodBind = getMethod(cstring"Label", cstring"set_valign")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetValignMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var labelGetVisibleCharactersMethodBind {.threadvar.}: ptr GodotMethodBind
proc visibleCharacters(self: Label): int64 =
  if isNil(labelGetVisibleCharactersMethodBind):
    labelGetVisibleCharactersMethodBind = getMethod(cstring"Label",
        cstring"get_visible_characters")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetVisibleCharactersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelSetVisibleCharactersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visibleCharacters=`(self: Label; val: int64) =
  if isNil(labelSetVisibleCharactersMethodBind):
    labelSetVisibleCharactersMethodBind = getMethod(cstring"Label",
        cstring"set_visible_characters")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  labelSetVisibleCharactersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var labelGetLineCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLineCount(self: Label): int64 =
  if isNil(labelGetLineCountMethodBind):
    labelGetLineCountMethodBind = getMethod(cstring"Label",
        cstring"get_line_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetLineCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelGetLineHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLineHeight(self: Label): int64 =
  if isNil(labelGetLineHeightMethodBind):
    labelGetLineHeightMethodBind = getMethod(cstring"Label",
        cstring"get_line_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetLineHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelGetTotalCharacterCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTotalCharacterCount(self: Label): int64 =
  if isNil(labelGetTotalCharacterCountMethodBind):
    labelGetTotalCharacterCountMethodBind = getMethod(cstring"Label",
        cstring"get_total_character_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetTotalCharacterCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var labelGetVisibleLineCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVisibleLineCount(self: Label): int64 =
  if isNil(labelGetVisibleLineCountMethodBind):
    labelGetVisibleLineCountMethodBind = getMethod(cstring"Label",
        cstring"get_visible_line_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  labelGetVisibleLineCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
