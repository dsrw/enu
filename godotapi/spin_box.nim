
import
  godot, godottypes, godotinternal, range

export
  godottypes, range

proc align*(self: SpinBox): int64 {.gcsafe, locks: 0.}
proc `align=`*(self: SpinBox; val: int64) {.gcsafe, locks: 0.}
proc editable*(self: SpinBox): bool {.gcsafe, locks: 0.}
proc `editable=`*(self: SpinBox; val: bool) {.gcsafe, locks: 0.}
proc prefix*(self: SpinBox): string {.gcsafe, locks: 0.}
proc `prefix=`*(self: SpinBox; val: string) {.gcsafe, locks: 0.}
proc suffix*(self: SpinBox): string {.gcsafe, locks: 0.}
proc `suffix=`*(self: SpinBox; val: string) {.gcsafe, locks: 0.}
method guiInput*(self: SpinBox; event: InputEvent) {.gcsafe, locks: 0.}
method lineEditFocusExit*(self: SpinBox) {.gcsafe, locks: 0, base.}
method lineEditInput*(self: SpinBox; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method rangeClickTimeout*(self: SpinBox) {.gcsafe, locks: 0, base.}
method textEntered*(self: SpinBox; arg0: string) {.gcsafe, locks: 0, base.}
proc apply*(self: SpinBox) {.gcsafe, locks: 0.}
proc getLineEdit*(self: SpinBox): LineEdit {.gcsafe, locks: 0.}
var spinBoxGetAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc align(self: SpinBox): int64 =
  if isNil(spinBoxGetAlignMethodBind):
    spinBoxGetAlignMethodBind = getMethod(cstring"SpinBox", cstring"get_align")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spinBoxGetAlignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spinBoxSetAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc `align=`(self: SpinBox; val: int64) =
  if isNil(spinBoxSetAlignMethodBind):
    spinBoxSetAlignMethodBind = getMethod(cstring"SpinBox", cstring"set_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spinBoxSetAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var spinBoxIsEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc editable(self: SpinBox): bool =
  if isNil(spinBoxIsEditableMethodBind):
    spinBoxIsEditableMethodBind = getMethod(cstring"SpinBox", cstring"is_editable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spinBoxIsEditableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spinBoxSetEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editable=`(self: SpinBox; val: bool) =
  if isNil(spinBoxSetEditableMethodBind):
    spinBoxSetEditableMethodBind = getMethod(cstring"SpinBox",
        cstring"set_editable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spinBoxSetEditableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var spinBoxGetPrefixMethodBind {.threadvar.}: ptr GodotMethodBind
proc prefix(self: SpinBox): string =
  if isNil(spinBoxGetPrefixMethodBind):
    spinBoxGetPrefixMethodBind = getMethod(cstring"SpinBox", cstring"get_prefix")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  spinBoxGetPrefixMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var spinBoxSetPrefixMethodBind {.threadvar.}: ptr GodotMethodBind
proc `prefix=`(self: SpinBox; val: string) =
  if isNil(spinBoxSetPrefixMethodBind):
    spinBoxSetPrefixMethodBind = getMethod(cstring"SpinBox", cstring"set_prefix")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  spinBoxSetPrefixMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var spinBoxGetSuffixMethodBind {.threadvar.}: ptr GodotMethodBind
proc suffix(self: SpinBox): string =
  if isNil(spinBoxGetSuffixMethodBind):
    spinBoxGetSuffixMethodBind = getMethod(cstring"SpinBox", cstring"get_suffix")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  spinBoxGetSuffixMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var spinBoxSetSuffixMethodBind {.threadvar.}: ptr GodotMethodBind
proc `suffix=`(self: SpinBox; val: string) =
  if isNil(spinBoxSetSuffixMethodBind):
    spinBoxSetSuffixMethodBind = getMethod(cstring"SpinBox", cstring"set_suffix")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  spinBoxSetSuffixMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var spinBoxUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: SpinBox; event: InputEvent) =
  if isNil(spinBoxUnderscoreguiInputMethodBind):
    spinBoxUnderscoreguiInputMethodBind = getMethod(cstring"SpinBox",
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
  spinBoxUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spinBoxUnderscorelineEditFocusExitMethodBind {.threadvar.}: ptr GodotMethodBind
method lineEditFocusExit(self: SpinBox) =
  if isNil(spinBoxUnderscorelineEditFocusExitMethodBind):
    spinBoxUnderscorelineEditFocusExitMethodBind = getMethod(cstring"SpinBox",
        cstring"_line_edit_focus_exit")
  var ptrCallRet: pointer
  spinBoxUnderscorelineEditFocusExitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spinBoxUnderscorelineEditInputMethodBind {.threadvar.}: ptr GodotMethodBind
method lineEditInput(self: SpinBox; arg0: InputEvent) =
  if isNil(spinBoxUnderscorelineEditInputMethodBind):
    spinBoxUnderscorelineEditInputMethodBind = getMethod(cstring"SpinBox",
        cstring"_line_edit_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  spinBoxUnderscorelineEditInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spinBoxUnderscorerangeClickTimeoutMethodBind {.threadvar.}: ptr GodotMethodBind
method rangeClickTimeout(self: SpinBox) =
  if isNil(spinBoxUnderscorerangeClickTimeoutMethodBind):
    spinBoxUnderscorerangeClickTimeoutMethodBind = getMethod(cstring"SpinBox",
        cstring"_range_click_timeout")
  var ptrCallRet: pointer
  spinBoxUnderscorerangeClickTimeoutMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spinBoxUnderscoretextEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method textEntered(self: SpinBox; arg0: string) =
  if isNil(spinBoxUnderscoretextEnteredMethodBind):
    spinBoxUnderscoretextEnteredMethodBind = getMethod(cstring"SpinBox",
        cstring"_text_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  spinBoxUnderscoretextEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var spinBoxApplyMethodBind {.threadvar.}: ptr GodotMethodBind
proc apply(self: SpinBox) =
  if isNil(spinBoxApplyMethodBind):
    spinBoxApplyMethodBind = getMethod(cstring"SpinBox", cstring"apply")
  var ptrCallRet: pointer
  spinBoxApplyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spinBoxGetLineEditMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLineEdit(self: SpinBox): LineEdit =
  if isNil(spinBoxGetLineEditMethodBind):
    spinBoxGetLineEditMethodBind = getMethod(cstring"SpinBox",
        cstring"get_line_edit")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spinBoxGetLineEditMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
