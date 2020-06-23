
import
  godot, godottypes, godotinternal, visibility_notifier_2d

export
  godottypes, visibility_notifier_2d

const
  ENABLER_FREEZE_BODIES* = 1'i64
  ENABLER_MAX* = 6'i64
  ENABLER_PARENT_PHYSICS_PROCESS* = 4'i64
  ENABLER_PARENT_PROCESS* = 3'i64
  ENABLER_PAUSE_ANIMATED_SPRITES* = 5'i64
  ENABLER_PAUSE_ANIMATIONS* = 0'i64
  ENABLER_PAUSE_PARTICLES* = 2'i64
proc freezeBodies*(self: VisibilityEnabler2D): bool {.gcsafe, locks: 0.}
proc `freezeBodies=`*(self: VisibilityEnabler2D; val: bool) {.gcsafe, locks: 0.}
proc pauseAnimatedSprites*(self: VisibilityEnabler2D): bool {.gcsafe, locks: 0.}
proc `pauseAnimatedSprites=`*(self: VisibilityEnabler2D; val: bool) {.gcsafe, locks: 0.}
proc pauseAnimations*(self: VisibilityEnabler2D): bool {.gcsafe, locks: 0.}
proc `pauseAnimations=`*(self: VisibilityEnabler2D; val: bool) {.gcsafe, locks: 0.}
proc pauseParticles*(self: VisibilityEnabler2D): bool {.gcsafe, locks: 0.}
proc `pauseParticles=`*(self: VisibilityEnabler2D; val: bool) {.gcsafe, locks: 0.}
proc physicsProcessParent*(self: VisibilityEnabler2D): bool {.gcsafe, locks: 0.}
proc `physicsProcessParent=`*(self: VisibilityEnabler2D; val: bool) {.gcsafe, locks: 0.}
proc processParent*(self: VisibilityEnabler2D): bool {.gcsafe, locks: 0.}
proc `processParent=`*(self: VisibilityEnabler2D; val: bool) {.gcsafe, locks: 0.}
method nodeRemoved*(self: VisibilityEnabler2D; arg0: Node) {.gcsafe, locks: 0, base.}
var visibilityEnabler2DIsEnablerEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc freezeBodies(self: VisibilityEnabler2D): bool =
  if isNil(visibilityEnabler2DIsEnablerEnabledMethodBind):
    visibilityEnabler2DIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnabler2DIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visibilityEnabler2DSetEnablerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `freezeBodies=`(self: VisibilityEnabler2D; val: bool) =
  if isNil(visibilityEnabler2DSetEnablerMethodBind):
    visibilityEnabler2DSetEnablerMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"set_enabler")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnabler2DSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc pauseAnimatedSprites(self: VisibilityEnabler2D): bool =
  if isNil(visibilityEnabler2DIsEnablerEnabledMethodBind):
    visibilityEnabler2DIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnabler2DIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `pauseAnimatedSprites=`(self: VisibilityEnabler2D; val: bool) =
  if isNil(visibilityEnabler2DSetEnablerMethodBind):
    visibilityEnabler2DSetEnablerMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"set_enabler")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnabler2DSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc pauseAnimations(self: VisibilityEnabler2D): bool =
  if isNil(visibilityEnabler2DIsEnablerEnabledMethodBind):
    visibilityEnabler2DIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnabler2DIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `pauseAnimations=`(self: VisibilityEnabler2D; val: bool) =
  if isNil(visibilityEnabler2DSetEnablerMethodBind):
    visibilityEnabler2DSetEnablerMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"set_enabler")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnabler2DSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc pauseParticles(self: VisibilityEnabler2D): bool =
  if isNil(visibilityEnabler2DIsEnablerEnabledMethodBind):
    visibilityEnabler2DIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnabler2DIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `pauseParticles=`(self: VisibilityEnabler2D; val: bool) =
  if isNil(visibilityEnabler2DSetEnablerMethodBind):
    visibilityEnabler2DSetEnablerMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"set_enabler")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnabler2DSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc physicsProcessParent(self: VisibilityEnabler2D): bool =
  if isNil(visibilityEnabler2DIsEnablerEnabledMethodBind):
    visibilityEnabler2DIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnabler2DIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `physicsProcessParent=`(self: VisibilityEnabler2D; val: bool) =
  if isNil(visibilityEnabler2DSetEnablerMethodBind):
    visibilityEnabler2DSetEnablerMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"set_enabler")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnabler2DSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc processParent(self: VisibilityEnabler2D): bool =
  if isNil(visibilityEnabler2DIsEnablerEnabledMethodBind):
    visibilityEnabler2DIsEnablerEnabledMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"is_enabler_enabled")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visibilityEnabler2DIsEnablerEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `processParent=`(self: VisibilityEnabler2D; val: bool) =
  if isNil(visibilityEnabler2DSetEnablerMethodBind):
    visibilityEnabler2DSetEnablerMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"set_enabler")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  visibilityEnabler2DSetEnablerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visibilityEnabler2DUnderscorenodeRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodeRemoved(self: VisibilityEnabler2D; arg0: Node) =
  if isNil(visibilityEnabler2DUnderscorenodeRemovedMethodBind):
    visibilityEnabler2DUnderscorenodeRemovedMethodBind = getMethod(
        cstring"VisibilityEnabler2D", cstring"_node_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  visibilityEnabler2DUnderscorenodeRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
