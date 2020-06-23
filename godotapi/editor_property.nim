
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

proc checkable*(self: EditorProperty): bool {.gcsafe, locks: 0.}
proc `checkable=`*(self: EditorProperty; val: bool) {.gcsafe, locks: 0.}
proc checked*(self: EditorProperty): bool {.gcsafe, locks: 0.}
proc `checked=`*(self: EditorProperty; val: bool) {.gcsafe, locks: 0.}
proc drawRed*(self: EditorProperty): bool {.gcsafe, locks: 0.}
proc `drawRed=`*(self: EditorProperty; val: bool) {.gcsafe, locks: 0.}
proc keying*(self: EditorProperty): bool {.gcsafe, locks: 0.}
proc `keying=`*(self: EditorProperty; val: bool) {.gcsafe, locks: 0.}
proc label*(self: EditorProperty): string {.gcsafe, locks: 0.}
proc `label=`*(self: EditorProperty; val: string) {.gcsafe, locks: 0.}
proc readOnly*(self: EditorProperty): bool {.gcsafe, locks: 0.}
proc `readOnly=`*(self: EditorProperty; val: bool) {.gcsafe, locks: 0.}
method focusableFocused*(self: EditorProperty; arg0: int64) {.gcsafe, locks: 0, base.}
method guiInput*(self: EditorProperty; event: InputEvent) {.gcsafe, locks: 0.}
proc addFocusable*(self: EditorProperty; control: Control) {.gcsafe, locks: 0.}
proc emitChanged*(self: EditorProperty; property: string; value: Variant;
                 field: string = ""; changing: bool = false) {.gcsafe, locks: 0.}
proc getEditedObject*(self: EditorProperty): Object {.gcsafe, locks: 0.}
proc getEditedProperty*(self: EditorProperty): string {.gcsafe, locks: 0.}
proc getTooltipText*(self: EditorProperty): string {.gcsafe, locks: 0.}
proc setBottomEditor*(self: EditorProperty; editor: Control) {.gcsafe, locks: 0.}
method updateProperty*(self: EditorProperty) {.gcsafe, locks: 0, base.}
var editorPropertyIsCheckableMethodBind {.threadvar.}: ptr GodotMethodBind
proc checkable(self: EditorProperty): bool =
  if isNil(editorPropertyIsCheckableMethodBind):
    editorPropertyIsCheckableMethodBind = getMethod(cstring"EditorProperty",
        cstring"is_checkable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPropertyIsCheckableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPropertySetCheckableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `checkable=`(self: EditorProperty; val: bool) =
  if isNil(editorPropertySetCheckableMethodBind):
    editorPropertySetCheckableMethodBind = getMethod(cstring"EditorProperty",
        cstring"set_checkable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorPropertySetCheckableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPropertyIsCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
proc checked(self: EditorProperty): bool =
  if isNil(editorPropertyIsCheckedMethodBind):
    editorPropertyIsCheckedMethodBind = getMethod(cstring"EditorProperty",
        cstring"is_checked")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPropertyIsCheckedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPropertySetCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `checked=`(self: EditorProperty; val: bool) =
  if isNil(editorPropertySetCheckedMethodBind):
    editorPropertySetCheckedMethodBind = getMethod(cstring"EditorProperty",
        cstring"set_checked")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorPropertySetCheckedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorPropertyIsDrawRedMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawRed(self: EditorProperty): bool =
  if isNil(editorPropertyIsDrawRedMethodBind):
    editorPropertyIsDrawRedMethodBind = getMethod(cstring"EditorProperty",
        cstring"is_draw_red")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPropertyIsDrawRedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPropertySetDrawRedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawRed=`(self: EditorProperty; val: bool) =
  if isNil(editorPropertySetDrawRedMethodBind):
    editorPropertySetDrawRedMethodBind = getMethod(cstring"EditorProperty",
        cstring"set_draw_red")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorPropertySetDrawRedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorPropertyIsKeyingMethodBind {.threadvar.}: ptr GodotMethodBind
proc keying(self: EditorProperty): bool =
  if isNil(editorPropertyIsKeyingMethodBind):
    editorPropertyIsKeyingMethodBind = getMethod(cstring"EditorProperty",
        cstring"is_keying")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPropertyIsKeyingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPropertySetKeyingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `keying=`(self: EditorProperty; val: bool) =
  if isNil(editorPropertySetKeyingMethodBind):
    editorPropertySetKeyingMethodBind = getMethod(cstring"EditorProperty",
        cstring"set_keying")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorPropertySetKeyingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorPropertyGetLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc label(self: EditorProperty): string =
  if isNil(editorPropertyGetLabelMethodBind):
    editorPropertyGetLabelMethodBind = getMethod(cstring"EditorProperty",
        cstring"get_label")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorPropertyGetLabelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorPropertySetLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `label=`(self: EditorProperty; val: string) =
  if isNil(editorPropertySetLabelMethodBind):
    editorPropertySetLabelMethodBind = getMethod(cstring"EditorProperty",
        cstring"set_label")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorPropertySetLabelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var editorPropertyIsReadOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc readOnly(self: EditorProperty): bool =
  if isNil(editorPropertyIsReadOnlyMethodBind):
    editorPropertyIsReadOnlyMethodBind = getMethod(cstring"EditorProperty",
        cstring"is_read_only")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPropertyIsReadOnlyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPropertySetReadOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `readOnly=`(self: EditorProperty; val: bool) =
  if isNil(editorPropertySetReadOnlyMethodBind):
    editorPropertySetReadOnlyMethodBind = getMethod(cstring"EditorProperty",
        cstring"set_read_only")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorPropertySetReadOnlyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPropertyUnderscorefocusableFocusedMethodBind {.threadvar.}: ptr GodotMethodBind
method focusableFocused(self: EditorProperty; arg0: int64) =
  if isNil(editorPropertyUnderscorefocusableFocusedMethodBind):
    editorPropertyUnderscorefocusableFocusedMethodBind = getMethod(
        cstring"EditorProperty", cstring"_focusable_focused")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorPropertyUnderscorefocusableFocusedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPropertyUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: EditorProperty; event: InputEvent) =
  if isNil(editorPropertyUnderscoreguiInputMethodBind):
    editorPropertyUnderscoreguiInputMethodBind = getMethod(
        cstring"EditorProperty", cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPropertyUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPropertyAddFocusableMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFocusable(self: EditorProperty; control: Control) =
  if isNil(editorPropertyAddFocusableMethodBind):
    editorPropertyAddFocusableMethodBind = getMethod(cstring"EditorProperty",
        cstring"add_focusable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPropertyAddFocusableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPropertyEmitChangedMethodBind {.threadvar.}: ptr GodotMethodBind
proc emitChanged(self: EditorProperty; property: string; value: Variant;
                field: string = ""; changing: bool = false) =
  if isNil(editorPropertyEmitChangedMethodBind):
    editorPropertyEmitChangedMethodBind = getMethod(cstring"EditorProperty",
        cstring"emit_changed")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var argToPassToGodot2 = toGodotString(field)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(changing)
  var ptrCallRet: pointer
  editorPropertyEmitChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var editorPropertyGetEditedObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditedObject(self: EditorProperty): Object =
  if isNil(editorPropertyGetEditedObjectMethodBind):
    editorPropertyGetEditedObjectMethodBind = getMethod(cstring"EditorProperty",
        cstring"get_edited_object")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorPropertyGetEditedObjectMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorPropertyGetEditedPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditedProperty(self: EditorProperty): string =
  if isNil(editorPropertyGetEditedPropertyMethodBind):
    editorPropertyGetEditedPropertyMethodBind = getMethod(
        cstring"EditorProperty", cstring"get_edited_property")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorPropertyGetEditedPropertyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorPropertyGetTooltipTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTooltipText(self: EditorProperty): string =
  if isNil(editorPropertyGetTooltipTextMethodBind):
    editorPropertyGetTooltipTextMethodBind = getMethod(cstring"EditorProperty",
        cstring"get_tooltip_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorPropertyGetTooltipTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorPropertySetBottomEditorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBottomEditor(self: EditorProperty; editor: Control) =
  if isNil(editorPropertySetBottomEditorMethodBind):
    editorPropertySetBottomEditorMethodBind = getMethod(cstring"EditorProperty",
        cstring"set_bottom_editor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not editor.isNil:
    editor.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPropertySetBottomEditorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPropertyUpdatePropertyMethodBind {.threadvar.}: ptr GodotMethodBind
method updateProperty(self: EditorProperty) =
  if isNil(editorPropertyUpdatePropertyMethodBind):
    editorPropertyUpdatePropertyMethodBind = getMethod(cstring"EditorProperty",
        cstring"update_property")
  var ptrCallRet: pointer
  editorPropertyUpdatePropertyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
