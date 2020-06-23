
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

method commit*(self: EditorVCSInterface; msg: string) {.gcsafe, locks: 0, base.}
method getFileDiff*(self: EditorVCSInterface; filePath: string): Array {.gcsafe,
    locks: 0, base.}
method getModifiedFilesData*(self: EditorVCSInterface): Dictionary {.gcsafe,
    locks: 0, base.}
method getProjectName*(self: EditorVCSInterface): string {.gcsafe, locks: 0, base.}
method getVcsName*(self: EditorVCSInterface): string {.gcsafe, locks: 0, base.}
method initialize*(self: EditorVCSInterface; projectRootPath: string): bool {.gcsafe,
    locks: 0, base.}
method isVcsInitialized*(self: EditorVCSInterface): bool {.gcsafe, locks: 0, base.}
method shutDown*(self: EditorVCSInterface): bool {.gcsafe, locks: 0, base.}
method stageFile*(self: EditorVCSInterface; filePath: string) {.gcsafe, locks: 0, base.}
method unstageFile*(self: EditorVCSInterface; filePath: string) {.gcsafe, locks: 0, base.}
proc commitImpl*(self: EditorVCSInterface; msg: string) {.gcsafe, locks: 0.}
proc getFileDiffImpl*(self: EditorVCSInterface; filePath: string): Array {.gcsafe,
    locks: 0.}
proc getModifiedFilesDataImpl*(self: EditorVCSInterface): Dictionary {.gcsafe,
    locks: 0.}
proc getProjectNameImpl*(self: EditorVCSInterface): string {.gcsafe, locks: 0.}
proc getVcsNameImpl*(self: EditorVCSInterface): string {.gcsafe, locks: 0.}
proc initializeImpl*(self: EditorVCSInterface; projectRootPath: string): bool {.
    gcsafe, locks: 0.}
proc isAddonReady*(self: EditorVCSInterface): bool {.gcsafe, locks: 0.}
proc isVcsInitializedImpl*(self: EditorVCSInterface): bool {.gcsafe, locks: 0.}
proc shutDownImpl*(self: EditorVCSInterface): bool {.gcsafe, locks: 0.}
proc stageFileImpl*(self: EditorVCSInterface; filePath: string) {.gcsafe, locks: 0.}
proc unstageFileImpl*(self: EditorVCSInterface; filePath: string) {.gcsafe, locks: 0.}
var editorVCSInterfaceUnderscorecommitMethodBind {.threadvar.}: ptr GodotMethodBind
method commit(self: EditorVCSInterface; msg: string) =
  if isNil(editorVCSInterfaceUnderscorecommitMethodBind):
    editorVCSInterfaceUnderscorecommitMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_commit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(msg)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorVCSInterfaceUnderscorecommitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorVCSInterfaceUnderscoregetFileDiffMethodBind {.threadvar.}: ptr GodotMethodBind
method getFileDiff(self: EditorVCSInterface; filePath: string): Array =
  if isNil(editorVCSInterfaceUnderscoregetFileDiffMethodBind):
    editorVCSInterfaceUnderscoregetFileDiffMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_get_file_diff")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filePath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceUnderscoregetFileDiffMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var editorVCSInterfaceUnderscoregetModifiedFilesDataMethodBind {.threadvar.}: ptr GodotMethodBind
method getModifiedFilesData(self: EditorVCSInterface): Dictionary =
  if isNil(editorVCSInterfaceUnderscoregetModifiedFilesDataMethodBind):
    editorVCSInterfaceUnderscoregetModifiedFilesDataMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_get_modified_files_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceUnderscoregetModifiedFilesDataMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var editorVCSInterfaceUnderscoregetProjectNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getProjectName(self: EditorVCSInterface): string =
  if isNil(editorVCSInterfaceUnderscoregetProjectNameMethodBind):
    editorVCSInterfaceUnderscoregetProjectNameMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_get_project_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceUnderscoregetProjectNameMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorVCSInterfaceUnderscoregetVcsNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getVcsName(self: EditorVCSInterface): string =
  if isNil(editorVCSInterfaceUnderscoregetVcsNameMethodBind):
    editorVCSInterfaceUnderscoregetVcsNameMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_get_vcs_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceUnderscoregetVcsNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorVCSInterfaceUnderscoreinitializeMethodBind {.threadvar.}: ptr GodotMethodBind
method initialize(self: EditorVCSInterface; projectRootPath: string): bool =
  if isNil(editorVCSInterfaceUnderscoreinitializeMethodBind):
    editorVCSInterfaceUnderscoreinitializeMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_initialize")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(projectRootPath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorVCSInterfaceUnderscoreinitializeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorVCSInterfaceUnderscoreisVcsInitializedMethodBind {.threadvar.}: ptr GodotMethodBind
method isVcsInitialized(self: EditorVCSInterface): bool =
  if isNil(editorVCSInterfaceUnderscoreisVcsInitializedMethodBind):
    editorVCSInterfaceUnderscoreisVcsInitializedMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_is_vcs_initialized")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorVCSInterfaceUnderscoreisVcsInitializedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorVCSInterfaceUnderscoreshutDownMethodBind {.threadvar.}: ptr GodotMethodBind
method shutDown(self: EditorVCSInterface): bool =
  if isNil(editorVCSInterfaceUnderscoreshutDownMethodBind):
    editorVCSInterfaceUnderscoreshutDownMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_shut_down")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorVCSInterfaceUnderscoreshutDownMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorVCSInterfaceUnderscorestageFileMethodBind {.threadvar.}: ptr GodotMethodBind
method stageFile(self: EditorVCSInterface; filePath: string) =
  if isNil(editorVCSInterfaceUnderscorestageFileMethodBind):
    editorVCSInterfaceUnderscorestageFileMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_stage_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filePath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorVCSInterfaceUnderscorestageFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorVCSInterfaceUnderscoreunstageFileMethodBind {.threadvar.}: ptr GodotMethodBind
method unstageFile(self: EditorVCSInterface; filePath: string) =
  if isNil(editorVCSInterfaceUnderscoreunstageFileMethodBind):
    editorVCSInterfaceUnderscoreunstageFileMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"_unstage_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filePath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorVCSInterfaceUnderscoreunstageFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorVCSInterfaceCommitMethodBind {.threadvar.}: ptr GodotMethodBind
proc commitImpl(self: EditorVCSInterface; msg: string) =
  if isNil(editorVCSInterfaceCommitMethodBind):
    editorVCSInterfaceCommitMethodBind = getMethod(cstring"EditorVCSInterface",
        cstring"commit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(msg)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorVCSInterfaceCommitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var editorVCSInterfaceGetFileDiffMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileDiffImpl(self: EditorVCSInterface; filePath: string): Array =
  if isNil(editorVCSInterfaceGetFileDiffMethodBind):
    editorVCSInterfaceGetFileDiffMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"get_file_diff")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filePath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceGetFileDiffMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var editorVCSInterfaceGetModifiedFilesDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getModifiedFilesDataImpl(self: EditorVCSInterface): Dictionary =
  if isNil(editorVCSInterfaceGetModifiedFilesDataMethodBind):
    editorVCSInterfaceGetModifiedFilesDataMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"get_modified_files_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceGetModifiedFilesDataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var editorVCSInterfaceGetProjectNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProjectNameImpl(self: EditorVCSInterface): string =
  if isNil(editorVCSInterfaceGetProjectNameMethodBind):
    editorVCSInterfaceGetProjectNameMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"get_project_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceGetProjectNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorVCSInterfaceGetVcsNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVcsNameImpl(self: EditorVCSInterface): string =
  if isNil(editorVCSInterfaceGetVcsNameMethodBind):
    editorVCSInterfaceGetVcsNameMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"get_vcs_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorVCSInterfaceGetVcsNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorVCSInterfaceInitializeMethodBind {.threadvar.}: ptr GodotMethodBind
proc initializeImpl(self: EditorVCSInterface; projectRootPath: string): bool =
  if isNil(editorVCSInterfaceInitializeMethodBind):
    editorVCSInterfaceInitializeMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"initialize")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(projectRootPath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorVCSInterfaceInitializeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorVCSInterfaceIsAddonReadyMethodBind {.threadvar.}: ptr GodotMethodBind
proc isAddonReady(self: EditorVCSInterface): bool =
  if isNil(editorVCSInterfaceIsAddonReadyMethodBind):
    editorVCSInterfaceIsAddonReadyMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"is_addon_ready")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorVCSInterfaceIsAddonReadyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorVCSInterfaceIsVcsInitializedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isVcsInitializedImpl(self: EditorVCSInterface): bool =
  if isNil(editorVCSInterfaceIsVcsInitializedMethodBind):
    editorVCSInterfaceIsVcsInitializedMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"is_vcs_initialized")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorVCSInterfaceIsVcsInitializedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorVCSInterfaceShutDownMethodBind {.threadvar.}: ptr GodotMethodBind
proc shutDownImpl(self: EditorVCSInterface): bool =
  if isNil(editorVCSInterfaceShutDownMethodBind):
    editorVCSInterfaceShutDownMethodBind = getMethod(cstring"EditorVCSInterface",
        cstring"shut_down")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorVCSInterfaceShutDownMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorVCSInterfaceStageFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc stageFileImpl(self: EditorVCSInterface; filePath: string) =
  if isNil(editorVCSInterfaceStageFileMethodBind):
    editorVCSInterfaceStageFileMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"stage_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filePath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorVCSInterfaceStageFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorVCSInterfaceUnstageFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc unstageFileImpl(self: EditorVCSInterface; filePath: string) =
  if isNil(editorVCSInterfaceUnstageFileMethodBind):
    editorVCSInterfaceUnstageFileMethodBind = getMethod(
        cstring"EditorVCSInterface", cstring"unstage_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filePath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorVCSInterfaceUnstageFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
