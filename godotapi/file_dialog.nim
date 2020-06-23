
import
  godot, godottypes, godotinternal, confirmation_dialog

export
  godottypes, confirmation_dialog

const
  ACCESS_FILESYSTEM* = 2'i64
  ACCESS_RESOURCES* = 0'i64
  ACCESS_USERDATA* = 1'i64
  MODE_OPEN_ANY* = 3'i64
  MODE_OPEN_DIR* = 2'i64
  MODE_OPEN_FILE* = 0'i64
  MODE_OPEN_FILES* = 1'i64
  MODE_SAVE_FILE* = 4'i64
proc access*(self: FileDialog): int64 {.gcsafe, locks: 0.}
proc `access=`*(self: FileDialog; val: int64) {.gcsafe, locks: 0.}
proc currentDir*(self: FileDialog): string {.gcsafe, locks: 0.}
proc `currentDir=`*(self: FileDialog; val: string) {.gcsafe, locks: 0.}
proc currentFile*(self: FileDialog): string {.gcsafe, locks: 0.}
proc `currentFile=`*(self: FileDialog; val: string) {.gcsafe, locks: 0.}
proc currentPath*(self: FileDialog): string {.gcsafe, locks: 0.}
proc `currentPath=`*(self: FileDialog; val: string) {.gcsafe, locks: 0.}
proc filters*(self: FileDialog): PoolStringArray {.gcsafe, locks: 0.}
proc `filters=`*(self: FileDialog; val: PoolStringArray) {.gcsafe, locks: 0.}
proc mode*(self: FileDialog): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: FileDialog; val: int64) {.gcsafe, locks: 0.}
proc modeOverridesTitle*(self: FileDialog): bool {.gcsafe, locks: 0.}
proc `modeOverridesTitle=`*(self: FileDialog; val: bool) {.gcsafe, locks: 0.}
proc showHiddenFiles*(self: FileDialog): bool {.gcsafe, locks: 0.}
proc `showHiddenFiles=`*(self: FileDialog; val: bool) {.gcsafe, locks: 0.}
method actionPressed*(self: FileDialog) {.gcsafe, locks: 0, base.}
method cancelPressed*(self: FileDialog) {.gcsafe, locks: 0, base.}
method dirEntered*(self: FileDialog; arg0: string) {.gcsafe, locks: 0, base.}
method fileEntered*(self: FileDialog; arg0: string) {.gcsafe, locks: 0, base.}
method filterSelected*(self: FileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method goUp*(self: FileDialog) {.gcsafe, locks: 0, base.}
method makeDir*(self: FileDialog) {.gcsafe, locks: 0, base.}
method makeDirConfirm*(self: FileDialog) {.gcsafe, locks: 0, base.}
method saveConfirmPressed*(self: FileDialog) {.gcsafe, locks: 0, base.}
method selectDrive*(self: FileDialog; arg0: int64) {.gcsafe, locks: 0, base.}
method treeItemActivated*(self: FileDialog) {.gcsafe, locks: 0, base.}
method treeMultiSelected*(self: FileDialog; arg0: Object; arg1: int64; arg2: bool) {.
    gcsafe, locks: 0, base.}
method treeSelected*(self: FileDialog) {.gcsafe, locks: 0, base.}
method unhandledInput*(self: FileDialog; event: InputEvent) {.gcsafe, locks: 0.}
method updateDir*(self: FileDialog) {.gcsafe, locks: 0, base.}
method updateFileList*(self: FileDialog) {.gcsafe, locks: 0, base.}
method updateFileName*(self: FileDialog) {.gcsafe, locks: 0, base.}
proc addFilter*(self: FileDialog; filter: string) {.gcsafe, locks: 0.}
proc clearFilters*(self: FileDialog) {.gcsafe, locks: 0.}
proc deselectItems*(self: FileDialog) {.gcsafe, locks: 0.}
proc getLineEdit*(self: FileDialog): LineEdit {.gcsafe, locks: 0.}
proc getVbox*(self: FileDialog): VBoxContainer {.gcsafe, locks: 0.}
proc invalidate*(self: FileDialog) {.gcsafe, locks: 0.}
var fileDialogGetAccessMethodBind {.threadvar.}: ptr GodotMethodBind
proc access(self: FileDialog): int64 =
  if isNil(fileDialogGetAccessMethodBind):
    fileDialogGetAccessMethodBind = getMethod(cstring"FileDialog",
        cstring"get_access")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileDialogGetAccessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileDialogSetAccessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `access=`(self: FileDialog; val: int64) =
  if isNil(fileDialogSetAccessMethodBind):
    fileDialogSetAccessMethodBind = getMethod(cstring"FileDialog",
        cstring"set_access")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  fileDialogSetAccessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var fileDialogGetCurrentDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentDir(self: FileDialog): string =
  if isNil(fileDialogGetCurrentDirMethodBind):
    fileDialogGetCurrentDirMethodBind = getMethod(cstring"FileDialog",
        cstring"get_current_dir")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileDialogGetCurrentDirMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileDialogSetCurrentDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentDir=`(self: FileDialog; val: string) =
  if isNil(fileDialogSetCurrentDirMethodBind):
    fileDialogSetCurrentDirMethodBind = getMethod(cstring"FileDialog",
        cstring"set_current_dir")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileDialogSetCurrentDirMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var fileDialogGetCurrentFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentFile(self: FileDialog): string =
  if isNil(fileDialogGetCurrentFileMethodBind):
    fileDialogGetCurrentFileMethodBind = getMethod(cstring"FileDialog",
        cstring"get_current_file")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileDialogGetCurrentFileMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileDialogSetCurrentFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentFile=`(self: FileDialog; val: string) =
  if isNil(fileDialogSetCurrentFileMethodBind):
    fileDialogSetCurrentFileMethodBind = getMethod(cstring"FileDialog",
        cstring"set_current_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileDialogSetCurrentFileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var fileDialogGetCurrentPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentPath(self: FileDialog): string =
  if isNil(fileDialogGetCurrentPathMethodBind):
    fileDialogGetCurrentPathMethodBind = getMethod(cstring"FileDialog",
        cstring"get_current_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  fileDialogGetCurrentPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var fileDialogSetCurrentPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentPath=`(self: FileDialog; val: string) =
  if isNil(fileDialogSetCurrentPathMethodBind):
    fileDialogSetCurrentPathMethodBind = getMethod(cstring"FileDialog",
        cstring"set_current_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileDialogSetCurrentPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var fileDialogGetFiltersMethodBind {.threadvar.}: ptr GodotMethodBind
proc filters(self: FileDialog): PoolStringArray =
  if isNil(fileDialogGetFiltersMethodBind):
    fileDialogGetFiltersMethodBind = getMethod(cstring"FileDialog",
        cstring"get_filters")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  fileDialogGetFiltersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var fileDialogSetFiltersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filters=`(self: FileDialog; val: PoolStringArray) =
  if isNil(fileDialogSetFiltersMethodBind):
    fileDialogSetFiltersMethodBind = getMethod(cstring"FileDialog",
        cstring"set_filters")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolStringArray
  var ptrCallRet: pointer
  fileDialogSetFiltersMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var fileDialogGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: FileDialog): int64 =
  if isNil(fileDialogGetModeMethodBind):
    fileDialogGetModeMethodBind = getMethod(cstring"FileDialog", cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileDialogGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileDialogSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: FileDialog; val: int64) =
  if isNil(fileDialogSetModeMethodBind):
    fileDialogSetModeMethodBind = getMethod(cstring"FileDialog", cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  fileDialogSetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var fileDialogIsModeOverridingTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc modeOverridesTitle(self: FileDialog): bool =
  if isNil(fileDialogIsModeOverridingTitleMethodBind):
    fileDialogIsModeOverridingTitleMethodBind = getMethod(cstring"FileDialog",
        cstring"is_mode_overriding_title")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileDialogIsModeOverridingTitleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogSetModeOverridesTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `modeOverridesTitle=`(self: FileDialog; val: bool) =
  if isNil(fileDialogSetModeOverridesTitleMethodBind):
    fileDialogSetModeOverridesTitleMethodBind = getMethod(cstring"FileDialog",
        cstring"set_mode_overrides_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  fileDialogSetModeOverridesTitleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileDialogIsShowingHiddenFilesMethodBind {.threadvar.}: ptr GodotMethodBind
proc showHiddenFiles(self: FileDialog): bool =
  if isNil(fileDialogIsShowingHiddenFilesMethodBind):
    fileDialogIsShowingHiddenFilesMethodBind = getMethod(cstring"FileDialog",
        cstring"is_showing_hidden_files")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileDialogIsShowingHiddenFilesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogSetShowHiddenFilesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `showHiddenFiles=`(self: FileDialog; val: bool) =
  if isNil(fileDialogSetShowHiddenFilesMethodBind):
    fileDialogSetShowHiddenFilesMethodBind = getMethod(cstring"FileDialog",
        cstring"set_show_hidden_files")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  fileDialogSetShowHiddenFilesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileDialogUnderscoreactionPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method actionPressed(self: FileDialog) =
  if isNil(fileDialogUnderscoreactionPressedMethodBind):
    fileDialogUnderscoreactionPressedMethodBind = getMethod(cstring"FileDialog",
        cstring"_action_pressed")
  var ptrCallRet: pointer
  fileDialogUnderscoreactionPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscorecancelPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method cancelPressed(self: FileDialog) =
  if isNil(fileDialogUnderscorecancelPressedMethodBind):
    fileDialogUnderscorecancelPressedMethodBind = getMethod(cstring"FileDialog",
        cstring"_cancel_pressed")
  var ptrCallRet: pointer
  fileDialogUnderscorecancelPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscoredirEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method dirEntered(self: FileDialog; arg0: string) =
  if isNil(fileDialogUnderscoredirEnteredMethodBind):
    fileDialogUnderscoredirEnteredMethodBind = getMethod(cstring"FileDialog",
        cstring"_dir_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileDialogUnderscoredirEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileDialogUnderscorefileEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method fileEntered(self: FileDialog; arg0: string) =
  if isNil(fileDialogUnderscorefileEnteredMethodBind):
    fileDialogUnderscorefileEnteredMethodBind = getMethod(cstring"FileDialog",
        cstring"_file_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileDialogUnderscorefileEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileDialogUnderscorefilterSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method filterSelected(self: FileDialog; arg0: int64) =
  if isNil(fileDialogUnderscorefilterSelectedMethodBind):
    fileDialogUnderscorefilterSelectedMethodBind = getMethod(cstring"FileDialog",
        cstring"_filter_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  fileDialogUnderscorefilterSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileDialogUnderscoregoUpMethodBind {.threadvar.}: ptr GodotMethodBind
method goUp(self: FileDialog) =
  if isNil(fileDialogUnderscoregoUpMethodBind):
    fileDialogUnderscoregoUpMethodBind = getMethod(cstring"FileDialog",
        cstring"_go_up")
  var ptrCallRet: pointer
  fileDialogUnderscoregoUpMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileDialogUnderscoremakeDirMethodBind {.threadvar.}: ptr GodotMethodBind
method makeDir(self: FileDialog) =
  if isNil(fileDialogUnderscoremakeDirMethodBind):
    fileDialogUnderscoremakeDirMethodBind = getMethod(cstring"FileDialog",
        cstring"_make_dir")
  var ptrCallRet: pointer
  fileDialogUnderscoremakeDirMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileDialogUnderscoremakeDirConfirmMethodBind {.threadvar.}: ptr GodotMethodBind
method makeDirConfirm(self: FileDialog) =
  if isNil(fileDialogUnderscoremakeDirConfirmMethodBind):
    fileDialogUnderscoremakeDirConfirmMethodBind = getMethod(cstring"FileDialog",
        cstring"_make_dir_confirm")
  var ptrCallRet: pointer
  fileDialogUnderscoremakeDirConfirmMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscoresaveConfirmPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method saveConfirmPressed(self: FileDialog) =
  if isNil(fileDialogUnderscoresaveConfirmPressedMethodBind):
    fileDialogUnderscoresaveConfirmPressedMethodBind = getMethod(
        cstring"FileDialog", cstring"_save_confirm_pressed")
  var ptrCallRet: pointer
  fileDialogUnderscoresaveConfirmPressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscoreselectDriveMethodBind {.threadvar.}: ptr GodotMethodBind
method selectDrive(self: FileDialog; arg0: int64) =
  if isNil(fileDialogUnderscoreselectDriveMethodBind):
    fileDialogUnderscoreselectDriveMethodBind = getMethod(cstring"FileDialog",
        cstring"_select_drive")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  fileDialogUnderscoreselectDriveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileDialogUnderscoretreeItemActivatedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeItemActivated(self: FileDialog) =
  if isNil(fileDialogUnderscoretreeItemActivatedMethodBind):
    fileDialogUnderscoretreeItemActivatedMethodBind = getMethod(
        cstring"FileDialog", cstring"_tree_item_activated")
  var ptrCallRet: pointer
  fileDialogUnderscoretreeItemActivatedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscoretreeMultiSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeMultiSelected(self: FileDialog; arg0: Object; arg1: int64; arg2: bool) =
  if isNil(fileDialogUnderscoretreeMultiSelectedMethodBind):
    fileDialogUnderscoretreeMultiSelectedMethodBind = getMethod(
        cstring"FileDialog", cstring"_tree_multi_selected")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  argsToPassToGodot[][2] = unsafeAddr(arg2)
  var ptrCallRet: pointer
  fileDialogUnderscoretreeMultiSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileDialogUnderscoretreeSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeSelected(self: FileDialog) =
  if isNil(fileDialogUnderscoretreeSelectedMethodBind):
    fileDialogUnderscoretreeSelectedMethodBind = getMethod(cstring"FileDialog",
        cstring"_tree_selected")
  var ptrCallRet: pointer
  fileDialogUnderscoretreeSelectedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscoreunhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledInput(self: FileDialog; event: InputEvent) =
  if isNil(fileDialogUnderscoreunhandledInputMethodBind):
    fileDialogUnderscoreunhandledInputMethodBind = getMethod(cstring"FileDialog",
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
  fileDialogUnderscoreunhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileDialogUnderscoreupdateDirMethodBind {.threadvar.}: ptr GodotMethodBind
method updateDir(self: FileDialog) =
  if isNil(fileDialogUnderscoreupdateDirMethodBind):
    fileDialogUnderscoreupdateDirMethodBind = getMethod(cstring"FileDialog",
        cstring"_update_dir")
  var ptrCallRet: pointer
  fileDialogUnderscoreupdateDirMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscoreupdateFileListMethodBind {.threadvar.}: ptr GodotMethodBind
method updateFileList(self: FileDialog) =
  if isNil(fileDialogUnderscoreupdateFileListMethodBind):
    fileDialogUnderscoreupdateFileListMethodBind = getMethod(cstring"FileDialog",
        cstring"_update_file_list")
  var ptrCallRet: pointer
  fileDialogUnderscoreupdateFileListMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogUnderscoreupdateFileNameMethodBind {.threadvar.}: ptr GodotMethodBind
method updateFileName(self: FileDialog) =
  if isNil(fileDialogUnderscoreupdateFileNameMethodBind):
    fileDialogUnderscoreupdateFileNameMethodBind = getMethod(cstring"FileDialog",
        cstring"_update_file_name")
  var ptrCallRet: pointer
  fileDialogUnderscoreupdateFileNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileDialogAddFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFilter(self: FileDialog; filter: string) =
  if isNil(fileDialogAddFilterMethodBind):
    fileDialogAddFilterMethodBind = getMethod(cstring"FileDialog",
        cstring"add_filter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filter)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileDialogAddFilterMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var fileDialogClearFiltersMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearFilters(self: FileDialog) =
  if isNil(fileDialogClearFiltersMethodBind):
    fileDialogClearFiltersMethodBind = getMethod(cstring"FileDialog",
        cstring"clear_filters")
  var ptrCallRet: pointer
  fileDialogClearFiltersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileDialogDeselectItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc deselectItems(self: FileDialog) =
  if isNil(fileDialogDeselectItemsMethodBind):
    fileDialogDeselectItemsMethodBind = getMethod(cstring"FileDialog",
        cstring"deselect_items")
  var ptrCallRet: pointer
  fileDialogDeselectItemsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fileDialogGetLineEditMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLineEdit(self: FileDialog): LineEdit =
  if isNil(fileDialogGetLineEditMethodBind):
    fileDialogGetLineEditMethodBind = getMethod(cstring"FileDialog",
        cstring"get_line_edit")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  fileDialogGetLineEditMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var fileDialogGetVboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVbox(self: FileDialog): VBoxContainer =
  if isNil(fileDialogGetVboxMethodBind):
    fileDialogGetVboxMethodBind = getMethod(cstring"FileDialog", cstring"get_vbox")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  fileDialogGetVboxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var fileDialogInvalidateMethodBind {.threadvar.}: ptr GodotMethodBind
proc invalidate(self: FileDialog) =
  if isNil(fileDialogInvalidateMethodBind):
    fileDialogInvalidateMethodBind = getMethod(cstring"FileDialog",
        cstring"invalidate")
  var ptrCallRet: pointer
  fileDialogInvalidateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
