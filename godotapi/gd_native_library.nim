
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc configFile*(self: GDNativeLibrary): ConfigFile {.gcsafe, locks: 0.}
proc `configFile=`*(self: GDNativeLibrary; val: ConfigFile) {.gcsafe, locks: 0.}
proc loadOnce*(self: GDNativeLibrary): bool {.gcsafe, locks: 0.}
proc `loadOnce=`*(self: GDNativeLibrary; val: bool) {.gcsafe, locks: 0.}
proc reloadable*(self: GDNativeLibrary): bool {.gcsafe, locks: 0.}
proc `reloadable=`*(self: GDNativeLibrary; val: bool) {.gcsafe, locks: 0.}
proc singleton*(self: GDNativeLibrary): bool {.gcsafe, locks: 0.}
proc `singleton=`*(self: GDNativeLibrary; val: bool) {.gcsafe, locks: 0.}
proc symbolPrefix*(self: GDNativeLibrary): string {.gcsafe, locks: 0.}
proc `symbolPrefix=`*(self: GDNativeLibrary; val: string) {.gcsafe, locks: 0.}
proc getCurrentDependencies*(self: GDNativeLibrary): PoolStringArray {.gcsafe,
    locks: 0.}
proc getCurrentLibraryPath*(self: GDNativeLibrary): string {.gcsafe, locks: 0.}
var gDNativeLibraryGetConfigFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc configFile(self: GDNativeLibrary): ConfigFile =
  if isNil(gDNativeLibraryGetConfigFileMethodBind):
    gDNativeLibraryGetConfigFileMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"get_config_file")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gDNativeLibraryGetConfigFileMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gDNativeLibrarySetConfigFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc `configFile=`(self: GDNativeLibrary; val: ConfigFile) =
  if isNil(gDNativeLibrarySetConfigFileMethodBind):
    gDNativeLibrarySetConfigFileMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"set_config_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gDNativeLibrarySetConfigFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gDNativeLibraryShouldLoadOnceMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadOnce(self: GDNativeLibrary): bool =
  if isNil(gDNativeLibraryShouldLoadOnceMethodBind):
    gDNativeLibraryShouldLoadOnceMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"should_load_once")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gDNativeLibraryShouldLoadOnceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gDNativeLibrarySetLoadOnceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loadOnce=`(self: GDNativeLibrary; val: bool) =
  if isNil(gDNativeLibrarySetLoadOnceMethodBind):
    gDNativeLibrarySetLoadOnceMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"set_load_once")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gDNativeLibrarySetLoadOnceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gDNativeLibraryIsReloadableMethodBind {.threadvar.}: ptr GodotMethodBind
proc reloadable(self: GDNativeLibrary): bool =
  if isNil(gDNativeLibraryIsReloadableMethodBind):
    gDNativeLibraryIsReloadableMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"is_reloadable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gDNativeLibraryIsReloadableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gDNativeLibrarySetReloadableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `reloadable=`(self: GDNativeLibrary; val: bool) =
  if isNil(gDNativeLibrarySetReloadableMethodBind):
    gDNativeLibrarySetReloadableMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"set_reloadable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gDNativeLibrarySetReloadableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gDNativeLibraryIsSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc singleton(self: GDNativeLibrary): bool =
  if isNil(gDNativeLibraryIsSingletonMethodBind):
    gDNativeLibraryIsSingletonMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"is_singleton")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gDNativeLibraryIsSingletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gDNativeLibrarySetSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `singleton=`(self: GDNativeLibrary; val: bool) =
  if isNil(gDNativeLibrarySetSingletonMethodBind):
    gDNativeLibrarySetSingletonMethodBind = getMethod(cstring"GDNativeLibrary",
        cstring"set_singleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gDNativeLibrarySetSingletonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gDNativeLibraryGetSymbolPrefixMethodBind {.threadvar.}: ptr GodotMethodBind
proc symbolPrefix(self: GDNativeLibrary): string =
  if isNil(gDNativeLibraryGetSymbolPrefixMethodBind):
    gDNativeLibraryGetSymbolPrefixMethodBind = getMethod(
        cstring"GDNativeLibrary", cstring"get_symbol_prefix")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  gDNativeLibraryGetSymbolPrefixMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var gDNativeLibrarySetSymbolPrefixMethodBind {.threadvar.}: ptr GodotMethodBind
proc `symbolPrefix=`(self: GDNativeLibrary; val: string) =
  if isNil(gDNativeLibrarySetSymbolPrefixMethodBind):
    gDNativeLibrarySetSymbolPrefixMethodBind = getMethod(
        cstring"GDNativeLibrary", cstring"set_symbol_prefix")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  gDNativeLibrarySetSymbolPrefixMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var gDNativeLibraryGetCurrentDependenciesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentDependencies(self: GDNativeLibrary): PoolStringArray =
  if isNil(gDNativeLibraryGetCurrentDependenciesMethodBind):
    gDNativeLibraryGetCurrentDependenciesMethodBind = getMethod(
        cstring"GDNativeLibrary", cstring"get_current_dependencies")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  gDNativeLibraryGetCurrentDependenciesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var gDNativeLibraryGetCurrentLibraryPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentLibraryPath(self: GDNativeLibrary): string =
  if isNil(gDNativeLibraryGetCurrentLibraryPathMethodBind):
    gDNativeLibraryGetCurrentLibraryPathMethodBind = getMethod(
        cstring"GDNativeLibrary", cstring"get_current_library_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  gDNativeLibraryGetCurrentLibraryPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
