
import
  godot, godottypes, godotinternal, confirmation_dialog

export
  godottypes, confirmation_dialog

method browseClassInTree*(self: ScriptCreateDialog) {.gcsafe, locks: 0, base.}
method browsePath*(self: ScriptCreateDialog; arg0: bool; arg1: bool) {.gcsafe, locks: 0,
    base.}
method builtInPressed*(self: ScriptCreateDialog) {.gcsafe, locks: 0, base.}
method classNameChanged*(self: ScriptCreateDialog; arg0: string) {.gcsafe, locks: 0,
    base.}
method create*(self: ScriptCreateDialog) {.gcsafe, locks: 0, base.}
method fileSelected*(self: ScriptCreateDialog; arg0: string) {.gcsafe, locks: 0, base.}
method langChanged*(self: ScriptCreateDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method parentNameChanged*(self: ScriptCreateDialog; arg0: string) {.gcsafe, locks: 0,
    base.}
method pathChanged*(self: ScriptCreateDialog; arg0: string) {.gcsafe, locks: 0, base.}
method pathEntered*(self: ScriptCreateDialog; arg0: string) {.gcsafe, locks: 0, base.}
method pathHboxSorted*(self: ScriptCreateDialog) {.gcsafe, locks: 0, base.}
method templateChanged*(self: ScriptCreateDialog; arg0: int64) {.gcsafe, locks: 0, base.}
proc config*(self: ScriptCreateDialog; inherits: string; path: string;
            builtInEnabled: bool = true; loadEnabled: bool = true) {.gcsafe, locks: 0.}
var scriptCreateDialogUnderscorebrowseClassInTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method browseClassInTree(self: ScriptCreateDialog) =
  if isNil(scriptCreateDialogUnderscorebrowseClassInTreeMethodBind):
    scriptCreateDialogUnderscorebrowseClassInTreeMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_browse_class_in_tree")
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorebrowseClassInTreeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var scriptCreateDialogUnderscorebrowsePathMethodBind {.threadvar.}: ptr GodotMethodBind
method browsePath(self: ScriptCreateDialog; arg0: bool; arg1: bool) =
  if isNil(scriptCreateDialogUnderscorebrowsePathMethodBind):
    scriptCreateDialogUnderscorebrowsePathMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_browse_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorebrowsePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptCreateDialogUnderscorebuiltInPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method builtInPressed(self: ScriptCreateDialog) =
  if isNil(scriptCreateDialogUnderscorebuiltInPressedMethodBind):
    scriptCreateDialogUnderscorebuiltInPressedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_built_in_pressed")
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorebuiltInPressedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var scriptCreateDialogUnderscoreclassNameChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method classNameChanged(self: ScriptCreateDialog; arg0: string) =
  if isNil(scriptCreateDialogUnderscoreclassNameChangedMethodBind):
    scriptCreateDialogUnderscoreclassNameChangedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_class_name_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscoreclassNameChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptCreateDialogUnderscorecreateMethodBind {.threadvar.}: ptr GodotMethodBind
method create(self: ScriptCreateDialog) =
  if isNil(scriptCreateDialogUnderscorecreateMethodBind):
    scriptCreateDialogUnderscorecreateMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_create")
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorecreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptCreateDialogUnderscorefileSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method fileSelected(self: ScriptCreateDialog; arg0: string) =
  if isNil(scriptCreateDialogUnderscorefileSelectedMethodBind):
    scriptCreateDialogUnderscorefileSelectedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_file_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorefileSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptCreateDialogUnderscorelangChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method langChanged(self: ScriptCreateDialog; arg0: int64) =
  if isNil(scriptCreateDialogUnderscorelangChangedMethodBind):
    scriptCreateDialogUnderscorelangChangedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_lang_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorelangChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptCreateDialogUnderscoreparentNameChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method parentNameChanged(self: ScriptCreateDialog; arg0: string) =
  if isNil(scriptCreateDialogUnderscoreparentNameChangedMethodBind):
    scriptCreateDialogUnderscoreparentNameChangedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_parent_name_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscoreparentNameChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptCreateDialogUnderscorepathChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method pathChanged(self: ScriptCreateDialog; arg0: string) =
  if isNil(scriptCreateDialogUnderscorepathChangedMethodBind):
    scriptCreateDialogUnderscorepathChangedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_path_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorepathChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptCreateDialogUnderscorepathEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method pathEntered(self: ScriptCreateDialog; arg0: string) =
  if isNil(scriptCreateDialogUnderscorepathEnteredMethodBind):
    scriptCreateDialogUnderscorepathEnteredMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_path_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorepathEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptCreateDialogUnderscorepathHboxSortedMethodBind {.threadvar.}: ptr GodotMethodBind
method pathHboxSorted(self: ScriptCreateDialog) =
  if isNil(scriptCreateDialogUnderscorepathHboxSortedMethodBind):
    scriptCreateDialogUnderscorepathHboxSortedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_path_hbox_sorted")
  var ptrCallRet: pointer
  scriptCreateDialogUnderscorepathHboxSortedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var scriptCreateDialogUnderscoretemplateChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method templateChanged(self: ScriptCreateDialog; arg0: int64) =
  if isNil(scriptCreateDialogUnderscoretemplateChangedMethodBind):
    scriptCreateDialogUnderscoretemplateChangedMethodBind = getMethod(
        cstring"ScriptCreateDialog", cstring"_template_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptCreateDialogUnderscoretemplateChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var scriptCreateDialogConfigMethodBind {.threadvar.}: ptr GodotMethodBind
proc config(self: ScriptCreateDialog; inherits: string; path: string;
           builtInEnabled: bool = true; loadEnabled: bool = true) =
  if isNil(scriptCreateDialogConfigMethodBind):
    scriptCreateDialogConfigMethodBind = getMethod(cstring"ScriptCreateDialog",
        cstring"config")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(inherits)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(path)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(builtInEnabled)
  argsToPassToGodot[][3] = unsafeAddr(loadEnabled)
  var ptrCallRet: pointer
  scriptCreateDialogConfigMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
