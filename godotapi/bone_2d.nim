
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc defaultLength*(self: Bone2D): float64 {.gcsafe, locks: 0.}
proc `defaultLength=`*(self: Bone2D; val: float64) {.gcsafe, locks: 0.}
proc rest*(self: Bone2D): Transform2D {.gcsafe, locks: 0.}
proc `rest=`*(self: Bone2D; val: Transform2D) {.gcsafe, locks: 0.}
proc applyRest*(self: Bone2D) {.gcsafe, locks: 0.}
proc getIndexInSkeleton*(self: Bone2D): int64 {.gcsafe, locks: 0.}
proc getSkeletonRest*(self: Bone2D): Transform2D {.gcsafe, locks: 0.}
var bone2DGetDefaultLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc defaultLength(self: Bone2D): float64 =
  if isNil(bone2DGetDefaultLengthMethodBind):
    bone2DGetDefaultLengthMethodBind = getMethod(cstring"Bone2D",
        cstring"get_default_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bone2DGetDefaultLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bone2DSetDefaultLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `defaultLength=`(self: Bone2D; val: float64) =
  if isNil(bone2DSetDefaultLengthMethodBind):
    bone2DSetDefaultLengthMethodBind = getMethod(cstring"Bone2D",
        cstring"set_default_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bone2DSetDefaultLengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bone2DGetRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc rest(self: Bone2D): Transform2D =
  if isNil(bone2DGetRestMethodBind):
    bone2DGetRestMethodBind = getMethod(cstring"Bone2D", cstring"get_rest")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bone2DGetRestMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bone2DSetRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rest=`(self: Bone2D; val: Transform2D) =
  if isNil(bone2DSetRestMethodBind):
    bone2DSetRestMethodBind = getMethod(cstring"Bone2D", cstring"set_rest")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bone2DSetRestMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var bone2DApplyRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyRest(self: Bone2D) =
  if isNil(bone2DApplyRestMethodBind):
    bone2DApplyRestMethodBind = getMethod(cstring"Bone2D", cstring"apply_rest")
  var ptrCallRet: pointer
  bone2DApplyRestMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bone2DGetIndexInSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIndexInSkeleton(self: Bone2D): int64 =
  if isNil(bone2DGetIndexInSkeletonMethodBind):
    bone2DGetIndexInSkeletonMethodBind = getMethod(cstring"Bone2D",
        cstring"get_index_in_skeleton")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bone2DGetIndexInSkeletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bone2DGetSkeletonRestMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSkeletonRest(self: Bone2D): Transform2D =
  if isNil(bone2DGetSkeletonRestMethodBind):
    bone2DGetSkeletonRestMethodBind = getMethod(cstring"Bone2D",
        cstring"get_skeleton_rest")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bone2DGetSkeletonRestMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
