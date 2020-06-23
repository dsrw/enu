
import
  godot, godottypes, godotinternal, style_box

export
  godottypes, style_box

const
  AXIS_STRETCH_MODE_STRETCH* = 0'i64
  AXIS_STRETCH_MODE_TILE* = 1'i64
  AXIS_STRETCH_MODE_TILE_FIT* = 2'i64
proc axisStretchHorizontal*(self: StyleBoxTexture): int64 {.gcsafe, locks: 0.}
proc `axisStretchHorizontal=`*(self: StyleBoxTexture; val: int64) {.gcsafe, locks: 0.}
proc axisStretchVertical*(self: StyleBoxTexture): int64 {.gcsafe, locks: 0.}
proc `axisStretchVertical=`*(self: StyleBoxTexture; val: int64) {.gcsafe, locks: 0.}
proc drawCenter*(self: StyleBoxTexture): bool {.gcsafe, locks: 0.}
proc `drawCenter=`*(self: StyleBoxTexture; val: bool) {.gcsafe, locks: 0.}
proc expandMarginBottom*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `expandMarginBottom=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc expandMarginLeft*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `expandMarginLeft=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc expandMarginRight*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `expandMarginRight=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc expandMarginTop*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `expandMarginTop=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc marginBottom*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `marginBottom=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc marginLeft*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `marginLeft=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc marginRight*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `marginRight=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc marginTop*(self: StyleBoxTexture): float64 {.gcsafe, locks: 0.}
proc `marginTop=`*(self: StyleBoxTexture; val: float64) {.gcsafe, locks: 0.}
proc modulateColor*(self: StyleBoxTexture): Color {.gcsafe, locks: 0.}
proc `modulateColor=`*(self: StyleBoxTexture; val: Color) {.gcsafe, locks: 0.}
proc normalMap*(self: StyleBoxTexture): Texture {.gcsafe, locks: 0.}
proc `normalMap=`*(self: StyleBoxTexture; val: Texture) {.gcsafe, locks: 0.}
proc regionRect*(self: StyleBoxTexture): Rect2 {.gcsafe, locks: 0.}
proc `regionRect=`*(self: StyleBoxTexture; val: Rect2) {.gcsafe, locks: 0.}
proc texture*(self: StyleBoxTexture): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: StyleBoxTexture; val: Texture) {.gcsafe, locks: 0.}
proc setExpandMarginAll*(self: StyleBoxTexture; size: float64) {.gcsafe, locks: 0.}
proc setExpandMarginIndividual*(self: StyleBoxTexture; sizeLeft: float64;
                               sizeTop: float64; sizeRight: float64;
                               sizeBottom: float64) {.gcsafe, locks: 0.}
var styleBoxTextureGetHAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc axisStretchHorizontal(self: StyleBoxTexture): int64 =
  if isNil(styleBoxTextureGetHAxisStretchModeMethodBind):
    styleBoxTextureGetHAxisStretchModeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"get_h_axis_stretch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetHAxisStretchModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var styleBoxTextureSetHAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axisStretchHorizontal=`(self: StyleBoxTexture; val: int64) =
  if isNil(styleBoxTextureSetHAxisStretchModeMethodBind):
    styleBoxTextureSetHAxisStretchModeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_h_axis_stretch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetHAxisStretchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureGetVAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc axisStretchVertical(self: StyleBoxTexture): int64 =
  if isNil(styleBoxTextureGetVAxisStretchModeMethodBind):
    styleBoxTextureGetVAxisStretchModeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"get_v_axis_stretch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetVAxisStretchModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var styleBoxTextureSetVAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axisStretchVertical=`(self: StyleBoxTexture; val: int64) =
  if isNil(styleBoxTextureSetVAxisStretchModeMethodBind):
    styleBoxTextureSetVAxisStretchModeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_v_axis_stretch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetVAxisStretchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureIsDrawCenterEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawCenter(self: StyleBoxTexture): bool =
  if isNil(styleBoxTextureIsDrawCenterEnabledMethodBind):
    styleBoxTextureIsDrawCenterEnabledMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"is_draw_center_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureIsDrawCenterEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var styleBoxTextureSetDrawCenterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawCenter=`(self: StyleBoxTexture; val: bool) =
  if isNil(styleBoxTextureSetDrawCenterMethodBind):
    styleBoxTextureSetDrawCenterMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_draw_center")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetDrawCenterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureGetExpandMarginSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc expandMarginBottom(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetExpandMarginSizeMethodBind):
    styleBoxTextureGetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"get_expand_margin_size")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureSetExpandMarginSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expandMarginBottom=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetExpandMarginSizeMethodBind):
    styleBoxTextureSetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_expand_margin_size")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc expandMarginLeft(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetExpandMarginSizeMethodBind):
    styleBoxTextureGetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"get_expand_margin_size")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `expandMarginLeft=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetExpandMarginSizeMethodBind):
    styleBoxTextureSetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_expand_margin_size")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc expandMarginRight(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetExpandMarginSizeMethodBind):
    styleBoxTextureGetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"get_expand_margin_size")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `expandMarginRight=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetExpandMarginSizeMethodBind):
    styleBoxTextureSetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_expand_margin_size")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc expandMarginTop(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetExpandMarginSizeMethodBind):
    styleBoxTextureGetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"get_expand_margin_size")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `expandMarginTop=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetExpandMarginSizeMethodBind):
    styleBoxTextureSetExpandMarginSizeMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_expand_margin_size")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetExpandMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureGetMarginSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc marginBottom(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetMarginSizeMethodBind):
    styleBoxTextureGetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_margin_size")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureSetMarginSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `marginBottom=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetMarginSizeMethodBind):
    styleBoxTextureSetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_margin_size")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc marginLeft(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetMarginSizeMethodBind):
    styleBoxTextureGetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_margin_size")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `marginLeft=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetMarginSizeMethodBind):
    styleBoxTextureSetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_margin_size")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc marginRight(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetMarginSizeMethodBind):
    styleBoxTextureGetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_margin_size")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `marginRight=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetMarginSizeMethodBind):
    styleBoxTextureSetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_margin_size")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc marginTop(self: StyleBoxTexture): float64 =
  if isNil(styleBoxTextureGetMarginSizeMethodBind):
    styleBoxTextureGetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_margin_size")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `marginTop=`(self: StyleBoxTexture; val: float64) =
  if isNil(styleBoxTextureSetMarginSizeMethodBind):
    styleBoxTextureSetMarginSizeMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_margin_size")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetMarginSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureGetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc modulateColor(self: StyleBoxTexture): Color =
  if isNil(styleBoxTextureGetModulateMethodBind):
    styleBoxTextureGetModulateMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_modulate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetModulateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxTextureSetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `modulateColor=`(self: StyleBoxTexture; val: Color) =
  if isNil(styleBoxTextureSetModulateMethodBind):
    styleBoxTextureSetModulateMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_modulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetModulateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureGetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalMap(self: StyleBoxTexture): Texture =
  if isNil(styleBoxTextureGetNormalMapMethodBind):
    styleBoxTextureGetNormalMapMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_normal_map")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  styleBoxTextureGetNormalMapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var styleBoxTextureSetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalMap=`(self: StyleBoxTexture; val: Texture) =
  if isNil(styleBoxTextureSetNormalMapMethodBind):
    styleBoxTextureSetNormalMapMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_normal_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  styleBoxTextureSetNormalMapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureGetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionRect(self: StyleBoxTexture): Rect2 =
  if isNil(styleBoxTextureGetRegionRectMethodBind):
    styleBoxTextureGetRegionRectMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_region_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTextureGetRegionRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxTextureSetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionRect=`(self: StyleBoxTexture; val: Rect2) =
  if isNil(styleBoxTextureSetRegionRectMethodBind):
    styleBoxTextureSetRegionRectMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_region_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxTextureSetRegionRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: StyleBoxTexture): Texture =
  if isNil(styleBoxTextureGetTextureMethodBind):
    styleBoxTextureGetTextureMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  styleBoxTextureGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var styleBoxTextureSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: StyleBoxTexture; val: Texture) =
  if isNil(styleBoxTextureSetTextureMethodBind):
    styleBoxTextureSetTextureMethodBind = getMethod(cstring"StyleBoxTexture",
        cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  styleBoxTextureSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureSetExpandMarginAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc setExpandMarginAll(self: StyleBoxTexture; size: float64) =
  if isNil(styleBoxTextureSetExpandMarginAllMethodBind):
    styleBoxTextureSetExpandMarginAllMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_expand_margin_all")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  styleBoxTextureSetExpandMarginAllMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxTextureSetExpandMarginIndividualMethodBind {.threadvar.}: ptr GodotMethodBind
proc setExpandMarginIndividual(self: StyleBoxTexture; sizeLeft: float64;
                              sizeTop: float64; sizeRight: float64;
                              sizeBottom: float64) =
  if isNil(styleBoxTextureSetExpandMarginIndividualMethodBind):
    styleBoxTextureSetExpandMarginIndividualMethodBind = getMethod(
        cstring"StyleBoxTexture", cstring"set_expand_margin_individual")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(sizeLeft)
  argsToPassToGodot[][1] = unsafeAddr(sizeTop)
  argsToPassToGodot[][2] = unsafeAddr(sizeRight)
  argsToPassToGodot[][3] = unsafeAddr(sizeBottom)
  var ptrCallRet: pointer
  styleBoxTextureSetExpandMarginIndividualMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
