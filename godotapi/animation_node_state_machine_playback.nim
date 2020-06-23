
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc getCurrentNode*(self: AnimationNodeStateMachinePlayback): string {.gcsafe,
    locks: 0.}
proc getTravelPath*(self: AnimationNodeStateMachinePlayback): PoolStringArray {.
    gcsafe, locks: 0.}
proc isPlaying*(self: AnimationNodeStateMachinePlayback): bool {.gcsafe, locks: 0.}
proc start*(self: AnimationNodeStateMachinePlayback; node: string) {.gcsafe, locks: 0.}
proc stop*(self: AnimationNodeStateMachinePlayback) {.gcsafe, locks: 0.}
proc travel*(self: AnimationNodeStateMachinePlayback; toNode: string) {.gcsafe,
    locks: 0.}
var animationNodeStateMachinePlaybackGetCurrentNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentNode(self: AnimationNodeStateMachinePlayback): string =
  if isNil(animationNodeStateMachinePlaybackGetCurrentNodeMethodBind):
    animationNodeStateMachinePlaybackGetCurrentNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachinePlayback", cstring"get_current_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachinePlaybackGetCurrentNodeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeStateMachinePlaybackGetTravelPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTravelPath(self: AnimationNodeStateMachinePlayback): PoolStringArray =
  if isNil(animationNodeStateMachinePlaybackGetTravelPathMethodBind):
    animationNodeStateMachinePlaybackGetTravelPathMethodBind = getMethod(
        cstring"AnimationNodeStateMachinePlayback", cstring"get_travel_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachinePlaybackGetTravelPathMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var animationNodeStateMachinePlaybackIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPlaying(self: AnimationNodeStateMachinePlayback): bool =
  if isNil(animationNodeStateMachinePlaybackIsPlayingMethodBind):
    animationNodeStateMachinePlaybackIsPlayingMethodBind = getMethod(
        cstring"AnimationNodeStateMachinePlayback", cstring"is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachinePlaybackIsPlayingMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationNodeStateMachinePlaybackStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: AnimationNodeStateMachinePlayback; node: string) =
  if isNil(animationNodeStateMachinePlaybackStartMethodBind):
    animationNodeStateMachinePlaybackStartMethodBind = getMethod(
        cstring"AnimationNodeStateMachinePlayback", cstring"start")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(node)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeStateMachinePlaybackStartMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachinePlaybackStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: AnimationNodeStateMachinePlayback) =
  if isNil(animationNodeStateMachinePlaybackStopMethodBind):
    animationNodeStateMachinePlaybackStopMethodBind = getMethod(
        cstring"AnimationNodeStateMachinePlayback", cstring"stop")
  var ptrCallRet: pointer
  animationNodeStateMachinePlaybackStopMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeStateMachinePlaybackTravelMethodBind {.threadvar.}: ptr GodotMethodBind
proc travel(self: AnimationNodeStateMachinePlayback; toNode: string) =
  if isNil(animationNodeStateMachinePlaybackTravelMethodBind):
    animationNodeStateMachinePlaybackTravelMethodBind = getMethod(
        cstring"AnimationNodeStateMachinePlayback", cstring"travel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(toNode)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeStateMachinePlaybackTravelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
