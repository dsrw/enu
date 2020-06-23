
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  ANIMATION_PROCESS_IDLE* = 1'i64
  ANIMATION_PROCESS_PHYSICS* = 0'i64
  NODE_ANIMATION* = 1'i64
  NODE_BLEND2* = 4'i64
  NODE_BLEND3* = 5'i64
  NODE_BLEND4* = 6'i64
  NODE_MIX* = 3'i64
  NODE_ONESHOT* = 2'i64
  NODE_OUTPUT* = 0'i64
  NODE_TIMESCALE* = 7'i64
  NODE_TIMESEEK* = 8'i64
  NODE_TRANSITION* = 9'i64
proc active*(self: AnimationTreePlayer): bool {.gcsafe, locks: 0.}
proc `active=`*(self: AnimationTreePlayer; val: bool) {.gcsafe, locks: 0.}
proc basePath*(self: AnimationTreePlayer): NodePath {.gcsafe, locks: 0.}
proc `basePath=`*(self: AnimationTreePlayer; val: NodePath) {.gcsafe, locks: 0.}
proc masterPlayer*(self: AnimationTreePlayer): NodePath {.gcsafe, locks: 0.}
proc `masterPlayer=`*(self: AnimationTreePlayer; val: NodePath) {.gcsafe, locks: 0.}
proc playbackProcessMode*(self: AnimationTreePlayer): int64 {.gcsafe, locks: 0.}
proc `playbackProcessMode=`*(self: AnimationTreePlayer; val: int64) {.gcsafe, locks: 0.}
proc addNode*(self: AnimationTreePlayer; typee: int64; id: string) {.gcsafe, locks: 0.}
proc advance*(self: AnimationTreePlayer; delta: float64) {.gcsafe, locks: 0.}
proc animationNodeGetAnimation*(self: AnimationTreePlayer; id: string): Animation {.
    gcsafe, locks: 0.}
proc animationNodeGetMasterAnimation*(self: AnimationTreePlayer; id: string): string {.
    gcsafe, locks: 0.}
proc animationNodeGetPosition*(self: AnimationTreePlayer; id: string): float64 {.
    gcsafe, locks: 0.}
proc animationNodeSetAnimation*(self: AnimationTreePlayer; id: string;
                               animation: Animation) {.gcsafe, locks: 0.}
proc animationNodeSetFilterPath*(self: AnimationTreePlayer; id: string;
                                path: NodePath; enable: bool) {.gcsafe, locks: 0.}
proc animationNodeSetMasterAnimation*(self: AnimationTreePlayer; id: string;
                                     source: string) {.gcsafe, locks: 0.}
proc areNodesConnected*(self: AnimationTreePlayer; id: string; dstId: string;
                       dstInputIdx: int64): bool {.gcsafe, locks: 0.}
proc blend2NodeGetAmount*(self: AnimationTreePlayer; id: string): float64 {.gcsafe,
    locks: 0.}
proc blend2NodeSetAmount*(self: AnimationTreePlayer; id: string; blend: float64) {.
    gcsafe, locks: 0.}
proc blend2NodeSetFilterPath*(self: AnimationTreePlayer; id: string; path: NodePath;
                             enable: bool) {.gcsafe, locks: 0.}
proc blend3NodeGetAmount*(self: AnimationTreePlayer; id: string): float64 {.gcsafe,
    locks: 0.}
proc blend3NodeSetAmount*(self: AnimationTreePlayer; id: string; blend: float64) {.
    gcsafe, locks: 0.}
proc blend4NodeGetAmount*(self: AnimationTreePlayer; id: string): Vector2 {.gcsafe,
    locks: 0.}
proc blend4NodeSetAmount*(self: AnimationTreePlayer; id: string; blend: Vector2) {.
    gcsafe, locks: 0.}
proc connectNodes*(self: AnimationTreePlayer; id: string; dstId: string;
                  dstInputIdx: int64): Error {.gcsafe, locks: 0.}
proc disconnectNodes*(self: AnimationTreePlayer; id: string; dstInputIdx: int64) {.
    gcsafe, locks: 0.}
proc getNodeList*(self: AnimationTreePlayer): PoolStringArray {.gcsafe, locks: 0.}
proc mixNodeGetAmount*(self: AnimationTreePlayer; id: string): float64 {.gcsafe,
    locks: 0.}
proc mixNodeSetAmount*(self: AnimationTreePlayer; id: string; ratio: float64) {.gcsafe,
    locks: 0.}
proc nodeExists*(self: AnimationTreePlayer; node: string): bool {.gcsafe, locks: 0.}
proc nodeGetInputCount*(self: AnimationTreePlayer; id: string): int64 {.gcsafe,
    locks: 0.}
proc nodeGetInputSource*(self: AnimationTreePlayer; id: string; idx: int64): string {.
    gcsafe, locks: 0.}
proc nodeGetPosition*(self: AnimationTreePlayer; id: string): Vector2 {.gcsafe,
    locks: 0.}
proc nodeGetType*(self: AnimationTreePlayer; id: string): int64 {.gcsafe, locks: 0.}
proc nodeRename*(self: AnimationTreePlayer; node: string; newName: string): Error {.
    gcsafe, locks: 0.}
proc nodeSetPosition*(self: AnimationTreePlayer; id: string; screenPosition: Vector2) {.
    gcsafe, locks: 0.}
proc oneshotNodeGetAutorestartDelay*(self: AnimationTreePlayer; id: string): float64 {.
    gcsafe, locks: 0.}
proc oneshotNodeGetAutorestartRandomDelay*(self: AnimationTreePlayer; id: string): float64 {.
    gcsafe, locks: 0.}
proc oneshotNodeGetFadeinTime*(self: AnimationTreePlayer; id: string): float64 {.
    gcsafe, locks: 0.}
proc oneshotNodeGetFadeoutTime*(self: AnimationTreePlayer; id: string): float64 {.
    gcsafe, locks: 0.}
proc oneshotNodeHasAutorestart*(self: AnimationTreePlayer; id: string): bool {.gcsafe,
    locks: 0.}
proc oneshotNodeIsActive*(self: AnimationTreePlayer; id: string): bool {.gcsafe,
    locks: 0.}
proc oneshotNodeSetAutorestart*(self: AnimationTreePlayer; id: string; enable: bool) {.
    gcsafe, locks: 0.}
proc oneshotNodeSetAutorestartDelay*(self: AnimationTreePlayer; id: string;
                                    delaySec: float64) {.gcsafe, locks: 0.}
proc oneshotNodeSetAutorestartRandomDelay*(self: AnimationTreePlayer; id: string;
    randSec: float64) {.gcsafe, locks: 0.}
proc oneshotNodeSetFadeinTime*(self: AnimationTreePlayer; id: string;
                              timeSec: float64) {.gcsafe, locks: 0.}
proc oneshotNodeSetFadeoutTime*(self: AnimationTreePlayer; id: string;
                               timeSec: float64) {.gcsafe, locks: 0.}
proc oneshotNodeSetFilterPath*(self: AnimationTreePlayer; id: string; path: NodePath;
                              enable: bool) {.gcsafe, locks: 0.}
proc oneshotNodeStart*(self: AnimationTreePlayer; id: string) {.gcsafe, locks: 0.}
proc oneshotNodeStop*(self: AnimationTreePlayer; id: string) {.gcsafe, locks: 0.}
proc recomputeCaches*(self: AnimationTreePlayer) {.gcsafe, locks: 0.}
proc removeNode*(self: AnimationTreePlayer; id: string) {.gcsafe, locks: 0.}
proc reset*(self: AnimationTreePlayer) {.gcsafe, locks: 0.}
proc timescaleNodeGetScale*(self: AnimationTreePlayer; id: string): float64 {.gcsafe,
    locks: 0.}
proc timescaleNodeSetScale*(self: AnimationTreePlayer; id: string; scale: float64) {.
    gcsafe, locks: 0.}
proc timeseekNodeSeek*(self: AnimationTreePlayer; id: string; seconds: float64) {.
    gcsafe, locks: 0.}
proc transitionNodeDeleteInput*(self: AnimationTreePlayer; id: string;
                               inputIdx: int64) {.gcsafe, locks: 0.}
proc transitionNodeGetCurrent*(self: AnimationTreePlayer; id: string): int64 {.gcsafe,
    locks: 0.}
proc transitionNodeGetInputCount*(self: AnimationTreePlayer; id: string): int64 {.
    gcsafe, locks: 0.}
proc transitionNodeGetXfadeTime*(self: AnimationTreePlayer; id: string): float64 {.
    gcsafe, locks: 0.}
proc transitionNodeHasInputAutoAdvance*(self: AnimationTreePlayer; id: string;
                                       inputIdx: int64): bool {.gcsafe, locks: 0.}
proc transitionNodeSetCurrent*(self: AnimationTreePlayer; id: string; inputIdx: int64) {.
    gcsafe, locks: 0.}
proc transitionNodeSetInputAutoAdvance*(self: AnimationTreePlayer; id: string;
                                       inputIdx: int64; enable: bool) {.gcsafe,
    locks: 0.}
proc transitionNodeSetInputCount*(self: AnimationTreePlayer; id: string; count: int64) {.
    gcsafe, locks: 0.}
proc transitionNodeSetXfadeTime*(self: AnimationTreePlayer; id: string;
                                timeSec: float64) {.gcsafe, locks: 0.}
var animationTreePlayerIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc active(self: AnimationTreePlayer): bool =
  if isNil(animationTreePlayerIsActiveMethodBind):
    animationTreePlayerIsActiveMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationTreePlayerSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `active=`(self: AnimationTreePlayer; val: bool) =
  if isNil(animationTreePlayerSetActiveMethodBind):
    animationTreePlayerSetActiveMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationTreePlayerSetActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreePlayerGetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc basePath(self: AnimationTreePlayer): NodePath =
  if isNil(animationTreePlayerGetBasePathMethodBind):
    animationTreePlayerGetBasePathMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"get_base_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerGetBasePathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var animationTreePlayerSetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `basePath=`(self: AnimationTreePlayer; val: NodePath) =
  if isNil(animationTreePlayerSetBasePathMethodBind):
    animationTreePlayerSetBasePathMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"set_base_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  animationTreePlayerSetBasePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreePlayerGetMasterPlayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc masterPlayer(self: AnimationTreePlayer): NodePath =
  if isNil(animationTreePlayerGetMasterPlayerMethodBind):
    animationTreePlayerGetMasterPlayerMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"get_master_player")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerGetMasterPlayerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var animationTreePlayerSetMasterPlayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `masterPlayer=`(self: AnimationTreePlayer; val: NodePath) =
  if isNil(animationTreePlayerSetMasterPlayerMethodBind):
    animationTreePlayerSetMasterPlayerMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"set_master_player")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  animationTreePlayerSetMasterPlayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreePlayerGetAnimationProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc playbackProcessMode(self: AnimationTreePlayer): int64 =
  if isNil(animationTreePlayerGetAnimationProcessModeMethodBind):
    animationTreePlayerGetAnimationProcessModeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"get_animation_process_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerGetAnimationProcessModeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationTreePlayerSetAnimationProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playbackProcessMode=`(self: AnimationTreePlayer; val: int64) =
  if isNil(animationTreePlayerSetAnimationProcessModeMethodBind):
    animationTreePlayerSetAnimationProcessModeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"set_animation_process_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationTreePlayerSetAnimationProcessModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreePlayerAddNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addNode(self: AnimationTreePlayer; typee: int64; id: string) =
  if isNil(animationTreePlayerAddNodeMethodBind):
    animationTreePlayerAddNodeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"add_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var argToPassToGodot1 = toGodotString(id)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationTreePlayerAddNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var animationTreePlayerAdvanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc advance(self: AnimationTreePlayer; delta: float64) =
  if isNil(animationTreePlayerAdvanceMethodBind):
    animationTreePlayerAdvanceMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"advance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  animationTreePlayerAdvanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreePlayerAnimationNodeGetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationNodeGetAnimation(self: AnimationTreePlayer; id: string): Animation =
  if isNil(animationTreePlayerAnimationNodeGetAnimationMethodBind):
    animationTreePlayerAnimationNodeGetAnimationMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"animation_node_get_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerAnimationNodeGetAnimationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationTreePlayerAnimationNodeGetMasterAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationNodeGetMasterAnimation(self: AnimationTreePlayer; id: string): string =
  if isNil(animationTreePlayerAnimationNodeGetMasterAnimationMethodBind):
    animationTreePlayerAnimationNodeGetMasterAnimationMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"animation_node_get_master_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerAnimationNodeGetMasterAnimationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationTreePlayerAnimationNodeGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationNodeGetPosition(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerAnimationNodeGetPositionMethodBind):
    animationTreePlayerAnimationNodeGetPositionMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"animation_node_get_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerAnimationNodeGetPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerAnimationNodeSetAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationNodeSetAnimation(self: AnimationTreePlayer; id: string;
                              animation: Animation) =
  if isNil(animationTreePlayerAnimationNodeSetAnimationMethodBind):
    animationTreePlayerAnimationNodeSetAnimationMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"animation_node_set_animation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not animation.isNil:
    animation.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animationTreePlayerAnimationNodeSetAnimationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerAnimationNodeSetFilterPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationNodeSetFilterPath(self: AnimationTreePlayer; id: string;
                               path: NodePath; enable: bool) =
  if isNil(animationTreePlayerAnimationNodeSetFilterPathMethodBind):
    animationTreePlayerAnimationNodeSetFilterPathMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"animation_node_set_filter_path")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = path.godotNodePath
  argsToPassToGodot[][2] = unsafeAddr(enable)
  var ptrCallRet: pointer
  animationTreePlayerAnimationNodeSetFilterPathMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerAnimationNodeSetMasterAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationNodeSetMasterAnimation(self: AnimationTreePlayer; id: string;
                                    source: string) =
  if isNil(animationTreePlayerAnimationNodeSetMasterAnimationMethodBind):
    animationTreePlayerAnimationNodeSetMasterAnimationMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"animation_node_set_master_animation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(source)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationTreePlayerAnimationNodeSetMasterAnimationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationTreePlayerAreNodesConnectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc areNodesConnected(self: AnimationTreePlayer; id: string; dstId: string;
                      dstInputIdx: int64): bool =
  if isNil(animationTreePlayerAreNodesConnectedMethodBind):
    animationTreePlayerAreNodesConnectedMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"are_nodes_connected")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(dstId)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(dstInputIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerAreNodesConnectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationTreePlayerBlend2NodeGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc blend2NodeGetAmount(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerBlend2NodeGetAmountMethodBind):
    animationTreePlayerBlend2NodeGetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"blend2_node_get_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerBlend2NodeGetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerBlend2NodeSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc blend2NodeSetAmount(self: AnimationTreePlayer; id: string; blend: float64) =
  if isNil(animationTreePlayerBlend2NodeSetAmountMethodBind):
    animationTreePlayerBlend2NodeSetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"blend2_node_set_amount")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(blend)
  var ptrCallRet: pointer
  animationTreePlayerBlend2NodeSetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerBlend2NodeSetFilterPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc blend2NodeSetFilterPath(self: AnimationTreePlayer; id: string; path: NodePath;
                            enable: bool) =
  if isNil(animationTreePlayerBlend2NodeSetFilterPathMethodBind):
    animationTreePlayerBlend2NodeSetFilterPathMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"blend2_node_set_filter_path")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = path.godotNodePath
  argsToPassToGodot[][2] = unsafeAddr(enable)
  var ptrCallRet: pointer
  animationTreePlayerBlend2NodeSetFilterPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerBlend3NodeGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc blend3NodeGetAmount(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerBlend3NodeGetAmountMethodBind):
    animationTreePlayerBlend3NodeGetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"blend3_node_get_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerBlend3NodeGetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerBlend3NodeSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc blend3NodeSetAmount(self: AnimationTreePlayer; id: string; blend: float64) =
  if isNil(animationTreePlayerBlend3NodeSetAmountMethodBind):
    animationTreePlayerBlend3NodeSetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"blend3_node_set_amount")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(blend)
  var ptrCallRet: pointer
  animationTreePlayerBlend3NodeSetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerBlend4NodeGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc blend4NodeGetAmount(self: AnimationTreePlayer; id: string): Vector2 =
  if isNil(animationTreePlayerBlend4NodeGetAmountMethodBind):
    animationTreePlayerBlend4NodeGetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"blend4_node_get_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerBlend4NodeGetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerBlend4NodeSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc blend4NodeSetAmount(self: AnimationTreePlayer; id: string; blend: Vector2) =
  if isNil(animationTreePlayerBlend4NodeSetAmountMethodBind):
    animationTreePlayerBlend4NodeSetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"blend4_node_set_amount")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(blend)
  var ptrCallRet: pointer
  animationTreePlayerBlend4NodeSetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerConnectNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectNodes(self: AnimationTreePlayer; id: string; dstId: string;
                 dstInputIdx: int64): Error =
  if isNil(animationTreePlayerConnectNodesMethodBind):
    animationTreePlayerConnectNodesMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"connect_nodes")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(dstId)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(dstInputIdx)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerConnectNodesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var animationTreePlayerDisconnectNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectNodes(self: AnimationTreePlayer; id: string; dstInputIdx: int64) =
  if isNil(animationTreePlayerDisconnectNodesMethodBind):
    animationTreePlayerDisconnectNodesMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"disconnect_nodes")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(dstInputIdx)
  var ptrCallRet: pointer
  animationTreePlayerDisconnectNodesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerGetNodeListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeList(self: AnimationTreePlayer): PoolStringArray =
  if isNil(animationTreePlayerGetNodeListMethodBind):
    animationTreePlayerGetNodeListMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"get_node_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerGetNodeListMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var animationTreePlayerMixNodeGetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc mixNodeGetAmount(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerMixNodeGetAmountMethodBind):
    animationTreePlayerMixNodeGetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"mix_node_get_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerMixNodeGetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerMixNodeSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc mixNodeSetAmount(self: AnimationTreePlayer; id: string; ratio: float64) =
  if isNil(animationTreePlayerMixNodeSetAmountMethodBind):
    animationTreePlayerMixNodeSetAmountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"mix_node_set_amount")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(ratio)
  var ptrCallRet: pointer
  animationTreePlayerMixNodeSetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerNodeExistsMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeExists(self: AnimationTreePlayer; node: string): bool =
  if isNil(animationTreePlayerNodeExistsMethodBind):
    animationTreePlayerNodeExistsMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"node_exists")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(node)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerNodeExistsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerNodeGetInputCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeGetInputCount(self: AnimationTreePlayer; id: string): int64 =
  if isNil(animationTreePlayerNodeGetInputCountMethodBind):
    animationTreePlayerNodeGetInputCountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"node_get_input_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerNodeGetInputCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerNodeGetInputSourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeGetInputSource(self: AnimationTreePlayer; id: string; idx: int64): string =
  if isNil(animationTreePlayerNodeGetInputSourceMethodBind):
    animationTreePlayerNodeGetInputSourceMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"node_get_input_source")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerNodeGetInputSourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationTreePlayerNodeGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeGetPosition(self: AnimationTreePlayer; id: string): Vector2 =
  if isNil(animationTreePlayerNodeGetPositionMethodBind):
    animationTreePlayerNodeGetPositionMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"node_get_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerNodeGetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerNodeGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeGetType(self: AnimationTreePlayer; id: string): int64 =
  if isNil(animationTreePlayerNodeGetTypeMethodBind):
    animationTreePlayerNodeGetTypeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"node_get_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerNodeGetTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerNodeRenameMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeRename(self: AnimationTreePlayer; node: string; newName: string): Error =
  if isNil(animationTreePlayerNodeRenameMethodBind):
    animationTreePlayerNodeRenameMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"node_rename")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(node)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  animationTreePlayerNodeRenameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var animationTreePlayerNodeSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeSetPosition(self: AnimationTreePlayer; id: string; screenPosition: Vector2) =
  if isNil(animationTreePlayerNodeSetPositionMethodBind):
    animationTreePlayerNodeSetPositionMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"node_set_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(screenPosition)
  var ptrCallRet: pointer
  animationTreePlayerNodeSetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeGetAutorestartDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeGetAutorestartDelay(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerOneshotNodeGetAutorestartDelayMethodBind):
    animationTreePlayerOneshotNodeGetAutorestartDelayMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"oneshot_node_get_autorestart_delay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerOneshotNodeGetAutorestartDelayMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeGetAutorestartRandomDelayMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeGetAutorestartRandomDelay(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerOneshotNodeGetAutorestartRandomDelayMethodBind):
    animationTreePlayerOneshotNodeGetAutorestartRandomDelayMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"oneshot_node_get_autorestart_random_delay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerOneshotNodeGetAutorestartRandomDelayMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeGetFadeinTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeGetFadeinTime(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerOneshotNodeGetFadeinTimeMethodBind):
    animationTreePlayerOneshotNodeGetFadeinTimeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_get_fadein_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerOneshotNodeGetFadeinTimeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeGetFadeoutTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeGetFadeoutTime(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerOneshotNodeGetFadeoutTimeMethodBind):
    animationTreePlayerOneshotNodeGetFadeoutTimeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_get_fadeout_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerOneshotNodeGetFadeoutTimeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeHasAutorestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeHasAutorestart(self: AnimationTreePlayer; id: string): bool =
  if isNil(animationTreePlayerOneshotNodeHasAutorestartMethodBind):
    animationTreePlayerOneshotNodeHasAutorestartMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_has_autorestart")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerOneshotNodeHasAutorestartMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeIsActive(self: AnimationTreePlayer; id: string): bool =
  if isNil(animationTreePlayerOneshotNodeIsActiveMethodBind):
    animationTreePlayerOneshotNodeIsActiveMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_is_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerOneshotNodeIsActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeSetAutorestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeSetAutorestart(self: AnimationTreePlayer; id: string; enable: bool) =
  if isNil(animationTreePlayerOneshotNodeSetAutorestartMethodBind):
    animationTreePlayerOneshotNodeSetAutorestartMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_set_autorestart")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeSetAutorestartMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeSetAutorestartDelayMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeSetAutorestartDelay(self: AnimationTreePlayer; id: string;
                                   delaySec: float64) =
  if isNil(animationTreePlayerOneshotNodeSetAutorestartDelayMethodBind):
    animationTreePlayerOneshotNodeSetAutorestartDelayMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"oneshot_node_set_autorestart_delay")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(delaySec)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeSetAutorestartDelayMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeSetAutorestartRandomDelayMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeSetAutorestartRandomDelay(self: AnimationTreePlayer; id: string;
    randSec: float64) =
  if isNil(animationTreePlayerOneshotNodeSetAutorestartRandomDelayMethodBind):
    animationTreePlayerOneshotNodeSetAutorestartRandomDelayMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"oneshot_node_set_autorestart_random_delay")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(randSec)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeSetAutorestartRandomDelayMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeSetFadeinTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeSetFadeinTime(self: AnimationTreePlayer; id: string; timeSec: float64) =
  if isNil(animationTreePlayerOneshotNodeSetFadeinTimeMethodBind):
    animationTreePlayerOneshotNodeSetFadeinTimeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_set_fadein_time")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(timeSec)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeSetFadeinTimeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeSetFadeoutTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeSetFadeoutTime(self: AnimationTreePlayer; id: string;
                              timeSec: float64) =
  if isNil(animationTreePlayerOneshotNodeSetFadeoutTimeMethodBind):
    animationTreePlayerOneshotNodeSetFadeoutTimeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_set_fadeout_time")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(timeSec)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeSetFadeoutTimeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeSetFilterPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeSetFilterPath(self: AnimationTreePlayer; id: string; path: NodePath;
                             enable: bool) =
  if isNil(animationTreePlayerOneshotNodeSetFilterPathMethodBind):
    animationTreePlayerOneshotNodeSetFilterPathMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_set_filter_path")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = path.godotNodePath
  argsToPassToGodot[][2] = unsafeAddr(enable)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeSetFilterPathMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeStart(self: AnimationTreePlayer; id: string) =
  if isNil(animationTreePlayerOneshotNodeStartMethodBind):
    animationTreePlayerOneshotNodeStartMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_start")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeStartMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerOneshotNodeStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneshotNodeStop(self: AnimationTreePlayer; id: string) =
  if isNil(animationTreePlayerOneshotNodeStopMethodBind):
    animationTreePlayerOneshotNodeStopMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"oneshot_node_stop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationTreePlayerOneshotNodeStopMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerRecomputeCachesMethodBind {.threadvar.}: ptr GodotMethodBind
proc recomputeCaches(self: AnimationTreePlayer) =
  if isNil(animationTreePlayerRecomputeCachesMethodBind):
    animationTreePlayerRecomputeCachesMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"recompute_caches")
  var ptrCallRet: pointer
  animationTreePlayerRecomputeCachesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationTreePlayerRemoveNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeNode(self: AnimationTreePlayer; id: string) =
  if isNil(animationTreePlayerRemoveNodeMethodBind):
    animationTreePlayerRemoveNodeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"remove_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationTreePlayerRemoveNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerResetMethodBind {.threadvar.}: ptr GodotMethodBind
proc reset(self: AnimationTreePlayer) =
  if isNil(animationTreePlayerResetMethodBind):
    animationTreePlayerResetMethodBind = getMethod(cstring"AnimationTreePlayer",
        cstring"reset")
  var ptrCallRet: pointer
  animationTreePlayerResetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationTreePlayerTimescaleNodeGetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc timescaleNodeGetScale(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerTimescaleNodeGetScaleMethodBind):
    animationTreePlayerTimescaleNodeGetScaleMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"timescale_node_get_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerTimescaleNodeGetScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTimescaleNodeSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc timescaleNodeSetScale(self: AnimationTreePlayer; id: string; scale: float64) =
  if isNil(animationTreePlayerTimescaleNodeSetScaleMethodBind):
    animationTreePlayerTimescaleNodeSetScaleMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"timescale_node_set_scale")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(scale)
  var ptrCallRet: pointer
  animationTreePlayerTimescaleNodeSetScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTimeseekNodeSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc timeseekNodeSeek(self: AnimationTreePlayer; id: string; seconds: float64) =
  if isNil(animationTreePlayerTimeseekNodeSeekMethodBind):
    animationTreePlayerTimeseekNodeSeekMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"timeseek_node_seek")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(seconds)
  var ptrCallRet: pointer
  animationTreePlayerTimeseekNodeSeekMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeDeleteInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeDeleteInput(self: AnimationTreePlayer; id: string; inputIdx: int64) =
  if isNil(animationTreePlayerTransitionNodeDeleteInputMethodBind):
    animationTreePlayerTransitionNodeDeleteInputMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"transition_node_delete_input")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(inputIdx)
  var ptrCallRet: pointer
  animationTreePlayerTransitionNodeDeleteInputMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeGetCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeGetCurrent(self: AnimationTreePlayer; id: string): int64 =
  if isNil(animationTreePlayerTransitionNodeGetCurrentMethodBind):
    animationTreePlayerTransitionNodeGetCurrentMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"transition_node_get_current")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerTransitionNodeGetCurrentMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeGetInputCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeGetInputCount(self: AnimationTreePlayer; id: string): int64 =
  if isNil(animationTreePlayerTransitionNodeGetInputCountMethodBind):
    animationTreePlayerTransitionNodeGetInputCountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"transition_node_get_input_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerTransitionNodeGetInputCountMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeGetXfadeTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeGetXfadeTime(self: AnimationTreePlayer; id: string): float64 =
  if isNil(animationTreePlayerTransitionNodeGetXfadeTimeMethodBind):
    animationTreePlayerTransitionNodeGetXfadeTimeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"transition_node_get_xfade_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerTransitionNodeGetXfadeTimeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeHasInputAutoAdvanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeHasInputAutoAdvance(self: AnimationTreePlayer; id: string;
                                      inputIdx: int64): bool =
  if isNil(animationTreePlayerTransitionNodeHasInputAutoAdvanceMethodBind):
    animationTreePlayerTransitionNodeHasInputAutoAdvanceMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"transition_node_has_input_auto_advance")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(inputIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreePlayerTransitionNodeHasInputAutoAdvanceMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeSetCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeSetCurrent(self: AnimationTreePlayer; id: string; inputIdx: int64) =
  if isNil(animationTreePlayerTransitionNodeSetCurrentMethodBind):
    animationTreePlayerTransitionNodeSetCurrentMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"transition_node_set_current")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(inputIdx)
  var ptrCallRet: pointer
  animationTreePlayerTransitionNodeSetCurrentMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeSetInputAutoAdvanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeSetInputAutoAdvance(self: AnimationTreePlayer; id: string;
                                      inputIdx: int64; enable: bool) =
  if isNil(animationTreePlayerTransitionNodeSetInputAutoAdvanceMethodBind):
    animationTreePlayerTransitionNodeSetInputAutoAdvanceMethodBind = getMethod(
        cstring"AnimationTreePlayer",
        cstring"transition_node_set_input_auto_advance")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(inputIdx)
  argsToPassToGodot[][2] = unsafeAddr(enable)
  var ptrCallRet: pointer
  animationTreePlayerTransitionNodeSetInputAutoAdvanceMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeSetInputCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeSetInputCount(self: AnimationTreePlayer; id: string; count: int64) =
  if isNil(animationTreePlayerTransitionNodeSetInputCountMethodBind):
    animationTreePlayerTransitionNodeSetInputCountMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"transition_node_set_input_count")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(count)
  var ptrCallRet: pointer
  animationTreePlayerTransitionNodeSetInputCountMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationTreePlayerTransitionNodeSetXfadeTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc transitionNodeSetXfadeTime(self: AnimationTreePlayer; id: string;
                               timeSec: float64) =
  if isNil(animationTreePlayerTransitionNodeSetXfadeTimeMethodBind):
    animationTreePlayerTransitionNodeSetXfadeTimeMethodBind = getMethod(
        cstring"AnimationTreePlayer", cstring"transition_node_set_xfade_time")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(id)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(timeSec)
  var ptrCallRet: pointer
  animationTreePlayerTransitionNodeSetXfadeTimeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
