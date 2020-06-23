
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

method updateBoneSetup*(self: Skeleton2D) {.gcsafe, locks: 0, base.}
method updateTransform*(self: Skeleton2D) {.gcsafe, locks: 0, base.}
proc getBone*(self: Skeleton2D; idx: int64): Bone2D {.gcsafe, locks: 0.}
proc getBoneCount*(self: Skeleton2D): int64 {.gcsafe, locks: 0.}
proc getSkeleton*(self: Skeleton2D): RID {.gcsafe, locks: 0.}
var skeleton2DUnderscoreupdateBoneSetupMethodBind {.threadvar.}: ptr GodotMethodBind
method updateBoneSetup(self: Skeleton2D) =
  if isNil(skeleton2DUnderscoreupdateBoneSetupMethodBind):
    skeleton2DUnderscoreupdateBoneSetupMethodBind = getMethod(
        cstring"Skeleton2D", cstring"_update_bone_setup")
  var ptrCallRet: pointer
  skeleton2DUnderscoreupdateBoneSetupMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var skeleton2DUnderscoreupdateTransformMethodBind {.threadvar.}: ptr GodotMethodBind
method updateTransform(self: Skeleton2D) =
  if isNil(skeleton2DUnderscoreupdateTransformMethodBind):
    skeleton2DUnderscoreupdateTransformMethodBind = getMethod(
        cstring"Skeleton2D", cstring"_update_transform")
  var ptrCallRet: pointer
  skeleton2DUnderscoreupdateTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var skeleton2DGetBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBone(self: Skeleton2D; idx: int64): Bone2D =
  if isNil(skeleton2DGetBoneMethodBind):
    skeleton2DGetBoneMethodBind = getMethod(cstring"Skeleton2D", cstring"get_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  skeleton2DGetBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var skeleton2DGetBoneCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneCount(self: Skeleton2D): int64 =
  if isNil(skeleton2DGetBoneCountMethodBind):
    skeleton2DGetBoneCountMethodBind = getMethod(cstring"Skeleton2D",
        cstring"get_bone_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeleton2DGetBoneCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeleton2DGetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSkeleton(self: Skeleton2D): RID =
  if isNil(skeleton2DGetSkeletonMethodBind):
    skeleton2DGetSkeletonMethodBind = getMethod(cstring"Skeleton2D",
        cstring"get_skeleton")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeleton2DGetSkeletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
