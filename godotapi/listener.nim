
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc clearCurrent*(self: Listener) {.gcsafe, locks: 0.}
proc getListenerTransform*(self: Listener): Transform {.gcsafe, locks: 0.}
proc isCurrent*(self: Listener): bool {.gcsafe, locks: 0.}
proc makeCurrent*(self: Listener) {.gcsafe, locks: 0.}
var listenerClearCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCurrent(self: Listener) =
  if isNil(listenerClearCurrentMethodBind):
    listenerClearCurrentMethodBind = getMethod(cstring"Listener",
        cstring"clear_current")
  var ptrCallRet: pointer
  listenerClearCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var listenerGetListenerTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getListenerTransform(self: Listener): Transform =
  if isNil(listenerGetListenerTransformMethodBind):
    listenerGetListenerTransformMethodBind = getMethod(cstring"Listener",
        cstring"get_listener_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  listenerGetListenerTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var listenerIsCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCurrent(self: Listener): bool =
  if isNil(listenerIsCurrentMethodBind):
    listenerIsCurrentMethodBind = getMethod(cstring"Listener", cstring"is_current")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  listenerIsCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var listenerMakeCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeCurrent(self: Listener) =
  if isNil(listenerMakeCurrentMethodBind):
    listenerMakeCurrentMethodBind = getMethod(cstring"Listener",
        cstring"make_current")
  var ptrCallRet: pointer
  listenerMakeCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
