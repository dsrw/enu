
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc resourceLocalToScene*(self: Resource): bool {.gcsafe, locks: 0.}
proc `resourceLocalToScene=`*(self: Resource; val: bool) {.gcsafe, locks: 0.}
proc resourceName*(self: Resource): string {.gcsafe, locks: 0.}
proc `resourceName=`*(self: Resource; val: string) {.gcsafe, locks: 0.}
proc resourcePath*(self: Resource): string {.gcsafe, locks: 0.}
proc `resourcePath=`*(self: Resource; val: string) {.gcsafe, locks: 0.}
method setupLocalToScene*(self: Resource) {.gcsafe, locks: 0, base.}
proc duplicate*(self: Resource; subresources: bool = false): Resource {.gcsafe, locks: 0.}
proc getLocalScene*(self: Resource): Node {.gcsafe, locks: 0.}
proc getRid*(self: Resource): RID {.gcsafe, locks: 0.}
proc setupLocalToSceneImpl*(self: Resource) {.gcsafe, locks: 0.}
proc takeOverPath*(self: Resource; path: string) {.gcsafe, locks: 0.}
var resourceIsLocalToSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc resourceLocalToScene(self: Resource): bool =
  if isNil(resourceIsLocalToSceneMethodBind):
    resourceIsLocalToSceneMethodBind = getMethod(cstring"Resource",
        cstring"is_local_to_scene")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceIsLocalToSceneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var resourceSetLocalToSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resourceLocalToScene=`(self: Resource; val: bool) =
  if isNil(resourceSetLocalToSceneMethodBind):
    resourceSetLocalToSceneMethodBind = getMethod(cstring"Resource",
        cstring"set_local_to_scene")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  resourceSetLocalToSceneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var resourceGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc resourceName(self: Resource): string =
  if isNil(resourceGetNameMethodBind):
    resourceGetNameMethodBind = getMethod(cstring"Resource", cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  resourceGetNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var resourceSetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resourceName=`(self: Resource; val: string) =
  if isNil(resourceSetNameMethodBind):
    resourceSetNameMethodBind = getMethod(cstring"Resource", cstring"set_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  resourceSetNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var resourceGetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc resourcePath(self: Resource): string =
  if isNil(resourceGetPathMethodBind):
    resourceGetPathMethodBind = getMethod(cstring"Resource", cstring"get_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  resourceGetPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var resourceSetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resourcePath=`(self: Resource; val: string) =
  if isNil(resourceSetPathMethodBind):
    resourceSetPathMethodBind = getMethod(cstring"Resource", cstring"set_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  resourceSetPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var resourceUnderscoresetupLocalToSceneMethodBind {.threadvar.}: ptr GodotMethodBind
method setupLocalToScene(self: Resource) =
  if isNil(resourceUnderscoresetupLocalToSceneMethodBind):
    resourceUnderscoresetupLocalToSceneMethodBind = getMethod(cstring"Resource",
        cstring"_setup_local_to_scene")
  var ptrCallRet: pointer
  resourceUnderscoresetupLocalToSceneMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var resourceDuplicateMethodBind {.threadvar.}: ptr GodotMethodBind
proc duplicate(self: Resource; subresources: bool = false): Resource =
  if isNil(resourceDuplicateMethodBind):
    resourceDuplicateMethodBind = getMethod(cstring"Resource", cstring"duplicate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(subresources)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  resourceDuplicateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var resourceGetLocalSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLocalScene(self: Resource): Node =
  if isNil(resourceGetLocalSceneMethodBind):
    resourceGetLocalSceneMethodBind = getMethod(cstring"Resource",
        cstring"get_local_scene")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  resourceGetLocalSceneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var resourceGetRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRid(self: Resource): RID =
  if isNil(resourceGetRidMethodBind):
    resourceGetRidMethodBind = getMethod(cstring"Resource", cstring"get_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceGetRidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var resourceSetupLocalToSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc setupLocalToSceneImpl(self: Resource) =
  if isNil(resourceSetupLocalToSceneMethodBind):
    resourceSetupLocalToSceneMethodBind = getMethod(cstring"Resource",
        cstring"setup_local_to_scene")
  var ptrCallRet: pointer
  resourceSetupLocalToSceneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var resourceTakeOverPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc takeOverPath(self: Resource; path: string) =
  if isNil(resourceTakeOverPathMethodBind):
    resourceTakeOverPathMethodBind = getMethod(cstring"Resource",
        cstring"take_over_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  resourceTakeOverPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
