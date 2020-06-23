
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  ANIMATION_METHOD_CALL_DEFERRED* = 0'i64
  ANIMATION_METHOD_CALL_IMMEDIATE* = 1'i64
  ANIMATION_PROCESS_IDLE* = 1'i64
  ANIMATION_PROCESS_MANUAL* = 2'i64
  ANIMATION_PROCESS_PHYSICS* = 0'i64
proc assignedAnimation*(self: AnimationPlayer): string {.gcsafe, locks: 0.}
proc `assignedAnimation=`*(self: AnimationPlayer; val: string) {.gcsafe, locks: 0.}
proc autoplay*(self: AnimationPlayer): string {.gcsafe, locks: 0.}
proc `autoplay=`*(self: AnimationPlayer; val: string) {.gcsafe, locks: 0.}
proc currentAnimation*(self: AnimationPlayer): string {.gcsafe, locks: 0.}
proc `currentAnimation=`*(self: AnimationPlayer; val: string) {.gcsafe, locks: 0.}
proc currentAnimationLength*(self: AnimationPlayer): float64 {.gcsafe, locks: 0.}
proc `currentAnimationLength=`*(self: AnimationPlayer; val: float64) {.gcsafe,
    locks: 0.}
proc currentAnimationPosition*(self: AnimationPlayer): float64 {.gcsafe, locks: 0.}
proc `currentAnimationPosition=`*(self: AnimationPlayer; val: float64) {.gcsafe,
    locks: 0.}
proc methodCallMode*(self: AnimationPlayer): int64 {.gcsafe, locks: 0.}
proc `methodCallMode=`*(self: AnimationPlayer; val: int64) {.gcsafe, locks: 0.}
proc playbackActive*(self: AnimationPlayer): bool {.gcsafe, locks: 0.}
proc `playbackActive=`*(self: AnimationPlayer; val: bool) {.gcsafe, locks: 0.}
proc playbackDefaultBlendTime*(self: AnimationPlayer): float64 {.gcsafe, locks: 0.}
proc `playbackDefaultBlendTime=`*(self: AnimationPlayer; val: float64) {.gcsafe,
    locks: 0.}
proc playbackProcessMode*(self: AnimationPlayer): int64 {.gcsafe, locks: 0.}
proc `playbackProcessMode=`*(self: AnimationPlayer; val: int64) {.gcsafe, locks: 0.}
proc playbackSpeed*(self: AnimationPlayer): float64 {.gcsafe, locks: 0.}
proc `playbackSpeed=`*(self: AnimationPlayer; val: float64) {.gcsafe, locks: 0.}
proc rootNode*(self: AnimationPlayer): NodePath {.gcsafe, locks: 0.}
proc `rootNode=`*(self: AnimationPlayer; val: NodePath) {.gcsafe, locks: 0.}
method animationChanged*(self: AnimationPlayer) {.gcsafe, locks: 0, base.}
method nodeRemoved*(self: AnimationPlayer; arg0: Node) {.gcsafe, locks: 0, base.}
proc addAnimation*(self: AnimationPlayer; name: string; animation: Animation): Error {.
    gcsafe, locks: 0.}
proc advance*(self: AnimationPlayer; delta: float64) {.gcsafe, locks: 0.}
proc animationGetNext*(self: AnimationPlayer; animFrom: string): string {.gcsafe,
    locks: 0.}
proc animationSetNext*(self: AnimationPlayer; animFrom: string; animTo: string) {.
    gcsafe, locks: 0.}
proc clearCaches*(self: AnimationPlayer) {.gcsafe, locks: 0.}
proc clearQueue*(self: AnimationPlayer) {.gcsafe, locks: 0.}
proc findAnimation*(self: AnimationPlayer; animation: Animation): string {.gcsafe,
    locks: 0.}
proc getAnimation*(self: AnimationPlayer; name: string): Animation {.gcsafe, locks: 0.}
proc getAnimationList*(self: AnimationPlayer): PoolStringArray {.gcsafe, locks: 0.}
proc getBlendTime*(self: AnimationPlayer; animFrom: string; animTo: string): float64 {.
    gcsafe, locks: 0.}
proc getPlayingSpeed*(self: AnimationPlayer): float64 {.gcsafe, locks: 0.}
proc getQueue*(self: AnimationPlayer): PoolStringArray {.gcsafe, locks: 0.}
proc hasAnimation*(self: AnimationPlayer; name: string): bool {.gcsafe, locks: 0.}
proc isPlaying*(self: AnimationPlayer): bool {.gcsafe, locks: 0.}
proc play*(self: AnimationPlayer; name: string = ""; customBlend: float64 = -1.0;
          customSpeed: float64 = 1.0; fromEnd: bool = false) {.gcsafe, locks: 0.}
proc playBackwards*(self: AnimationPlayer; name: string = "";
                   customBlend: float64 = -1.0) {.gcsafe, locks: 0.}
proc queue*(self: AnimationPlayer; name: string) {.gcsafe, locks: 0.}
proc removeAnimation*(self: AnimationPlayer; name: string) {.gcsafe, locks: 0.}
proc renameAnimation*(self: AnimationPlayer; name: string; newname: string) {.gcsafe,
    locks: 0.}
proc seek*(self: AnimationPlayer; seconds: float64; update: bool = false) {.gcsafe,
    locks: 0.}
proc setBlendTime*(self: AnimationPlayer; animFrom: string; animTo: string;
                  sec: float64) {.gcsafe, locks: 0.}
proc stop*(self: AnimationPlayer; reset: bool = true) {.gcsafe, locks: 0.}
var animationPlayerGetAssignedAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc assignedAnimation(self: AnimationPlayer): string =
  if isNil(animationPlayerGetAssignedAnimationMethodBind):
    animationPlayerGetAssignedAnimationMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_assigned_animation")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationPlayerGetAssignedAnimationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationPlayerSetAssignedAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `assignedAnimation=`(self: AnimationPlayer; val: string) =
  if isNil(animationPlayerSetAssignedAnimationMethodBind):
    animationPlayerSetAssignedAnimationMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"set_assigned_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationPlayerSetAssignedAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerGetAutoplayMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoplay(self: AnimationPlayer): string =
  if isNil(animationPlayerGetAutoplayMethodBind):
    animationPlayerGetAutoplayMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"get_autoplay")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationPlayerGetAutoplayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationPlayerSetAutoplayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoplay=`(self: AnimationPlayer; val: string) =
  if isNil(animationPlayerSetAutoplayMethodBind):
    animationPlayerSetAutoplayMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"set_autoplay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationPlayerSetAutoplayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerGetCurrentAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentAnimation(self: AnimationPlayer): string =
  if isNil(animationPlayerGetCurrentAnimationMethodBind):
    animationPlayerGetCurrentAnimationMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_current_animation")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationPlayerGetCurrentAnimationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationPlayerSetCurrentAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentAnimation=`(self: AnimationPlayer; val: string) =
  if isNil(animationPlayerSetCurrentAnimationMethodBind):
    animationPlayerSetCurrentAnimationMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"set_current_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationPlayerSetCurrentAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerGetCurrentAnimationLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentAnimationLength(self: AnimationPlayer): float64 =
  if isNil(animationPlayerGetCurrentAnimationLengthMethodBind):
    animationPlayerGetCurrentAnimationLengthMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_current_animation_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetCurrentAnimationLengthMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationPlayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentAnimationLength=`(self: AnimationPlayer; val: float64) =
  if isNil(animationPlayerMethodBind):
    animationPlayerMethodBind = getMethod(cstring"AnimationPlayer", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationPlayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var animationPlayerGetCurrentAnimationPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentAnimationPosition(self: AnimationPlayer): float64 =
  if isNil(animationPlayerGetCurrentAnimationPositionMethodBind):
    animationPlayerGetCurrentAnimationPositionMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_current_animation_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetCurrentAnimationPositionMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `currentAnimationPosition=`(self: AnimationPlayer; val: float64) =
  if isNil(animationPlayerMethodBind):
    animationPlayerMethodBind = getMethod(cstring"AnimationPlayer", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationPlayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var animationPlayerGetMethodCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc methodCallMode(self: AnimationPlayer): int64 =
  if isNil(animationPlayerGetMethodCallModeMethodBind):
    animationPlayerGetMethodCallModeMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_method_call_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetMethodCallModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationPlayerSetMethodCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `methodCallMode=`(self: AnimationPlayer; val: int64) =
  if isNil(animationPlayerSetMethodCallModeMethodBind):
    animationPlayerSetMethodCallModeMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"set_method_call_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationPlayerSetMethodCallModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationPlayerIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc playbackActive(self: AnimationPlayer): bool =
  if isNil(animationPlayerIsActiveMethodBind):
    animationPlayerIsActiveMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationPlayerSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playbackActive=`(self: AnimationPlayer; val: bool) =
  if isNil(animationPlayerSetActiveMethodBind):
    animationPlayerSetActiveMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationPlayerSetActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationPlayerGetDefaultBlendTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc playbackDefaultBlendTime(self: AnimationPlayer): float64 =
  if isNil(animationPlayerGetDefaultBlendTimeMethodBind):
    animationPlayerGetDefaultBlendTimeMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_default_blend_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetDefaultBlendTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationPlayerSetDefaultBlendTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playbackDefaultBlendTime=`(self: AnimationPlayer; val: float64) =
  if isNil(animationPlayerSetDefaultBlendTimeMethodBind):
    animationPlayerSetDefaultBlendTimeMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"set_default_blend_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationPlayerSetDefaultBlendTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationPlayerGetAnimationProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc playbackProcessMode(self: AnimationPlayer): int64 =
  if isNil(animationPlayerGetAnimationProcessModeMethodBind):
    animationPlayerGetAnimationProcessModeMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_animation_process_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetAnimationProcessModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationPlayerSetAnimationProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playbackProcessMode=`(self: AnimationPlayer; val: int64) =
  if isNil(animationPlayerSetAnimationProcessModeMethodBind):
    animationPlayerSetAnimationProcessModeMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"set_animation_process_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationPlayerSetAnimationProcessModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationPlayerGetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc playbackSpeed(self: AnimationPlayer): float64 =
  if isNil(animationPlayerGetSpeedScaleMethodBind):
    animationPlayerGetSpeedScaleMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"get_speed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetSpeedScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationPlayerSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playbackSpeed=`(self: AnimationPlayer; val: float64) =
  if isNil(animationPlayerSetSpeedScaleMethodBind):
    animationPlayerSetSpeedScaleMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"set_speed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationPlayerSetSpeedScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationPlayerGetRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc rootNode(self: AnimationPlayer): NodePath =
  if isNil(animationPlayerGetRootMethodBind):
    animationPlayerGetRootMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"get_root")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  animationPlayerGetRootMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var animationPlayerSetRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rootNode=`(self: AnimationPlayer; val: NodePath) =
  if isNil(animationPlayerSetRootMethodBind):
    animationPlayerSetRootMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"set_root")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  animationPlayerSetRootMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationPlayerUnderscoreanimationChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method animationChanged(self: AnimationPlayer) =
  if isNil(animationPlayerUnderscoreanimationChangedMethodBind):
    animationPlayerUnderscoreanimationChangedMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"_animation_changed")
  var ptrCallRet: pointer
  animationPlayerUnderscoreanimationChangedMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationPlayerUnderscorenodeRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodeRemoved(self: AnimationPlayer; arg0: Node) =
  if isNil(animationPlayerUnderscorenodeRemovedMethodBind):
    animationPlayerUnderscorenodeRemovedMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"_node_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  animationPlayerUnderscorenodeRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationPlayerAddAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc addAnimation(self: AnimationPlayer; name: string; animation: Animation): Error =
  if isNil(animationPlayerAddAnimationMethodBind):
    animationPlayerAddAnimationMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"add_animation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not animation.isNil:
    animation.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  animationPlayerAddAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var animationPlayerAdvanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc advance(self: AnimationPlayer; delta: float64) =
  if isNil(animationPlayerAdvanceMethodBind):
    animationPlayerAdvanceMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"advance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  animationPlayerAdvanceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationPlayerAnimationGetNextMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationGetNext(self: AnimationPlayer; animFrom: string): string =
  if isNil(animationPlayerAnimationGetNextMethodBind):
    animationPlayerAnimationGetNextMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"animation_get_next")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(animFrom)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationPlayerAnimationGetNextMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationPlayerAnimationSetNextMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationSetNext(self: AnimationPlayer; animFrom: string; animTo: string) =
  if isNil(animationPlayerAnimationSetNextMethodBind):
    animationPlayerAnimationSetNextMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"animation_set_next")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(animFrom)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(animTo)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationPlayerAnimationSetNextMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationPlayerClearCachesMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCaches(self: AnimationPlayer) =
  if isNil(animationPlayerClearCachesMethodBind):
    animationPlayerClearCachesMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"clear_caches")
  var ptrCallRet: pointer
  animationPlayerClearCachesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationPlayerClearQueueMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearQueue(self: AnimationPlayer) =
  if isNil(animationPlayerClearQueueMethodBind):
    animationPlayerClearQueueMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"clear_queue")
  var ptrCallRet: pointer
  animationPlayerClearQueueMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationPlayerFindAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc findAnimation(self: AnimationPlayer; animation: Animation): string =
  if isNil(animationPlayerFindAnimationMethodBind):
    animationPlayerFindAnimationMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"find_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not animation.isNil:
    animation.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationPlayerFindAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationPlayerGetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnimation(self: AnimationPlayer; name: string): Animation =
  if isNil(animationPlayerGetAnimationMethodBind):
    animationPlayerGetAnimationMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"get_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationPlayerGetAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationPlayerGetAnimationListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnimationList(self: AnimationPlayer): PoolStringArray =
  if isNil(animationPlayerGetAnimationListMethodBind):
    animationPlayerGetAnimationListMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_animation_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  animationPlayerGetAnimationListMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var animationPlayerGetBlendTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBlendTime(self: AnimationPlayer; animFrom: string; animTo: string): float64 =
  if isNil(animationPlayerGetBlendTimeMethodBind):
    animationPlayerGetBlendTimeMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"get_blend_time")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(animFrom)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(animTo)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetBlendTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationPlayerGetPlayingSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPlayingSpeed(self: AnimationPlayer): float64 =
  if isNil(animationPlayerGetPlayingSpeedMethodBind):
    animationPlayerGetPlayingSpeedMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"get_playing_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerGetPlayingSpeedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationPlayerGetQueueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getQueue(self: AnimationPlayer): PoolStringArray =
  if isNil(animationPlayerGetQueueMethodBind):
    animationPlayerGetQueueMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"get_queue")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  animationPlayerGetQueueMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var animationPlayerHasAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasAnimation(self: AnimationPlayer; name: string): bool =
  if isNil(animationPlayerHasAnimationMethodBind):
    animationPlayerHasAnimationMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"has_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerHasAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPlaying(self: AnimationPlayer): bool =
  if isNil(animationPlayerIsPlayingMethodBind):
    animationPlayerIsPlayingMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationPlayerIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationPlayerPlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc play(self: AnimationPlayer; name: string = ""; customBlend: float64 = -1.0;
         customSpeed: float64 = 1.0; fromEnd: bool = false) =
  if isNil(animationPlayerPlayMethodBind):
    animationPlayerPlayMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"play")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(customBlend)
  argsToPassToGodot[][2] = unsafeAddr(customSpeed)
  argsToPassToGodot[][3] = unsafeAddr(fromEnd)
  var ptrCallRet: pointer
  animationPlayerPlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerPlayBackwardsMethodBind {.threadvar.}: ptr GodotMethodBind
proc playBackwards(self: AnimationPlayer; name: string = "";
                  customBlend: float64 = -1.0) =
  if isNil(animationPlayerPlayBackwardsMethodBind):
    animationPlayerPlayBackwardsMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"play_backwards")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(customBlend)
  var ptrCallRet: pointer
  animationPlayerPlayBackwardsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerQueueMethodBind {.threadvar.}: ptr GodotMethodBind
proc queue(self: AnimationPlayer; name: string) =
  if isNil(animationPlayerQueueMethodBind):
    animationPlayerQueueMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"queue")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationPlayerQueueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerRemoveAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeAnimation(self: AnimationPlayer; name: string) =
  if isNil(animationPlayerRemoveAnimationMethodBind):
    animationPlayerRemoveAnimationMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"remove_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationPlayerRemoveAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationPlayerRenameAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameAnimation(self: AnimationPlayer; name: string; newname: string) =
  if isNil(animationPlayerRenameAnimationMethodBind):
    animationPlayerRenameAnimationMethodBind = getMethod(
        cstring"AnimationPlayer", cstring"rename_animation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newname)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationPlayerRenameAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationPlayerSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: AnimationPlayer; seconds: float64; update: bool = false) =
  if isNil(animationPlayerSeekMethodBind):
    animationPlayerSeekMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"seek")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(seconds)
  argsToPassToGodot[][1] = unsafeAddr(update)
  var ptrCallRet: pointer
  animationPlayerSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var animationPlayerSetBlendTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBlendTime(self: AnimationPlayer; animFrom: string; animTo: string; sec: float64) =
  if isNil(animationPlayerSetBlendTimeMethodBind):
    animationPlayerSetBlendTimeMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"set_blend_time")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(animFrom)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(animTo)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(sec)
  var ptrCallRet: pointer
  animationPlayerSetBlendTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationPlayerStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: AnimationPlayer; reset: bool = true) =
  if isNil(animationPlayerStopMethodBind):
    animationPlayerStopMethodBind = getMethod(cstring"AnimationPlayer",
        cstring"stop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(reset)
  var ptrCallRet: pointer
  animationPlayerStopMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
