
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

proc environment*(self: WorldEnvironment): Environment {.gcsafe, locks: 0.}
proc `environment=`*(self: WorldEnvironment; val: Environment) {.gcsafe, locks: 0.}
var worldEnvironmentGetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc environment(self: WorldEnvironment): Environment =
  if isNil(worldEnvironmentGetEnvironmentMethodBind):
    worldEnvironmentGetEnvironmentMethodBind = getMethod(
        cstring"WorldEnvironment", cstring"get_environment")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  worldEnvironmentGetEnvironmentMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var worldEnvironmentSetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environment=`(self: WorldEnvironment; val: Environment) =
  if isNil(worldEnvironmentSetEnvironmentMethodBind):
    worldEnvironmentSetEnvironmentMethodBind = getMethod(
        cstring"WorldEnvironment", cstring"set_environment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  worldEnvironmentSetEnvironmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
