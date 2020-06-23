
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc rect*(self: VisibilityNotifier2D): Rect2 {.gcsafe, locks: 0.}
proc `rect=`*(self: VisibilityNotifier2D; val: Rect2) {.gcsafe, locks: 0.}
proc isOnScreen*(self: VisibilityNotifier2D): bool {.gcsafe, locks: 0.}
var visibilityNotifier2DGetRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc rect(self: VisibilityNotifier2D): Rect2 =
  if isNil(visibilityNotifier2DGetRectMethodBind):
    visibilityNotifier2DGetRectMethodBind = getMethod(
        cstring"VisibilityNotifier2D", cstring"get_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityNotifier2DGetRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visibilityNotifier2DSetRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rect=`(self: VisibilityNotifier2D; val: Rect2) =
  if isNil(visibilityNotifier2DSetRectMethodBind):
    visibilityNotifier2DSetRectMethodBind = getMethod(
        cstring"VisibilityNotifier2D", cstring"set_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityNotifier2DSetRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visibilityNotifier2DIsOnScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnScreen(self: VisibilityNotifier2D): bool =
  if isNil(visibilityNotifier2DIsOnScreenMethodBind):
    visibilityNotifier2DIsOnScreenMethodBind = getMethod(
        cstring"VisibilityNotifier2D", cstring"is_on_screen")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityNotifier2DIsOnScreenMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
