
import
  godot, godottypes, godotinternal, animation_node

export
  godottypes, animation_node

proc sync*(self: AnimationNodeBlend2): bool {.gcsafe, locks: 0.}
proc `sync=`*(self: AnimationNodeBlend2; val: bool) {.gcsafe, locks: 0.}
var animationNodeBlend2IsUsingSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc sync(self: AnimationNodeBlend2): bool =
  if isNil(animationNodeBlend2IsUsingSyncMethodBind):
    animationNodeBlend2IsUsingSyncMethodBind = getMethod(
        cstring"AnimationNodeBlend2", cstring"is_using_sync")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlend2IsUsingSyncMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeBlend2SetUseSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sync=`(self: AnimationNodeBlend2; val: bool) =
  if isNil(animationNodeBlend2SetUseSyncMethodBind):
    animationNodeBlend2SetUseSyncMethodBind = getMethod(
        cstring"AnimationNodeBlend2", cstring"set_use_sync")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlend2SetUseSyncMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
