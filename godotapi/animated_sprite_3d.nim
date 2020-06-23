
import
  godot, godottypes, godotinternal, sprite_base_3d

export
  godottypes, sprite_base_3d

proc animation*(self: AnimatedSprite3D): string {.gcsafe, locks: 0.}
proc `animation=`*(self: AnimatedSprite3D; val: string) {.gcsafe, locks: 0.}
proc frame*(self: AnimatedSprite3D): int64 {.gcsafe, locks: 0.}
proc `frame=`*(self: AnimatedSprite3D; val: int64) {.gcsafe, locks: 0.}
proc frames*(self: AnimatedSprite3D): SpriteFrames {.gcsafe, locks: 0.}
proc `frames=`*(self: AnimatedSprite3D; val: SpriteFrames) {.gcsafe, locks: 0.}
proc playing*(self: AnimatedSprite3D): bool {.gcsafe, locks: 0.}
proc `playing=`*(self: AnimatedSprite3D; val: bool) {.gcsafe, locks: 0.}
method resChanged*(self: AnimatedSprite3D) {.gcsafe, locks: 0, base.}
proc isPlayingImpl*(self: AnimatedSprite3D): bool {.gcsafe, locks: 0.}
proc play*(self: AnimatedSprite3D; anim: string = "") {.gcsafe, locks: 0.}
proc stop*(self: AnimatedSprite3D) {.gcsafe, locks: 0.}
var animatedSprite3DGetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animation(self: AnimatedSprite3D): string =
  if isNil(animatedSprite3DGetAnimationMethodBind):
    animatedSprite3DGetAnimationMethodBind = getMethod(cstring"AnimatedSprite3D",
        cstring"get_animation")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animatedSprite3DGetAnimationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animatedSprite3DSetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `animation=`(self: AnimatedSprite3D; val: string) =
  if isNil(animatedSprite3DSetAnimationMethodBind):
    animatedSprite3DSetAnimationMethodBind = getMethod(cstring"AnimatedSprite3D",
        cstring"set_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animatedSprite3DSetAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animatedSprite3DGetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc frame(self: AnimatedSprite3D): int64 =
  if isNil(animatedSprite3DGetFrameMethodBind):
    animatedSprite3DGetFrameMethodBind = getMethod(cstring"AnimatedSprite3D",
        cstring"get_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSprite3DGetFrameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSprite3DSetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frame=`(self: AnimatedSprite3D; val: int64) =
  if isNil(animatedSprite3DSetFrameMethodBind):
    animatedSprite3DSetFrameMethodBind = getMethod(cstring"AnimatedSprite3D",
        cstring"set_frame")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSprite3DSetFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedSprite3DGetSpriteFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc frames(self: AnimatedSprite3D): SpriteFrames =
  if isNil(animatedSprite3DGetSpriteFramesMethodBind):
    animatedSprite3DGetSpriteFramesMethodBind = getMethod(
        cstring"AnimatedSprite3D", cstring"get_sprite_frames")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedSprite3DGetSpriteFramesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animatedSprite3DSetSpriteFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frames=`(self: AnimatedSprite3D; val: SpriteFrames) =
  if isNil(animatedSprite3DSetSpriteFramesMethodBind):
    animatedSprite3DSetSpriteFramesMethodBind = getMethod(
        cstring"AnimatedSprite3D", cstring"set_sprite_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  animatedSprite3DSetSpriteFramesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedSprite3DUnderscoreisPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc playing(self: AnimatedSprite3D): bool =
  if isNil(animatedSprite3DUnderscoreisPlayingMethodBind):
    animatedSprite3DUnderscoreisPlayingMethodBind = getMethod(
        cstring"AnimatedSprite3D", cstring"_is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSprite3DUnderscoreisPlayingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animatedSprite3DUnderscoresetPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playing=`(self: AnimatedSprite3D; val: bool) =
  if isNil(animatedSprite3DUnderscoresetPlayingMethodBind):
    animatedSprite3DUnderscoresetPlayingMethodBind = getMethod(
        cstring"AnimatedSprite3D", cstring"_set_playing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSprite3DUnderscoresetPlayingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedSprite3DUnderscoreresChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method resChanged(self: AnimatedSprite3D) =
  if isNil(animatedSprite3DUnderscoreresChangedMethodBind):
    animatedSprite3DUnderscoreresChangedMethodBind = getMethod(
        cstring"AnimatedSprite3D", cstring"_res_changed")
  var ptrCallRet: pointer
  animatedSprite3DUnderscoreresChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animatedSprite3DIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPlayingImpl(self: AnimatedSprite3D): bool =
  if isNil(animatedSprite3DIsPlayingMethodBind):
    animatedSprite3DIsPlayingMethodBind = getMethod(cstring"AnimatedSprite3D",
        cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSprite3DIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSprite3DPlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc play(self: AnimatedSprite3D; anim: string = "") =
  if isNil(animatedSprite3DPlayMethodBind):
    animatedSprite3DPlayMethodBind = getMethod(cstring"AnimatedSprite3D",
        cstring"play")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animatedSprite3DPlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var animatedSprite3DStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: AnimatedSprite3D) =
  if isNil(animatedSprite3DStopMethodBind):
    animatedSprite3DStopMethodBind = getMethod(cstring"AnimatedSprite3D",
        cstring"stop")
  var ptrCallRet: pointer
  animatedSprite3DStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
