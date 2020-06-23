
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  NOTIFICATION_UPDATE_SKELETON* = 50'i64
proc addBone*(self: Skeleton; name: string) {.gcsafe, locks: 0.}
proc bindChildNodeToBone*(self: Skeleton; boneIdx: int64; node: Node) {.gcsafe, locks: 0.}
proc clearBones*(self: Skeleton) {.gcsafe, locks: 0.}
proc clearBonesGlobalPoseOverride*(self: Skeleton) {.gcsafe, locks: 0.}
proc findBone*(self: Skeleton; name: string): int64 {.gcsafe, locks: 0.}
proc getBoneCount*(self: Skeleton): int64 {.gcsafe, locks: 0.}
proc getBoneCustomPose*(self: Skeleton; boneIdx: int64): Transform {.gcsafe, locks: 0.}
proc getBoneGlobalPose*(self: Skeleton; boneIdx: int64): Transform {.gcsafe, locks: 0.}
proc getBoneName*(self: Skeleton; boneIdx: int64): string {.gcsafe, locks: 0.}
proc getBoneParent*(self: Skeleton; boneIdx: int64): int64 {.gcsafe, locks: 0.}
proc getBonePose*(self: Skeleton; boneIdx: int64): Transform {.gcsafe, locks: 0.}
proc getBoneRest*(self: Skeleton; boneIdx: int64): Transform {.gcsafe, locks: 0.}
proc getBoundChildNodesToBone*(self: Skeleton; boneIdx: int64): Array {.gcsafe,
    locks: 0.}
proc isBoneRestDisabled*(self: Skeleton; boneIdx: int64): bool {.gcsafe, locks: 0.}
proc localizeRests*(self: Skeleton) {.gcsafe, locks: 0.}
proc physicalBonesAddCollisionException*(self: Skeleton; exception: RID) {.gcsafe,
    locks: 0.}
proc physicalBonesRemoveCollisionException*(self: Skeleton; exception: RID) {.gcsafe,
    locks: 0.}
proc physicalBonesStartSimulation*(self: Skeleton; bones: Array = newArray()) {.gcsafe,
    locks: 0.}
proc physicalBonesStopSimulation*(self: Skeleton) {.gcsafe, locks: 0.}
proc registerSkin*(self: Skeleton; skin: Skin): SkinReference {.gcsafe, locks: 0.}
proc setBoneCustomPose*(self: Skeleton; boneIdx: int64; customPose: Transform) {.
    gcsafe, locks: 0.}
proc setBoneDisableRest*(self: Skeleton; boneIdx: int64; disable: bool) {.gcsafe,
    locks: 0.}
proc setBoneGlobalPoseOverride*(self: Skeleton; boneIdx: int64; pose: Transform;
                               amount: float64; persistent: bool = false) {.gcsafe,
    locks: 0.}
proc setBoneParent*(self: Skeleton; boneIdx: int64; parentIdx: int64) {.gcsafe, locks: 0.}
proc setBonePose*(self: Skeleton; boneIdx: int64; pose: Transform) {.gcsafe, locks: 0.}
proc setBoneRest*(self: Skeleton; boneIdx: int64; rest: Transform) {.gcsafe, locks: 0.}
proc unbindChildNodeFromBone*(self: Skeleton; boneIdx: int64; node: Node) {.gcsafe,
    locks: 0.}
proc unparentBoneAndRest*(self: Skeleton; boneIdx: int64) {.gcsafe, locks: 0.}
var skeletonAddBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBone(self: Skeleton; name: string) =
  if isNil(skeletonAddBoneMethodBind):
    skeletonAddBoneMethodBind = getMethod(cstring"Skeleton", cstring"add_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  skeletonAddBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var skeletonBindChildNodeToBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc bindChildNodeToBone(self: Skeleton; boneIdx: int64; node: Node) =
  if isNil(skeletonBindChildNodeToBoneMethodBind):
    skeletonBindChildNodeToBoneMethodBind = getMethod(cstring"Skeleton",
        cstring"bind_child_node_to_bone")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  let argToPassToGodot1 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  skeletonBindChildNodeToBoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonClearBonesMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBones(self: Skeleton) =
  if isNil(skeletonClearBonesMethodBind):
    skeletonClearBonesMethodBind = getMethod(cstring"Skeleton",
        cstring"clear_bones")
  var ptrCallRet: pointer
  skeletonClearBonesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonClearBonesGlobalPoseOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBonesGlobalPoseOverride(self: Skeleton) =
  if isNil(skeletonClearBonesGlobalPoseOverrideMethodBind):
    skeletonClearBonesGlobalPoseOverrideMethodBind = getMethod(cstring"Skeleton",
        cstring"clear_bones_global_pose_override")
  var ptrCallRet: pointer
  skeletonClearBonesGlobalPoseOverrideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var skeletonFindBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc findBone(self: Skeleton; name: string): int64 =
  if isNil(skeletonFindBoneMethodBind):
    skeletonFindBoneMethodBind = getMethod(cstring"Skeleton", cstring"find_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonFindBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var skeletonGetBoneCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneCount(self: Skeleton): int64 =
  if isNil(skeletonGetBoneCountMethodBind):
    skeletonGetBoneCountMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bone_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonGetBoneCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonGetBoneCustomPoseMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneCustomPose(self: Skeleton; boneIdx: int64): Transform =
  if isNil(skeletonGetBoneCustomPoseMethodBind):
    skeletonGetBoneCustomPoseMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bone_custom_pose")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonGetBoneCustomPoseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonGetBoneGlobalPoseMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneGlobalPose(self: Skeleton; boneIdx: int64): Transform =
  if isNil(skeletonGetBoneGlobalPoseMethodBind):
    skeletonGetBoneGlobalPoseMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bone_global_pose")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonGetBoneGlobalPoseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonGetBoneNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneName(self: Skeleton; boneIdx: int64): string =
  if isNil(skeletonGetBoneNameMethodBind):
    skeletonGetBoneNameMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bone_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  skeletonGetBoneNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var skeletonGetBoneParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneParent(self: Skeleton; boneIdx: int64): int64 =
  if isNil(skeletonGetBoneParentMethodBind):
    skeletonGetBoneParentMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bone_parent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonGetBoneParentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var skeletonGetBonePoseMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBonePose(self: Skeleton; boneIdx: int64): Transform =
  if isNil(skeletonGetBonePoseMethodBind):
    skeletonGetBonePoseMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bone_pose")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonGetBonePoseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var skeletonGetBoneRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneRest(self: Skeleton; boneIdx: int64): Transform =
  if isNil(skeletonGetBoneRestMethodBind):
    skeletonGetBoneRestMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bone_rest")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonGetBoneRestMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var skeletonGetBoundChildNodesToBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoundChildNodesToBone(self: Skeleton; boneIdx: int64): Array =
  if isNil(skeletonGetBoundChildNodesToBoneMethodBind):
    skeletonGetBoundChildNodesToBoneMethodBind = getMethod(cstring"Skeleton",
        cstring"get_bound_child_nodes_to_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  skeletonGetBoundChildNodesToBoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var skeletonIsBoneRestDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isBoneRestDisabled(self: Skeleton; boneIdx: int64): bool =
  if isNil(skeletonIsBoneRestDisabledMethodBind):
    skeletonIsBoneRestDisabledMethodBind = getMethod(cstring"Skeleton",
        cstring"is_bone_rest_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIsBoneRestDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonLocalizeRestsMethodBind {.threadvar.}: ptr GodotMethodBind
proc localizeRests(self: Skeleton) =
  if isNil(skeletonLocalizeRestsMethodBind):
    skeletonLocalizeRestsMethodBind = getMethod(cstring"Skeleton",
        cstring"localize_rests")
  var ptrCallRet: pointer
  skeletonLocalizeRestsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonPhysicalBonesAddCollisionExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicalBonesAddCollisionException(self: Skeleton; exception: RID) =
  if isNil(skeletonPhysicalBonesAddCollisionExceptionMethodBind):
    skeletonPhysicalBonesAddCollisionExceptionMethodBind = getMethod(
        cstring"Skeleton", cstring"physical_bones_add_collision_exception")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(exception)
  var ptrCallRet: pointer
  skeletonPhysicalBonesAddCollisionExceptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonPhysicalBonesRemoveCollisionExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicalBonesRemoveCollisionException(self: Skeleton; exception: RID) =
  if isNil(skeletonPhysicalBonesRemoveCollisionExceptionMethodBind):
    skeletonPhysicalBonesRemoveCollisionExceptionMethodBind = getMethod(
        cstring"Skeleton", cstring"physical_bones_remove_collision_exception")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(exception)
  var ptrCallRet: pointer
  skeletonPhysicalBonesRemoveCollisionExceptionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var skeletonPhysicalBonesStartSimulationMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicalBonesStartSimulation(self: Skeleton; bones: Array = newArray()) =
  if isNil(skeletonPhysicalBonesStartSimulationMethodBind):
    skeletonPhysicalBonesStartSimulationMethodBind = getMethod(cstring"Skeleton",
        cstring"physical_bones_start_simulation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = bones.godotArray
  var ptrCallRet: pointer
  skeletonPhysicalBonesStartSimulationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonPhysicalBonesStopSimulationMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicalBonesStopSimulation(self: Skeleton) =
  if isNil(skeletonPhysicalBonesStopSimulationMethodBind):
    skeletonPhysicalBonesStopSimulationMethodBind = getMethod(cstring"Skeleton",
        cstring"physical_bones_stop_simulation")
  var ptrCallRet: pointer
  skeletonPhysicalBonesStopSimulationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var skeletonRegisterSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc registerSkin(self: Skeleton; skin: Skin): SkinReference =
  if isNil(skeletonRegisterSkinMethodBind):
    skeletonRegisterSkinMethodBind = getMethod(cstring"Skeleton",
        cstring"register_skin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not skin.isNil:
    skin.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  skeletonRegisterSkinMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var skeletonSetBoneCustomPoseMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBoneCustomPose(self: Skeleton; boneIdx: int64; customPose: Transform) =
  if isNil(skeletonSetBoneCustomPoseMethodBind):
    skeletonSetBoneCustomPoseMethodBind = getMethod(cstring"Skeleton",
        cstring"set_bone_custom_pose")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  argsToPassToGodot[][1] = unsafeAddr(customPose)
  var ptrCallRet: pointer
  skeletonSetBoneCustomPoseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonSetBoneDisableRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBoneDisableRest(self: Skeleton; boneIdx: int64; disable: bool) =
  if isNil(skeletonSetBoneDisableRestMethodBind):
    skeletonSetBoneDisableRestMethodBind = getMethod(cstring"Skeleton",
        cstring"set_bone_disable_rest")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  argsToPassToGodot[][1] = unsafeAddr(disable)
  var ptrCallRet: pointer
  skeletonSetBoneDisableRestMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonSetBoneGlobalPoseOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBoneGlobalPoseOverride(self: Skeleton; boneIdx: int64; pose: Transform;
                              amount: float64; persistent: bool = false) =
  if isNil(skeletonSetBoneGlobalPoseOverrideMethodBind):
    skeletonSetBoneGlobalPoseOverrideMethodBind = getMethod(cstring"Skeleton",
        cstring"set_bone_global_pose_override")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  argsToPassToGodot[][1] = unsafeAddr(pose)
  argsToPassToGodot[][2] = unsafeAddr(amount)
  argsToPassToGodot[][3] = unsafeAddr(persistent)
  var ptrCallRet: pointer
  skeletonSetBoneGlobalPoseOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonSetBoneParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBoneParent(self: Skeleton; boneIdx: int64; parentIdx: int64) =
  if isNil(skeletonSetBoneParentMethodBind):
    skeletonSetBoneParentMethodBind = getMethod(cstring"Skeleton",
        cstring"set_bone_parent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  argsToPassToGodot[][1] = unsafeAddr(parentIdx)
  var ptrCallRet: pointer
  skeletonSetBoneParentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var skeletonSetBonePoseMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBonePose(self: Skeleton; boneIdx: int64; pose: Transform) =
  if isNil(skeletonSetBonePoseMethodBind):
    skeletonSetBonePoseMethodBind = getMethod(cstring"Skeleton",
        cstring"set_bone_pose")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  argsToPassToGodot[][1] = unsafeAddr(pose)
  var ptrCallRet: pointer
  skeletonSetBonePoseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var skeletonSetBoneRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBoneRest(self: Skeleton; boneIdx: int64; rest: Transform) =
  if isNil(skeletonSetBoneRestMethodBind):
    skeletonSetBoneRestMethodBind = getMethod(cstring"Skeleton",
        cstring"set_bone_rest")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  argsToPassToGodot[][1] = unsafeAddr(rest)
  var ptrCallRet: pointer
  skeletonSetBoneRestMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var skeletonUnbindChildNodeFromBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc unbindChildNodeFromBone(self: Skeleton; boneIdx: int64; node: Node) =
  if isNil(skeletonUnbindChildNodeFromBoneMethodBind):
    skeletonUnbindChildNodeFromBoneMethodBind = getMethod(cstring"Skeleton",
        cstring"unbind_child_node_from_bone")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  let argToPassToGodot1 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  skeletonUnbindChildNodeFromBoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonUnparentBoneAndRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc unparentBoneAndRest(self: Skeleton; boneIdx: int64) =
  if isNil(skeletonUnparentBoneAndRestMethodBind):
    skeletonUnparentBoneAndRestMethodBind = getMethod(cstring"Skeleton",
        cstring"unparent_bone_and_rest")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(boneIdx)
  var ptrCallRet: pointer
  skeletonUnparentBoneAndRestMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
