
import
  godot, godottypes, godotinternal, animation_node

export
  godottypes, animation_node

proc sync*(self: AnimationNodeAdd3): bool {.gcsafe, locks: 0.}
proc `sync=`*(self: AnimationNodeAdd3; val: bool) {.gcsafe, locks: 0.}
var animationNodeAdd3IsUsingSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc sync(self: AnimationNodeAdd3): bool =
  if isNil(animationNodeAdd3IsUsingSyncMethodBind):
    animationNodeAdd3IsUsingSyncMethodBind = getMethod(
        cstring"AnimationNodeAdd3", cstring"is_using_sync")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeAdd3IsUsingSyncMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationNodeAdd3SetUseSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sync=`(self: AnimationNodeAdd3; val: bool) =
  if isNil(animationNodeAdd3SetUseSyncMethodBind):
    animationNodeAdd3SetUseSyncMethodBind = getMethod(cstring"AnimationNodeAdd3",
        cstring"set_use_sync")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeAdd3SetUseSyncMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
