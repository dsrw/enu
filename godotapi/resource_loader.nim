
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  ResourceLoader = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(ResourceLoader, "_ResourceLoader", true)
var singletonResourceLoader {.threadvar.}: ResourceLoader
proc exists*(path: string; typeHint: string = ""): bool {.gcsafe, locks: 0.}
proc getDependencies*(path: string): PoolStringArray {.gcsafe, locks: 0.}
proc getRecognizedExtensionsForType*(typee: string): PoolStringArray {.gcsafe,
    locks: 0.}
proc has*(path: string): bool {.gcsafe, locks: 0.}
proc hasCached*(path: string): bool {.gcsafe, locks: 0.}
proc load*(path: string; typeHint: string = ""; noCache: bool = false): Resource {.gcsafe,
    locks: 0.}
proc loadInteractive*(path: string; typeHint: string = ""): ResourceInteractiveLoader {.
    gcsafe, locks: 0.}
proc setAbortOnMissingResources*(abort: bool) {.gcsafe, locks: 0.}
var resourceLoaderExistsMethodBind {.threadvar.}: ptr GodotMethodBind
proc exists(path: string; typeHint: string = ""): bool =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderExistsMethodBind):
    resourceLoaderExistsMethodBind = getMethod(cstring"_ResourceLoader",
        cstring"exists")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typeHint)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceLoaderExistsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var resourceLoaderGetDependenciesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDependencies(path: string): PoolStringArray =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderGetDependenciesMethodBind):
    resourceLoaderGetDependenciesMethodBind = getMethod(cstring"_ResourceLoader",
        cstring"get_dependencies")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  resourceLoaderGetDependenciesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var resourceLoaderGetRecognizedExtensionsForTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRecognizedExtensionsForType(typee: string): PoolStringArray =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderGetRecognizedExtensionsForTypeMethodBind):
    resourceLoaderGetRecognizedExtensionsForTypeMethodBind = getMethod(
        cstring"_ResourceLoader", cstring"get_recognized_extensions_for_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  resourceLoaderGetRecognizedExtensionsForTypeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var resourceLoaderHasMethodBind {.threadvar.}: ptr GodotMethodBind
proc has(path: string): bool =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderHasMethodBind):
    resourceLoaderHasMethodBind = getMethod(cstring"_ResourceLoader", cstring"has")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceLoaderHasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var resourceLoaderHasCachedMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasCached(path: string): bool =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderHasCachedMethodBind):
    resourceLoaderHasCachedMethodBind = getMethod(cstring"_ResourceLoader",
        cstring"has_cached")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceLoaderHasCachedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var resourceLoaderLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc load(path: string; typeHint: string = ""; noCache: bool = false): Resource =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderLoadMethodBind):
    resourceLoaderLoadMethodBind = getMethod(cstring"_ResourceLoader",
        cstring"load")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typeHint)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(noCache)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  resourceLoaderLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var resourceLoaderLoadInteractiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadInteractive(path: string; typeHint: string = ""): ResourceInteractiveLoader =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderLoadInteractiveMethodBind):
    resourceLoaderLoadInteractiveMethodBind = getMethod(cstring"_ResourceLoader",
        cstring"load_interactive")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typeHint)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  resourceLoaderLoadInteractiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var resourceLoaderSetAbortOnMissingResourcesMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAbortOnMissingResources(abort: bool) =
  if isNil(singletonResourceLoader):
    singletonResourceLoader = getSingleton[ResourceLoader]()
  let self = singletonResourceLoader
  if isNil(resourceLoaderSetAbortOnMissingResourcesMethodBind):
    resourceLoaderSetAbortOnMissingResourcesMethodBind = getMethod(
        cstring"_ResourceLoader", cstring"set_abort_on_missing_resources")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(abort)
  var ptrCallRet: pointer
  resourceLoaderSetAbortOnMissingResourcesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
