
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  ANIMATION_PROCESS_IDLE* = 1'i64
  ANIMATION_PROCESS_MANUAL* = 2'i64
  ANIMATION_PROCESS_PHYSICS* = 0'i64
proc active*(self: AnimationTree): bool {.gcsafe, locks: 0.}
proc `active=`*(self: AnimationTree; val: bool) {.gcsafe, locks: 0.}
proc animPlayer*(self: AnimationTree): NodePath {.gcsafe, locks: 0.}
proc `animPlayer=`*(self: AnimationTree; val: NodePath) {.gcsafe, locks: 0.}
proc processMode*(self: AnimationTree): int64 {.gcsafe, locks: 0.}
proc `processMode=`*(self: AnimationTree; val: int64) {.gcsafe, locks: 0.}
proc rootMotionTrack*(self: AnimationTree): NodePath {.gcsafe, locks: 0.}
proc `rootMotionTrack=`*(self: AnimationTree; val: NodePath) {.gcsafe, locks: 0.}
proc treeRoot*(self: AnimationTree): AnimationNode {.gcsafe, locks: 0.}
proc `treeRoot=`*(self: AnimationTree; val: AnimationNode) {.gcsafe, locks: 0.}
method clearCaches*(self: AnimationTree) {.gcsafe, locks: 0, base.}
method nodeRemoved*(self: AnimationTree; arg0: Node) {.gcsafe, locks: 0, base.}
method treeChanged*(self: AnimationTree) {.gcsafe, locks: 0, base.}
method updateProperties*(self: AnimationTree) {.gcsafe, locks: 0, base.}
proc advance*(self: AnimationTree; delta: float64) {.gcsafe, locks: 0.}
proc getRootMotionTransform*(self: AnimationTree): Transform {.gcsafe, locks: 0.}
proc renameParameter*(self: AnimationTree; oldName: string; newName: string) {.gcsafe,
    locks: 0.}
var animationTreeIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc active(self: AnimationTree): bool =
  if isNil(animationTreeIsActiveMethodBind):
    animationTreeIsActiveMethodBind = getMethod(cstring"AnimationTree",
        cstring"is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreeIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationTreeSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `active=`(self: AnimationTree; val: bool) =
  if isNil(animationTreeSetActiveMethodBind):
    animationTreeSetActiveMethodBind = getMethod(cstring"AnimationTree",
        cstring"set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationTreeSetActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTreeGetAnimationPlayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc animPlayer(self: AnimationTree): NodePath =
  if isNil(animationTreeGetAnimationPlayerMethodBind):
    animationTreeGetAnimationPlayerMethodBind = getMethod(cstring"AnimationTree",
        cstring"get_animation_player")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  animationTreeGetAnimationPlayerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var animationTreeSetAnimationPlayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `animPlayer=`(self: AnimationTree; val: NodePath) =
  if isNil(animationTreeSetAnimationPlayerMethodBind):
    animationTreeSetAnimationPlayerMethodBind = getMethod(cstring"AnimationTree",
        cstring"set_animation_player")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  animationTreeSetAnimationPlayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreeGetProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc processMode(self: AnimationTree): int64 =
  if isNil(animationTreeGetProcessModeMethodBind):
    animationTreeGetProcessModeMethodBind = getMethod(cstring"AnimationTree",
        cstring"get_process_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreeGetProcessModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationTreeSetProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `processMode=`(self: AnimationTree; val: int64) =
  if isNil(animationTreeSetProcessModeMethodBind):
    animationTreeSetProcessModeMethodBind = getMethod(cstring"AnimationTree",
        cstring"set_process_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationTreeSetProcessModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreeGetRootMotionTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc rootMotionTrack(self: AnimationTree): NodePath =
  if isNil(animationTreeGetRootMotionTrackMethodBind):
    animationTreeGetRootMotionTrackMethodBind = getMethod(cstring"AnimationTree",
        cstring"get_root_motion_track")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  animationTreeGetRootMotionTrackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var animationTreeSetRootMotionTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rootMotionTrack=`(self: AnimationTree; val: NodePath) =
  if isNil(animationTreeSetRootMotionTrackMethodBind):
    animationTreeSetRootMotionTrackMethodBind = getMethod(cstring"AnimationTree",
        cstring"set_root_motion_track")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  animationTreeSetRootMotionTrackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreeGetTreeRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc treeRoot(self: AnimationTree): AnimationNode =
  if isNil(animationTreeGetTreeRootMethodBind):
    animationTreeGetTreeRootMethodBind = getMethod(cstring"AnimationTree",
        cstring"get_tree_root")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationTreeGetTreeRootMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationTreeSetTreeRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc `treeRoot=`(self: AnimationTree; val: AnimationNode) =
  if isNil(animationTreeSetTreeRootMethodBind):
    animationTreeSetTreeRootMethodBind = getMethod(cstring"AnimationTree",
        cstring"set_tree_root")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  animationTreeSetTreeRootMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTreeUnderscoreclearCachesMethodBind {.threadvar.}: ptr GodotMethodBind
method clearCaches(self: AnimationTree) =
  if isNil(animationTreeUnderscoreclearCachesMethodBind):
    animationTreeUnderscoreclearCachesMethodBind = getMethod(
        cstring"AnimationTree", cstring"_clear_caches")
  var ptrCallRet: pointer
  animationTreeUnderscoreclearCachesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationTreeUnderscorenodeRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodeRemoved(self: AnimationTree; arg0: Node) =
  if isNil(animationTreeUnderscorenodeRemovedMethodBind):
    animationTreeUnderscorenodeRemovedMethodBind = getMethod(
        cstring"AnimationTree", cstring"_node_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  animationTreeUnderscorenodeRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTreeUnderscoretreeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeChanged(self: AnimationTree) =
  if isNil(animationTreeUnderscoretreeChangedMethodBind):
    animationTreeUnderscoretreeChangedMethodBind = getMethod(
        cstring"AnimationTree", cstring"_tree_changed")
  var ptrCallRet: pointer
  animationTreeUnderscoretreeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationTreeUnderscoreupdatePropertiesMethodBind {.threadvar.}: ptr GodotMethodBind
method updateProperties(self: AnimationTree) =
  if isNil(animationTreeUnderscoreupdatePropertiesMethodBind):
    animationTreeUnderscoreupdatePropertiesMethodBind = getMethod(
        cstring"AnimationTree", cstring"_update_properties")
  var ptrCallRet: pointer
  animationTreeUnderscoreupdatePropertiesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationTreeAdvanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc advance(self: AnimationTree; delta: float64) =
  if isNil(animationTreeAdvanceMethodBind):
    animationTreeAdvanceMethodBind = getMethod(cstring"AnimationTree",
        cstring"advance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  animationTreeAdvanceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTreeGetRootMotionTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRootMotionTransform(self: AnimationTree): Transform =
  if isNil(animationTreeGetRootMotionTransformMethodBind):
    animationTreeGetRootMotionTransformMethodBind = getMethod(
        cstring"AnimationTree", cstring"get_root_motion_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTreeGetRootMotionTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationTreeRenameParameterMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameParameter(self: AnimationTree; oldName: string; newName: string) =
  if isNil(animationTreeRenameParameterMethodBind):
    animationTreeRenameParameterMethodBind = getMethod(cstring"AnimationTree",
        cstring"rename_parameter")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(oldName)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationTreeRenameParameterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
