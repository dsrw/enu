
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  FLAG_BUNDLE_RESOURCES* = 2'i64
  FLAG_CHANGE_PATH* = 4'i64
  FLAG_COMPRESS* = 32'i64
  FLAG_OMIT_EDITOR_PROPERTIES* = 8'i64
  FLAG_RELATIVE_PATHS* = 1'i64
  FLAG_REPLACE_SUBRESOURCE_PATHS* = 64'i64
  FLAG_SAVE_BIG_ENDIAN* = 16'i64
type
  ResourceSaver = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(ResourceSaver, "_ResourceSaver", true)
var singletonResourceSaver {.threadvar.}: ResourceSaver
proc getRecognizedExtensions*(typee: Resource): PoolStringArray {.gcsafe, locks: 0.}
proc save*(path: string; resource: Resource; flags: int64 = 0'i64): Error {.gcsafe,
    locks: 0.}
var resourceSaverGetRecognizedExtensionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRecognizedExtensions(typee: Resource): PoolStringArray =
  if isNil(singletonResourceSaver):
    singletonResourceSaver = getSingleton[ResourceSaver]()
  let self = singletonResourceSaver
  if isNil(resourceSaverGetRecognizedExtensionsMethodBind):
    resourceSaverGetRecognizedExtensionsMethodBind = getMethod(
        cstring"_ResourceSaver", cstring"get_recognized_extensions")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not typee.isNil:
    typee.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  resourceSaverGetRecognizedExtensionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var resourceSaverSaveMethodBind {.threadvar.}: ptr GodotMethodBind
proc save(path: string; resource: Resource; flags: int64 = 0'i64): Error =
  if isNil(singletonResourceSaver):
    singletonResourceSaver = getSingleton[ResourceSaver]()
  let self = singletonResourceSaver
  if isNil(resourceSaverSaveMethodBind):
    resourceSaverSaveMethodBind = getMethod(cstring"_ResourceSaver", cstring"save")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(flags)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  resourceSaverSaveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)
