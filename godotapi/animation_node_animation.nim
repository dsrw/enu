
import
  godot, godottypes, godotinternal, animation_root_node

export
  godottypes, animation_root_node

proc animation*(self: AnimationNodeAnimation): string {.gcsafe, locks: 0.}
proc `animation=`*(self: AnimationNodeAnimation; val: string) {.gcsafe, locks: 0.}
var animationNodeAnimationGetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animation(self: AnimationNodeAnimation): string =
  if isNil(animationNodeAnimationGetAnimationMethodBind):
    animationNodeAnimationGetAnimationMethodBind = getMethod(
        cstring"AnimationNodeAnimation", cstring"get_animation")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeAnimationGetAnimationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeAnimationSetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `animation=`(self: AnimationNodeAnimation; val: string) =
  if isNil(animationNodeAnimationSetAnimationMethodBind):
    animationNodeAnimationSetAnimationMethodBind = getMethod(
        cstring"AnimationNodeAnimation", cstring"set_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeAnimationSetAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
