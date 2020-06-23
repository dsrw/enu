
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc directSpaceState*(self: World): PhysicsDirectSpaceState {.gcsafe, locks: 0.}
proc `directSpaceState=`*(self: World; val: PhysicsDirectSpaceState) {.gcsafe,
    locks: 0.}
proc environment*(self: World): Environment {.gcsafe, locks: 0.}
proc `environment=`*(self: World; val: Environment) {.gcsafe, locks: 0.}
proc fallbackEnvironment*(self: World): Environment {.gcsafe, locks: 0.}
proc `fallbackEnvironment=`*(self: World; val: Environment) {.gcsafe, locks: 0.}
proc scenario*(self: World): RID {.gcsafe, locks: 0.}
proc `scenario=`*(self: World; val: RID) {.gcsafe, locks: 0.}
proc space*(self: World): RID {.gcsafe, locks: 0.}
proc `space=`*(self: World; val: RID) {.gcsafe, locks: 0.}
var worldGetDirectSpaceStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc directSpaceState(self: World): PhysicsDirectSpaceState =
  if isNil(worldGetDirectSpaceStateMethodBind):
    worldGetDirectSpaceStateMethodBind = getMethod(cstring"World",
        cstring"get_direct_space_state")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  worldGetDirectSpaceStateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var worldMethodBind {.threadvar.}: ptr GodotMethodBind
proc `directSpaceState=`(self: World; val: PhysicsDirectSpaceState) =
  if isNil(worldMethodBind):
    worldMethodBind = getMethod(cstring"World", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  worldMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var worldGetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc environment(self: World): Environment =
  if isNil(worldGetEnvironmentMethodBind):
    worldGetEnvironmentMethodBind = getMethod(cstring"World",
        cstring"get_environment")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  worldGetEnvironmentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var worldSetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environment=`(self: World; val: Environment) =
  if isNil(worldSetEnvironmentMethodBind):
    worldSetEnvironmentMethodBind = getMethod(cstring"World",
        cstring"set_environment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  worldSetEnvironmentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var worldGetFallbackEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc fallbackEnvironment(self: World): Environment =
  if isNil(worldGetFallbackEnvironmentMethodBind):
    worldGetFallbackEnvironmentMethodBind = getMethod(cstring"World",
        cstring"get_fallback_environment")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  worldGetFallbackEnvironmentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var worldSetFallbackEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fallbackEnvironment=`(self: World; val: Environment) =
  if isNil(worldSetFallbackEnvironmentMethodBind):
    worldSetFallbackEnvironmentMethodBind = getMethod(cstring"World",
        cstring"set_fallback_environment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  worldSetFallbackEnvironmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var worldGetScenarioMethodBind {.threadvar.}: ptr GodotMethodBind
proc scenario(self: World): RID =
  if isNil(worldGetScenarioMethodBind):
    worldGetScenarioMethodBind = getMethod(cstring"World", cstring"get_scenario")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  worldGetScenarioMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

proc `scenario=`(self: World; val: RID) =
  if isNil(worldMethodBind):
    worldMethodBind = getMethod(cstring"World", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  worldMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var worldGetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc space(self: World): RID =
  if isNil(worldGetSpaceMethodBind):
    worldGetSpaceMethodBind = getMethod(cstring"World", cstring"get_space")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  worldGetSpaceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

proc `space=`(self: World; val: RID) =
  if isNil(worldMethodBind):
    worldMethodBind = getMethod(cstring"World", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  worldMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
