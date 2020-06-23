
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc animation*(self: AnimatedSprite): string {.gcsafe, locks: 0.}
proc `animation=`*(self: AnimatedSprite; val: string) {.gcsafe, locks: 0.}
proc centered*(self: AnimatedSprite): bool {.gcsafe, locks: 0.}
proc `centered=`*(self: AnimatedSprite; val: bool) {.gcsafe, locks: 0.}
proc flipH*(self: AnimatedSprite): bool {.gcsafe, locks: 0.}
proc `flipH=`*(self: AnimatedSprite; val: bool) {.gcsafe, locks: 0.}
proc flipV*(self: AnimatedSprite): bool {.gcsafe, locks: 0.}
proc `flipV=`*(self: AnimatedSprite; val: bool) {.gcsafe, locks: 0.}
proc frame*(self: AnimatedSprite): int64 {.gcsafe, locks: 0.}
proc `frame=`*(self: AnimatedSprite; val: int64) {.gcsafe, locks: 0.}
proc frames*(self: AnimatedSprite): SpriteFrames {.gcsafe, locks: 0.}
proc `frames=`*(self: AnimatedSprite; val: SpriteFrames) {.gcsafe, locks: 0.}
proc offset*(self: AnimatedSprite): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: AnimatedSprite; val: Vector2) {.gcsafe, locks: 0.}
proc playing*(self: AnimatedSprite): bool {.gcsafe, locks: 0.}
proc `playing=`*(self: AnimatedSprite; val: bool) {.gcsafe, locks: 0.}
proc speedScale*(self: AnimatedSprite): float64 {.gcsafe, locks: 0.}
proc `speedScale=`*(self: AnimatedSprite; val: float64) {.gcsafe, locks: 0.}
method resChanged*(self: AnimatedSprite) {.gcsafe, locks: 0, base.}
proc isPlayingImpl*(self: AnimatedSprite): bool {.gcsafe, locks: 0.}
proc play*(self: AnimatedSprite; anim: string = ""; backwards: bool = false) {.gcsafe,
    locks: 0.}
proc stop*(self: AnimatedSprite) {.gcsafe, locks: 0.}
var animatedSpriteGetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animation(self: AnimatedSprite): string =
  if isNil(animatedSpriteGetAnimationMethodBind):
    animatedSpriteGetAnimationMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"get_animation")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animatedSpriteGetAnimationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animatedSpriteSetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `animation=`(self: AnimatedSprite; val: string) =
  if isNil(animatedSpriteSetAnimationMethodBind):
    animatedSpriteSetAnimationMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animatedSpriteSetAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animatedSpriteIsCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc centered(self: AnimatedSprite): bool =
  if isNil(animatedSpriteIsCenteredMethodBind):
    animatedSpriteIsCenteredMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"is_centered")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteIsCenteredMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSpriteSetCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc `centered=`(self: AnimatedSprite; val: bool) =
  if isNil(animatedSpriteSetCenteredMethodBind):
    animatedSpriteSetCenteredMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_centered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSpriteSetCenteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedSpriteIsFlippedHMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipH(self: AnimatedSprite): bool =
  if isNil(animatedSpriteIsFlippedHMethodBind):
    animatedSpriteIsFlippedHMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"is_flipped_h")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteIsFlippedHMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSpriteSetFlipHMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipH=`(self: AnimatedSprite; val: bool) =
  if isNil(animatedSpriteSetFlipHMethodBind):
    animatedSpriteSetFlipHMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_flip_h")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSpriteSetFlipHMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedSpriteIsFlippedVMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipV(self: AnimatedSprite): bool =
  if isNil(animatedSpriteIsFlippedVMethodBind):
    animatedSpriteIsFlippedVMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"is_flipped_v")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteIsFlippedVMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSpriteSetFlipVMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipV=`(self: AnimatedSprite; val: bool) =
  if isNil(animatedSpriteSetFlipVMethodBind):
    animatedSpriteSetFlipVMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_flip_v")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSpriteSetFlipVMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedSpriteGetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc frame(self: AnimatedSprite): int64 =
  if isNil(animatedSpriteGetFrameMethodBind):
    animatedSpriteGetFrameMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"get_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteGetFrameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSpriteSetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frame=`(self: AnimatedSprite; val: int64) =
  if isNil(animatedSpriteSetFrameMethodBind):
    animatedSpriteSetFrameMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_frame")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSpriteSetFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedSpriteGetSpriteFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc frames(self: AnimatedSprite): SpriteFrames =
  if isNil(animatedSpriteGetSpriteFramesMethodBind):
    animatedSpriteGetSpriteFramesMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"get_sprite_frames")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animatedSpriteGetSpriteFramesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animatedSpriteSetSpriteFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frames=`(self: AnimatedSprite; val: SpriteFrames) =
  if isNil(animatedSpriteSetSpriteFramesMethodBind):
    animatedSpriteSetSpriteFramesMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_sprite_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  animatedSpriteSetSpriteFramesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedSpriteGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: AnimatedSprite): Vector2 =
  if isNil(animatedSpriteGetOffsetMethodBind):
    animatedSpriteGetOffsetMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSpriteSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: AnimatedSprite; val: Vector2) =
  if isNil(animatedSpriteSetOffsetMethodBind):
    animatedSpriteSetOffsetMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSpriteSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animatedSpriteUnderscoreisPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc playing(self: AnimatedSprite): bool =
  if isNil(animatedSpriteUnderscoreisPlayingMethodBind):
    animatedSpriteUnderscoreisPlayingMethodBind = getMethod(
        cstring"AnimatedSprite", cstring"_is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteUnderscoreisPlayingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animatedSpriteUnderscoresetPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playing=`(self: AnimatedSprite; val: bool) =
  if isNil(animatedSpriteUnderscoresetPlayingMethodBind):
    animatedSpriteUnderscoresetPlayingMethodBind = getMethod(
        cstring"AnimatedSprite", cstring"_set_playing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSpriteUnderscoresetPlayingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedSpriteGetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc speedScale(self: AnimatedSprite): float64 =
  if isNil(animatedSpriteGetSpeedScaleMethodBind):
    animatedSpriteGetSpeedScaleMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"get_speed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteGetSpeedScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSpriteSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speedScale=`(self: AnimatedSprite; val: float64) =
  if isNil(animatedSpriteSetSpeedScaleMethodBind):
    animatedSpriteSetSpeedScaleMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"set_speed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animatedSpriteSetSpeedScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animatedSpriteUnderscoreresChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method resChanged(self: AnimatedSprite) =
  if isNil(animatedSpriteUnderscoreresChangedMethodBind):
    animatedSpriteUnderscoreresChangedMethodBind = getMethod(
        cstring"AnimatedSprite", cstring"_res_changed")
  var ptrCallRet: pointer
  animatedSpriteUnderscoreresChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animatedSpriteIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPlayingImpl(self: AnimatedSprite): bool =
  if isNil(animatedSpriteIsPlayingMethodBind):
    animatedSpriteIsPlayingMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animatedSpriteIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animatedSpritePlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc play(self: AnimatedSprite; anim: string = ""; backwards: bool = false) =
  if isNil(animatedSpritePlayMethodBind):
    animatedSpritePlayMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"play")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(backwards)
  var ptrCallRet: pointer
  animatedSpritePlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var animatedSpriteStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: AnimatedSprite) =
  if isNil(animatedSpriteStopMethodBind):
    animatedSpriteStopMethodBind = getMethod(cstring"AnimatedSprite",
        cstring"stop")
  var ptrCallRet: pointer
  animatedSpriteStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
