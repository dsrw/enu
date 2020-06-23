
import
  godot, godottypes, godotinternal, animation_node

export
  godottypes, animation_node

proc sync*(self: AnimationNodeAdd2): bool {.gcsafe, locks: 0.}
proc `sync=`*(self: AnimationNodeAdd2; val: bool) {.gcsafe, locks: 0.}
var animationNodeAdd2IsUsingSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc sync(self: AnimationNodeAdd2): bool =
  if isNil(animationNodeAdd2IsUsingSyncMethodBind):
    animationNodeAdd2IsUsingSyncMethodBind = getMethod(
        cstring"AnimationNodeAdd2", cstring"is_using_sync")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeAdd2IsUsingSyncMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationNodeAdd2SetUseSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sync=`(self: AnimationNodeAdd2; val: bool) =
  if isNil(animationNodeAdd2SetUseSyncMethodBind):
    animationNodeAdd2SetUseSyncMethodBind = getMethod(cstring"AnimationNodeAdd2",
        cstring"set_use_sync")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeAdd2SetUseSyncMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
