
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method getRecognizedExtensions*(self: ResourceFormatSaver; resource: Resource): PoolStringArray {.
    gcsafe, locks: 0, base.}
method recognize*(self: ResourceFormatSaver; resource: Resource): bool {.gcsafe,
    locks: 0, base.}
method save*(self: ResourceFormatSaver; path: string; resource: Resource; flags: int64): int64 {.
    gcsafe, locks: 0, base.}
var resourceFormatSaverGetRecognizedExtensionsMethodBind {.threadvar.}: ptr GodotMethodBind
method getRecognizedExtensions(self: ResourceFormatSaver; resource: Resource): PoolStringArray =
  if isNil(resourceFormatSaverGetRecognizedExtensionsMethodBind):
    resourceFormatSaverGetRecognizedExtensionsMethodBind = getMethod(
        cstring"ResourceFormatSaver", cstring"get_recognized_extensions")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  resourceFormatSaverGetRecognizedExtensionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var resourceFormatSaverRecognizeMethodBind {.threadvar.}: ptr GodotMethodBind
method recognize(self: ResourceFormatSaver; resource: Resource): bool =
  if isNil(resourceFormatSaverRecognizeMethodBind):
    resourceFormatSaverRecognizeMethodBind = getMethod(
        cstring"ResourceFormatSaver", cstring"recognize")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceFormatSaverRecognizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var resourceFormatSaverSaveMethodBind {.threadvar.}: ptr GodotMethodBind
method save(self: ResourceFormatSaver; path: string; resource: Resource; flags: int64): int64 =
  if isNil(resourceFormatSaverSaveMethodBind):
    resourceFormatSaverSaveMethodBind = getMethod(cstring"ResourceFormatSaver",
        cstring"save")
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
  ptrCallRet = addr(result)
  resourceFormatSaverSaveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
