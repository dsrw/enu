
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc enabled*(self: NavigationMeshInstance): bool {.gcsafe, locks: 0.}
proc `enabled=`*(self: NavigationMeshInstance; val: bool) {.gcsafe, locks: 0.}
proc navmesh*(self: NavigationMeshInstance): NavigationMesh {.gcsafe, locks: 0.}
proc `navmesh=`*(self: NavigationMeshInstance; val: NavigationMesh) {.gcsafe, locks: 0.}
var navigationMeshInstanceIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc enabled(self: NavigationMeshInstance): bool =
  if isNil(navigationMeshInstanceIsEnabledMethodBind):
    navigationMeshInstanceIsEnabledMethodBind = getMethod(
        cstring"NavigationMeshInstance", cstring"is_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationMeshInstanceIsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationMeshInstanceSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enabled=`(self: NavigationMeshInstance; val: bool) =
  if isNil(navigationMeshInstanceSetEnabledMethodBind):
    navigationMeshInstanceSetEnabledMethodBind = getMethod(
        cstring"NavigationMeshInstance", cstring"set_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationMeshInstanceSetEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationMeshInstanceGetNavigationMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc navmesh(self: NavigationMeshInstance): NavigationMesh =
  if isNil(navigationMeshInstanceGetNavigationMeshMethodBind):
    navigationMeshInstanceGetNavigationMeshMethodBind = getMethod(
        cstring"NavigationMeshInstance", cstring"get_navigation_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  navigationMeshInstanceGetNavigationMeshMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var navigationMeshInstanceSetNavigationMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `navmesh=`(self: NavigationMeshInstance; val: NavigationMesh) =
  if isNil(navigationMeshInstanceSetNavigationMeshMethodBind):
    navigationMeshInstanceSetNavigationMeshMethodBind = getMethod(
        cstring"NavigationMeshInstance", cstring"set_navigation_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  navigationMeshInstanceSetNavigationMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
