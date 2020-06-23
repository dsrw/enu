
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method skinChanged*(self: SkinReference) {.gcsafe, locks: 0, base.}
proc getSkeleton*(self: SkinReference): RID {.gcsafe, locks: 0.}
proc getSkin*(self: SkinReference): Skin {.gcsafe, locks: 0.}
var skinReferenceUnderscoreskinChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method skinChanged(self: SkinReference) =
  if isNil(skinReferenceUnderscoreskinChangedMethodBind):
    skinReferenceUnderscoreskinChangedMethodBind = getMethod(
        cstring"SkinReference", cstring"_skin_changed")
  var ptrCallRet: pointer
  skinReferenceUnderscoreskinChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var skinReferenceGetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSkeleton(self: SkinReference): RID =
  if isNil(skinReferenceGetSkeletonMethodBind):
    skinReferenceGetSkeletonMethodBind = getMethod(cstring"SkinReference",
        cstring"get_skeleton")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skinReferenceGetSkeletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skinReferenceGetSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSkin(self: SkinReference): Skin =
  if isNil(skinReferenceGetSkinMethodBind):
    skinReferenceGetSkinMethodBind = getMethod(cstring"SkinReference",
        cstring"get_skin")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  skinReferenceGetSkinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
