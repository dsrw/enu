
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

proc interpolation*(self: SkeletonIK): float64 {.gcsafe, locks: 0.}
proc `interpolation=`*(self: SkeletonIK; val: float64) {.gcsafe, locks: 0.}
proc magnet*(self: SkeletonIK): Vector3 {.gcsafe, locks: 0.}
proc `magnet=`*(self: SkeletonIK; val: Vector3) {.gcsafe, locks: 0.}
proc maxIterations*(self: SkeletonIK): int64 {.gcsafe, locks: 0.}
proc `maxIterations=`*(self: SkeletonIK; val: int64) {.gcsafe, locks: 0.}
proc minDistance*(self: SkeletonIK): float64 {.gcsafe, locks: 0.}
proc `minDistance=`*(self: SkeletonIK; val: float64) {.gcsafe, locks: 0.}
proc overrideTipBasis*(self: SkeletonIK): bool {.gcsafe, locks: 0.}
proc `overrideTipBasis=`*(self: SkeletonIK; val: bool) {.gcsafe, locks: 0.}
proc rootBone*(self: SkeletonIK): string {.gcsafe, locks: 0.}
proc `rootBone=`*(self: SkeletonIK; val: string) {.gcsafe, locks: 0.}
proc target*(self: SkeletonIK): Transform {.gcsafe, locks: 0.}
proc `target=`*(self: SkeletonIK; val: Transform) {.gcsafe, locks: 0.}
proc targetNode*(self: SkeletonIK): NodePath {.gcsafe, locks: 0.}
proc `targetNode=`*(self: SkeletonIK; val: NodePath) {.gcsafe, locks: 0.}
proc tipBone*(self: SkeletonIK): string {.gcsafe, locks: 0.}
proc `tipBone=`*(self: SkeletonIK; val: string) {.gcsafe, locks: 0.}
proc useMagnet*(self: SkeletonIK): bool {.gcsafe, locks: 0.}
proc `useMagnet=`*(self: SkeletonIK; val: bool) {.gcsafe, locks: 0.}
proc getParentSkeleton*(self: SkeletonIK): Skeleton {.gcsafe, locks: 0.}
proc isRunning*(self: SkeletonIK): bool {.gcsafe, locks: 0.}
proc start*(self: SkeletonIK; oneTime: bool = false) {.gcsafe, locks: 0.}
proc stop*(self: SkeletonIK) {.gcsafe, locks: 0.}
var skeletonIKGetInterpolationMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolation(self: SkeletonIK): float64 =
  if isNil(skeletonIKGetInterpolationMethodBind):
    skeletonIKGetInterpolationMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_interpolation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKGetInterpolationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKSetInterpolationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interpolation=`(self: SkeletonIK; val: float64) =
  if isNil(skeletonIKSetInterpolationMethodBind):
    skeletonIKSetInterpolationMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_interpolation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skeletonIKSetInterpolationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonIKGetMagnetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc magnet(self: SkeletonIK): Vector3 =
  if isNil(skeletonIKGetMagnetPositionMethodBind):
    skeletonIKGetMagnetPositionMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_magnet_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKGetMagnetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKSetMagnetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `magnet=`(self: SkeletonIK; val: Vector3) =
  if isNil(skeletonIKSetMagnetPositionMethodBind):
    skeletonIKSetMagnetPositionMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_magnet_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skeletonIKSetMagnetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonIKGetMaxIterationsMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxIterations(self: SkeletonIK): int64 =
  if isNil(skeletonIKGetMaxIterationsMethodBind):
    skeletonIKGetMaxIterationsMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_max_iterations")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKGetMaxIterationsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKSetMaxIterationsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxIterations=`(self: SkeletonIK; val: int64) =
  if isNil(skeletonIKSetMaxIterationsMethodBind):
    skeletonIKSetMaxIterationsMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_max_iterations")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skeletonIKSetMaxIterationsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonIKGetMinDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc minDistance(self: SkeletonIK): float64 =
  if isNil(skeletonIKGetMinDistanceMethodBind):
    skeletonIKGetMinDistanceMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_min_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKGetMinDistanceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKSetMinDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `minDistance=`(self: SkeletonIK; val: float64) =
  if isNil(skeletonIKSetMinDistanceMethodBind):
    skeletonIKSetMinDistanceMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_min_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skeletonIKSetMinDistanceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var skeletonIKIsOverrideTipBasisMethodBind {.threadvar.}: ptr GodotMethodBind
proc overrideTipBasis(self: SkeletonIK): bool =
  if isNil(skeletonIKIsOverrideTipBasisMethodBind):
    skeletonIKIsOverrideTipBasisMethodBind = getMethod(cstring"SkeletonIK",
        cstring"is_override_tip_basis")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKIsOverrideTipBasisMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKSetOverrideTipBasisMethodBind {.threadvar.}: ptr GodotMethodBind
proc `overrideTipBasis=`(self: SkeletonIK; val: bool) =
  if isNil(skeletonIKSetOverrideTipBasisMethodBind):
    skeletonIKSetOverrideTipBasisMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_override_tip_basis")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skeletonIKSetOverrideTipBasisMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonIKGetRootBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc rootBone(self: SkeletonIK): string =
  if isNil(skeletonIKGetRootBoneMethodBind):
    skeletonIKGetRootBoneMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_root_bone")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  skeletonIKGetRootBoneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var skeletonIKSetRootBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rootBone=`(self: SkeletonIK; val: string) =
  if isNil(skeletonIKSetRootBoneMethodBind):
    skeletonIKSetRootBoneMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_root_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  skeletonIKSetRootBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var skeletonIKGetTargetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc target(self: SkeletonIK): Transform =
  if isNil(skeletonIKGetTargetTransformMethodBind):
    skeletonIKGetTargetTransformMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_target_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKGetTargetTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKSetTargetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `target=`(self: SkeletonIK; val: Transform) =
  if isNil(skeletonIKSetTargetTransformMethodBind):
    skeletonIKSetTargetTransformMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_target_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skeletonIKSetTargetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var skeletonIKGetTargetNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc targetNode(self: SkeletonIK): NodePath =
  if isNil(skeletonIKGetTargetNodeMethodBind):
    skeletonIKGetTargetNodeMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_target_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  skeletonIKGetTargetNodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var skeletonIKSetTargetNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `targetNode=`(self: SkeletonIK; val: NodePath) =
  if isNil(skeletonIKSetTargetNodeMethodBind):
    skeletonIKSetTargetNodeMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_target_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  skeletonIKSetTargetNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var skeletonIKGetTipBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc tipBone(self: SkeletonIK): string =
  if isNil(skeletonIKGetTipBoneMethodBind):
    skeletonIKGetTipBoneMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_tip_bone")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  skeletonIKGetTipBoneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var skeletonIKSetTipBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tipBone=`(self: SkeletonIK; val: string) =
  if isNil(skeletonIKSetTipBoneMethodBind):
    skeletonIKSetTipBoneMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_tip_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  skeletonIKSetTipBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var skeletonIKIsUsingMagnetMethodBind {.threadvar.}: ptr GodotMethodBind
proc useMagnet(self: SkeletonIK): bool =
  if isNil(skeletonIKIsUsingMagnetMethodBind):
    skeletonIKIsUsingMagnetMethodBind = getMethod(cstring"SkeletonIK",
        cstring"is_using_magnet")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKIsUsingMagnetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKSetUseMagnetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useMagnet=`(self: SkeletonIK; val: bool) =
  if isNil(skeletonIKSetUseMagnetMethodBind):
    skeletonIKSetUseMagnetMethodBind = getMethod(cstring"SkeletonIK",
        cstring"set_use_magnet")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skeletonIKSetUseMagnetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var skeletonIKGetParentSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParentSkeleton(self: SkeletonIK): Skeleton =
  if isNil(skeletonIKGetParentSkeletonMethodBind):
    skeletonIKGetParentSkeletonMethodBind = getMethod(cstring"SkeletonIK",
        cstring"get_parent_skeleton")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  skeletonIKGetParentSkeletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var skeletonIKIsRunningMethodBind {.threadvar.}: ptr GodotMethodBind
proc isRunning(self: SkeletonIK): bool =
  if isNil(skeletonIKIsRunningMethodBind):
    skeletonIKIsRunningMethodBind = getMethod(cstring"SkeletonIK",
        cstring"is_running")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skeletonIKIsRunningMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skeletonIKStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: SkeletonIK; oneTime: bool = false) =
  if isNil(skeletonIKStartMethodBind):
    skeletonIKStartMethodBind = getMethod(cstring"SkeletonIK", cstring"start")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(oneTime)
  var ptrCallRet: pointer
  skeletonIKStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var skeletonIKStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: SkeletonIK) =
  if isNil(skeletonIKStopMethodBind):
    skeletonIKStopMethodBind = getMethod(cstring"SkeletonIK", cstring"stop")
  var ptrCallRet: pointer
  skeletonIKStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
