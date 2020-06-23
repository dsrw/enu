
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc aabb*(self: VisibilityNotifier): AABB {.gcsafe, locks: 0.}
proc `aabb=`*(self: VisibilityNotifier; val: AABB) {.gcsafe, locks: 0.}
proc isOnScreen*(self: VisibilityNotifier): bool {.gcsafe, locks: 0.}
var visibilityNotifierGetAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc aabb(self: VisibilityNotifier): AABB =
  if isNil(visibilityNotifierGetAabbMethodBind):
    visibilityNotifierGetAabbMethodBind = getMethod(cstring"VisibilityNotifier",
        cstring"get_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityNotifierGetAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visibilityNotifierSetAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc `aabb=`(self: VisibilityNotifier; val: AABB) =
  if isNil(visibilityNotifierSetAabbMethodBind):
    visibilityNotifierSetAabbMethodBind = getMethod(cstring"VisibilityNotifier",
        cstring"set_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityNotifierSetAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visibilityNotifierIsOnScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnScreen(self: VisibilityNotifier): bool =
  if isNil(visibilityNotifierIsOnScreenMethodBind):
    visibilityNotifierIsOnScreenMethodBind = getMethod(
        cstring"VisibilityNotifier", cstring"is_on_screen")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityNotifierIsOnScreenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
