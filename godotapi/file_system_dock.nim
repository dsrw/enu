
import
  godot, godottypes, godotinternal, v_box_container

export
  godottypes, v_box_container

method bwHistory*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method duplicateOperationConfirm*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method featureProfileChanged*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method fileListActivateFile*(self: FileSystemDock; arg0: int64) {.gcsafe, locks: 0, base.}
method fileListGuiInput*(self: FileSystemDock; arg0: InputEvent) {.gcsafe, locks: 0,
    base.}
method fileListRmbOption*(self: FileSystemDock; option: int64) {.gcsafe, locks: 0, base.}
method fileListRmbPressed*(self: FileSystemDock; arg0: Vector2) {.gcsafe, locks: 0, base.}
method fileListRmbSelect*(self: FileSystemDock; arg0: int64; arg1: Vector2) {.gcsafe,
    locks: 0, base.}
method fileListThumbnailDone*(self: FileSystemDock; arg0: string; arg1: Texture;
                             arg2: Texture; arg3: Variant) {.gcsafe, locks: 0, base.}
method fileMultiSelected*(self: FileSystemDock; arg0: int64; arg1: bool) {.gcsafe,
    locks: 0, base.}
method fileRemoved*(self: FileSystemDock; arg0: string) {.gcsafe, locks: 0, base.}
method folderRemoved*(self: FileSystemDock; arg0: string) {.gcsafe, locks: 0, base.}
method fsChanged*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method fwHistory*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method makeDirConfirm*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method makeSceneConfirm*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method moveOperationConfirm*(self: FileSystemDock; toPath: string;
                            overwrite: bool = false) {.gcsafe, locks: 0, base.}
method moveWithOverwrite*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method navigateToPath*(self: FileSystemDock; arg0: string; arg1: bool = false) {.gcsafe,
    locks: 0, base.}
method previewInvalidated*(self: FileSystemDock; arg0: string) {.gcsafe, locks: 0, base.}
method renameOperationConfirm*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method rescan*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method resourceCreated*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method searchChanged*(self: FileSystemDock; arg0: string; arg1: Control) {.gcsafe,
    locks: 0, base.}
method selectFile*(self: FileSystemDock; arg0: string; arg1: bool) {.gcsafe, locks: 0,
    base.}
method toggleFileDisplay*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method toggleSplitMode*(self: FileSystemDock; arg0: bool) {.gcsafe, locks: 0, base.}
method treeActivateFile*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method treeEmptySelected*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method treeGuiInput*(self: FileSystemDock; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method treeMultiSelected*(self: FileSystemDock; arg0: Object; arg1: int64; arg2: bool) {.
    gcsafe, locks: 0, base.}
method treeRmbEmpty*(self: FileSystemDock; arg0: Vector2) {.gcsafe, locks: 0, base.}
method treeRmbOption*(self: FileSystemDock; option: int64) {.gcsafe, locks: 0, base.}
method treeRmbSelect*(self: FileSystemDock; arg0: Vector2) {.gcsafe, locks: 0, base.}
method treeThumbnailDone*(self: FileSystemDock; arg0: string; arg1: Texture;
                         arg2: Texture; arg3: Variant) {.gcsafe, locks: 0, base.}
method updateImportDock*(self: FileSystemDock) {.gcsafe, locks: 0, base.}
method updateTree*(self: FileSystemDock; arg0: PoolStringArray; arg1: bool; arg2: bool;
                  arg3: bool) {.gcsafe, locks: 0, base.}
proc canDropDataFw*(self: FileSystemDock; arg0: Vector2; arg1: Variant; arg2: Control): bool {.
    gcsafe, locks: 0.}
proc dropDataFw*(self: FileSystemDock; arg0: Vector2; arg1: Variant; arg2: Control) {.
    gcsafe, locks: 0.}
proc getDragDataFw*(self: FileSystemDock; arg0: Vector2; arg1: Control): Variant {.
    gcsafe, locks: 0.}
proc navigateToPathImpl*(self: FileSystemDock; arg0: string) {.gcsafe, locks: 0.}
var fileSystemDockUnderscorebwHistoryMethodBind {.threadvar.}: ptr GodotMethodBind
method bwHistory(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscorebwHistoryMethodBind):
    fileSystemDockUnderscorebwHistoryMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_bw_history")
  var ptrCallRet: pointer
  fileSystemDockUnderscorebwHistoryMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileSystemDockUnderscoreduplicateOperationConfirmMethodBind {.threadvar.}: ptr GodotMethodBind
method duplicateOperationConfirm(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoreduplicateOperationConfirmMethodBind):
    fileSystemDockUnderscoreduplicateOperationConfirmMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_duplicate_operation_confirm")
  var ptrCallRet: pointer
  fileSystemDockUnderscoreduplicateOperationConfirmMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var fileSystemDockUnderscorefeatureProfileChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method featureProfileChanged(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscorefeatureProfileChangedMethodBind):
    fileSystemDockUnderscorefeatureProfileChangedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_feature_profile_changed")
  var ptrCallRet: pointer
  fileSystemDockUnderscorefeatureProfileChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var fileSystemDockUnderscorefileListActivateFileMethodBind {.threadvar.}: ptr GodotMethodBind
method fileListActivateFile(self: FileSystemDock; arg0: int64) =
  if isNil(fileSystemDockUnderscorefileListActivateFileMethodBind):
    fileSystemDockUnderscorefileListActivateFileMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_list_activate_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  fileSystemDockUnderscorefileListActivateFileMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscorefileListGuiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method fileListGuiInput(self: FileSystemDock; arg0: InputEvent) =
  if isNil(fileSystemDockUnderscorefileListGuiInputMethodBind):
    fileSystemDockUnderscorefileListGuiInputMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_list_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  fileSystemDockUnderscorefileListGuiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscorefileListRmbOptionMethodBind {.threadvar.}: ptr GodotMethodBind
method fileListRmbOption(self: FileSystemDock; option: int64) =
  if isNil(fileSystemDockUnderscorefileListRmbOptionMethodBind):
    fileSystemDockUnderscorefileListRmbOptionMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_list_rmb_option")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(option)
  var ptrCallRet: pointer
  fileSystemDockUnderscorefileListRmbOptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscorefileListRmbPressedMethodBind {.threadvar.}: ptr GodotMethodBind
method fileListRmbPressed(self: FileSystemDock; arg0: Vector2) =
  if isNil(fileSystemDockUnderscorefileListRmbPressedMethodBind):
    fileSystemDockUnderscorefileListRmbPressedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_list_rmb_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  fileSystemDockUnderscorefileListRmbPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscorefileListRmbSelectMethodBind {.threadvar.}: ptr GodotMethodBind
method fileListRmbSelect(self: FileSystemDock; arg0: int64; arg1: Vector2) =
  if isNil(fileSystemDockUnderscorefileListRmbSelectMethodBind):
    fileSystemDockUnderscorefileListRmbSelectMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_list_rmb_select")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  fileSystemDockUnderscorefileListRmbSelectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscorefileListThumbnailDoneMethodBind {.threadvar.}: ptr GodotMethodBind
method fileListThumbnailDone(self: FileSystemDock; arg0: string; arg1: Texture;
                            arg2: Texture; arg3: Variant) =
  if isNil(fileSystemDockUnderscorefileListThumbnailDoneMethodBind):
    fileSystemDockUnderscorefileListThumbnailDoneMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_list_thumbnail_done")
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
  fileSystemDockUnderscorefileListThumbnailDoneMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscorefileMultiSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method fileMultiSelected(self: FileSystemDock; arg0: int64; arg1: bool) =
  if isNil(fileSystemDockUnderscorefileMultiSelectedMethodBind):
    fileSystemDockUnderscorefileMultiSelectedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_multi_selected")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  fileSystemDockUnderscorefileMultiSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscorefileRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method fileRemoved(self: FileSystemDock; arg0: string) =
  if isNil(fileSystemDockUnderscorefileRemovedMethodBind):
    fileSystemDockUnderscorefileRemovedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_file_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileSystemDockUnderscorefileRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscorefolderRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method folderRemoved(self: FileSystemDock; arg0: string) =
  if isNil(fileSystemDockUnderscorefolderRemovedMethodBind):
    fileSystemDockUnderscorefolderRemovedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_folder_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileSystemDockUnderscorefolderRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscorefsChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method fsChanged(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscorefsChangedMethodBind):
    fileSystemDockUnderscorefsChangedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_fs_changed")
  var ptrCallRet: pointer
  fileSystemDockUnderscorefsChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileSystemDockUnderscorefwHistoryMethodBind {.threadvar.}: ptr GodotMethodBind
method fwHistory(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscorefwHistoryMethodBind):
    fileSystemDockUnderscorefwHistoryMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_fw_history")
  var ptrCallRet: pointer
  fileSystemDockUnderscorefwHistoryMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileSystemDockUnderscoremakeDirConfirmMethodBind {.threadvar.}: ptr GodotMethodBind
method makeDirConfirm(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoremakeDirConfirmMethodBind):
    fileSystemDockUnderscoremakeDirConfirmMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_make_dir_confirm")
  var ptrCallRet: pointer
  fileSystemDockUnderscoremakeDirConfirmMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileSystemDockUnderscoremakeSceneConfirmMethodBind {.threadvar.}: ptr GodotMethodBind
method makeSceneConfirm(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoremakeSceneConfirmMethodBind):
    fileSystemDockUnderscoremakeSceneConfirmMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_make_scene_confirm")
  var ptrCallRet: pointer
  fileSystemDockUnderscoremakeSceneConfirmMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var fileSystemDockUnderscoremoveOperationConfirmMethodBind {.threadvar.}: ptr GodotMethodBind
method moveOperationConfirm(self: FileSystemDock; toPath: string;
                           overwrite: bool = false) =
  if isNil(fileSystemDockUnderscoremoveOperationConfirmMethodBind):
    fileSystemDockUnderscoremoveOperationConfirmMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_move_operation_confirm")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(toPath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(overwrite)
  var ptrCallRet: pointer
  fileSystemDockUnderscoremoveOperationConfirmMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscoremoveWithOverwriteMethodBind {.threadvar.}: ptr GodotMethodBind
method moveWithOverwrite(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoremoveWithOverwriteMethodBind):
    fileSystemDockUnderscoremoveWithOverwriteMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_move_with_overwrite")
  var ptrCallRet: pointer
  fileSystemDockUnderscoremoveWithOverwriteMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var fileSystemDockUnderscorenavigateToPathMethodBind {.threadvar.}: ptr GodotMethodBind
method navigateToPath(self: FileSystemDock; arg0: string; arg1: bool = false) =
  if isNil(fileSystemDockUnderscorenavigateToPathMethodBind):
    fileSystemDockUnderscorenavigateToPathMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_navigate_to_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  fileSystemDockUnderscorenavigateToPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscorepreviewInvalidatedMethodBind {.threadvar.}: ptr GodotMethodBind
method previewInvalidated(self: FileSystemDock; arg0: string) =
  if isNil(fileSystemDockUnderscorepreviewInvalidatedMethodBind):
    fileSystemDockUnderscorepreviewInvalidatedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_preview_invalidated")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileSystemDockUnderscorepreviewInvalidatedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscorerenameOperationConfirmMethodBind {.threadvar.}: ptr GodotMethodBind
method renameOperationConfirm(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscorerenameOperationConfirmMethodBind):
    fileSystemDockUnderscorerenameOperationConfirmMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_rename_operation_confirm")
  var ptrCallRet: pointer
  fileSystemDockUnderscorerenameOperationConfirmMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var fileSystemDockUnderscorerescanMethodBind {.threadvar.}: ptr GodotMethodBind
method rescan(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscorerescanMethodBind):
    fileSystemDockUnderscorerescanMethodBind = getMethod(cstring"FileSystemDock",
        cstring"_rescan")
  var ptrCallRet: pointer
  fileSystemDockUnderscorerescanMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var fileSystemDockUnderscoreresourceCreatedMethodBind {.threadvar.}: ptr GodotMethodBind
method resourceCreated(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoreresourceCreatedMethodBind):
    fileSystemDockUnderscoreresourceCreatedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_resource_created")
  var ptrCallRet: pointer
  fileSystemDockUnderscoreresourceCreatedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var fileSystemDockUnderscoresearchChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method searchChanged(self: FileSystemDock; arg0: string; arg1: Control) =
  if isNil(fileSystemDockUnderscoresearchChangedMethodBind):
    fileSystemDockUnderscoresearchChangedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_search_changed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  fileSystemDockUnderscoresearchChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscoreselectFileMethodBind {.threadvar.}: ptr GodotMethodBind
method selectFile(self: FileSystemDock; arg0: string; arg1: bool) =
  if isNil(fileSystemDockUnderscoreselectFileMethodBind):
    fileSystemDockUnderscoreselectFileMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_select_file")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  fileSystemDockUnderscoreselectFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscoretoggleFileDisplayMethodBind {.threadvar.}: ptr GodotMethodBind
method toggleFileDisplay(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoretoggleFileDisplayMethodBind):
    fileSystemDockUnderscoretoggleFileDisplayMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_toggle_file_display")
  var ptrCallRet: pointer
  fileSystemDockUnderscoretoggleFileDisplayMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var fileSystemDockUnderscoretoggleSplitModeMethodBind {.threadvar.}: ptr GodotMethodBind
method toggleSplitMode(self: FileSystemDock; arg0: bool) =
  if isNil(fileSystemDockUnderscoretoggleSplitModeMethodBind):
    fileSystemDockUnderscoretoggleSplitModeMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_toggle_split_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  fileSystemDockUnderscoretoggleSplitModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscoretreeActivateFileMethodBind {.threadvar.}: ptr GodotMethodBind
method treeActivateFile(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoretreeActivateFileMethodBind):
    fileSystemDockUnderscoretreeActivateFileMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_activate_file")
  var ptrCallRet: pointer
  fileSystemDockUnderscoretreeActivateFileMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var fileSystemDockUnderscoretreeEmptySelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeEmptySelected(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoretreeEmptySelectedMethodBind):
    fileSystemDockUnderscoretreeEmptySelectedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_empty_selected")
  var ptrCallRet: pointer
  fileSystemDockUnderscoretreeEmptySelectedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var fileSystemDockUnderscoretreeGuiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method treeGuiInput(self: FileSystemDock; arg0: InputEvent) =
  if isNil(fileSystemDockUnderscoretreeGuiInputMethodBind):
    fileSystemDockUnderscoretreeGuiInputMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  fileSystemDockUnderscoretreeGuiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscoretreeMultiSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeMultiSelected(self: FileSystemDock; arg0: Object; arg1: int64; arg2: bool) =
  if isNil(fileSystemDockUnderscoretreeMultiSelectedMethodBind):
    fileSystemDockUnderscoretreeMultiSelectedMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_multi_selected")
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
  fileSystemDockUnderscoretreeMultiSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscoretreeRmbEmptyMethodBind {.threadvar.}: ptr GodotMethodBind
method treeRmbEmpty(self: FileSystemDock; arg0: Vector2) =
  if isNil(fileSystemDockUnderscoretreeRmbEmptyMethodBind):
    fileSystemDockUnderscoretreeRmbEmptyMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_rmb_empty")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  fileSystemDockUnderscoretreeRmbEmptyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscoretreeRmbOptionMethodBind {.threadvar.}: ptr GodotMethodBind
method treeRmbOption(self: FileSystemDock; option: int64) =
  if isNil(fileSystemDockUnderscoretreeRmbOptionMethodBind):
    fileSystemDockUnderscoretreeRmbOptionMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_rmb_option")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(option)
  var ptrCallRet: pointer
  fileSystemDockUnderscoretreeRmbOptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscoretreeRmbSelectMethodBind {.threadvar.}: ptr GodotMethodBind
method treeRmbSelect(self: FileSystemDock; arg0: Vector2) =
  if isNil(fileSystemDockUnderscoretreeRmbSelectMethodBind):
    fileSystemDockUnderscoretreeRmbSelectMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_rmb_select")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  fileSystemDockUnderscoretreeRmbSelectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockUnderscoretreeThumbnailDoneMethodBind {.threadvar.}: ptr GodotMethodBind
method treeThumbnailDone(self: FileSystemDock; arg0: string; arg1: Texture;
                        arg2: Texture; arg3: Variant) =
  if isNil(fileSystemDockUnderscoretreeThumbnailDoneMethodBind):
    fileSystemDockUnderscoretreeThumbnailDoneMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_tree_thumbnail_done")
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
  fileSystemDockUnderscoretreeThumbnailDoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fileSystemDockUnderscoreupdateImportDockMethodBind {.threadvar.}: ptr GodotMethodBind
method updateImportDock(self: FileSystemDock) =
  if isNil(fileSystemDockUnderscoreupdateImportDockMethodBind):
    fileSystemDockUnderscoreupdateImportDockMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_update_import_dock")
  var ptrCallRet: pointer
  fileSystemDockUnderscoreupdateImportDockMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var fileSystemDockUnderscoreupdateTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method updateTree(self: FileSystemDock; arg0: PoolStringArray; arg1: bool; arg2: bool;
                 arg3: bool) =
  if isNil(fileSystemDockUnderscoreupdateTreeMethodBind):
    fileSystemDockUnderscoreupdateTreeMethodBind = getMethod(
        cstring"FileSystemDock", cstring"_update_tree")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotPoolStringArray
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  argsToPassToGodot[][2] = unsafeAddr(arg2)
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  var ptrCallRet: pointer
  fileSystemDockUnderscoreupdateTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockCanDropDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc canDropDataFw(self: FileSystemDock; arg0: Vector2; arg1: Variant; arg2: Control): bool =
  if isNil(fileSystemDockCanDropDataFwMethodBind):
    fileSystemDockCanDropDataFwMethodBind = getMethod(cstring"FileSystemDock",
        cstring"can_drop_data_fw")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = arg1.godotVariant
  let argToPassToGodot2 = if not arg2.isNil:
    arg2.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fileSystemDockCanDropDataFwMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var fileSystemDockDropDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc dropDataFw(self: FileSystemDock; arg0: Vector2; arg1: Variant; arg2: Control) =
  if isNil(fileSystemDockDropDataFwMethodBind):
    fileSystemDockDropDataFwMethodBind = getMethod(cstring"FileSystemDock",
        cstring"drop_data_fw")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = arg1.godotVariant
  let argToPassToGodot2 = if not arg2.isNil:
    arg2.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  fileSystemDockDropDataFwMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var fileSystemDockGetDragDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDragDataFw(self: FileSystemDock; arg0: Vector2; arg1: Control): Variant =
  if isNil(fileSystemDockGetDragDataFwMethodBind):
    fileSystemDockGetDragDataFwMethodBind = getMethod(cstring"FileSystemDock",
        cstring"get_drag_data_fw")
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
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  fileSystemDockGetDragDataFwMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var fileSystemDockNavigateToPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc navigateToPathImpl(self: FileSystemDock; arg0: string) =
  if isNil(fileSystemDockNavigateToPathMethodBind):
    fileSystemDockNavigateToPathMethodBind = getMethod(cstring"FileSystemDock",
        cstring"navigate_to_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  fileSystemDockNavigateToPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
