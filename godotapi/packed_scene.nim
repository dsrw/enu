
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  GEN_EDIT_STATE_DISABLED* = 0'i64
  GEN_EDIT_STATE_INSTANCE* = 1'i64
  GEN_EDIT_STATE_MAIN* = 2'i64
proc bundled*(self: PackedScene): Dictionary {.gcsafe, locks: 0.}
proc `bundled=`*(self: PackedScene; val: Dictionary) {.gcsafe, locks: 0.}
proc canInstance*(self: PackedScene): bool {.gcsafe, locks: 0.}
proc getState*(self: PackedScene): SceneState {.gcsafe, locks: 0.}
proc instance*(self: PackedScene; editState: int64 = 0'i64): Node {.gcsafe, locks: 0.}
proc pack*(self: PackedScene; path: Node): Error {.gcsafe, locks: 0.}
var packedSceneUnderscoregetBundledSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc bundled(self: PackedScene): Dictionary =
  if isNil(packedSceneUnderscoregetBundledSceneMethodBind):
    packedSceneUnderscoregetBundledSceneMethodBind = getMethod(
        cstring"PackedScene", cstring"_get_bundled_scene")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  packedSceneUnderscoregetBundledSceneMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var packedSceneUnderscoresetBundledSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bundled=`(self: PackedScene; val: Dictionary) =
  if isNil(packedSceneUnderscoresetBundledSceneMethodBind):
    packedSceneUnderscoresetBundledSceneMethodBind = getMethod(
        cstring"PackedScene", cstring"_set_bundled_scene")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  packedSceneUnderscoresetBundledSceneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var packedSceneCanInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc canInstance(self: PackedScene): bool =
  if isNil(packedSceneCanInstanceMethodBind):
    packedSceneCanInstanceMethodBind = getMethod(cstring"PackedScene",
        cstring"can_instance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packedSceneCanInstanceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var packedSceneGetStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getState(self: PackedScene): SceneState =
  if isNil(packedSceneGetStateMethodBind):
    packedSceneGetStateMethodBind = getMethod(cstring"PackedScene",
        cstring"get_state")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  packedSceneGetStateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var packedSceneInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc instance(self: PackedScene; editState: int64 = 0'i64): Node =
  if isNil(packedSceneInstanceMethodBind):
    packedSceneInstanceMethodBind = getMethod(cstring"PackedScene",
        cstring"instance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(editState)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  packedSceneInstanceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var packedScenePackMethodBind {.threadvar.}: ptr GodotMethodBind
proc pack(self: PackedScene; path: Node): Error =
  if isNil(packedScenePackMethodBind):
    packedScenePackMethodBind = getMethod(cstring"PackedScene", cstring"pack")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not path.isNil:
    path.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packedScenePackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = Error(ptrCallVal)
