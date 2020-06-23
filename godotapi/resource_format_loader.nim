
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method getDependencies*(self: ResourceFormatLoader; path: string; addTypes: string) {.
    gcsafe, locks: 0, base.}
method getRecognizedExtensions*(self: ResourceFormatLoader): PoolStringArray {.
    gcsafe, locks: 0, base.}
method getResourceType*(self: ResourceFormatLoader; path: string): string {.gcsafe,
    locks: 0, base.}
method handlesType*(self: ResourceFormatLoader; typename: string): bool {.gcsafe,
    locks: 0, base.}
method load*(self: ResourceFormatLoader; path: string; originalPath: string): Variant {.
    gcsafe, locks: 0, base.}
method renameDependencies*(self: ResourceFormatLoader; path: string; renames: string): int64 {.
    gcsafe, locks: 0, base.}
var resourceFormatLoaderGetDependenciesMethodBind {.threadvar.}: ptr GodotMethodBind
method getDependencies(self: ResourceFormatLoader; path: string; addTypes: string) =
  if isNil(resourceFormatLoaderGetDependenciesMethodBind):
    resourceFormatLoaderGetDependenciesMethodBind = getMethod(
        cstring"ResourceFormatLoader", cstring"get_dependencies")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(addTypes)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  resourceFormatLoaderGetDependenciesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var resourceFormatLoaderGetRecognizedExtensionsMethodBind {.threadvar.}: ptr GodotMethodBind
method getRecognizedExtensions(self: ResourceFormatLoader): PoolStringArray =
  if isNil(resourceFormatLoaderGetRecognizedExtensionsMethodBind):
    resourceFormatLoaderGetRecognizedExtensionsMethodBind = getMethod(
        cstring"ResourceFormatLoader", cstring"get_recognized_extensions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  resourceFormatLoaderGetRecognizedExtensionsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var resourceFormatLoaderGetResourceTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method getResourceType(self: ResourceFormatLoader; path: string): string =
  if isNil(resourceFormatLoaderGetResourceTypeMethodBind):
    resourceFormatLoaderGetResourceTypeMethodBind = getMethod(
        cstring"ResourceFormatLoader", cstring"get_resource_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  resourceFormatLoaderGetResourceTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var resourceFormatLoaderHandlesTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method handlesType(self: ResourceFormatLoader; typename: string): bool =
  if isNil(resourceFormatLoaderHandlesTypeMethodBind):
    resourceFormatLoaderHandlesTypeMethodBind = getMethod(
        cstring"ResourceFormatLoader", cstring"handles_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typename)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceFormatLoaderHandlesTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var resourceFormatLoaderLoadMethodBind {.threadvar.}: ptr GodotMethodBind
method load(self: ResourceFormatLoader; path: string; originalPath: string): Variant =
  if isNil(resourceFormatLoaderLoadMethodBind):
    resourceFormatLoaderLoadMethodBind = getMethod(cstring"ResourceFormatLoader",
        cstring"load")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(originalPath)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  resourceFormatLoaderLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = newVariant(ptrCallVal)

var resourceFormatLoaderRenameDependenciesMethodBind {.threadvar.}: ptr GodotMethodBind
method renameDependencies(self: ResourceFormatLoader; path: string; renames: string): int64 =
  if isNil(resourceFormatLoaderRenameDependenciesMethodBind):
    resourceFormatLoaderRenameDependenciesMethodBind = getMethod(
        cstring"ResourceFormatLoader", cstring"rename_dependencies")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(renames)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceFormatLoaderRenameDependenciesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
