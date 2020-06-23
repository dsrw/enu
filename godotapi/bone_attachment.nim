
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc boneName*(self: BoneAttachment): string {.gcsafe, locks: 0.}
proc `boneName=`*(self: BoneAttachment; val: string) {.gcsafe, locks: 0.}
var boneAttachmentGetBoneNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc boneName(self: BoneAttachment): string =
  if isNil(boneAttachmentGetBoneNameMethodBind):
    boneAttachmentGetBoneNameMethodBind = getMethod(cstring"BoneAttachment",
        cstring"get_bone_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  boneAttachmentGetBoneNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var boneAttachmentSetBoneNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `boneName=`(self: BoneAttachment; val: string) =
  if isNil(boneAttachmentSetBoneNameMethodBind):
    boneAttachmentSetBoneNameMethodBind = getMethod(cstring"BoneAttachment",
        cstring"set_bone_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  boneAttachmentSetBoneNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
