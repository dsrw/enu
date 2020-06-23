
import
  godot, godottypes, godotinternal, animation_node

export
  godottypes, animation_node

const
  MIX_MODE_ADD* = 1'i64
  MIX_MODE_BLEND* = 0'i64
proc autorestart*(self: AnimationNodeOneShot): bool {.gcsafe, locks: 0.}
proc `autorestart=`*(self: AnimationNodeOneShot; val: bool) {.gcsafe, locks: 0.}
proc autorestartDelay*(self: AnimationNodeOneShot): float64 {.gcsafe, locks: 0.}
proc `autorestartDelay=`*(self: AnimationNodeOneShot; val: float64) {.gcsafe, locks: 0.}
proc autorestartRandomDelay*(self: AnimationNodeOneShot): float64 {.gcsafe, locks: 0.}
proc `autorestartRandomDelay=`*(self: AnimationNodeOneShot; val: float64) {.gcsafe,
    locks: 0.}
proc fadeinTime*(self: AnimationNodeOneShot): float64 {.gcsafe, locks: 0.}
proc `fadeinTime=`*(self: AnimationNodeOneShot; val: float64) {.gcsafe, locks: 0.}
proc fadeoutTime*(self: AnimationNodeOneShot): float64 {.gcsafe, locks: 0.}
proc `fadeoutTime=`*(self: AnimationNodeOneShot; val: float64) {.gcsafe, locks: 0.}
proc sync*(self: AnimationNodeOneShot): bool {.gcsafe, locks: 0.}
proc `sync=`*(self: AnimationNodeOneShot; val: bool) {.gcsafe, locks: 0.}
proc getMixMode*(self: AnimationNodeOneShot): int64 {.gcsafe, locks: 0.}
proc setMixMode*(self: AnimationNodeOneShot; mode: int64) {.gcsafe, locks: 0.}
var animationNodeOneShotHasAutorestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc autorestart(self: AnimationNodeOneShot): bool =
  if isNil(animationNodeOneShotHasAutorestartMethodBind):
    animationNodeOneShotHasAutorestartMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"has_autorestart")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeOneShotHasAutorestartMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeOneShotSetAutorestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autorestart=`(self: AnimationNodeOneShot; val: bool) =
  if isNil(animationNodeOneShotSetAutorestartMethodBind):
    animationNodeOneShotSetAutorestartMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"set_autorestart")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeOneShotSetAutorestartMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeOneShotGetAutorestartDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc autorestartDelay(self: AnimationNodeOneShot): float64 =
  if isNil(animationNodeOneShotGetAutorestartDelayMethodBind):
    animationNodeOneShotGetAutorestartDelayMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"get_autorestart_delay")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeOneShotGetAutorestartDelayMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationNodeOneShotSetAutorestartDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autorestartDelay=`(self: AnimationNodeOneShot; val: float64) =
  if isNil(animationNodeOneShotSetAutorestartDelayMethodBind):
    animationNodeOneShotSetAutorestartDelayMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"set_autorestart_delay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeOneShotSetAutorestartDelayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeOneShotGetAutorestartRandomDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc autorestartRandomDelay(self: AnimationNodeOneShot): float64 =
  if isNil(animationNodeOneShotGetAutorestartRandomDelayMethodBind):
    animationNodeOneShotGetAutorestartRandomDelayMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"get_autorestart_random_delay")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeOneShotGetAutorestartRandomDelayMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeOneShotSetAutorestartRandomDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autorestartRandomDelay=`(self: AnimationNodeOneShot; val: float64) =
  if isNil(animationNodeOneShotSetAutorestartRandomDelayMethodBind):
    animationNodeOneShotSetAutorestartRandomDelayMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"set_autorestart_random_delay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeOneShotSetAutorestartRandomDelayMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeOneShotGetFadeinTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc fadeinTime(self: AnimationNodeOneShot): float64 =
  if isNil(animationNodeOneShotGetFadeinTimeMethodBind):
    animationNodeOneShotGetFadeinTimeMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"get_fadein_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeOneShotGetFadeinTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeOneShotSetFadeinTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fadeinTime=`(self: AnimationNodeOneShot; val: float64) =
  if isNil(animationNodeOneShotSetFadeinTimeMethodBind):
    animationNodeOneShotSetFadeinTimeMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"set_fadein_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeOneShotSetFadeinTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeOneShotGetFadeoutTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc fadeoutTime(self: AnimationNodeOneShot): float64 =
  if isNil(animationNodeOneShotGetFadeoutTimeMethodBind):
    animationNodeOneShotGetFadeoutTimeMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"get_fadeout_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeOneShotGetFadeoutTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeOneShotSetFadeoutTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fadeoutTime=`(self: AnimationNodeOneShot; val: float64) =
  if isNil(animationNodeOneShotSetFadeoutTimeMethodBind):
    animationNodeOneShotSetFadeoutTimeMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"set_fadeout_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeOneShotSetFadeoutTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeOneShotIsUsingSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc sync(self: AnimationNodeOneShot): bool =
  if isNil(animationNodeOneShotIsUsingSyncMethodBind):
    animationNodeOneShotIsUsingSyncMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"is_using_sync")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeOneShotIsUsingSyncMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeOneShotSetUseSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sync=`(self: AnimationNodeOneShot; val: bool) =
  if isNil(animationNodeOneShotSetUseSyncMethodBind):
    animationNodeOneShotSetUseSyncMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"set_use_sync")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeOneShotSetUseSyncMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeOneShotGetMixModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMixMode(self: AnimationNodeOneShot): int64 =
  if isNil(animationNodeOneShotGetMixModeMethodBind):
    animationNodeOneShotGetMixModeMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"get_mix_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeOneShotGetMixModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeOneShotSetMixModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMixMode(self: AnimationNodeOneShot; mode: int64) =
  if isNil(animationNodeOneShotSetMixModeMethodBind):
    animationNodeOneShotSetMixModeMethodBind = getMethod(
        cstring"AnimationNodeOneShot", cstring"set_mix_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  var ptrCallRet: pointer
  animationNodeOneShotSetMixModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
