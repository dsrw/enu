
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  MODE_ADD* = 0'i64
  MODE_MASK* = 3'i64
  MODE_MIX* = 2'i64
  MODE_SUB* = 1'i64
  SHADOW_FILTER_NONE* = 0'i64
  SHADOW_FILTER_PCF13* = 5'i64
  SHADOW_FILTER_PCF3* = 1'i64
  SHADOW_FILTER_PCF5* = 2'i64
  SHADOW_FILTER_PCF7* = 3'i64
  SHADOW_FILTER_PCF9* = 4'i64
proc color*(self: Light2D): Color {.gcsafe, locks: 0.}
proc `color=`*(self: Light2D; val: Color) {.gcsafe, locks: 0.}
proc editorOnly*(self: Light2D): bool {.gcsafe, locks: 0.}
proc `editorOnly=`*(self: Light2D; val: bool) {.gcsafe, locks: 0.}
proc enabled*(self: Light2D): bool {.gcsafe, locks: 0.}
proc `enabled=`*(self: Light2D; val: bool) {.gcsafe, locks: 0.}
proc energy*(self: Light2D): float64 {.gcsafe, locks: 0.}
proc `energy=`*(self: Light2D; val: float64) {.gcsafe, locks: 0.}
proc mode*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `mode=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc offset*(self: Light2D): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: Light2D; val: Vector2) {.gcsafe, locks: 0.}
proc rangeHeight*(self: Light2D): float64 {.gcsafe, locks: 0.}
proc `rangeHeight=`*(self: Light2D; val: float64) {.gcsafe, locks: 0.}
proc rangeItemCullMask*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `rangeItemCullMask=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc rangeLayerMax*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `rangeLayerMax=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc rangeLayerMin*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `rangeLayerMin=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc rangeZMax*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `rangeZMax=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc rangeZMin*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `rangeZMin=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc shadowBufferSize*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `shadowBufferSize=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc shadowColor*(self: Light2D): Color {.gcsafe, locks: 0.}
proc `shadowColor=`*(self: Light2D; val: Color) {.gcsafe, locks: 0.}
proc shadowEnabled*(self: Light2D): bool {.gcsafe, locks: 0.}
proc `shadowEnabled=`*(self: Light2D; val: bool) {.gcsafe, locks: 0.}
proc shadowFilter*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `shadowFilter=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc shadowFilterSmooth*(self: Light2D): float64 {.gcsafe, locks: 0.}
proc `shadowFilterSmooth=`*(self: Light2D; val: float64) {.gcsafe, locks: 0.}
proc shadowGradientLength*(self: Light2D): float64 {.gcsafe, locks: 0.}
proc `shadowGradientLength=`*(self: Light2D; val: float64) {.gcsafe, locks: 0.}
proc shadowItemCullMask*(self: Light2D): int64 {.gcsafe, locks: 0.}
proc `shadowItemCullMask=`*(self: Light2D; val: int64) {.gcsafe, locks: 0.}
proc texture*(self: Light2D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: Light2D; val: Texture) {.gcsafe, locks: 0.}
proc textureScale*(self: Light2D): float64 {.gcsafe, locks: 0.}
proc `textureScale=`*(self: Light2D; val: float64) {.gcsafe, locks: 0.}
var light2DGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: Light2D): Color =
  if isNil(light2DGetColorMethodBind):
    light2DGetColorMethodBind = getMethod(cstring"Light2D", cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: Light2D; val: Color) =
  if isNil(light2DSetColorMethodBind):
    light2DSetColorMethodBind = getMethod(cstring"Light2D", cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var light2DIsEditorOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc editorOnly(self: Light2D): bool =
  if isNil(light2DIsEditorOnlyMethodBind):
    light2DIsEditorOnlyMethodBind = getMethod(cstring"Light2D",
        cstring"is_editor_only")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DIsEditorOnlyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetEditorOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editorOnly=`(self: Light2D; val: bool) =
  if isNil(light2DSetEditorOnlyMethodBind):
    light2DSetEditorOnlyMethodBind = getMethod(cstring"Light2D",
        cstring"set_editor_only")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetEditorOnlyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc enabled(self: Light2D): bool =
  if isNil(light2DIsEnabledMethodBind):
    light2DIsEnabledMethodBind = getMethod(cstring"Light2D", cstring"is_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DIsEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enabled=`(self: Light2D; val: bool) =
  if isNil(light2DSetEnabledMethodBind):
    light2DSetEnabledMethodBind = getMethod(cstring"Light2D", cstring"set_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var light2DGetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc energy(self: Light2D): float64 =
  if isNil(light2DGetEnergyMethodBind):
    light2DGetEnergyMethodBind = getMethod(cstring"Light2D", cstring"get_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `energy=`(self: Light2D; val: float64) =
  if isNil(light2DSetEnergyMethodBind):
    light2DSetEnergyMethodBind = getMethod(cstring"Light2D", cstring"set_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetEnergyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var light2DGetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mode(self: Light2D): int64 =
  if isNil(light2DGetModeMethodBind):
    light2DGetModeMethodBind = getMethod(cstring"Light2D", cstring"get_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mode=`(self: Light2D; val: int64) =
  if isNil(light2DSetModeMethodBind):
    light2DSetModeMethodBind = getMethod(cstring"Light2D", cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var light2DGetTextureOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: Light2D): Vector2 =
  if isNil(light2DGetTextureOffsetMethodBind):
    light2DGetTextureOffsetMethodBind = getMethod(cstring"Light2D",
        cstring"get_texture_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetTextureOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetTextureOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: Light2D; val: Vector2) =
  if isNil(light2DSetTextureOffsetMethodBind):
    light2DSetTextureOffsetMethodBind = getMethod(cstring"Light2D",
        cstring"set_texture_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetTextureOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeHeight(self: Light2D): float64 =
  if isNil(light2DGetHeightMethodBind):
    light2DGetHeightMethodBind = getMethod(cstring"Light2D", cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeHeight=`(self: Light2D; val: float64) =
  if isNil(light2DSetHeightMethodBind):
    light2DSetHeightMethodBind = getMethod(cstring"Light2D", cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var light2DGetItemCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeItemCullMask(self: Light2D): int64 =
  if isNil(light2DGetItemCullMaskMethodBind):
    light2DGetItemCullMaskMethodBind = getMethod(cstring"Light2D",
        cstring"get_item_cull_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetItemCullMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetItemCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeItemCullMask=`(self: Light2D; val: int64) =
  if isNil(light2DSetItemCullMaskMethodBind):
    light2DSetItemCullMaskMethodBind = getMethod(cstring"Light2D",
        cstring"set_item_cull_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetItemCullMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DGetLayerRangeMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeLayerMax(self: Light2D): int64 =
  if isNil(light2DGetLayerRangeMaxMethodBind):
    light2DGetLayerRangeMaxMethodBind = getMethod(cstring"Light2D",
        cstring"get_layer_range_max")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetLayerRangeMaxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetLayerRangeMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeLayerMax=`(self: Light2D; val: int64) =
  if isNil(light2DSetLayerRangeMaxMethodBind):
    light2DSetLayerRangeMaxMethodBind = getMethod(cstring"Light2D",
        cstring"set_layer_range_max")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetLayerRangeMaxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DGetLayerRangeMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeLayerMin(self: Light2D): int64 =
  if isNil(light2DGetLayerRangeMinMethodBind):
    light2DGetLayerRangeMinMethodBind = getMethod(cstring"Light2D",
        cstring"get_layer_range_min")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetLayerRangeMinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetLayerRangeMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeLayerMin=`(self: Light2D; val: int64) =
  if isNil(light2DSetLayerRangeMinMethodBind):
    light2DSetLayerRangeMinMethodBind = getMethod(cstring"Light2D",
        cstring"set_layer_range_min")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetLayerRangeMinMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DGetZRangeMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeZMax(self: Light2D): int64 =
  if isNil(light2DGetZRangeMaxMethodBind):
    light2DGetZRangeMaxMethodBind = getMethod(cstring"Light2D",
        cstring"get_z_range_max")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetZRangeMaxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetZRangeMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeZMax=`(self: Light2D; val: int64) =
  if isNil(light2DSetZRangeMaxMethodBind):
    light2DSetZRangeMaxMethodBind = getMethod(cstring"Light2D",
        cstring"set_z_range_max")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetZRangeMaxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var light2DGetZRangeMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc rangeZMin(self: Light2D): int64 =
  if isNil(light2DGetZRangeMinMethodBind):
    light2DGetZRangeMinMethodBind = getMethod(cstring"Light2D",
        cstring"get_z_range_min")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetZRangeMinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetZRangeMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rangeZMin=`(self: Light2D; val: int64) =
  if isNil(light2DSetZRangeMinMethodBind):
    light2DSetZRangeMinMethodBind = getMethod(cstring"Light2D",
        cstring"set_z_range_min")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetZRangeMinMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var light2DGetShadowBufferSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowBufferSize(self: Light2D): int64 =
  if isNil(light2DGetShadowBufferSizeMethodBind):
    light2DGetShadowBufferSizeMethodBind = getMethod(cstring"Light2D",
        cstring"get_shadow_buffer_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetShadowBufferSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetShadowBufferSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowBufferSize=`(self: Light2D; val: int64) =
  if isNil(light2DSetShadowBufferSizeMethodBind):
    light2DSetShadowBufferSizeMethodBind = getMethod(cstring"Light2D",
        cstring"set_shadow_buffer_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetShadowBufferSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var light2DGetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowColor(self: Light2D): Color =
  if isNil(light2DGetShadowColorMethodBind):
    light2DGetShadowColorMethodBind = getMethod(cstring"Light2D",
        cstring"get_shadow_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetShadowColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowColor=`(self: Light2D; val: Color) =
  if isNil(light2DSetShadowColorMethodBind):
    light2DSetShadowColorMethodBind = getMethod(cstring"Light2D",
        cstring"set_shadow_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetShadowColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DIsShadowEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowEnabled(self: Light2D): bool =
  if isNil(light2DIsShadowEnabledMethodBind):
    light2DIsShadowEnabledMethodBind = getMethod(cstring"Light2D",
        cstring"is_shadow_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DIsShadowEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetShadowEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowEnabled=`(self: Light2D; val: bool) =
  if isNil(light2DSetShadowEnabledMethodBind):
    light2DSetShadowEnabledMethodBind = getMethod(cstring"Light2D",
        cstring"set_shadow_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetShadowEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DGetShadowFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowFilter(self: Light2D): int64 =
  if isNil(light2DGetShadowFilterMethodBind):
    light2DGetShadowFilterMethodBind = getMethod(cstring"Light2D",
        cstring"get_shadow_filter")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetShadowFilterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetShadowFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowFilter=`(self: Light2D; val: int64) =
  if isNil(light2DSetShadowFilterMethodBind):
    light2DSetShadowFilterMethodBind = getMethod(cstring"Light2D",
        cstring"set_shadow_filter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetShadowFilterMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DGetShadowSmoothMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowFilterSmooth(self: Light2D): float64 =
  if isNil(light2DGetShadowSmoothMethodBind):
    light2DGetShadowSmoothMethodBind = getMethod(cstring"Light2D",
        cstring"get_shadow_smooth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetShadowSmoothMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetShadowSmoothMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowFilterSmooth=`(self: Light2D; val: float64) =
  if isNil(light2DSetShadowSmoothMethodBind):
    light2DSetShadowSmoothMethodBind = getMethod(cstring"Light2D",
        cstring"set_shadow_smooth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetShadowSmoothMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var light2DGetShadowGradientLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowGradientLength(self: Light2D): float64 =
  if isNil(light2DGetShadowGradientLengthMethodBind):
    light2DGetShadowGradientLengthMethodBind = getMethod(cstring"Light2D",
        cstring"get_shadow_gradient_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetShadowGradientLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var light2DSetShadowGradientLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowGradientLength=`(self: Light2D; val: float64) =
  if isNil(light2DSetShadowGradientLengthMethodBind):
    light2DSetShadowGradientLengthMethodBind = getMethod(cstring"Light2D",
        cstring"set_shadow_gradient_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetShadowGradientLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var light2DGetItemShadowCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowItemCullMask(self: Light2D): int64 =
  if isNil(light2DGetItemShadowCullMaskMethodBind):
    light2DGetItemShadowCullMaskMethodBind = getMethod(cstring"Light2D",
        cstring"get_item_shadow_cull_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetItemShadowCullMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetItemShadowCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowItemCullMask=`(self: Light2D; val: int64) =
  if isNil(light2DSetItemShadowCullMaskMethodBind):
    light2DSetItemShadowCullMaskMethodBind = getMethod(cstring"Light2D",
        cstring"set_item_shadow_cull_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetItemShadowCullMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var light2DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: Light2D): Texture =
  if isNil(light2DGetTextureMethodBind):
    light2DGetTextureMethodBind = getMethod(cstring"Light2D", cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  light2DGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var light2DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: Light2D; val: Texture) =
  if isNil(light2DSetTextureMethodBind):
    light2DSetTextureMethodBind = getMethod(cstring"Light2D", cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  light2DSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var light2DGetTextureScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureScale(self: Light2D): float64 =
  if isNil(light2DGetTextureScaleMethodBind):
    light2DGetTextureScaleMethodBind = getMethod(cstring"Light2D",
        cstring"get_texture_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  light2DGetTextureScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var light2DSetTextureScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureScale=`(self: Light2D; val: float64) =
  if isNil(light2DSetTextureScaleMethodBind):
    light2DSetTextureScaleMethodBind = getMethod(cstring"Light2D",
        cstring"set_texture_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  light2DSetTextureScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
