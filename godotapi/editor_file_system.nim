
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

proc getFileType*(self: EditorFileSystem; path: string): string {.gcsafe, locks: 0.}
proc getFilesystem*(self: EditorFileSystem): EditorFileSystemDirectory {.gcsafe,
    locks: 0.}
proc getFilesystemPath*(self: EditorFileSystem; path: string): EditorFileSystemDirectory {.
    gcsafe, locks: 0.}
proc getScanningProgress*(self: EditorFileSystem): float64 {.gcsafe, locks: 0.}
proc isScanning*(self: EditorFileSystem): bool {.gcsafe, locks: 0.}
proc scan*(self: EditorFileSystem) {.gcsafe, locks: 0.}
proc scanSources*(self: EditorFileSystem) {.gcsafe, locks: 0.}
proc updateFile*(self: EditorFileSystem; path: string) {.gcsafe, locks: 0.}
proc updateScriptClasses*(self: EditorFileSystem) {.gcsafe, locks: 0.}
var editorFileSystemGetFileTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileType(self: EditorFileSystem; path: string): string =
  if isNil(editorFileSystemGetFileTypeMethodBind):
    editorFileSystemGetFileTypeMethodBind = getMethod(cstring"EditorFileSystem",
        cstring"get_file_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemGetFileTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemGetFilesystemMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFilesystem(self: EditorFileSystem): EditorFileSystemDirectory =
  if isNil(editorFileSystemGetFilesystemMethodBind):
    editorFileSystemGetFilesystemMethodBind = getMethod(
        cstring"EditorFileSystem", cstring"get_filesystem")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemGetFilesystemMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorFileSystemGetFilesystemPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFilesystemPath(self: EditorFileSystem; path: string): EditorFileSystemDirectory =
  if isNil(editorFileSystemGetFilesystemPathMethodBind):
    editorFileSystemGetFilesystemPathMethodBind = getMethod(
        cstring"EditorFileSystem", cstring"get_filesystem_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemGetFilesystemPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorFileSystemGetScanningProgressMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScanningProgress(self: EditorFileSystem): float64 =
  if isNil(editorFileSystemGetScanningProgressMethodBind):
    editorFileSystemGetScanningProgressMethodBind = getMethod(
        cstring"EditorFileSystem", cstring"get_scanning_progress")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileSystemGetScanningProgressMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileSystemIsScanningMethodBind {.threadvar.}: ptr GodotMethodBind
proc isScanning(self: EditorFileSystem): bool =
  if isNil(editorFileSystemIsScanningMethodBind):
    editorFileSystemIsScanningMethodBind = getMethod(cstring"EditorFileSystem",
        cstring"is_scanning")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileSystemIsScanningMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorFileSystemScanMethodBind {.threadvar.}: ptr GodotMethodBind
proc scan(self: EditorFileSystem) =
  if isNil(editorFileSystemScanMethodBind):
    editorFileSystemScanMethodBind = getMethod(cstring"EditorFileSystem",
        cstring"scan")
  var ptrCallRet: pointer
  editorFileSystemScanMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorFileSystemScanSourcesMethodBind {.threadvar.}: ptr GodotMethodBind
proc scanSources(self: EditorFileSystem) =
  if isNil(editorFileSystemScanSourcesMethodBind):
    editorFileSystemScanSourcesMethodBind = getMethod(cstring"EditorFileSystem",
        cstring"scan_sources")
  var ptrCallRet: pointer
  editorFileSystemScanSourcesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorFileSystemUpdateFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateFile(self: EditorFileSystem; path: string) =
  if isNil(editorFileSystemUpdateFileMethodBind):
    editorFileSystemUpdateFileMethodBind = getMethod(cstring"EditorFileSystem",
        cstring"update_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorFileSystemUpdateFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileSystemUpdateScriptClassesMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateScriptClasses(self: EditorFileSystem) =
  if isNil(editorFileSystemUpdateScriptClassesMethodBind):
    editorFileSystemUpdateScriptClassesMethodBind = getMethod(
        cstring"EditorFileSystem", cstring"update_script_classes")
  var ptrCallRet: pointer
  editorFileSystemUpdateScriptClassesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
