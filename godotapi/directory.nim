
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc changeDir*(self: Directory; todir: string): Error {.gcsafe, locks: 0.}
proc copy*(self: Directory; fromm: string; to: string): Error {.gcsafe, locks: 0.}
proc currentIsDir*(self: Directory): bool {.gcsafe, locks: 0.}
proc dirExists*(self: Directory; path: string): bool {.gcsafe, locks: 0.}
proc fileExists*(self: Directory; path: string): bool {.gcsafe, locks: 0.}
proc getCurrentDir*(self: Directory): string {.gcsafe, locks: 0.}
proc getCurrentDrive*(self: Directory): int64 {.gcsafe, locks: 0.}
proc getDrive*(self: Directory; idx: int64): string {.gcsafe, locks: 0.}
proc getDriveCount*(self: Directory): int64 {.gcsafe, locks: 0.}
proc getNext*(self: Directory): string {.gcsafe, locks: 0.}
proc getSpaceLeft*(self: Directory): int64 {.gcsafe, locks: 0.}
proc listDirBegin*(self: Directory; skipNavigational: bool = false;
                  skipHidden: bool = false): Error {.gcsafe, locks: 0.}
proc listDirEnd*(self: Directory) {.gcsafe, locks: 0.}
proc makeDir*(self: Directory; path: string): Error {.gcsafe, locks: 0.}
proc makeDirRecursive*(self: Directory; path: string): Error {.gcsafe, locks: 0.}
proc open*(self: Directory; path: string): Error {.gcsafe, locks: 0.}
proc remove*(self: Directory; path: string): Error {.gcsafe, locks: 0.}
proc rename*(self: Directory; fromm: string; to: string): Error {.gcsafe, locks: 0.}
var directoryChangeDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc changeDir(self: Directory; todir: string): Error =
  if isNil(directoryChangeDirMethodBind):
    directoryChangeDirMethodBind = getMethod(cstring"_Directory",
        cstring"change_dir")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(todir)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryChangeDirMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var directoryCopyMethodBind {.threadvar.}: ptr GodotMethodBind
proc copy(self: Directory; fromm: string; to: string): Error =
  if isNil(directoryCopyMethodBind):
    directoryCopyMethodBind = getMethod(cstring"_Directory", cstring"copy")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(to)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryCopyMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var directoryCurrentIsDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentIsDir(self: Directory): bool =
  if isNil(directoryCurrentIsDirMethodBind):
    directoryCurrentIsDirMethodBind = getMethod(cstring"_Directory",
        cstring"current_is_dir")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directoryCurrentIsDirMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var directoryDirExistsMethodBind {.threadvar.}: ptr GodotMethodBind
proc dirExists(self: Directory; path: string): bool =
  if isNil(directoryDirExistsMethodBind):
    directoryDirExistsMethodBind = getMethod(cstring"_Directory",
        cstring"dir_exists")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directoryDirExistsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var directoryFileExistsMethodBind {.threadvar.}: ptr GodotMethodBind
proc fileExists(self: Directory; path: string): bool =
  if isNil(directoryFileExistsMethodBind):
    directoryFileExistsMethodBind = getMethod(cstring"_Directory",
        cstring"file_exists")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directoryFileExistsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var directoryGetCurrentDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentDir(self: Directory): string =
  if isNil(directoryGetCurrentDirMethodBind):
    directoryGetCurrentDirMethodBind = getMethod(cstring"_Directory",
        cstring"get_current_dir")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  directoryGetCurrentDirMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var directoryGetCurrentDriveMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentDrive(self: Directory): int64 =
  if isNil(directoryGetCurrentDriveMethodBind):
    directoryGetCurrentDriveMethodBind = getMethod(cstring"_Directory",
        cstring"get_current_drive")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directoryGetCurrentDriveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var directoryGetDriveMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDrive(self: Directory; idx: int64): string =
  if isNil(directoryGetDriveMethodBind):
    directoryGetDriveMethodBind = getMethod(cstring"_Directory",
        cstring"get_drive")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  directoryGetDriveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var directoryGetDriveCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDriveCount(self: Directory): int64 =
  if isNil(directoryGetDriveCountMethodBind):
    directoryGetDriveCountMethodBind = getMethod(cstring"_Directory",
        cstring"get_drive_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directoryGetDriveCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var directoryGetNextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNext(self: Directory): string =
  if isNil(directoryGetNextMethodBind):
    directoryGetNextMethodBind = getMethod(cstring"_Directory", cstring"get_next")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  directoryGetNextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var directoryGetSpaceLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSpaceLeft(self: Directory): int64 =
  if isNil(directoryGetSpaceLeftMethodBind):
    directoryGetSpaceLeftMethodBind = getMethod(cstring"_Directory",
        cstring"get_space_left")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  directoryGetSpaceLeftMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var directoryListDirBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc listDirBegin(self: Directory; skipNavigational: bool = false;
                 skipHidden: bool = false): Error =
  if isNil(directoryListDirBeginMethodBind):
    directoryListDirBeginMethodBind = getMethod(cstring"_Directory",
        cstring"list_dir_begin")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(skipNavigational)
  argsToPassToGodot[][1] = unsafeAddr(skipHidden)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryListDirBeginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var directoryListDirEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc listDirEnd(self: Directory) =
  if isNil(directoryListDirEndMethodBind):
    directoryListDirEndMethodBind = getMethod(cstring"_Directory",
        cstring"list_dir_end")
  var ptrCallRet: pointer
  directoryListDirEndMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var directoryMakeDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeDir(self: Directory; path: string): Error =
  if isNil(directoryMakeDirMethodBind):
    directoryMakeDirMethodBind = getMethod(cstring"_Directory", cstring"make_dir")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryMakeDirMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var directoryMakeDirRecursiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeDirRecursive(self: Directory; path: string): Error =
  if isNil(directoryMakeDirRecursiveMethodBind):
    directoryMakeDirRecursiveMethodBind = getMethod(cstring"_Directory",
        cstring"make_dir_recursive")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryMakeDirRecursiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var directoryOpenMethodBind {.threadvar.}: ptr GodotMethodBind
proc open(self: Directory; path: string): Error =
  if isNil(directoryOpenMethodBind):
    directoryOpenMethodBind = getMethod(cstring"_Directory", cstring"open")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryOpenMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var directoryRemoveMethodBind {.threadvar.}: ptr GodotMethodBind
proc remove(self: Directory; path: string): Error =
  if isNil(directoryRemoveMethodBind):
    directoryRemoveMethodBind = getMethod(cstring"_Directory", cstring"remove")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryRemoveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var directoryRenameMethodBind {.threadvar.}: ptr GodotMethodBind
proc rename(self: Directory; fromm: string; to: string): Error =
  if isNil(directoryRenameMethodBind):
    directoryRenameMethodBind = getMethod(cstring"_Directory", cstring"rename")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(to)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  directoryRenameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)
