
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  ANCHOR_MODE_DRAG_CENTER* = 1'i64
  ANCHOR_MODE_FIXED_TOP_LEFT* = 0'i64
  CAMERA2D_PROCESS_IDLE* = 1'i64
  CAMERA2D_PROCESS_PHYSICS* = 0'i64
proc anchorMode*(self: Camera2D): int64 {.gcsafe, locks: 0.}
proc `anchorMode=`*(self: Camera2D; val: int64) {.gcsafe, locks: 0.}
proc current*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `current=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc customViewport*(self: Camera2D): Node {.gcsafe, locks: 0.}
proc `customViewport=`*(self: Camera2D; val: Node) {.gcsafe, locks: 0.}
proc dragMarginBottom*(self: Camera2D): float64 {.gcsafe, locks: 0.}
proc `dragMarginBottom=`*(self: Camera2D; val: float64) {.gcsafe, locks: 0.}
proc dragMarginHEnabled*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `dragMarginHEnabled=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc dragMarginLeft*(self: Camera2D): float64 {.gcsafe, locks: 0.}
proc `dragMarginLeft=`*(self: Camera2D; val: float64) {.gcsafe, locks: 0.}
proc dragMarginRight*(self: Camera2D): float64 {.gcsafe, locks: 0.}
proc `dragMarginRight=`*(self: Camera2D; val: float64) {.gcsafe, locks: 0.}
proc dragMarginTop*(self: Camera2D): float64 {.gcsafe, locks: 0.}
proc `dragMarginTop=`*(self: Camera2D; val: float64) {.gcsafe, locks: 0.}
proc dragMarginVEnabled*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `dragMarginVEnabled=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc editorDrawDragMargin*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `editorDrawDragMargin=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc editorDrawLimits*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `editorDrawLimits=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc editorDrawScreen*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `editorDrawScreen=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc limitBottom*(self: Camera2D): int64 {.gcsafe, locks: 0.}
proc `limitBottom=`*(self: Camera2D; val: int64) {.gcsafe, locks: 0.}
proc limitLeft*(self: Camera2D): int64 {.gcsafe, locks: 0.}
proc `limitLeft=`*(self: Camera2D; val: int64) {.gcsafe, locks: 0.}
proc limitRight*(self: Camera2D): int64 {.gcsafe, locks: 0.}
proc `limitRight=`*(self: Camera2D; val: int64) {.gcsafe, locks: 0.}
proc limitSmoothed*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `limitSmoothed=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc limitTop*(self: Camera2D): int64 {.gcsafe, locks: 0.}
proc `limitTop=`*(self: Camera2D; val: int64) {.gcsafe, locks: 0.}
proc offset*(self: Camera2D): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: Camera2D; val: Vector2) {.gcsafe, locks: 0.}
proc offsetH*(self: Camera2D): float64 {.gcsafe, locks: 0.}
proc `offsetH=`*(self: Camera2D; val: float64) {.gcsafe, locks: 0.}
proc offsetV*(self: Camera2D): float64 {.gcsafe, locks: 0.}
proc `offsetV=`*(self: Camera2D; val: float64) {.gcsafe, locks: 0.}
proc processMode*(self: Camera2D): int64 {.gcsafe, locks: 0.}
proc `processMode=`*(self: Camera2D; val: int64) {.gcsafe, locks: 0.}
proc rotating*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `rotating=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc smoothingEnabled*(self: Camera2D): bool {.gcsafe, locks: 0.}
proc `smoothingEnabled=`*(self: Camera2D; val: bool) {.gcsafe, locks: 0.}
proc smoothingSpeed*(self: Camera2D): float64 {.gcsafe, locks: 0.}
proc `smoothingSpeed=`*(self: Camera2D; val: float64) {.gcsafe, locks: 0.}
proc zoom*(self: Camera2D): Vector2 {.gcsafe, locks: 0.}
proc `zoom=`*(self: Camera2D; val: Vector2) {.gcsafe, locks: 0.}
method makeCurrent*(self: Camera2D; arg0: Object) {.gcsafe, locks: 0, base.}
method setOldSmoothing*(self: Camera2D; followSmoothing: float64) {.gcsafe, locks: 0,
    base.}
method updateScroll*(self: Camera2D) {.gcsafe, locks: 0, base.}
proc align*(self: Camera2D) {.gcsafe, locks: 0.}
proc clearCurrent*(self: Camera2D) {.gcsafe, locks: 0.}
proc forceUpdateScroll*(self: Camera2D) {.gcsafe, locks: 0.}
proc getCameraPosition*(self: Camera2D): Vector2 {.gcsafe, locks: 0.}
proc getCameraScreenCenter*(self: Camera2D): Vector2 {.gcsafe, locks: 0.}
proc makeCurrentImpl*(self: Camera2D) {.gcsafe, locks: 0.}
proc resetSmoothing*(self: Camera2D) {.gcsafe, locks: 0.}
var camera2DGetAnchorModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc anchorMode(self: Camera2D): int64 =
  if isNil(camera2DGetAnchorModeMethodBind):
    camera2DGetAnchorModeMethodBind = getMethod(cstring"Camera2D",
        cstring"get_anchor_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetAnchorModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetAnchorModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `anchorMode=`(self: Camera2D; val: int64) =
  if isNil(camera2DSetAnchorModeMethodBind):
    camera2DSetAnchorModeMethodBind = getMethod(cstring"Camera2D",
        cstring"set_anchor_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetAnchorModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var camera2DIsCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc current(self: Camera2D): bool =
  if isNil(camera2DIsCurrentMethodBind):
    camera2DIsCurrentMethodBind = getMethod(cstring"Camera2D", cstring"is_current")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DUnderscoresetCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `current=`(self: Camera2D; val: bool) =
  if isNil(camera2DUnderscoresetCurrentMethodBind):
    camera2DUnderscoresetCurrentMethodBind = getMethod(cstring"Camera2D",
        cstring"_set_current")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DUnderscoresetCurrentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DGetCustomViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc customViewport(self: Camera2D): Node =
  if isNil(camera2DGetCustomViewportMethodBind):
    camera2DGetCustomViewportMethodBind = getMethod(cstring"Camera2D",
        cstring"get_custom_viewport")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  camera2DGetCustomViewportMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var camera2DSetCustomViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customViewport=`(self: Camera2D; val: Node) =
  if isNil(camera2DSetCustomViewportMethodBind):
    camera2DSetCustomViewportMethodBind = getMethod(cstring"Camera2D",
        cstring"set_custom_viewport")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  camera2DSetCustomViewportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DGetDragMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc dragMarginBottom(self: Camera2D): float64 =
  if isNil(camera2DGetDragMarginMethodBind):
    camera2DGetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"get_drag_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var camera2DSetDragMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dragMarginBottom=`(self: Camera2D; val: float64) =
  if isNil(camera2DSetDragMarginMethodBind):
    camera2DSetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"set_drag_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var camera2DIsHDragEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc dragMarginHEnabled(self: Camera2D): bool =
  if isNil(camera2DIsHDragEnabledMethodBind):
    camera2DIsHDragEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"is_h_drag_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsHDragEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetHDragEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dragMarginHEnabled=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetHDragEnabledMethodBind):
    camera2DSetHDragEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"set_h_drag_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetHDragEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc dragMarginLeft(self: Camera2D): float64 =
  if isNil(camera2DGetDragMarginMethodBind):
    camera2DGetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"get_drag_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `dragMarginLeft=`(self: Camera2D; val: float64) =
  if isNil(camera2DSetDragMarginMethodBind):
    camera2DSetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"set_drag_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc dragMarginRight(self: Camera2D): float64 =
  if isNil(camera2DGetDragMarginMethodBind):
    camera2DGetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"get_drag_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `dragMarginRight=`(self: Camera2D; val: float64) =
  if isNil(camera2DSetDragMarginMethodBind):
    camera2DSetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"set_drag_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc dragMarginTop(self: Camera2D): float64 =
  if isNil(camera2DGetDragMarginMethodBind):
    camera2DGetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"get_drag_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `dragMarginTop=`(self: Camera2D; val: float64) =
  if isNil(camera2DSetDragMarginMethodBind):
    camera2DSetDragMarginMethodBind = getMethod(cstring"Camera2D",
        cstring"set_drag_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetDragMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var camera2DIsVDragEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc dragMarginVEnabled(self: Camera2D): bool =
  if isNil(camera2DIsVDragEnabledMethodBind):
    camera2DIsVDragEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"is_v_drag_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsVDragEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetVDragEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dragMarginVEnabled=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetVDragEnabledMethodBind):
    camera2DSetVDragEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"set_v_drag_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetVDragEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var camera2DIsMarginDrawingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc editorDrawDragMargin(self: Camera2D): bool =
  if isNil(camera2DIsMarginDrawingEnabledMethodBind):
    camera2DIsMarginDrawingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"is_margin_drawing_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsMarginDrawingEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var camera2DSetMarginDrawingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editorDrawDragMargin=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetMarginDrawingEnabledMethodBind):
    camera2DSetMarginDrawingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"set_margin_drawing_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetMarginDrawingEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DIsLimitDrawingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc editorDrawLimits(self: Camera2D): bool =
  if isNil(camera2DIsLimitDrawingEnabledMethodBind):
    camera2DIsLimitDrawingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"is_limit_drawing_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsLimitDrawingEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var camera2DSetLimitDrawingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editorDrawLimits=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetLimitDrawingEnabledMethodBind):
    camera2DSetLimitDrawingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"set_limit_drawing_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetLimitDrawingEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DIsScreenDrawingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc editorDrawScreen(self: Camera2D): bool =
  if isNil(camera2DIsScreenDrawingEnabledMethodBind):
    camera2DIsScreenDrawingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"is_screen_drawing_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsScreenDrawingEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var camera2DSetScreenDrawingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editorDrawScreen=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetScreenDrawingEnabledMethodBind):
    camera2DSetScreenDrawingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"set_screen_drawing_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetScreenDrawingEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DGetLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc limitBottom(self: Camera2D): int64 =
  if isNil(camera2DGetLimitMethodBind):
    camera2DGetLimitMethodBind = getMethod(cstring"Camera2D", cstring"get_limit")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var camera2DSetLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `limitBottom=`(self: Camera2D; val: int64) =
  if isNil(camera2DSetLimitMethodBind):
    camera2DSetLimitMethodBind = getMethod(cstring"Camera2D", cstring"set_limit")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc limitLeft(self: Camera2D): int64 =
  if isNil(camera2DGetLimitMethodBind):
    camera2DGetLimitMethodBind = getMethod(cstring"Camera2D", cstring"get_limit")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `limitLeft=`(self: Camera2D; val: int64) =
  if isNil(camera2DSetLimitMethodBind):
    camera2DSetLimitMethodBind = getMethod(cstring"Camera2D", cstring"set_limit")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc limitRight(self: Camera2D): int64 =
  if isNil(camera2DGetLimitMethodBind):
    camera2DGetLimitMethodBind = getMethod(cstring"Camera2D", cstring"get_limit")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `limitRight=`(self: Camera2D; val: int64) =
  if isNil(camera2DSetLimitMethodBind):
    camera2DSetLimitMethodBind = getMethod(cstring"Camera2D", cstring"set_limit")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var camera2DIsLimitSmoothingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc limitSmoothed(self: Camera2D): bool =
  if isNil(camera2DIsLimitSmoothingEnabledMethodBind):
    camera2DIsLimitSmoothingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"is_limit_smoothing_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsLimitSmoothingEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var camera2DSetLimitSmoothingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `limitSmoothed=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetLimitSmoothingEnabledMethodBind):
    camera2DSetLimitSmoothingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"set_limit_smoothing_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetLimitSmoothingEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc limitTop(self: Camera2D): int64 =
  if isNil(camera2DGetLimitMethodBind):
    camera2DGetLimitMethodBind = getMethod(cstring"Camera2D", cstring"get_limit")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `limitTop=`(self: Camera2D; val: int64) =
  if isNil(camera2DSetLimitMethodBind):
    camera2DSetLimitMethodBind = getMethod(cstring"Camera2D", cstring"set_limit")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetLimitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var camera2DGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: Camera2D): Vector2 =
  if isNil(camera2DGetOffsetMethodBind):
    camera2DGetOffsetMethodBind = getMethod(cstring"Camera2D", cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: Camera2D; val: Vector2) =
  if isNil(camera2DSetOffsetMethodBind):
    camera2DSetOffsetMethodBind = getMethod(cstring"Camera2D", cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var camera2DGetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offsetH(self: Camera2D): float64 =
  if isNil(camera2DGetHOffsetMethodBind):
    camera2DGetHOffsetMethodBind = getMethod(cstring"Camera2D",
        cstring"get_h_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetHOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offsetH=`(self: Camera2D; val: float64) =
  if isNil(camera2DSetHOffsetMethodBind):
    camera2DSetHOffsetMethodBind = getMethod(cstring"Camera2D",
        cstring"set_h_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetHOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var camera2DGetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offsetV(self: Camera2D): float64 =
  if isNil(camera2DGetVOffsetMethodBind):
    camera2DGetVOffsetMethodBind = getMethod(cstring"Camera2D",
        cstring"get_v_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetVOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offsetV=`(self: Camera2D; val: float64) =
  if isNil(camera2DSetVOffsetMethodBind):
    camera2DSetVOffsetMethodBind = getMethod(cstring"Camera2D",
        cstring"set_v_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetVOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var camera2DGetProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc processMode(self: Camera2D): int64 =
  if isNil(camera2DGetProcessModeMethodBind):
    camera2DGetProcessModeMethodBind = getMethod(cstring"Camera2D",
        cstring"get_process_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetProcessModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `processMode=`(self: Camera2D; val: int64) =
  if isNil(camera2DSetProcessModeMethodBind):
    camera2DSetProcessModeMethodBind = getMethod(cstring"Camera2D",
        cstring"set_process_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetProcessModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var camera2DIsRotatingMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotating(self: Camera2D): bool =
  if isNil(camera2DIsRotatingMethodBind):
    camera2DIsRotatingMethodBind = getMethod(cstring"Camera2D",
        cstring"is_rotating")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsRotatingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetRotatingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotating=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetRotatingMethodBind):
    camera2DSetRotatingMethodBind = getMethod(cstring"Camera2D",
        cstring"set_rotating")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetRotatingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var camera2DIsFollowSmoothingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc smoothingEnabled(self: Camera2D): bool =
  if isNil(camera2DIsFollowSmoothingEnabledMethodBind):
    camera2DIsFollowSmoothingEnabledMethodBind = getMethod(cstring"Camera2D",
        cstring"is_follow_smoothing_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DIsFollowSmoothingEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var camera2DSetEnableFollowSmoothingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `smoothingEnabled=`(self: Camera2D; val: bool) =
  if isNil(camera2DSetEnableFollowSmoothingMethodBind):
    camera2DSetEnableFollowSmoothingMethodBind = getMethod(cstring"Camera2D",
        cstring"set_enable_follow_smoothing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetEnableFollowSmoothingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DGetFollowSmoothingMethodBind {.threadvar.}: ptr GodotMethodBind
proc smoothingSpeed(self: Camera2D): float64 =
  if isNil(camera2DGetFollowSmoothingMethodBind):
    camera2DGetFollowSmoothingMethodBind = getMethod(cstring"Camera2D",
        cstring"get_follow_smoothing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetFollowSmoothingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetFollowSmoothingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `smoothingSpeed=`(self: Camera2D; val: float64) =
  if isNil(camera2DSetFollowSmoothingMethodBind):
    camera2DSetFollowSmoothingMethodBind = getMethod(cstring"Camera2D",
        cstring"set_follow_smoothing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetFollowSmoothingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DGetZoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc zoom(self: Camera2D): Vector2 =
  if isNil(camera2DGetZoomMethodBind):
    camera2DGetZoomMethodBind = getMethod(cstring"Camera2D", cstring"get_zoom")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetZoomMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DSetZoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc `zoom=`(self: Camera2D; val: Vector2) =
  if isNil(camera2DSetZoomMethodBind):
    camera2DSetZoomMethodBind = getMethod(cstring"Camera2D", cstring"set_zoom")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  camera2DSetZoomMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var camera2DUnderscoremakeCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
method makeCurrent(self: Camera2D; arg0: Object) =
  if isNil(camera2DUnderscoremakeCurrentMethodBind):
    camera2DUnderscoremakeCurrentMethodBind = getMethod(cstring"Camera2D",
        cstring"_make_current")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  camera2DUnderscoremakeCurrentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DUnderscoresetOldSmoothingMethodBind {.threadvar.}: ptr GodotMethodBind
method setOldSmoothing(self: Camera2D; followSmoothing: float64) =
  if isNil(camera2DUnderscoresetOldSmoothingMethodBind):
    camera2DUnderscoresetOldSmoothingMethodBind = getMethod(cstring"Camera2D",
        cstring"_set_old_smoothing")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(followSmoothing)
  var ptrCallRet: pointer
  camera2DUnderscoresetOldSmoothingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var camera2DUnderscoreupdateScrollMethodBind {.threadvar.}: ptr GodotMethodBind
method updateScroll(self: Camera2D) =
  if isNil(camera2DUnderscoreupdateScrollMethodBind):
    camera2DUnderscoreupdateScrollMethodBind = getMethod(cstring"Camera2D",
        cstring"_update_scroll")
  var ptrCallRet: pointer
  camera2DUnderscoreupdateScrollMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var camera2DAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc align(self: Camera2D) =
  if isNil(camera2DAlignMethodBind):
    camera2DAlignMethodBind = getMethod(cstring"Camera2D", cstring"align")
  var ptrCallRet: pointer
  camera2DAlignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DClearCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCurrent(self: Camera2D) =
  if isNil(camera2DClearCurrentMethodBind):
    camera2DClearCurrentMethodBind = getMethod(cstring"Camera2D",
        cstring"clear_current")
  var ptrCallRet: pointer
  camera2DClearCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DForceUpdateScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceUpdateScroll(self: Camera2D) =
  if isNil(camera2DForceUpdateScrollMethodBind):
    camera2DForceUpdateScrollMethodBind = getMethod(cstring"Camera2D",
        cstring"force_update_scroll")
  var ptrCallRet: pointer
  camera2DForceUpdateScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DGetCameraPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCameraPosition(self: Camera2D): Vector2 =
  if isNil(camera2DGetCameraPositionMethodBind):
    camera2DGetCameraPositionMethodBind = getMethod(cstring"Camera2D",
        cstring"get_camera_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetCameraPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DGetCameraScreenCenterMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCameraScreenCenter(self: Camera2D): Vector2 =
  if isNil(camera2DGetCameraScreenCenterMethodBind):
    camera2DGetCameraScreenCenterMethodBind = getMethod(cstring"Camera2D",
        cstring"get_camera_screen_center")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  camera2DGetCameraScreenCenterMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var camera2DMakeCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeCurrentImpl(self: Camera2D) =
  if isNil(camera2DMakeCurrentMethodBind):
    camera2DMakeCurrentMethodBind = getMethod(cstring"Camera2D",
        cstring"make_current")
  var ptrCallRet: pointer
  camera2DMakeCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var camera2DResetSmoothingMethodBind {.threadvar.}: ptr GodotMethodBind
proc resetSmoothing(self: Camera2D) =
  if isNil(camera2DResetSmoothingMethodBind):
    camera2DResetSmoothingMethodBind = getMethod(cstring"Camera2D",
        cstring"reset_smoothing")
  var ptrCallRet: pointer
  camera2DResetSmoothingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
