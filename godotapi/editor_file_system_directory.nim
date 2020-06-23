
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

proc findDirIndex*(self: EditorFileSystemDirectory; name: string): int64 {.gcsafe,
    locks: 0.}
proc findFileIndex*(self: EditorFileSystemDirectory; name: string): int64 {.gcsafe,
    locks: 0.}
proc getFile*(self: EditorFileSystemDirectory; idx: int64): string {.gcsafe, locks: 0.}
proc getFileCount*(self: EditorFileSystemDirectory): int64 {.gcsafe, locks: 0.}
proc getFileImportIsValid*(self: EditorFileSystemDirectory; idx: int64): bool {.
    gcsafe, locks: 0.}
proc getFilePath*(self: EditorFileSystemDirectory; idx: int64): string {.gcsafe,
    locks: 0.}
proc getFileScriptClassExtends*(self: EditorFileSystemDirectory; idx: int64): string {.
    gcsafe, locks: 0.}
proc getFileScriptClassName*(self: EditorFileSystemDirectory; idx: int64): string {.
    gcsafe, locks: 0.}
proc getFileType*(self: EditorFileSystemDirectory; idx: int64): string {.gcsafe,
    locks: 0.}
proc getName*(self: EditorFileSystemDirectory): string {.gcsafe, locks: 0.}
proc getParent*(self: EditorFileSystemDirectory): EditorFileSystemDirectory {.
    gcsafe, locks: 0.}
proc getPath*(self: EditorFileSystemDirectory): string {.gcsafe, locks: 0.}
proc getSubdir*(self: EditorFileSystemDirectory; idx: int64): EditorFileSystemDirectory {.
    gcsafe, locks: 0.}
proc getSubdirCount*(self: EditorFileSystemDirectory): int64 {.gcsafe, locks: 0.}
var editorFileSystemDirectoryFindDirIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc findDirIndex(self: EditorFileSystemDirectory; name: string): int64 =
  if isNil(editorFileSystemDirectoryFindDirIndexMethodBind):
    editorFileSystemDirectoryFindDirIndexMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"find_dir_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileSystemDirectoryFindDirIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileSystemDirectoryFindFileIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc findFileIndex(self: EditorFileSystemDirectory; name: string): int64 =
  if isNil(editorFileSystemDirectoryFindFileIndexMethodBind):
    editorFileSystemDirectoryFindFileIndexMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"find_file_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileSystemDirectoryFindFileIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFileSystemDirectoryGetFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFile(self: EditorFileSystemDirectory; idx: int64): string =
  if isNil(editorFileSystemDirectoryGetFileMethodBind):
    editorFileSystemDirectoryGetFileMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemDirectoryGetFileCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileCount(self: EditorFileSystemDirectory): int64 =
  if isNil(editorFileSystemDirectoryGetFileCountMethodBind):
    editorFileSystemDirectoryGetFileCountMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_file_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileSystemDirectoryGetFileCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorFileSystemDirectoryGetFileImportIsValidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileImportIsValid(self: EditorFileSystemDirectory; idx: int64): bool =
  if isNil(editorFileSystemDirectoryGetFileImportIsValidMethodBind):
    editorFileSystemDirectoryGetFileImportIsValidMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_file_import_is_valid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileSystemDirectoryGetFileImportIsValidMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var editorFileSystemDirectoryGetFilePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFilePath(self: EditorFileSystemDirectory; idx: int64): string =
  if isNil(editorFileSystemDirectoryGetFilePathMethodBind):
    editorFileSystemDirectoryGetFilePathMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_file_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetFilePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemDirectoryGetFileScriptClassExtendsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileScriptClassExtends(self: EditorFileSystemDirectory; idx: int64): string =
  if isNil(editorFileSystemDirectoryGetFileScriptClassExtendsMethodBind):
    editorFileSystemDirectoryGetFileScriptClassExtendsMethodBind = getMethod(
        cstring"EditorFileSystemDirectory",
        cstring"get_file_script_class_extends")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetFileScriptClassExtendsMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemDirectoryGetFileScriptClassNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileScriptClassName(self: EditorFileSystemDirectory; idx: int64): string =
  if isNil(editorFileSystemDirectoryGetFileScriptClassNameMethodBind):
    editorFileSystemDirectoryGetFileScriptClassNameMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_file_script_class_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetFileScriptClassNameMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemDirectoryGetFileTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileType(self: EditorFileSystemDirectory; idx: int64): string =
  if isNil(editorFileSystemDirectoryGetFileTypeMethodBind):
    editorFileSystemDirectoryGetFileTypeMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_file_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetFileTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemDirectoryGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getName(self: EditorFileSystemDirectory): string =
  if isNil(editorFileSystemDirectoryGetNameMethodBind):
    editorFileSystemDirectoryGetNameMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemDirectoryGetParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParent(self: EditorFileSystemDirectory): EditorFileSystemDirectory =
  if isNil(editorFileSystemDirectoryGetParentMethodBind):
    editorFileSystemDirectoryGetParentMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_parent")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetParentMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorFileSystemDirectoryGetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPath(self: EditorFileSystemDirectory): string =
  if isNil(editorFileSystemDirectoryGetPathMethodBind):
    editorFileSystemDirectoryGetPathMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFileSystemDirectoryGetSubdirMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSubdir(self: EditorFileSystemDirectory; idx: int64): EditorFileSystemDirectory =
  if isNil(editorFileSystemDirectoryGetSubdirMethodBind):
    editorFileSystemDirectoryGetSubdirMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_subdir")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorFileSystemDirectoryGetSubdirMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorFileSystemDirectoryGetSubdirCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSubdirCount(self: EditorFileSystemDirectory): int64 =
  if isNil(editorFileSystemDirectoryGetSubdirCountMethodBind):
    editorFileSystemDirectoryGetSubdirCountMethodBind = getMethod(
        cstring"EditorFileSystemDirectory", cstring"get_subdir_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFileSystemDirectoryGetSubdirCountMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
