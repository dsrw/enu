
import
  godot, godottypes, godotinternal, visibility_notifier

export
  godottypes, visibility_notifier

const
  ENABLER_FREEZE_BODIES* = 1'i64
  ENABLER_MAX* = 2'i64
  ENABLER_PAUSE_ANIMATIONS* = 0'i64
proc freezeBodies*(self: VisibilityEnabler): bool {.gcsafe, locks: 0.}
proc `freezeBodies=`*(self: VisibilityEnabler; val: bool) {.gcsafe, locks: 0.}
proc pauseAnimations*(self: VisibilityEnabler): bool {.gcsafe, locks: 0.}
proc `pauseAnimations=`*(self: VisibilityEnabler; val: bool) {.gcsafe, locks: 0.}
method nodeRemoved*(self: VisibilityEnabler; arg0: Node) {.gcsafe, locks: 0, base.}
var visibilityEnablerIsEnablerEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc freezeBodies(self: VisibilityEnabler): bool =
  if isNil(visibilityEnablerIsEnablerEnabledMethodBind):
    visibilityEnablerIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnablerIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visibilityEnablerSetEnablerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `freezeBodies=`(self: VisibilityEnabler; val: bool) =
  if isNil(visibilityEnablerSetEnablerMethodBind):
    visibilityEnablerSetEnablerMethodBind = getMethod(cstring"VisibilityEnabler",
        cstring"set_enabler")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnablerSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc pauseAnimations(self: VisibilityEnabler): bool =
  if isNil(visibilityEnablerIsEnablerEnabledMethodBind):
    visibilityEnablerIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnablerIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `pauseAnimations=`(self: VisibilityEnabler; val: bool) =
  if isNil(visibilityEnablerSetEnablerMethodBind):
    visibilityEnablerSetEnablerMethodBind = getMethod(cstring"VisibilityEnabler",
        cstring"set_enabler")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnablerSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visibilityEnablerUnderscorenodeRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodeRemoved(self: VisibilityEnabler; arg0: Node) =
  if isNil(visibilityEnablerUnderscorenodeRemovedMethodBind):
    visibilityEnablerUnderscorenodeRemovedMethodBind = getMethod(
        cstring"VisibilityEnabler", cstring"_node_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  visibilityEnablerUnderscorenodeRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
