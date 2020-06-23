
import
  godot, godottypes, godotinternal, range

export
  godottypes, range

proc flat*(self: EditorSpinSlider): bool {.gcsafe, locks: 0.}
proc `flat=`*(self: EditorSpinSlider; val: bool) {.gcsafe, locks: 0.}
proc label*(self: EditorSpinSlider): string {.gcsafe, locks: 0.}
proc `label=`*(self: EditorSpinSlider; val: string) {.gcsafe, locks: 0.}
proc readOnly*(self: EditorSpinSlider): bool {.gcsafe, locks: 0.}
proc `readOnly=`*(self: EditorSpinSlider; val: bool) {.gcsafe, locks: 0.}
method grabberGuiInput*(self: EditorSpinSlider; arg0: InputEvent) {.gcsafe, locks: 0,
    base.}
method grabberMouseEntered*(self: EditorSpinSlider) {.gcsafe, locks: 0, base.}
method grabberMouseExited*(self: EditorSpinSlider) {.gcsafe, locks: 0, base.}
method guiInput*(self: EditorSpinSlider; event: InputEvent) {.gcsafe, locks: 0.}
method valueFocusExited*(self: EditorSpinSlider) {.gcsafe, locks: 0, base.}
method valueInputClosed*(self: EditorSpinSlider) {.gcsafe, locks: 0, base.}
method valueInputEntered*(self: EditorSpinSlider; arg0: string) {.gcsafe, locks: 0, base.}
var editorSpinSliderIsFlatMethodBind {.threadvar.}: ptr GodotMethodBind
proc flat(self: EditorSpinSlider): bool =
  if isNil(editorSpinSliderIsFlatMethodBind):
    editorSpinSliderIsFlatMethodBind = getMethod(cstring"EditorSpinSlider",
        cstring"is_flat")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSpinSliderIsFlatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorSpinSliderSetFlatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flat=`(self: EditorSpinSlider; val: bool) =
  if isNil(editorSpinSliderSetFlatMethodBind):
    editorSpinSliderSetFlatMethodBind = getMethod(cstring"EditorSpinSlider",
        cstring"set_flat")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorSpinSliderSetFlatMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorSpinSliderGetLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc label(self: EditorSpinSlider): string =
  if isNil(editorSpinSliderGetLabelMethodBind):
    editorSpinSliderGetLabelMethodBind = getMethod(cstring"EditorSpinSlider",
        cstring"get_label")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorSpinSliderGetLabelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorSpinSliderSetLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `label=`(self: EditorSpinSlider; val: string) =
  if isNil(editorSpinSliderSetLabelMethodBind):
    editorSpinSliderSetLabelMethodBind = getMethod(cstring"EditorSpinSlider",
        cstring"set_label")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorSpinSliderSetLabelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var editorSpinSliderIsReadOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc readOnly(self: EditorSpinSlider): bool =
  if isNil(editorSpinSliderIsReadOnlyMethodBind):
    editorSpinSliderIsReadOnlyMethodBind = getMethod(cstring"EditorSpinSlider",
        cstring"is_read_only")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSpinSliderIsReadOnlyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorSpinSliderSetReadOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `readOnly=`(self: EditorSpinSlider; val: bool) =
  if isNil(editorSpinSliderSetReadOnlyMethodBind):
    editorSpinSliderSetReadOnlyMethodBind = getMethod(cstring"EditorSpinSlider",
        cstring"set_read_only")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorSpinSliderSetReadOnlyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpinSliderUnderscoregrabberGuiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method grabberGuiInput(self: EditorSpinSlider; arg0: InputEvent) =
  if isNil(editorSpinSliderUnderscoregrabberGuiInputMethodBind):
    editorSpinSliderUnderscoregrabberGuiInputMethodBind = getMethod(
        cstring"EditorSpinSlider", cstring"_grabber_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSpinSliderUnderscoregrabberGuiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpinSliderUnderscoregrabberMouseEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method grabberMouseEntered(self: EditorSpinSlider) =
  if isNil(editorSpinSliderUnderscoregrabberMouseEnteredMethodBind):
    editorSpinSliderUnderscoregrabberMouseEnteredMethodBind = getMethod(
        cstring"EditorSpinSlider", cstring"_grabber_mouse_entered")
  var ptrCallRet: pointer
  editorSpinSliderUnderscoregrabberMouseEnteredMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorSpinSliderUnderscoregrabberMouseExitedMethodBind {.threadvar.}: ptr GodotMethodBind
method grabberMouseExited(self: EditorSpinSlider) =
  if isNil(editorSpinSliderUnderscoregrabberMouseExitedMethodBind):
    editorSpinSliderUnderscoregrabberMouseExitedMethodBind = getMethod(
        cstring"EditorSpinSlider", cstring"_grabber_mouse_exited")
  var ptrCallRet: pointer
  editorSpinSliderUnderscoregrabberMouseExitedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorSpinSliderUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: EditorSpinSlider; event: InputEvent) =
  if isNil(editorSpinSliderUnderscoreguiInputMethodBind):
    editorSpinSliderUnderscoreguiInputMethodBind = getMethod(
        cstring"EditorSpinSlider", cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSpinSliderUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpinSliderUnderscorevalueFocusExitedMethodBind {.threadvar.}: ptr GodotMethodBind
method valueFocusExited(self: EditorSpinSlider) =
  if isNil(editorSpinSliderUnderscorevalueFocusExitedMethodBind):
    editorSpinSliderUnderscorevalueFocusExitedMethodBind = getMethod(
        cstring"EditorSpinSlider", cstring"_value_focus_exited")
  var ptrCallRet: pointer
  editorSpinSliderUnderscorevalueFocusExitedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorSpinSliderUnderscorevalueInputClosedMethodBind {.threadvar.}: ptr GodotMethodBind
method valueInputClosed(self: EditorSpinSlider) =
  if isNil(editorSpinSliderUnderscorevalueInputClosedMethodBind):
    editorSpinSliderUnderscorevalueInputClosedMethodBind = getMethod(
        cstring"EditorSpinSlider", cstring"_value_input_closed")
  var ptrCallRet: pointer
  editorSpinSliderUnderscorevalueInputClosedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorSpinSliderUnderscorevalueInputEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method valueInputEntered(self: EditorSpinSlider; arg0: string) =
  if isNil(editorSpinSliderUnderscorevalueInputEnteredMethodBind):
    editorSpinSliderUnderscorevalueInputEnteredMethodBind = getMethod(
        cstring"EditorSpinSlider", cstring"_value_input_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorSpinSliderUnderscorevalueInputEnteredMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
