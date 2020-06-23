
import
  godot, godottypes, godotinternal, confirmation_dialog

export
  godottypes, confirmation_dialog

const
  ACCESS_FILESYSTEM* = 2'i64
  ACCESS_RESOURCES* = 0'i64
  ACCESS_USERDATA* = 1'i64
  DISPLAY_LIST* = 1'i64
  DISPLAY_THUMBNAILS* = 0'i64
  MODE_OPEN_ANY* = 3'i64
  MODE_OPEN_DIR* = 2'i64
  MODE_OPEN_FILE* = 0'i64
  MODE_OPEN_FILES* = 1'i64
  MODE_SAVE_FILE* = 4'i64
proc access*(self: EditorFileDialog): int64 {.gcsafe, locks: 0.}
proc `access=`*(self: EditorFileDialog; val: int64) {.gcsafe, locks: 0.}
proc currentDir*(self: EditorFileDialog): string {.gcsafe, locks: 0.}
proc `currentDir=`*(self: EditorFileDialog; val: string) {.gcsafe, locks: 0.}
proc currentFile*(self: EditorFileDialog): string {.gcsafe, locks: 0.}
proc `currentFile=`*(self: EditorFileDialog; val: string) {.gcsafe, locks: 0.}
proc currentPath*(self: EditorFileDialog): string {.gcsafe, locks: 0.}
proc `currentPath=`*(self: EditorFileDialog; val: string) {.gcsafe, locks: 0.}
proc disableOverwriteWarning*(self: EditorFileDialog): bool {.gcsafe, locks: 0.}
proc `disableOverwriteWarning=`*(self: EditorFileDialog; val: bool) {.gcsafe, locks: 0.}
proc displayMode*(self: EditorFileDialog): int64 {.gcsafe, locks: 0.}
proc `displayMode=`*(self: EditorFileDialog; val: int64) {.gcsafe, locks: 0.}
proc mode*(self: EditorFileDialog): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: EditorFileDialog; val: int64) {.gcsafe, locks: 0.}
proc showHiddenFiles*(self: EditorFileDialog): bool {.gcsafe, locks: 0.}
proc `showHiddenFiles=`*(self: EditorFileDialog; val: bool) {.gcsafe, locks: 0.}
method actionPressed*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method cancelPressed*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method dirEntered*(self: EditorFileDialog; arg0: string) {.gcsafe, locks: 0, base.}
method favoriteMoveDown*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method favoriteMoveUp*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method favoritePressed*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method favoriteSelected*(self: EditorFileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method fileEntered*(self: EditorFileDialog; arg0: string) {.gcsafe, locks: 0, base.}
method filterSelected*(self: EditorFileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method goBack*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method goForward*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method goUp*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method itemDbSelected*(self: EditorFileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method itemListItemRmbSelected*(self: EditorFileDialog; arg0: int64; arg1: Vector2) {.
    gcsafe, locks: 0, base.}
method itemListRmbClicked*(self: EditorFileDialog; arg0: Vector2) {.gcsafe, locks: 0,
    base.}
method itemMenuIdPressed*(self: EditorFileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method itemSelected*(self: EditorFileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method itemsClearSelection*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method makeDir*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method makeDirConfirm*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method multiSelected*(self: EditorFileDialog; arg0: int64; arg1: bool) {.gcsafe,
    locks: 0, base.}
method recentSelected*(self: EditorFileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method saveConfirmPressed*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method selectDrive*(self: EditorFileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method thumbnailDone*(self: EditorFileDialog; arg0: string; arg1: Texture;
                     arg2: Texture; arg3: Variant) {.gcsafe, locks: 0, base.}
method thumbnailResult*(self: EditorFileDialog; arg0: string; arg1: Texture;
                       arg2: Texture; arg3: Variant) {.gcsafe, locks: 0, base.}
method unhandledInput*(self: EditorFileDialog; event: InputEvent) {.gcsafe, locks: 0.}
method updateDir*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method updateFileList*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
method updateFileName*(self: EditorFileDialog) {.gcsafe, locks: 0, base.}
proc addFilter*(self: EditorFileDialog; filter: string) {.gcsafe, locks: 0.}
proc clearFilters*(self: EditorFileDialog) {.gcsafe, locks: 0.}
proc getVbox*(self: EditorFileDialog): VBoxContainer {.gcsafe, locks: 0.}
proc invalidate*(self: EditorFileDialog) {.gcsafe, locks: 0.}
var editorFileDialogGetAccessMethodBind {.threadvar.}: ptr GodotMethodBind
proc access(self: EditorFileDialog): int64 =
  if isNil(editorFileDialogGetAccessMethodBind):
    editorFileDialogGetAccessMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"get_access")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileDialogGetAccessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorFileDialogSetAccessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `access=`(self: EditorFileDialog; val: int64) =
  if isNil(editorFileDialogSetAccessMethodBind):
    editorFileDialogSetAccessMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"set_access")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorFileDialogSetAccessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogGetCurrentDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentDir(self: EditorFileDialog): string =
  if isNil(editorFileDialogGetCurrentDirMethodBind):
    editorFileDialogGetCurrentDirMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"get_current_dir")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileDialogGetCurrentDirMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileDialogSetCurrentDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentDir=`(self: EditorFileDialog; val: string) =
  if isNil(editorFileDialogSetCurrentDirMethodBind):
    editorFileDialogSetCurrentDirMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"set_current_dir")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorFileDialogSetCurrentDirMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogGetCurrentFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentFile(self: EditorFileDialog): string =
  if isNil(editorFileDialogGetCurrentFileMethodBind):
    editorFileDialogGetCurrentFileMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"get_current_file")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileDialogGetCurrentFileMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileDialogSetCurrentFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentFile=`(self: EditorFileDialog; val: string) =
  if isNil(editorFileDialogSetCurrentFileMethodBind):
    editorFileDialogSetCurrentFileMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"set_current_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorFileDialogSetCurrentFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogGetCurrentPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentPath(self: EditorFileDialog): string =
  if isNil(editorFileDialogGetCurrentPathMethodBind):
    editorFileDialogGetCurrentPathMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"get_current_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileDialogGetCurrentPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileDialogSetCurrentPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentPath=`(self: EditorFileDialog; val: string) =
  if isNil(editorFileDialogSetCurrentPathMethodBind):
    editorFileDialogSetCurrentPathMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"set_current_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorFileDialogSetCurrentPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogIsOverwriteWarningDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disableOverwriteWarning(self: EditorFileDialog): bool =
  if isNil(editorFileDialogIsOverwriteWarningDisabledMethodBind):
    editorFileDialogIsOverwriteWarningDisabledMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"is_overwrite_warning_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileDialogIsOverwriteWarningDisabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogSetDisableOverwriteWarningMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disableOverwriteWarning=`(self: EditorFileDialog; val: bool) =
  if isNil(editorFileDialogSetDisableOverwriteWarningMethodBind):
    editorFileDialogSetDisableOverwriteWarningMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"set_disable_overwrite_warning")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorFileDialogSetDisableOverwriteWarningMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogGetDisplayModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc displayMode(self: EditorFileDialog): int64 =
  if isNil(editorFileDialogGetDisplayModeMethodBind):
    editorFileDialogGetDisplayModeMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"get_display_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileDialogGetDisplayModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileDialogSetDisplayModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `displayMode=`(self: EditorFileDialog; val: int64) =
  if isNil(editorFileDialogSetDisplayModeMethodBind):
    editorFileDialogSetDisplayModeMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"set_display_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorFileDialogSetDisplayModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: EditorFileDialog): int64 =
  if isNil(editorFileDialogGetModeMethodBind):
    editorFileDialogGetModeMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileDialogGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorFileDialogSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: EditorFileDialog; val: int64) =
  if isNil(editorFileDialogSetModeMethodBind):
    editorFileDialogSetModeMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorFileDialogSetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorFileDialogIsShowingHiddenFilesMethodBind {.threadvar.}: ptr GodotMethodBind
proc showHiddenFiles(self: EditorFileDialog): bool =
  if isNil(editorFileDialogIsShowingHiddenFilesMethodBind):
    editorFileDialogIsShowingHiddenFilesMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"is_showing_hidden_files")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileDialogIsShowingHiddenFilesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileDialogSetShowHiddenFilesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `showHiddenFiles=`(self: EditorFileDialog; val: bool) =
  if isNil(editorFileDialogSetShowHiddenFilesMethodBind):
    editorFileDialogSetShowHiddenFilesMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"set_show_hidden_files")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorFileDialogSetShowHiddenFilesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoreactionPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method actionPressed(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoreactionPressedMethodBind):
    editorFileDialogUnderscoreactionPressedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_action_pressed")
  var ptrCallRet: pointer
  editorFileDialogUnderscoreactionPressedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogUnderscorecancelPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method cancelPressed(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscorecancelPressedMethodBind):
    editorFileDialogUnderscorecancelPressedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_cancel_pressed")
  var ptrCallRet: pointer
  editorFileDialogUnderscorecancelPressedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogUnderscoredirEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method dirEntered(self: EditorFileDialog; arg0: string) =
  if isNil(editorFileDialogUnderscoredirEnteredMethodBind):
    editorFileDialogUnderscoredirEnteredMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_dir_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorFileDialogUnderscoredirEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogUnderscorefavoriteMoveDownMethodBind {.threadvar.}: ptr GodotMethodBind
method favoriteMoveDown(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscorefavoriteMoveDownMethodBind):
    editorFileDialogUnderscorefavoriteMoveDownMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_favorite_move_down")
  var ptrCallRet: pointer
  editorFileDialogUnderscorefavoriteMoveDownMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogUnderscorefavoriteMoveUpMethodBind {.threadvar.}: ptr GodotMethodBind
method favoriteMoveUp(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscorefavoriteMoveUpMethodBind):
    editorFileDialogUnderscorefavoriteMoveUpMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_favorite_move_up")
  var ptrCallRet: pointer
  editorFileDialogUnderscorefavoriteMoveUpMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogUnderscorefavoritePressedMethodBind {.threadvar.}: ptr GodotMethodBind
method favoritePressed(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscorefavoritePressedMethodBind):
    editorFileDialogUnderscorefavoritePressedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_favorite_pressed")
  var ptrCallRet: pointer
  editorFileDialogUnderscorefavoritePressedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogUnderscorefavoriteSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method favoriteSelected(self: EditorFileDialog; arg0: int64) =
  if isNil(editorFileDialogUnderscorefavoriteSelectedMethodBind):
    editorFileDialogUnderscorefavoriteSelectedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_favorite_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscorefavoriteSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscorefileEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method fileEntered(self: EditorFileDialog; arg0: string) =
  if isNil(editorFileDialogUnderscorefileEnteredMethodBind):
    editorFileDialogUnderscorefileEnteredMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_file_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorFileDialogUnderscorefileEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogUnderscorefilterSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method filterSelected(self: EditorFileDialog; arg0: int64) =
  if isNil(editorFileDialogUnderscorefilterSelectedMethodBind):
    editorFileDialogUnderscorefilterSelectedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_filter_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscorefilterSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoregoBackMethodBind {.threadvar.}: ptr GodotMethodBind
method goBack(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoregoBackMethodBind):
    editorFileDialogUnderscoregoBackMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_go_back")
  var ptrCallRet: pointer
  editorFileDialogUnderscoregoBackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileDialogUnderscoregoForwardMethodBind {.threadvar.}: ptr GodotMethodBind
method goForward(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoregoForwardMethodBind):
    editorFileDialogUnderscoregoForwardMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_go_forward")
  var ptrCallRet: pointer
  editorFileDialogUnderscoregoForwardMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileDialogUnderscoregoUpMethodBind {.threadvar.}: ptr GodotMethodBind
method goUp(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoregoUpMethodBind):
    editorFileDialogUnderscoregoUpMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_go_up")
  var ptrCallRet: pointer
  editorFileDialogUnderscoregoUpMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileDialogUnderscoreitemDbSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method itemDbSelected(self: EditorFileDialog; arg0: int64) =
  if isNil(editorFileDialogUnderscoreitemDbSelectedMethodBind):
    editorFileDialogUnderscoreitemDbSelectedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_item_db_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscoreitemDbSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoreitemListItemRmbSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method itemListItemRmbSelected(self: EditorFileDialog; arg0: int64; arg1: Vector2) =
  if isNil(editorFileDialogUnderscoreitemListItemRmbSelectedMethodBind):
    editorFileDialogUnderscoreitemListItemRmbSelectedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_item_list_item_rmb_selected")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  editorFileDialogUnderscoreitemListItemRmbSelectedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoreitemListRmbClickedMethodBind {.threadvar.}: ptr GodotMethodBind
method itemListRmbClicked(self: EditorFileDialog; arg0: Vector2) =
  if isNil(editorFileDialogUnderscoreitemListRmbClickedMethodBind):
    editorFileDialogUnderscoreitemListRmbClickedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_item_list_rmb_clicked")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscoreitemListRmbClickedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoreitemMenuIdPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method itemMenuIdPressed(self: EditorFileDialog; arg0: int64) =
  if isNil(editorFileDialogUnderscoreitemMenuIdPressedMethodBind):
    editorFileDialogUnderscoreitemMenuIdPressedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_item_menu_id_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscoreitemMenuIdPressedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoreitemSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method itemSelected(self: EditorFileDialog; arg0: int64) =
  if isNil(editorFileDialogUnderscoreitemSelectedMethodBind):
    editorFileDialogUnderscoreitemSelectedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_item_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscoreitemSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoreitemsClearSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
method itemsClearSelection(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoreitemsClearSelectionMethodBind):
    editorFileDialogUnderscoreitemsClearSelectionMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_items_clear_selection")
  var ptrCallRet: pointer
  editorFileDialogUnderscoreitemsClearSelectionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorFileDialogUnderscoremakeDirMethodBind {.threadvar.}: ptr GodotMethodBind
method makeDir(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoremakeDirMethodBind):
    editorFileDialogUnderscoremakeDirMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_make_dir")
  var ptrCallRet: pointer
  editorFileDialogUnderscoremakeDirMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileDialogUnderscoremakeDirConfirmMethodBind {.threadvar.}: ptr GodotMethodBind
method makeDirConfirm(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoremakeDirConfirmMethodBind):
    editorFileDialogUnderscoremakeDirConfirmMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_make_dir_confirm")
  var ptrCallRet: pointer
  editorFileDialogUnderscoremakeDirConfirmMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogUnderscoremultiSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method multiSelected(self: EditorFileDialog; arg0: int64; arg1: bool) =
  if isNil(editorFileDialogUnderscoremultiSelectedMethodBind):
    editorFileDialogUnderscoremultiSelectedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_multi_selected")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  editorFileDialogUnderscoremultiSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscorerecentSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method recentSelected(self: EditorFileDialog; arg0: int64) =
  if isNil(editorFileDialogUnderscorerecentSelectedMethodBind):
    editorFileDialogUnderscorerecentSelectedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_recent_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscorerecentSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoresaveConfirmPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method saveConfirmPressed(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoresaveConfirmPressedMethodBind):
    editorFileDialogUnderscoresaveConfirmPressedMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_save_confirm_pressed")
  var ptrCallRet: pointer
  editorFileDialogUnderscoresaveConfirmPressedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorFileDialogUnderscoreselectDriveMethodBind {.threadvar.}: ptr GodotMethodBind
method selectDrive(self: EditorFileDialog; arg0: int64) =
  if isNil(editorFileDialogUnderscoreselectDriveMethodBind):
    editorFileDialogUnderscoreselectDriveMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_select_drive")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorFileDialogUnderscoreselectDriveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscorethumbnailDoneMethodBind {.threadvar.}: ptr GodotMethodBind
method thumbnailDone(self: EditorFileDialog; arg0: string; arg1: Texture;
                    arg2: Texture; arg3: Variant) =
  if isNil(editorFileDialogUnderscorethumbnailDoneMethodBind):
    editorFileDialogUnderscorethumbnailDoneMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_thumbnail_done")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not arg2.isNil:
    arg2.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = arg3.godotVariant
  var ptrCallRet: pointer
  editorFileDialogUnderscorethumbnailDoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogUnderscorethumbnailResultMethodBind {.threadvar.}: ptr GodotMethodBind
method thumbnailResult(self: EditorFileDialog; arg0: string; arg1: Texture;
                      arg2: Texture; arg3: Variant) =
  if isNil(editorFileDialogUnderscorethumbnailResultMethodBind):
    editorFileDialogUnderscorethumbnailResultMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_thumbnail_result")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not arg2.isNil:
    arg2.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = arg3.godotVariant
  var ptrCallRet: pointer
  editorFileDialogUnderscorethumbnailResultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogUnderscoreunhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledInput(self: EditorFileDialog; event: InputEvent) =
  if isNil(editorFileDialogUnderscoreunhandledInputMethodBind):
    editorFileDialogUnderscoreunhandledInputMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorFileDialogUnderscoreunhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFileDialogUnderscoreupdateDirMethodBind {.threadvar.}: ptr GodotMethodBind
method updateDir(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoreupdateDirMethodBind):
    editorFileDialogUnderscoreupdateDirMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_update_dir")
  var ptrCallRet: pointer
  editorFileDialogUnderscoreupdateDirMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileDialogUnderscoreupdateFileListMethodBind {.threadvar.}: ptr GodotMethodBind
method updateFileList(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoreupdateFileListMethodBind):
    editorFileDialogUnderscoreupdateFileListMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_update_file_list")
  var ptrCallRet: pointer
  editorFileDialogUnderscoreupdateFileListMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogUnderscoreupdateFileNameMethodBind {.threadvar.}: ptr GodotMethodBind
method updateFileName(self: EditorFileDialog) =
  if isNil(editorFileDialogUnderscoreupdateFileNameMethodBind):
    editorFileDialogUnderscoreupdateFileNameMethodBind = getMethod(
        cstring"EditorFileDialog", cstring"_update_file_name")
  var ptrCallRet: pointer
  editorFileDialogUnderscoreupdateFileNameMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorFileDialogAddFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFilter(self: EditorFileDialog; filter: string) =
  if isNil(editorFileDialogAddFilterMethodBind):
    editorFileDialogAddFilterMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"add_filter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filter)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorFileDialogAddFilterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileDialogClearFiltersMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearFilters(self: EditorFileDialog) =
  if isNil(editorFileDialogClearFiltersMethodBind):
    editorFileDialogClearFiltersMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"clear_filters")
  var ptrCallRet: pointer
  editorFileDialogClearFiltersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorFileDialogGetVboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVbox(self: EditorFileDialog): VBoxContainer =
  if isNil(editorFileDialogGetVboxMethodBind):
    editorFileDialogGetVboxMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"get_vbox")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorFileDialogGetVboxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorFileDialogInvalidateMethodBind {.threadvar.}: ptr GodotMethodBind
proc invalidate(self: EditorFileDialog) =
  if isNil(editorFileDialogInvalidateMethodBind):
    editorFileDialogInvalidateMethodBind = getMethod(cstring"EditorFileDialog",
        cstring"invalidate")
  var ptrCallRet: pointer
  editorFileDialogInvalidateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
