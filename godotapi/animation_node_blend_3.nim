
import
  godot, godottypes, godotinternal, animation_node

export
  godottypes, animation_node

proc sync*(self: AnimationNodeBlend3): bool {.gcsafe, locks: 0.}
proc `sync=`*(self: AnimationNodeBlend3; val: bool) {.gcsafe, locks: 0.}
var animationNodeBlend3IsUsingSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc sync(self: AnimationNodeBlend3): bool =
  if isNil(animationNodeBlend3IsUsingSyncMethodBind):
    animationNodeBlend3IsUsingSyncMethodBind = getMethod(
        cstring"AnimationNodeBlend3", cstring"is_using_sync")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlend3IsUsingSyncMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeBlend3SetUseSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sync=`(self: AnimationNodeBlend3; val: bool) =
  if isNil(animationNodeBlend3SetUseSyncMethodBind):
    animationNodeBlend3SetUseSyncMethodBind = getMethod(
        cstring"AnimationNodeBlend3", cstring"set_use_sync")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlend3SetUseSyncMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
