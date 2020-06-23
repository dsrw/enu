
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc enabled*(self: NavigationPolygonInstance): bool {.gcsafe, locks: 0.}
proc `enabled=`*(self: NavigationPolygonInstance; val: bool) {.gcsafe, locks: 0.}
proc navpoly*(self: NavigationPolygonInstance): NavigationPolygon {.gcsafe, locks: 0.}
proc `navpoly=`*(self: NavigationPolygonInstance; val: NavigationPolygon) {.gcsafe,
    locks: 0.}
method navpolyChanged*(self: NavigationPolygonInstance) {.gcsafe, locks: 0, base.}
var navigationPolygonInstanceIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc enabled(self: NavigationPolygonInstance): bool =
  if isNil(navigationPolygonInstanceIsEnabledMethodBind):
    navigationPolygonInstanceIsEnabledMethodBind = getMethod(
        cstring"NavigationPolygonInstance", cstring"is_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationPolygonInstanceIsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationPolygonInstanceSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enabled=`(self: NavigationPolygonInstance; val: bool) =
  if isNil(navigationPolygonInstanceSetEnabledMethodBind):
    navigationPolygonInstanceSetEnabledMethodBind = getMethod(
        cstring"NavigationPolygonInstance", cstring"set_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationPolygonInstanceSetEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonInstanceGetNavigationPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc navpoly(self: NavigationPolygonInstance): NavigationPolygon =
  if isNil(navigationPolygonInstanceGetNavigationPolygonMethodBind):
    navigationPolygonInstanceGetNavigationPolygonMethodBind = getMethod(
        cstring"NavigationPolygonInstance", cstring"get_navigation_polygon")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  navigationPolygonInstanceGetNavigationPolygonMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var navigationPolygonInstanceSetNavigationPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `navpoly=`(self: NavigationPolygonInstance; val: NavigationPolygon) =
  if isNil(navigationPolygonInstanceSetNavigationPolygonMethodBind):
    navigationPolygonInstanceSetNavigationPolygonMethodBind = getMethod(
        cstring"NavigationPolygonInstance", cstring"set_navigation_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  navigationPolygonInstanceSetNavigationPolygonMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var navigationPolygonInstanceUnderscorenavpolyChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method navpolyChanged(self: NavigationPolygonInstance) =
  if isNil(navigationPolygonInstanceUnderscorenavpolyChangedMethodBind):
    navigationPolygonInstanceUnderscorenavpolyChangedMethodBind = getMethod(
        cstring"NavigationPolygonInstance", cstring"_navpoly_changed")
  var ptrCallRet: pointer
  navigationPolygonInstanceUnderscorenavpolyChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
