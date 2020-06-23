
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc addBind*(self: Skin; bone: int64; pose: Transform) {.gcsafe, locks: 0.}
proc clearBinds*(self: Skin) {.gcsafe, locks: 0.}
proc getBindBone*(self: Skin; bindIndex: int64): int64 {.gcsafe, locks: 0.}
proc getBindCount*(self: Skin): int64 {.gcsafe, locks: 0.}
proc getBindName*(self: Skin; bindIndex: int64): string {.gcsafe, locks: 0.}
proc getBindPose*(self: Skin; bindIndex: int64): Transform {.gcsafe, locks: 0.}
proc setBindBone*(self: Skin; bindIndex: int64; bone: int64) {.gcsafe, locks: 0.}
proc setBindCount*(self: Skin; bindCount: int64) {.gcsafe, locks: 0.}
proc setBindName*(self: Skin; bindIndex: int64; name: string) {.gcsafe, locks: 0.}
proc setBindPose*(self: Skin; bindIndex: int64; pose: Transform) {.gcsafe, locks: 0.}
var skinAddBindMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBind(self: Skin; bone: int64; pose: Transform) =
  if isNil(skinAddBindMethodBind):
    skinAddBindMethodBind = getMethod(cstring"Skin", cstring"add_bind")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bone)
  argsToPassToGodot[][1] = unsafeAddr(pose)
  var ptrCallRet: pointer
  skinAddBindMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var skinClearBindsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBinds(self: Skin) =
  if isNil(skinClearBindsMethodBind):
    skinClearBindsMethodBind = getMethod(cstring"Skin", cstring"clear_binds")
  var ptrCallRet: pointer
  skinClearBindsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skinGetBindBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBindBone(self: Skin; bindIndex: int64): int64 =
  if isNil(skinGetBindBoneMethodBind):
    skinGetBindBoneMethodBind = getMethod(cstring"Skin", cstring"get_bind_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bindIndex)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skinGetBindBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var skinGetBindCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBindCount(self: Skin): int64 =
  if isNil(skinGetBindCountMethodBind):
    skinGetBindCountMethodBind = getMethod(cstring"Skin", cstring"get_bind_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skinGetBindCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skinGetBindNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBindName(self: Skin; bindIndex: int64): string =
  if isNil(skinGetBindNameMethodBind):
    skinGetBindNameMethodBind = getMethod(cstring"Skin", cstring"get_bind_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bindIndex)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  skinGetBindNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var skinGetBindPoseMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBindPose(self: Skin; bindIndex: int64): Transform =
  if isNil(skinGetBindPoseMethodBind):
    skinGetBindPoseMethodBind = getMethod(cstring"Skin", cstring"get_bind_pose")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bindIndex)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skinGetBindPoseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var skinSetBindBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBindBone(self: Skin; bindIndex: int64; bone: int64) =
  if isNil(skinSetBindBoneMethodBind):
    skinSetBindBoneMethodBind = getMethod(cstring"Skin", cstring"set_bind_bone")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bindIndex)
  argsToPassToGodot[][1] = unsafeAddr(bone)
  var ptrCallRet: pointer
  skinSetBindBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var skinSetBindCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBindCount(self: Skin; bindCount: int64) =
  if isNil(skinSetBindCountMethodBind):
    skinSetBindCountMethodBind = getMethod(cstring"Skin", cstring"set_bind_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bindCount)
  var ptrCallRet: pointer
  skinSetBindCountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var skinSetBindNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBindName(self: Skin; bindIndex: int64; name: string) =
  if isNil(skinSetBindNameMethodBind):
    skinSetBindNameMethodBind = getMethod(cstring"Skin", cstring"set_bind_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bindIndex)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  skinSetBindNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot1)

var skinSetBindPoseMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBindPose(self: Skin; bindIndex: int64; pose: Transform) =
  if isNil(skinSetBindPoseMethodBind):
    skinSetBindPoseMethodBind = getMethod(cstring"Skin", cstring"set_bind_pose")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bindIndex)
  argsToPassToGodot[][1] = unsafeAddr(pose)
  var ptrCallRet: pointer
  skinSetBindPoseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
