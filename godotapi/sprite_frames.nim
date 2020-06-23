
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc animations*(self: SpriteFrames): Array {.gcsafe, locks: 0.}
proc `animations=`*(self: SpriteFrames; val: Array) {.gcsafe, locks: 0.}
proc frames*(self: SpriteFrames): Array {.gcsafe, locks: 0.}
proc `frames=`*(self: SpriteFrames; val: Array) {.gcsafe, locks: 0.}
proc addAnimation*(self: SpriteFrames; anim: string) {.gcsafe, locks: 0.}
proc addFrame*(self: SpriteFrames; anim: string; frame: Texture;
              atPosition: int64 = -1'i64) {.gcsafe, locks: 0.}
proc clear*(self: SpriteFrames; anim: string) {.gcsafe, locks: 0.}
proc clearAll*(self: SpriteFrames) {.gcsafe, locks: 0.}
proc getAnimationLoop*(self: SpriteFrames; anim: string): bool {.gcsafe, locks: 0.}
proc getAnimationNames*(self: SpriteFrames): PoolStringArray {.gcsafe, locks: 0.}
proc getAnimationSpeed*(self: SpriteFrames; anim: string): float64 {.gcsafe, locks: 0.}
proc getFrame*(self: SpriteFrames; anim: string; idx: int64): Texture {.gcsafe, locks: 0.}
proc getFrameCount*(self: SpriteFrames; anim: string): int64 {.gcsafe, locks: 0.}
proc hasAnimation*(self: SpriteFrames; anim: string): bool {.gcsafe, locks: 0.}
proc removeAnimation*(self: SpriteFrames; anim: string) {.gcsafe, locks: 0.}
proc removeFrame*(self: SpriteFrames; anim: string; idx: int64) {.gcsafe, locks: 0.}
proc renameAnimation*(self: SpriteFrames; anim: string; newname: string) {.gcsafe,
    locks: 0.}
proc setAnimationLoop*(self: SpriteFrames; anim: string; loop: bool) {.gcsafe, locks: 0.}
proc setAnimationSpeed*(self: SpriteFrames; anim: string; speed: float64) {.gcsafe,
    locks: 0.}
proc setFrame*(self: SpriteFrames; anim: string; idx: int64; txt: Texture) {.gcsafe,
    locks: 0.}
var spriteFramesUnderscoregetAnimationsMethodBind {.threadvar.}: ptr GodotMethodBind
proc animations(self: SpriteFrames): Array =
  if isNil(spriteFramesUnderscoregetAnimationsMethodBind):
    spriteFramesUnderscoregetAnimationsMethodBind = getMethod(
        cstring"SpriteFrames", cstring"_get_animations")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  spriteFramesUnderscoregetAnimationsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var spriteFramesUnderscoresetAnimationsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `animations=`(self: SpriteFrames; val: Array) =
  if isNil(spriteFramesUnderscoresetAnimationsMethodBind):
    spriteFramesUnderscoresetAnimationsMethodBind = getMethod(
        cstring"SpriteFrames", cstring"_set_animations")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  spriteFramesUnderscoresetAnimationsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spriteFramesUnderscoregetFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc frames(self: SpriteFrames): Array =
  if isNil(spriteFramesUnderscoregetFramesMethodBind):
    spriteFramesUnderscoregetFramesMethodBind = getMethod(cstring"SpriteFrames",
        cstring"_get_frames")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  spriteFramesUnderscoregetFramesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var spriteFramesUnderscoresetFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frames=`(self: SpriteFrames; val: Array) =
  if isNil(spriteFramesUnderscoresetFramesMethodBind):
    spriteFramesUnderscoresetFramesMethodBind = getMethod(cstring"SpriteFrames",
        cstring"_set_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  spriteFramesUnderscoresetFramesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spriteFramesAddAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc addAnimation(self: SpriteFrames; anim: string) =
  if isNil(spriteFramesAddAnimationMethodBind):
    spriteFramesAddAnimationMethodBind = getMethod(cstring"SpriteFrames",
        cstring"add_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  spriteFramesAddAnimationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesAddFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFrame(self: SpriteFrames; anim: string; frame: Texture;
             atPosition: int64 = -1'i64) =
  if isNil(spriteFramesAddFrameMethodBind):
    spriteFramesAddFrameMethodBind = getMethod(cstring"SpriteFrames",
        cstring"add_frame")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not frame.isNil:
    frame.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  spriteFramesAddFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: SpriteFrames; anim: string) =
  if isNil(spriteFramesClearMethodBind):
    spriteFramesClearMethodBind = getMethod(cstring"SpriteFrames", cstring"clear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  spriteFramesClearMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesClearAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearAll(self: SpriteFrames) =
  if isNil(spriteFramesClearAllMethodBind):
    spriteFramesClearAllMethodBind = getMethod(cstring"SpriteFrames",
        cstring"clear_all")
  var ptrCallRet: pointer
  spriteFramesClearAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteFramesGetAnimationLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnimationLoop(self: SpriteFrames; anim: string): bool =
  if isNil(spriteFramesGetAnimationLoopMethodBind):
    spriteFramesGetAnimationLoopMethodBind = getMethod(cstring"SpriteFrames",
        cstring"get_animation_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteFramesGetAnimationLoopMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesGetAnimationNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnimationNames(self: SpriteFrames): PoolStringArray =
  if isNil(spriteFramesGetAnimationNamesMethodBind):
    spriteFramesGetAnimationNamesMethodBind = getMethod(cstring"SpriteFrames",
        cstring"get_animation_names")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  spriteFramesGetAnimationNamesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var spriteFramesGetAnimationSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnimationSpeed(self: SpriteFrames; anim: string): float64 =
  if isNil(spriteFramesGetAnimationSpeedMethodBind):
    spriteFramesGetAnimationSpeedMethodBind = getMethod(cstring"SpriteFrames",
        cstring"get_animation_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteFramesGetAnimationSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesGetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFrame(self: SpriteFrames; anim: string; idx: int64): Texture =
  if isNil(spriteFramesGetFrameMethodBind):
    spriteFramesGetFrameMethodBind = getMethod(cstring"SpriteFrames",
        cstring"get_frame")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spriteFramesGetFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spriteFramesGetFrameCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFrameCount(self: SpriteFrames; anim: string): int64 =
  if isNil(spriteFramesGetFrameCountMethodBind):
    spriteFramesGetFrameCountMethodBind = getMethod(cstring"SpriteFrames",
        cstring"get_frame_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteFramesGetFrameCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesHasAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasAnimation(self: SpriteFrames; anim: string): bool =
  if isNil(spriteFramesHasAnimationMethodBind):
    spriteFramesHasAnimationMethodBind = getMethod(cstring"SpriteFrames",
        cstring"has_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteFramesHasAnimationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesRemoveAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeAnimation(self: SpriteFrames; anim: string) =
  if isNil(spriteFramesRemoveAnimationMethodBind):
    spriteFramesRemoveAnimationMethodBind = getMethod(cstring"SpriteFrames",
        cstring"remove_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  spriteFramesRemoveAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesRemoveFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeFrame(self: SpriteFrames; anim: string; idx: int64) =
  if isNil(spriteFramesRemoveFrameMethodBind):
    spriteFramesRemoveFrameMethodBind = getMethod(cstring"SpriteFrames",
        cstring"remove_frame")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(idx)
  var ptrCallRet: pointer
  spriteFramesRemoveFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesRenameAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameAnimation(self: SpriteFrames; anim: string; newname: string) =
  if isNil(spriteFramesRenameAnimationMethodBind):
    spriteFramesRenameAnimationMethodBind = getMethod(cstring"SpriteFrames",
        cstring"rename_animation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newname)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  spriteFramesRenameAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var spriteFramesSetAnimationLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAnimationLoop(self: SpriteFrames; anim: string; loop: bool) =
  if isNil(spriteFramesSetAnimationLoopMethodBind):
    spriteFramesSetAnimationLoopMethodBind = getMethod(cstring"SpriteFrames",
        cstring"set_animation_loop")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(loop)
  var ptrCallRet: pointer
  spriteFramesSetAnimationLoopMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesSetAnimationSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAnimationSpeed(self: SpriteFrames; anim: string; speed: float64) =
  if isNil(spriteFramesSetAnimationSpeedMethodBind):
    spriteFramesSetAnimationSpeedMethodBind = getMethod(cstring"SpriteFrames",
        cstring"set_animation_speed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(speed)
  var ptrCallRet: pointer
  spriteFramesSetAnimationSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var spriteFramesSetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFrame(self: SpriteFrames; anim: string; idx: int64; txt: Texture) =
  if isNil(spriteFramesSetFrameMethodBind):
    spriteFramesSetFrameMethodBind = getMethod(cstring"SpriteFrames",
        cstring"set_frame")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(anim)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(idx)
  let argToPassToGodot2 = if not txt.isNil:
    txt.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  spriteFramesSetFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
