
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

proc resources*(self: ResourcePreloader): Array {.gcsafe, locks: 0.}
proc `resources=`*(self: ResourcePreloader; val: Array) {.gcsafe, locks: 0.}
proc addResource*(self: ResourcePreloader; name: string; resource: Resource) {.gcsafe,
    locks: 0.}
proc getResource*(self: ResourcePreloader; name: string): Resource {.gcsafe, locks: 0.}
proc getResourceList*(self: ResourcePreloader): PoolStringArray {.gcsafe, locks: 0.}
proc hasResource*(self: ResourcePreloader; name: string): bool {.gcsafe, locks: 0.}
proc removeResource*(self: ResourcePreloader; name: string) {.gcsafe, locks: 0.}
proc renameResource*(self: ResourcePreloader; name: string; newname: string) {.gcsafe,
    locks: 0.}
var resourcePreloaderUnderscoregetResourcesMethodBind {.threadvar.}: ptr GodotMethodBind
proc resources(self: ResourcePreloader): Array =
  if isNil(resourcePreloaderUnderscoregetResourcesMethodBind):
    resourcePreloaderUnderscoregetResourcesMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"_get_resources")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  resourcePreloaderUnderscoregetResourcesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = newArray(ptrCallVal)

var resourcePreloaderUnderscoresetResourcesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resources=`(self: ResourcePreloader; val: Array) =
  if isNil(resourcePreloaderUnderscoresetResourcesMethodBind):
    resourcePreloaderUnderscoresetResourcesMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"_set_resources")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  resourcePreloaderUnderscoresetResourcesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var resourcePreloaderAddResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addResource(self: ResourcePreloader; name: string; resource: Resource) =
  if isNil(resourcePreloaderAddResourceMethodBind):
    resourcePreloaderAddResourceMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"add_resource")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  resourcePreloaderAddResourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var resourcePreloaderGetResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResource(self: ResourcePreloader; name: string): Resource =
  if isNil(resourcePreloaderGetResourceMethodBind):
    resourcePreloaderGetResourceMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"get_resource")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  resourcePreloaderGetResourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var resourcePreloaderGetResourceListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResourceList(self: ResourcePreloader): PoolStringArray =
  if isNil(resourcePreloaderGetResourceListMethodBind):
    resourcePreloaderGetResourceListMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"get_resource_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  resourcePreloaderGetResourceListMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var resourcePreloaderHasResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasResource(self: ResourcePreloader; name: string): bool =
  if isNil(resourcePreloaderHasResourceMethodBind):
    resourcePreloaderHasResourceMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"has_resource")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourcePreloaderHasResourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var resourcePreloaderRemoveResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeResource(self: ResourcePreloader; name: string) =
  if isNil(resourcePreloaderRemoveResourceMethodBind):
    resourcePreloaderRemoveResourceMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"remove_resource")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  resourcePreloaderRemoveResourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var resourcePreloaderRenameResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameResource(self: ResourcePreloader; name: string; newname: string) =
  if isNil(resourcePreloaderRenameResourceMethodBind):
    resourcePreloaderRenameResourceMethodBind = getMethod(
        cstring"ResourcePreloader", cstring"rename_resource")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newname)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  resourcePreloaderRenameResourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
