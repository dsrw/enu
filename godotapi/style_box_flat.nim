
import
  godot, godottypes, godotinternal, style_box

export
  godottypes, style_box

proc antiAliasing*(self: StyleBoxFlat): bool {.gcsafe, locks: 0.}
proc `antiAliasing=`*(self: StyleBoxFlat; val: bool) {.gcsafe, locks: 0.}
proc antiAliasingSize*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `antiAliasingSize=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc bgColor*(self: StyleBoxFlat): Color {.gcsafe, locks: 0.}
proc `bgColor=`*(self: StyleBoxFlat; val: Color) {.gcsafe, locks: 0.}
proc borderBlend*(self: StyleBoxFlat): bool {.gcsafe, locks: 0.}
proc `borderBlend=`*(self: StyleBoxFlat; val: bool) {.gcsafe, locks: 0.}
proc borderColor*(self: StyleBoxFlat): Color {.gcsafe, locks: 0.}
proc `borderColor=`*(self: StyleBoxFlat; val: Color) {.gcsafe, locks: 0.}
proc borderWidthBottom*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `borderWidthBottom=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc borderWidthLeft*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `borderWidthLeft=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc borderWidthRight*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `borderWidthRight=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc borderWidthTop*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `borderWidthTop=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc cornerDetail*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `cornerDetail=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc cornerRadiusBottomLeft*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `cornerRadiusBottomLeft=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc cornerRadiusBottomRight*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `cornerRadiusBottomRight=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc cornerRadiusTopLeft*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `cornerRadiusTopLeft=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc cornerRadiusTopRight*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `cornerRadiusTopRight=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc drawCenter*(self: StyleBoxFlat): bool {.gcsafe, locks: 0.}
proc `drawCenter=`*(self: StyleBoxFlat; val: bool) {.gcsafe, locks: 0.}
proc expandMarginBottom*(self: StyleBoxFlat): float64 {.gcsafe, locks: 0.}
proc `expandMarginBottom=`*(self: StyleBoxFlat; val: float64) {.gcsafe, locks: 0.}
proc expandMarginLeft*(self: StyleBoxFlat): float64 {.gcsafe, locks: 0.}
proc `expandMarginLeft=`*(self: StyleBoxFlat; val: float64) {.gcsafe, locks: 0.}
proc expandMarginRight*(self: StyleBoxFlat): float64 {.gcsafe, locks: 0.}
proc `expandMarginRight=`*(self: StyleBoxFlat; val: float64) {.gcsafe, locks: 0.}
proc expandMarginTop*(self: StyleBoxFlat): float64 {.gcsafe, locks: 0.}
proc `expandMarginTop=`*(self: StyleBoxFlat; val: float64) {.gcsafe, locks: 0.}
proc shadowColor*(self: StyleBoxFlat): Color {.gcsafe, locks: 0.}
proc `shadowColor=`*(self: StyleBoxFlat; val: Color) {.gcsafe, locks: 0.}
proc shadowOffset*(self: StyleBoxFlat): Vector2 {.gcsafe, locks: 0.}
proc `shadowOffset=`*(self: StyleBoxFlat; val: Vector2) {.gcsafe, locks: 0.}
proc shadowSize*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc `shadowSize=`*(self: StyleBoxFlat; val: int64) {.gcsafe, locks: 0.}
proc getBorderWidthMin*(self: StyleBoxFlat): int64 {.gcsafe, locks: 0.}
proc setBorderWidthAll*(self: StyleBoxFlat; width: int64) {.gcsafe, locks: 0.}
proc setCornerRadiusAll*(self: StyleBoxFlat; radius: int64) {.gcsafe, locks: 0.}
proc setCornerRadiusIndividual*(self: StyleBoxFlat; radiusTopLeft: int64;
                               radiusTopRight: int64; radiusBottomRight: int64;
                               radiusBottomLeft: int64) {.gcsafe, locks: 0.}
proc setExpandMarginAll*(self: StyleBoxFlat; size: float64) {.gcsafe, locks: 0.}
proc setExpandMarginIndividual*(self: StyleBoxFlat; sizeLeft: float64;
                               sizeTop: float64; sizeRight: float64;
                               sizeBottom: float64) {.gcsafe, locks: 0.}
var styleBoxFlatIsAntiAliasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc antiAliasing(self: StyleBoxFlat): bool =
  if isNil(styleBoxFlatIsAntiAliasedMethodBind):
    styleBoxFlatIsAntiAliasedMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"is_anti_aliased")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatIsAntiAliasedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetAntiAliasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `antiAliasing=`(self: StyleBoxFlat; val: bool) =
  if isNil(styleBoxFlatSetAntiAliasedMethodBind):
    styleBoxFlatSetAntiAliasedMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_anti_aliased")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetAntiAliasedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetAaSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc antiAliasingSize(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetAaSizeMethodBind):
    styleBoxFlatGetAaSizeMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_aa_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetAaSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetAaSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `antiAliasingSize=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetAaSizeMethodBind):
    styleBoxFlatSetAaSizeMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_aa_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetAaSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxFlatGetBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc bgColor(self: StyleBoxFlat): Color =
  if isNil(styleBoxFlatGetBgColorMethodBind):
    styleBoxFlatGetBgColorMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_bg_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBgColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bgColor=`(self: StyleBoxFlat; val: Color) =
  if isNil(styleBoxFlatSetBgColorMethodBind):
    styleBoxFlatSetBgColorMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_bg_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetBgColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxFlatGetBorderBlendMethodBind {.threadvar.}: ptr GodotMethodBind
proc borderBlend(self: StyleBoxFlat): bool =
  if isNil(styleBoxFlatGetBorderBlendMethodBind):
    styleBoxFlatGetBorderBlendMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_border_blend")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBorderBlendMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetBorderBlendMethodBind {.threadvar.}: ptr GodotMethodBind
proc `borderBlend=`(self: StyleBoxFlat; val: bool) =
  if isNil(styleBoxFlatSetBorderBlendMethodBind):
    styleBoxFlatSetBorderBlendMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_border_blend")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetBorderBlendMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetBorderColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc borderColor(self: StyleBoxFlat): Color =
  if isNil(styleBoxFlatGetBorderColorMethodBind):
    styleBoxFlatGetBorderColorMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_border_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBorderColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetBorderColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `borderColor=`(self: StyleBoxFlat; val: Color) =
  if isNil(styleBoxFlatSetBorderColorMethodBind):
    styleBoxFlatSetBorderColorMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_border_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetBorderColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetBorderWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc borderWidthBottom(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetBorderWidthMethodBind):
    styleBoxFlatGetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_border_width")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatSetBorderWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `borderWidthBottom=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetBorderWidthMethodBind):
    styleBoxFlatSetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_border_width")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc borderWidthLeft(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetBorderWidthMethodBind):
    styleBoxFlatGetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_border_width")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `borderWidthLeft=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetBorderWidthMethodBind):
    styleBoxFlatSetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_border_width")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc borderWidthRight(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetBorderWidthMethodBind):
    styleBoxFlatGetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_border_width")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `borderWidthRight=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetBorderWidthMethodBind):
    styleBoxFlatSetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_border_width")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc borderWidthTop(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetBorderWidthMethodBind):
    styleBoxFlatGetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_border_width")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `borderWidthTop=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetBorderWidthMethodBind):
    styleBoxFlatSetBorderWidthMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_border_width")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetBorderWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetCornerDetailMethodBind {.threadvar.}: ptr GodotMethodBind
proc cornerDetail(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetCornerDetailMethodBind):
    styleBoxFlatGetCornerDetailMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_corner_detail")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetCornerDetailMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetCornerDetailMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cornerDetail=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetCornerDetailMethodBind):
    styleBoxFlatSetCornerDetailMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_corner_detail")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetCornerDetailMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetCornerRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc cornerRadiusBottomLeft(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetCornerRadiusMethodBind):
    styleBoxFlatGetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_corner_radius")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatSetCornerRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cornerRadiusBottomLeft=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetCornerRadiusMethodBind):
    styleBoxFlatSetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_corner_radius")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc cornerRadiusBottomRight(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetCornerRadiusMethodBind):
    styleBoxFlatGetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_corner_radius")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `cornerRadiusBottomRight=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetCornerRadiusMethodBind):
    styleBoxFlatSetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_corner_radius")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc cornerRadiusTopLeft(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetCornerRadiusMethodBind):
    styleBoxFlatGetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_corner_radius")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `cornerRadiusTopLeft=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetCornerRadiusMethodBind):
    styleBoxFlatSetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_corner_radius")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc cornerRadiusTopRight(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetCornerRadiusMethodBind):
    styleBoxFlatGetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_corner_radius")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `cornerRadiusTopRight=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetCornerRadiusMethodBind):
    styleBoxFlatSetCornerRadiusMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_corner_radius")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetCornerRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatIsDrawCenterEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawCenter(self: StyleBoxFlat): bool =
  if isNil(styleBoxFlatIsDrawCenterEnabledMethodBind):
    styleBoxFlatIsDrawCenterEnabledMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"is_draw_center_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatIsDrawCenterEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var styleBoxFlatSetDrawCenterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawCenter=`(self: StyleBoxFlat; val: bool) =
  if isNil(styleBoxFlatSetDrawCenterMethodBind):
    styleBoxFlatSetDrawCenterMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_draw_center")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetDrawCenterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetExpandMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc expandMarginBottom(self: StyleBoxFlat): float64 =
  if isNil(styleBoxFlatGetExpandMarginMethodBind):
    styleBoxFlatGetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_expand_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatSetExpandMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expandMarginBottom=`(self: StyleBoxFlat; val: float64) =
  if isNil(styleBoxFlatSetExpandMarginMethodBind):
    styleBoxFlatSetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_expand_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc expandMarginLeft(self: StyleBoxFlat): float64 =
  if isNil(styleBoxFlatGetExpandMarginMethodBind):
    styleBoxFlatGetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_expand_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `expandMarginLeft=`(self: StyleBoxFlat; val: float64) =
  if isNil(styleBoxFlatSetExpandMarginMethodBind):
    styleBoxFlatSetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_expand_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc expandMarginRight(self: StyleBoxFlat): float64 =
  if isNil(styleBoxFlatGetExpandMarginMethodBind):
    styleBoxFlatGetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_expand_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `expandMarginRight=`(self: StyleBoxFlat; val: float64) =
  if isNil(styleBoxFlatSetExpandMarginMethodBind):
    styleBoxFlatSetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_expand_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc expandMarginTop(self: StyleBoxFlat): float64 =
  if isNil(styleBoxFlatGetExpandMarginMethodBind):
    styleBoxFlatGetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_expand_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `expandMarginTop=`(self: StyleBoxFlat; val: float64) =
  if isNil(styleBoxFlatSetExpandMarginMethodBind):
    styleBoxFlatSetExpandMarginMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_expand_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetExpandMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowColor(self: StyleBoxFlat): Color =
  if isNil(styleBoxFlatGetShadowColorMethodBind):
    styleBoxFlatGetShadowColorMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_shadow_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetShadowColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowColor=`(self: StyleBoxFlat; val: Color) =
  if isNil(styleBoxFlatSetShadowColorMethodBind):
    styleBoxFlatSetShadowColorMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_shadow_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetShadowColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetShadowOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowOffset(self: StyleBoxFlat): Vector2 =
  if isNil(styleBoxFlatGetShadowOffsetMethodBind):
    styleBoxFlatGetShadowOffsetMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_shadow_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetShadowOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetShadowOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowOffset=`(self: StyleBoxFlat; val: Vector2) =
  if isNil(styleBoxFlatSetShadowOffsetMethodBind):
    styleBoxFlatSetShadowOffsetMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_shadow_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetShadowOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetShadowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowSize(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetShadowSizeMethodBind):
    styleBoxFlatGetShadowSizeMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_shadow_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetShadowSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxFlatSetShadowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowSize=`(self: StyleBoxFlat; val: int64) =
  if isNil(styleBoxFlatSetShadowSizeMethodBind):
    styleBoxFlatSetShadowSizeMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_shadow_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxFlatSetShadowSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatGetBorderWidthMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBorderWidthMin(self: StyleBoxFlat): int64 =
  if isNil(styleBoxFlatGetBorderWidthMinMethodBind):
    styleBoxFlatGetBorderWidthMinMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"get_border_width_min")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxFlatGetBorderWidthMinMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var styleBoxFlatSetBorderWidthAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBorderWidthAll(self: StyleBoxFlat; width: int64) =
  if isNil(styleBoxFlatSetBorderWidthAllMethodBind):
    styleBoxFlatSetBorderWidthAllMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_border_width_all")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  var ptrCallRet: pointer
  styleBoxFlatSetBorderWidthAllMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatSetCornerRadiusAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCornerRadiusAll(self: StyleBoxFlat; radius: int64) =
  if isNil(styleBoxFlatSetCornerRadiusAllMethodBind):
    styleBoxFlatSetCornerRadiusAllMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_corner_radius_all")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(radius)
  var ptrCallRet: pointer
  styleBoxFlatSetCornerRadiusAllMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatSetCornerRadiusIndividualMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCornerRadiusIndividual(self: StyleBoxFlat; radiusTopLeft: int64;
                              radiusTopRight: int64; radiusBottomRight: int64;
                              radiusBottomLeft: int64) =
  if isNil(styleBoxFlatSetCornerRadiusIndividualMethodBind):
    styleBoxFlatSetCornerRadiusIndividualMethodBind = getMethod(
        cstring"StyleBoxFlat", cstring"set_corner_radius_individual")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(radiusTopLeft)
  argsToPassToGodot[][1] = unsafeAddr(radiusTopRight)
  argsToPassToGodot[][2] = unsafeAddr(radiusBottomRight)
  argsToPassToGodot[][3] = unsafeAddr(radiusBottomLeft)
  var ptrCallRet: pointer
  styleBoxFlatSetCornerRadiusIndividualMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatSetExpandMarginAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc setExpandMarginAll(self: StyleBoxFlat; size: float64) =
  if isNil(styleBoxFlatSetExpandMarginAllMethodBind):
    styleBoxFlatSetExpandMarginAllMethodBind = getMethod(cstring"StyleBoxFlat",
        cstring"set_expand_margin_all")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  styleBoxFlatSetExpandMarginAllMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var styleBoxFlatSetExpandMarginIndividualMethodBind {.threadvar.}: ptr GodotMethodBind
proc setExpandMarginIndividual(self: StyleBoxFlat; sizeLeft: float64;
                              sizeTop: float64; sizeRight: float64;
                              sizeBottom: float64) =
  if isNil(styleBoxFlatSetExpandMarginIndividualMethodBind):
    styleBoxFlatSetExpandMarginIndividualMethodBind = getMethod(
        cstring"StyleBoxFlat", cstring"set_expand_margin_individual")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(sizeLeft)
  argsToPassToGodot[][1] = unsafeAddr(sizeTop)
  argsToPassToGodot[][2] = unsafeAddr(sizeRight)
  argsToPassToGodot[][3] = unsafeAddr(sizeBottom)
  var ptrCallRet: pointer
  styleBoxFlatSetExpandMarginIndividualMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
