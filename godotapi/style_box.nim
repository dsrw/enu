
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc contentMarginBottom*(self: StyleBox): float64 {.gcsafe, locks: 0.}
proc `contentMarginBottom=`*(self: StyleBox; val: float64) {.gcsafe, locks: 0.}
proc contentMarginLeft*(self: StyleBox): float64 {.gcsafe, locks: 0.}
proc `contentMarginLeft=`*(self: StyleBox; val: float64) {.gcsafe, locks: 0.}
proc contentMarginRight*(self: StyleBox): float64 {.gcsafe, locks: 0.}
proc `contentMarginRight=`*(self: StyleBox; val: float64) {.gcsafe, locks: 0.}
proc contentMarginTop*(self: StyleBox): float64 {.gcsafe, locks: 0.}
proc `contentMarginTop=`*(self: StyleBox; val: float64) {.gcsafe, locks: 0.}
proc draw*(self: StyleBox; canvasItem: RID; rect: Rect2) {.gcsafe, locks: 0.}
proc getCenterSize*(self: StyleBox): Vector2 {.gcsafe, locks: 0.}
proc getCurrentItemDrawn*(self: StyleBox): CanvasItem {.gcsafe, locks: 0.}
proc getMargin*(self: StyleBox; margin: int64): float64 {.gcsafe, locks: 0.}
proc getMinimumSize*(self: StyleBox): Vector2 {.gcsafe, locks: 0.}
proc getOffset*(self: StyleBox): Vector2 {.gcsafe, locks: 0.}
proc testMask*(self: StyleBox; point: Vector2; rect: Rect2): bool {.gcsafe, locks: 0.}
var styleBoxGetDefaultMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc contentMarginBottom(self: StyleBox): float64 =
  if isNil(styleBoxGetDefaultMarginMethodBind):
    styleBoxGetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"get_default_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxSetDefaultMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `contentMarginBottom=`(self: StyleBox; val: float64) =
  if isNil(styleBoxSetDefaultMarginMethodBind):
    styleBoxSetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"set_default_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxSetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc contentMarginLeft(self: StyleBox): float64 =
  if isNil(styleBoxGetDefaultMarginMethodBind):
    styleBoxGetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"get_default_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `contentMarginLeft=`(self: StyleBox; val: float64) =
  if isNil(styleBoxSetDefaultMarginMethodBind):
    styleBoxSetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"set_default_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxSetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc contentMarginRight(self: StyleBox): float64 =
  if isNil(styleBoxGetDefaultMarginMethodBind):
    styleBoxGetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"get_default_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `contentMarginRight=`(self: StyleBox; val: float64) =
  if isNil(styleBoxSetDefaultMarginMethodBind):
    styleBoxSetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"set_default_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxSetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc contentMarginTop(self: StyleBox): float64 =
  if isNil(styleBoxGetDefaultMarginMethodBind):
    styleBoxGetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"get_default_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `contentMarginTop=`(self: StyleBox; val: float64) =
  if isNil(styleBoxSetDefaultMarginMethodBind):
    styleBoxSetDefaultMarginMethodBind = getMethod(cstring"StyleBox",
        cstring"set_default_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxSetDefaultMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc draw(self: StyleBox; canvasItem: RID; rect: Rect2) =
  if isNil(styleBoxDrawMethodBind):
    styleBoxDrawMethodBind = getMethod(cstring"StyleBox", cstring"draw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvasItem)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  var ptrCallRet: pointer
  styleBoxDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var styleBoxGetCenterSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCenterSize(self: StyleBox): Vector2 =
  if isNil(styleBoxGetCenterSizeMethodBind):
    styleBoxGetCenterSizeMethodBind = getMethod(cstring"StyleBox",
        cstring"get_center_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetCenterSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxGetCurrentItemDrawnMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentItemDrawn(self: StyleBox): CanvasItem =
  if isNil(styleBoxGetCurrentItemDrawnMethodBind):
    styleBoxGetCurrentItemDrawnMethodBind = getMethod(cstring"StyleBox",
        cstring"get_current_item_drawn")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  styleBoxGetCurrentItemDrawnMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var styleBoxGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMargin(self: StyleBox; margin: int64): float64 =
  if isNil(styleBoxGetMarginMethodBind):
    styleBoxGetMarginMethodBind = getMethod(cstring"StyleBox", cstring"get_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(margin)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var styleBoxGetMinimumSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMinimumSize(self: StyleBox): Vector2 =
  if isNil(styleBoxGetMinimumSizeMethodBind):
    styleBoxGetMinimumSizeMethodBind = getMethod(cstring"StyleBox",
        cstring"get_minimum_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetMinimumSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOffset(self: StyleBox): Vector2 =
  if isNil(styleBoxGetOffsetMethodBind):
    styleBoxGetOffsetMethodBind = getMethod(cstring"StyleBox", cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxTestMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc testMask(self: StyleBox; point: Vector2; rect: Rect2): bool =
  if isNil(styleBoxTestMaskMethodBind):
    styleBoxTestMaskMethodBind = getMethod(cstring"StyleBox", cstring"test_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxTestMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
