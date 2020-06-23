
import
  godot, godottypes, godotinternal, visual_instance

export
  godottypes, visual_instance

const
  BAKE_ALL* = 2'i64
  BAKE_DISABLED* = 0'i64
  BAKE_INDIRECT* = 1'i64
  PARAM_ATTENUATION* = 4'i64
  PARAM_CONTACT_SHADOW_SIZE* = 7'i64
  PARAM_ENERGY* = 0'i64
  PARAM_INDIRECT_ENERGY* = 1'i64
  PARAM_MAX* = 15'i64
  PARAM_RANGE* = 3'i64
  PARAM_SHADOW_BIAS* = 13'i64
  PARAM_SHADOW_BIAS_SPLIT_SCALE* = 14'i64
  PARAM_SHADOW_MAX_DISTANCE* = 8'i64
  PARAM_SHADOW_NORMAL_BIAS* = 12'i64
  PARAM_SHADOW_SPLIT_1_OFFSET* = 9'i64
  PARAM_SHADOW_SPLIT_2_OFFSET* = 10'i64
  PARAM_SHADOW_SPLIT_3_OFFSET* = 11'i64
  PARAM_SPECULAR* = 2'i64
  PARAM_SPOT_ANGLE* = 5'i64
  PARAM_SPOT_ATTENUATION* = 6'i64
proc editorOnly*(self: Light): bool {.gcsafe, locks: 0.}
proc `editorOnly=`*(self: Light; val: bool) {.gcsafe, locks: 0.}
proc lightBakeMode*(self: Light): int64 {.gcsafe, locks: 0.}
proc `lightBakeMode=`*(self: Light; val: int64) {.gcsafe, locks: 0.}
proc lightColor*(self: Light): Color {.gcsafe, locks: 0.}
proc `lightColor=`*(self: Light; val: Color) {.gcsafe, locks: 0.}
proc lightCullMask*(self: Light): int64 {.gcsafe, locks: 0.}
proc `lightCullMask=`*(self: Light; val: int64) {.gcsafe, locks: 0.}
proc lightEnergy*(self: Light): float64 {.gcsafe, locks: 0.}
proc `lightEnergy=`*(self: Light; val: float64) {.gcsafe, locks: 0.}
proc lightIndirectEnergy*(self: Light): float64 {.gcsafe, locks: 0.}
proc `lightIndirectEnergy=`*(self: Light; val: float64) {.gcsafe, locks: 0.}
proc lightNegative*(self: Light): bool {.gcsafe, locks: 0.}
proc `lightNegative=`*(self: Light; val: bool) {.gcsafe, locks: 0.}
proc lightSpecular*(self: Light): float64 {.gcsafe, locks: 0.}
proc `lightSpecular=`*(self: Light; val: float64) {.gcsafe, locks: 0.}
proc shadowBias*(self: Light): float64 {.gcsafe, locks: 0.}
proc `shadowBias=`*(self: Light; val: float64) {.gcsafe, locks: 0.}
proc shadowColor*(self: Light): Color {.gcsafe, locks: 0.}
proc `shadowColor=`*(self: Light; val: Color) {.gcsafe, locks: 0.}
proc shadowContact*(self: Light): float64 {.gcsafe, locks: 0.}
proc `shadowContact=`*(self: Light; val: float64) {.gcsafe, locks: 0.}
proc shadowEnabled*(self: Light): bool {.gcsafe, locks: 0.}
proc `shadowEnabled=`*(self: Light; val: bool) {.gcsafe, locks: 0.}
proc shadowReverseCullFace*(self: Light): bool {.gcsafe, locks: 0.}
proc `shadowReverseCullFace=`*(self: Light; val: bool) {.gcsafe, locks: 0.}
var lightIsEditorOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc editorOnly(self: Light): bool =
  if isNil(lightIsEditorOnlyMethodBind):
    lightIsEditorOnlyMethodBind = getMethod(cstring"Light",
        cstring"is_editor_only")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightIsEditorOnlyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lightSetEditorOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editorOnly=`(self: Light; val: bool) =
  if isNil(lightSetEditorOnlyMethodBind):
    lightSetEditorOnlyMethodBind = getMethod(cstring"Light",
        cstring"set_editor_only")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetEditorOnlyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var lightGetBakeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightBakeMode(self: Light): int64 =
  if isNil(lightGetBakeModeMethodBind):
    lightGetBakeModeMethodBind = getMethod(cstring"Light", cstring"get_bake_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetBakeModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lightSetBakeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightBakeMode=`(self: Light; val: int64) =
  if isNil(lightSetBakeModeMethodBind):
    lightSetBakeModeMethodBind = getMethod(cstring"Light", cstring"set_bake_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetBakeModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var lightGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightColor(self: Light): Color =
  if isNil(lightGetColorMethodBind):
    lightGetColorMethodBind = getMethod(cstring"Light", cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lightSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightColor=`(self: Light; val: Color) =
  if isNil(lightSetColorMethodBind):
    lightSetColorMethodBind = getMethod(cstring"Light", cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var lightGetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightCullMask(self: Light): int64 =
  if isNil(lightGetCullMaskMethodBind):
    lightGetCullMaskMethodBind = getMethod(cstring"Light", cstring"get_cull_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetCullMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lightSetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightCullMask=`(self: Light; val: int64) =
  if isNil(lightSetCullMaskMethodBind):
    lightSetCullMaskMethodBind = getMethod(cstring"Light", cstring"set_cull_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetCullMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var lightGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightEnergy(self: Light): float64 =
  if isNil(lightGetParamMethodBind):
    lightGetParamMethodBind = getMethod(cstring"Light", cstring"get_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var lightSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightEnergy=`(self: Light; val: float64) =
  if isNil(lightSetParamMethodBind):
    lightSetParamMethodBind = getMethod(cstring"Light", cstring"set_param")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

proc lightIndirectEnergy(self: Light): float64 =
  if isNil(lightGetParamMethodBind):
    lightGetParamMethodBind = getMethod(cstring"Light", cstring"get_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

proc `lightIndirectEnergy=`(self: Light; val: float64) =
  if isNil(lightSetParamMethodBind):
    lightSetParamMethodBind = getMethod(cstring"Light", cstring"set_param")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var lightIsNegativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightNegative(self: Light): bool =
  if isNil(lightIsNegativeMethodBind):
    lightIsNegativeMethodBind = getMethod(cstring"Light", cstring"is_negative")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightIsNegativeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lightSetNegativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightNegative=`(self: Light; val: bool) =
  if isNil(lightSetNegativeMethodBind):
    lightSetNegativeMethodBind = getMethod(cstring"Light", cstring"set_negative")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetNegativeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc lightSpecular(self: Light): float64 =
  if isNil(lightGetParamMethodBind):
    lightGetParamMethodBind = getMethod(cstring"Light", cstring"get_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

proc `lightSpecular=`(self: Light; val: float64) =
  if isNil(lightSetParamMethodBind):
    lightSetParamMethodBind = getMethod(cstring"Light", cstring"set_param")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

proc shadowBias(self: Light): float64 =
  if isNil(lightGetParamMethodBind):
    lightGetParamMethodBind = getMethod(cstring"Light", cstring"get_param")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

proc `shadowBias=`(self: Light; val: float64) =
  if isNil(lightSetParamMethodBind):
    lightSetParamMethodBind = getMethod(cstring"Light", cstring"set_param")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var lightGetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowColor(self: Light): Color =
  if isNil(lightGetShadowColorMethodBind):
    lightGetShadowColorMethodBind = getMethod(cstring"Light",
        cstring"get_shadow_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetShadowColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lightSetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowColor=`(self: Light; val: Color) =
  if isNil(lightSetShadowColorMethodBind):
    lightSetShadowColorMethodBind = getMethod(cstring"Light",
        cstring"set_shadow_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetShadowColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

proc shadowContact(self: Light): float64 =
  if isNil(lightGetParamMethodBind):
    lightGetParamMethodBind = getMethod(cstring"Light", cstring"get_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

proc `shadowContact=`(self: Light; val: float64) =
  if isNil(lightSetParamMethodBind):
    lightSetParamMethodBind = getMethod(cstring"Light", cstring"set_param")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetParamMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var lightHasShadowMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowEnabled(self: Light): bool =
  if isNil(lightHasShadowMethodBind):
    lightHasShadowMethodBind = getMethod(cstring"Light", cstring"has_shadow")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightHasShadowMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lightSetShadowMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowEnabled=`(self: Light; val: bool) =
  if isNil(lightSetShadowMethodBind):
    lightSetShadowMethodBind = getMethod(cstring"Light", cstring"set_shadow")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetShadowMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var lightGetShadowReverseCullFaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowReverseCullFace(self: Light): bool =
  if isNil(lightGetShadowReverseCullFaceMethodBind):
    lightGetShadowReverseCullFaceMethodBind = getMethod(cstring"Light",
        cstring"get_shadow_reverse_cull_face")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightGetShadowReverseCullFaceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var lightSetShadowReverseCullFaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowReverseCullFace=`(self: Light; val: bool) =
  if isNil(lightSetShadowReverseCullFaceMethodBind):
    lightSetShadowReverseCullFaceMethodBind = getMethod(cstring"Light",
        cstring"set_shadow_reverse_cull_face")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightSetShadowReverseCullFaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
