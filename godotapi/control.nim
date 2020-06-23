
import
  godot, godottypes, godotinternal, canvas_item

export
  godottypes, canvas_item

const
  ANCHOR_BEGIN* = 0'i64
  ANCHOR_END* = 1'i64
  CURSOR_ARROW* = 0'i64
  CURSOR_BDIAGSIZE* = 11'i64
  CURSOR_BUSY* = 5'i64
  CURSOR_CAN_DROP* = 7'i64
  CURSOR_CROSS* = 3'i64
  CURSOR_DRAG* = 6'i64
  CURSOR_FDIAGSIZE* = 12'i64
  CURSOR_FORBIDDEN* = 8'i64
  CURSOR_HELP* = 16'i64
  CURSOR_HSIZE* = 10'i64
  CURSOR_HSPLIT* = 15'i64
  CURSOR_IBEAM* = 1'i64
  CURSOR_MOVE* = 13'i64
  CURSOR_POINTING_HAND* = 2'i64
  CURSOR_VSIZE* = 9'i64
  CURSOR_VSPLIT* = 14'i64
  CURSOR_WAIT* = 4'i64
  FOCUS_ALL* = 2'i64
  FOCUS_CLICK* = 1'i64
  FOCUS_NONE* = 0'i64
  GROW_DIRECTION_BEGIN* = 0'i64
  GROW_DIRECTION_BOTH* = 2'i64
  GROW_DIRECTION_END* = 1'i64
  MOUSE_FILTER_IGNORE* = 2'i64
  MOUSE_FILTER_PASS* = 1'i64
  MOUSE_FILTER_STOP* = 0'i64
  NOTIFICATION_FOCUS_ENTER* = 43'i64
  NOTIFICATION_FOCUS_EXIT* = 44'i64
  NOTIFICATION_MODAL_CLOSE* = 46'i64
  NOTIFICATION_MOUSE_ENTER* = 41'i64
  NOTIFICATION_MOUSE_EXIT* = 42'i64
  NOTIFICATION_RESIZED* = 40'i64
  NOTIFICATION_SCROLL_BEGIN* = 47'i64
  NOTIFICATION_SCROLL_END* = 48'i64
  NOTIFICATION_THEME_CHANGED* = 45'i64
  PRESET_BOTTOM_LEFT* = 2'i64
  PRESET_BOTTOM_RIGHT* = 3'i64
  PRESET_BOTTOM_WIDE* = 12'i64
  PRESET_CENTER* = 8'i64
  PRESET_CENTER_BOTTOM* = 7'i64
  PRESET_CENTER_LEFT* = 4'i64
  PRESET_CENTER_RIGHT* = 6'i64
  PRESET_CENTER_TOP* = 5'i64
  PRESET_HCENTER_WIDE* = 14'i64
  PRESET_LEFT_WIDE* = 9'i64
  PRESET_MODE_KEEP_HEIGHT* = 2'i64
  PRESET_MODE_KEEP_SIZE* = 3'i64
  PRESET_MODE_KEEP_WIDTH* = 1'i64
  PRESET_MODE_MINSIZE* = 0'i64
  PRESET_RIGHT_WIDE* = 11'i64
  PRESET_TOP_LEFT* = 0'i64
  PRESET_TOP_RIGHT* = 1'i64
  PRESET_TOP_WIDE* = 10'i64
  PRESET_VCENTER_WIDE* = 13'i64
  PRESET_WIDE* = 15'i64
  SIZE_EXPAND* = 2'i64
  SIZE_EXPAND_FILL* = 3'i64
  SIZE_FILL* = 1'i64
  SIZE_SHRINK_CENTER* = 4'i64
  SIZE_SHRINK_END* = 8'i64
proc anchorBottom*(self: Control): float64 {.gcsafe, locks: 0.}
proc `anchorBottom=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc anchorLeft*(self: Control): float64 {.gcsafe, locks: 0.}
proc `anchorLeft=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc anchorRight*(self: Control): float64 {.gcsafe, locks: 0.}
proc `anchorRight=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc anchorTop*(self: Control): float64 {.gcsafe, locks: 0.}
proc `anchorTop=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc focusMode*(self: Control): int64 {.gcsafe, locks: 0.}
proc `focusMode=`*(self: Control; val: int64) {.gcsafe, locks: 0.}
proc focusNeighbourBottom*(self: Control): NodePath {.gcsafe, locks: 0.}
proc `focusNeighbourBottom=`*(self: Control; val: NodePath) {.gcsafe, locks: 0.}
proc focusNeighbourLeft*(self: Control): NodePath {.gcsafe, locks: 0.}
proc `focusNeighbourLeft=`*(self: Control; val: NodePath) {.gcsafe, locks: 0.}
proc focusNeighbourRight*(self: Control): NodePath {.gcsafe, locks: 0.}
proc `focusNeighbourRight=`*(self: Control; val: NodePath) {.gcsafe, locks: 0.}
proc focusNeighbourTop*(self: Control): NodePath {.gcsafe, locks: 0.}
proc `focusNeighbourTop=`*(self: Control; val: NodePath) {.gcsafe, locks: 0.}
proc focusNext*(self: Control): NodePath {.gcsafe, locks: 0.}
proc `focusNext=`*(self: Control; val: NodePath) {.gcsafe, locks: 0.}
proc focusPrevious*(self: Control): NodePath {.gcsafe, locks: 0.}
proc `focusPrevious=`*(self: Control; val: NodePath) {.gcsafe, locks: 0.}
proc growHorizontal*(self: Control): int64 {.gcsafe, locks: 0.}
proc `growHorizontal=`*(self: Control; val: int64) {.gcsafe, locks: 0.}
proc growVertical*(self: Control): int64 {.gcsafe, locks: 0.}
proc `growVertical=`*(self: Control; val: int64) {.gcsafe, locks: 0.}
proc hintTooltip*(self: Control): string {.gcsafe, locks: 0.}
proc `hintTooltip=`*(self: Control; val: string) {.gcsafe, locks: 0.}
proc marginBottom*(self: Control): float64 {.gcsafe, locks: 0.}
proc `marginBottom=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc marginLeft*(self: Control): float64 {.gcsafe, locks: 0.}
proc `marginLeft=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc marginRight*(self: Control): float64 {.gcsafe, locks: 0.}
proc `marginRight=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc marginTop*(self: Control): float64 {.gcsafe, locks: 0.}
proc `marginTop=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc mouseDefaultCursorShape*(self: Control): int64 {.gcsafe, locks: 0.}
proc `mouseDefaultCursorShape=`*(self: Control; val: int64) {.gcsafe, locks: 0.}
proc mouseFilter*(self: Control): int64 {.gcsafe, locks: 0.}
proc `mouseFilter=`*(self: Control; val: int64) {.gcsafe, locks: 0.}
proc rectClipContent*(self: Control): bool {.gcsafe, locks: 0.}
proc `rectClipContent=`*(self: Control; val: bool) {.gcsafe, locks: 0.}
proc rectGlobalPosition*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc `rectGlobalPosition=`*(self: Control; val: Vector2) {.gcsafe, locks: 0.}
proc rectMinSize*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc `rectMinSize=`*(self: Control; val: Vector2) {.gcsafe, locks: 0.}
proc rectPivotOffset*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc `rectPivotOffset=`*(self: Control; val: Vector2) {.gcsafe, locks: 0.}
proc rectPosition*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc `rectPosition=`*(self: Control; val: Vector2) {.gcsafe, locks: 0.}
proc rectRotation*(self: Control): float64 {.gcsafe, locks: 0.}
proc `rectRotation=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc rectScale*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc `rectScale=`*(self: Control; val: Vector2) {.gcsafe, locks: 0.}
proc rectSize*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc `rectSize=`*(self: Control; val: Vector2) {.gcsafe, locks: 0.}
proc sizeFlagsHorizontal*(self: Control): int64 {.gcsafe, locks: 0.}
proc `sizeFlagsHorizontal=`*(self: Control; val: int64) {.gcsafe, locks: 0.}
proc sizeFlagsStretchRatio*(self: Control): float64 {.gcsafe, locks: 0.}
proc `sizeFlagsStretchRatio=`*(self: Control; val: float64) {.gcsafe, locks: 0.}
proc sizeFlagsVertical*(self: Control): int64 {.gcsafe, locks: 0.}
proc `sizeFlagsVertical=`*(self: Control; val: int64) {.gcsafe, locks: 0.}
proc theme*(self: Control): Theme {.gcsafe, locks: 0.}
proc `theme=`*(self: Control; val: Theme) {.gcsafe, locks: 0.}
method clipsInput*(self: Control): bool {.gcsafe, locks: 0, base.}
method getMinimumSize*(self: Control): Vector2 {.gcsafe, locks: 0, base.}
method guiInput*(self: Control; event: InputEvent) {.gcsafe, locks: 0, base.}
method makeCustomTooltip*(self: Control; forText: string): Object {.gcsafe, locks: 0,
    base.}
method overrideChanged*(self: Control) {.gcsafe, locks: 0, base.}
method sizeChanged*(self: Control) {.gcsafe, locks: 0, base.}
method themeChanged*(self: Control) {.gcsafe, locks: 0, base.}
method updateMinimumSize*(self: Control) {.gcsafe, locks: 0, base.}
proc acceptEvent*(self: Control) {.gcsafe, locks: 0.}
proc addColorOverride*(self: Control; name: string; color: Color) {.gcsafe, locks: 0.}
proc addConstantOverride*(self: Control; name: string; constant: int64) {.gcsafe,
    locks: 0.}
proc addFontOverride*(self: Control; name: string; font: Font) {.gcsafe, locks: 0.}
proc addIconOverride*(self: Control; name: string; texture: Texture) {.gcsafe, locks: 0.}
proc addShaderOverride*(self: Control; name: string; shader: Shader) {.gcsafe, locks: 0.}
proc addStyleboxOverride*(self: Control; name: string; stylebox: StyleBox) {.gcsafe,
    locks: 0.}
method canDropData*(self: Control; position: Vector2; data: Variant): bool {.gcsafe,
    locks: 0, base.}
method dropData*(self: Control; position: Vector2; data: Variant) {.gcsafe, locks: 0, base.}
proc forceDrag*(self: Control; data: Variant; preview: Control) {.gcsafe, locks: 0.}
proc getBegin*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc getColor*(self: Control; name: string; typee: string = ""): Color {.gcsafe, locks: 0.}
proc getCombinedMinimumSize*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc getConstant*(self: Control; name: string; typee: string = ""): int64 {.gcsafe,
    locks: 0.}
proc getCursorShape*(self: Control; position: Vector2 = vec2(0.0, 0.0)): int64 {.gcsafe,
    locks: 0.}
method getDragData*(self: Control; position: Vector2): Variant {.gcsafe, locks: 0, base.}
proc getEnd*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc getFocusOwner*(self: Control): Control {.gcsafe, locks: 0.}
proc getFont*(self: Control; name: string; typee: string = ""): Font {.gcsafe, locks: 0.}
proc getGlobalRect*(self: Control): Rect2 {.gcsafe, locks: 0.}
proc getIcon*(self: Control; name: string; typee: string = ""): Texture {.gcsafe, locks: 0.}
proc getMinimumSizeImpl*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc getParentAreaSize*(self: Control): Vector2 {.gcsafe, locks: 0.}
proc getParentControl*(self: Control): Control {.gcsafe, locks: 0.}
proc getRect*(self: Control): Rect2 {.gcsafe, locks: 0.}
proc getRotation*(self: Control): float64 {.gcsafe, locks: 0.}
proc getStylebox*(self: Control; name: string; typee: string = ""): StyleBox {.gcsafe,
    locks: 0.}
proc getTooltipImpl*(self: Control; atPosition: Vector2 = vec2(0.0, 0.0)): string {.
    gcsafe, locks: 0.}
proc grabClickFocus*(self: Control) {.gcsafe, locks: 0.}
proc grabFocus*(self: Control) {.gcsafe, locks: 0.}
proc hasColor*(self: Control; name: string; typee: string = ""): bool {.gcsafe, locks: 0.}
proc hasColorOverride*(self: Control; name: string): bool {.gcsafe, locks: 0.}
proc hasConstant*(self: Control; name: string; typee: string = ""): bool {.gcsafe, locks: 0.}
proc hasConstantOverride*(self: Control; name: string): bool {.gcsafe, locks: 0.}
proc hasFocus*(self: Control): bool {.gcsafe, locks: 0.}
proc hasFont*(self: Control; name: string; typee: string = ""): bool {.gcsafe, locks: 0.}
proc hasFontOverride*(self: Control; name: string): bool {.gcsafe, locks: 0.}
proc hasIcon*(self: Control; name: string; typee: string = ""): bool {.gcsafe, locks: 0.}
proc hasIconOverride*(self: Control; name: string): bool {.gcsafe, locks: 0.}
method hasPoint*(self: Control; point: Vector2): bool {.gcsafe, locks: 0, base.}
proc hasShaderOverride*(self: Control; name: string): bool {.gcsafe, locks: 0.}
proc hasStylebox*(self: Control; name: string; typee: string = ""): bool {.gcsafe, locks: 0.}
proc hasStyleboxOverride*(self: Control; name: string): bool {.gcsafe, locks: 0.}
proc minimumSizeChanged*(self: Control) {.gcsafe, locks: 0.}
proc releaseFocus*(self: Control) {.gcsafe, locks: 0.}
proc setAnchorImpl*(self: Control; margin: int64; anchor: float64;
                   keepMargin: bool = false; pushOppositeAnchor: bool = true) {.gcsafe,
    locks: 0.}
proc setAnchorAndMargin*(self: Control; margin: int64; anchor: float64;
                        offset: float64; pushOppositeAnchor: bool = false) {.gcsafe,
    locks: 0.}
proc setAnchorsAndMarginsPreset*(self: Control; preset: int64;
                                resizeMode: int64 = 0'i64; margin: int64 = 0'i64) {.
    gcsafe, locks: 0.}
proc setAnchorsPreset*(self: Control; preset: int64; keepMargins: bool = false) {.gcsafe,
    locks: 0.}
proc setBegin*(self: Control; position: Vector2) {.gcsafe, locks: 0.}
proc setDragForwarding*(self: Control; target: Control) {.gcsafe, locks: 0.}
proc setDragPreview*(self: Control; control: Control) {.gcsafe, locks: 0.}
proc setEnd*(self: Control; position: Vector2) {.gcsafe, locks: 0.}
proc setGlobalPositionImpl*(self: Control; position: Vector2;
                           keepMargins: bool = false) {.gcsafe, locks: 0.}
proc setMarginsPreset*(self: Control; preset: int64; resizeMode: int64 = 0'i64;
                      margin: int64 = 0'i64) {.gcsafe, locks: 0.}
proc setPositionImpl*(self: Control; position: Vector2; keepMargins: bool = false) {.
    gcsafe, locks: 0.}
proc setRotation*(self: Control; radians: float64) {.gcsafe, locks: 0.}
proc setSizeImpl*(self: Control; size: Vector2; keepMargins: bool = false) {.gcsafe,
    locks: 0.}
proc showModal*(self: Control; exclusive: bool = false) {.gcsafe, locks: 0.}
proc warpMouse*(self: Control; toPosition: Vector2) {.gcsafe, locks: 0.}
var controlGetAnchorMethodBind {.threadvar.}: ptr GodotMethodBind
proc anchorBottom(self: Control): float64 =
  if isNil(controlGetAnchorMethodBind):
    controlGetAnchorMethodBind = getMethod(cstring"Control", cstring"get_anchor")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetAnchorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var controlUnderscoresetAnchorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `anchorBottom=`(self: Control; val: float64) =
  if isNil(controlUnderscoresetAnchorMethodBind):
    controlUnderscoresetAnchorMethodBind = getMethod(cstring"Control",
        cstring"_set_anchor")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlUnderscoresetAnchorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc anchorLeft(self: Control): float64 =
  if isNil(controlGetAnchorMethodBind):
    controlGetAnchorMethodBind = getMethod(cstring"Control", cstring"get_anchor")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetAnchorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `anchorLeft=`(self: Control; val: float64) =
  if isNil(controlUnderscoresetAnchorMethodBind):
    controlUnderscoresetAnchorMethodBind = getMethod(cstring"Control",
        cstring"_set_anchor")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlUnderscoresetAnchorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc anchorRight(self: Control): float64 =
  if isNil(controlGetAnchorMethodBind):
    controlGetAnchorMethodBind = getMethod(cstring"Control", cstring"get_anchor")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetAnchorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `anchorRight=`(self: Control; val: float64) =
  if isNil(controlUnderscoresetAnchorMethodBind):
    controlUnderscoresetAnchorMethodBind = getMethod(cstring"Control",
        cstring"_set_anchor")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlUnderscoresetAnchorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc anchorTop(self: Control): float64 =
  if isNil(controlGetAnchorMethodBind):
    controlGetAnchorMethodBind = getMethod(cstring"Control", cstring"get_anchor")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetAnchorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `anchorTop=`(self: Control; val: float64) =
  if isNil(controlUnderscoresetAnchorMethodBind):
    controlUnderscoresetAnchorMethodBind = getMethod(cstring"Control",
        cstring"_set_anchor")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlUnderscoresetAnchorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlGetFocusModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc focusMode(self: Control): int64 =
  if isNil(controlGetFocusModeMethodBind):
    controlGetFocusModeMethodBind = getMethod(cstring"Control",
        cstring"get_focus_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetFocusModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetFocusModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `focusMode=`(self: Control; val: int64) =
  if isNil(controlSetFocusModeMethodBind):
    controlSetFocusModeMethodBind = getMethod(cstring"Control",
        cstring"set_focus_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetFocusModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var controlGetFocusNeighbourMethodBind {.threadvar.}: ptr GodotMethodBind
proc focusNeighbourBottom(self: Control): NodePath =
  if isNil(controlGetFocusNeighbourMethodBind):
    controlGetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"get_focus_neighbour")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  controlGetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var controlSetFocusNeighbourMethodBind {.threadvar.}: ptr GodotMethodBind
proc `focusNeighbourBottom=`(self: Control; val: NodePath) =
  if isNil(controlSetFocusNeighbourMethodBind):
    controlSetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"set_focus_neighbour")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = val.godotNodePath
  var ptrCallRet: pointer
  controlSetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc focusNeighbourLeft(self: Control): NodePath =
  if isNil(controlGetFocusNeighbourMethodBind):
    controlGetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"get_focus_neighbour")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  controlGetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

proc `focusNeighbourLeft=`(self: Control; val: NodePath) =
  if isNil(controlSetFocusNeighbourMethodBind):
    controlSetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"set_focus_neighbour")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = val.godotNodePath
  var ptrCallRet: pointer
  controlSetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc focusNeighbourRight(self: Control): NodePath =
  if isNil(controlGetFocusNeighbourMethodBind):
    controlGetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"get_focus_neighbour")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  controlGetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

proc `focusNeighbourRight=`(self: Control; val: NodePath) =
  if isNil(controlSetFocusNeighbourMethodBind):
    controlSetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"set_focus_neighbour")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = val.godotNodePath
  var ptrCallRet: pointer
  controlSetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc focusNeighbourTop(self: Control): NodePath =
  if isNil(controlGetFocusNeighbourMethodBind):
    controlGetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"get_focus_neighbour")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  controlGetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

proc `focusNeighbourTop=`(self: Control; val: NodePath) =
  if isNil(controlSetFocusNeighbourMethodBind):
    controlSetFocusNeighbourMethodBind = getMethod(cstring"Control",
        cstring"set_focus_neighbour")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = val.godotNodePath
  var ptrCallRet: pointer
  controlSetFocusNeighbourMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetFocusNextMethodBind {.threadvar.}: ptr GodotMethodBind
proc focusNext(self: Control): NodePath =
  if isNil(controlGetFocusNextMethodBind):
    controlGetFocusNextMethodBind = getMethod(cstring"Control",
        cstring"get_focus_next")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  controlGetFocusNextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var controlSetFocusNextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `focusNext=`(self: Control; val: NodePath) =
  if isNil(controlSetFocusNextMethodBind):
    controlSetFocusNextMethodBind = getMethod(cstring"Control",
        cstring"set_focus_next")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  controlSetFocusNextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var controlGetFocusPreviousMethodBind {.threadvar.}: ptr GodotMethodBind
proc focusPrevious(self: Control): NodePath =
  if isNil(controlGetFocusPreviousMethodBind):
    controlGetFocusPreviousMethodBind = getMethod(cstring"Control",
        cstring"get_focus_previous")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  controlGetFocusPreviousMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var controlSetFocusPreviousMethodBind {.threadvar.}: ptr GodotMethodBind
proc `focusPrevious=`(self: Control; val: NodePath) =
  if isNil(controlSetFocusPreviousMethodBind):
    controlSetFocusPreviousMethodBind = getMethod(cstring"Control",
        cstring"set_focus_previous")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  controlSetFocusPreviousMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetHGrowDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc growHorizontal(self: Control): int64 =
  if isNil(controlGetHGrowDirectionMethodBind):
    controlGetHGrowDirectionMethodBind = getMethod(cstring"Control",
        cstring"get_h_grow_direction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetHGrowDirectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetHGrowDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `growHorizontal=`(self: Control; val: int64) =
  if isNil(controlSetHGrowDirectionMethodBind):
    controlSetHGrowDirectionMethodBind = getMethod(cstring"Control",
        cstring"set_h_grow_direction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetHGrowDirectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetVGrowDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc growVertical(self: Control): int64 =
  if isNil(controlGetVGrowDirectionMethodBind):
    controlGetVGrowDirectionMethodBind = getMethod(cstring"Control",
        cstring"get_v_grow_direction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetVGrowDirectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetVGrowDirectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `growVertical=`(self: Control; val: int64) =
  if isNil(controlSetVGrowDirectionMethodBind):
    controlSetVGrowDirectionMethodBind = getMethod(cstring"Control",
        cstring"set_v_grow_direction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetVGrowDirectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlUnderscoregetTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc hintTooltip(self: Control): string =
  if isNil(controlUnderscoregetTooltipMethodBind):
    controlUnderscoregetTooltipMethodBind = getMethod(cstring"Control",
        cstring"_get_tooltip")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  controlUnderscoregetTooltipMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var controlSetTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hintTooltip=`(self: Control; val: string) =
  if isNil(controlSetTooltipMethodBind):
    controlSetTooltipMethodBind = getMethod(cstring"Control", cstring"set_tooltip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  controlSetTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var controlGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc marginBottom(self: Control): float64 =
  if isNil(controlGetMarginMethodBind):
    controlGetMarginMethodBind = getMethod(cstring"Control", cstring"get_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var controlSetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `marginBottom=`(self: Control; val: float64) =
  if isNil(controlSetMarginMethodBind):
    controlSetMarginMethodBind = getMethod(cstring"Control", cstring"set_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc marginLeft(self: Control): float64 =
  if isNil(controlGetMarginMethodBind):
    controlGetMarginMethodBind = getMethod(cstring"Control", cstring"get_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `marginLeft=`(self: Control; val: float64) =
  if isNil(controlSetMarginMethodBind):
    controlSetMarginMethodBind = getMethod(cstring"Control", cstring"set_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc marginRight(self: Control): float64 =
  if isNil(controlGetMarginMethodBind):
    controlGetMarginMethodBind = getMethod(cstring"Control", cstring"get_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `marginRight=`(self: Control; val: float64) =
  if isNil(controlSetMarginMethodBind):
    controlSetMarginMethodBind = getMethod(cstring"Control", cstring"set_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc marginTop(self: Control): float64 =
  if isNil(controlGetMarginMethodBind):
    controlGetMarginMethodBind = getMethod(cstring"Control", cstring"get_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

proc `marginTop=`(self: Control; val: float64) =
  if isNil(controlSetMarginMethodBind):
    controlSetMarginMethodBind = getMethod(cstring"Control", cstring"set_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var controlGetDefaultCursorShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc mouseDefaultCursorShape(self: Control): int64 =
  if isNil(controlGetDefaultCursorShapeMethodBind):
    controlGetDefaultCursorShapeMethodBind = getMethod(cstring"Control",
        cstring"get_default_cursor_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetDefaultCursorShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetDefaultCursorShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mouseDefaultCursorShape=`(self: Control; val: int64) =
  if isNil(controlSetDefaultCursorShapeMethodBind):
    controlSetDefaultCursorShapeMethodBind = getMethod(cstring"Control",
        cstring"set_default_cursor_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetDefaultCursorShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlGetMouseFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc mouseFilter(self: Control): int64 =
  if isNil(controlGetMouseFilterMethodBind):
    controlGetMouseFilterMethodBind = getMethod(cstring"Control",
        cstring"get_mouse_filter")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetMouseFilterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetMouseFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mouseFilter=`(self: Control; val: int64) =
  if isNil(controlSetMouseFilterMethodBind):
    controlSetMouseFilterMethodBind = getMethod(cstring"Control",
        cstring"set_mouse_filter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetMouseFilterMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlIsClippingContentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectClipContent(self: Control): bool =
  if isNil(controlIsClippingContentsMethodBind):
    controlIsClippingContentsMethodBind = getMethod(cstring"Control",
        cstring"is_clipping_contents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlIsClippingContentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetClipContentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectClipContent=`(self: Control; val: bool) =
  if isNil(controlSetClipContentsMethodBind):
    controlSetClipContentsMethodBind = getMethod(cstring"Control",
        cstring"set_clip_contents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetClipContentsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetGlobalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectGlobalPosition(self: Control): Vector2 =
  if isNil(controlGetGlobalPositionMethodBind):
    controlGetGlobalPositionMethodBind = getMethod(cstring"Control",
        cstring"get_global_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetGlobalPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlUnderscoresetGlobalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectGlobalPosition=`(self: Control; val: Vector2) =
  if isNil(controlUnderscoresetGlobalPositionMethodBind):
    controlUnderscoresetGlobalPositionMethodBind = getMethod(cstring"Control",
        cstring"_set_global_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlUnderscoresetGlobalPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlGetCustomMinimumSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectMinSize(self: Control): Vector2 =
  if isNil(controlGetCustomMinimumSizeMethodBind):
    controlGetCustomMinimumSizeMethodBind = getMethod(cstring"Control",
        cstring"get_custom_minimum_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetCustomMinimumSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetCustomMinimumSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectMinSize=`(self: Control; val: Vector2) =
  if isNil(controlSetCustomMinimumSizeMethodBind):
    controlSetCustomMinimumSizeMethodBind = getMethod(cstring"Control",
        cstring"set_custom_minimum_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetCustomMinimumSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlGetPivotOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectPivotOffset(self: Control): Vector2 =
  if isNil(controlGetPivotOffsetMethodBind):
    controlGetPivotOffsetMethodBind = getMethod(cstring"Control",
        cstring"get_pivot_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetPivotOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetPivotOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectPivotOffset=`(self: Control; val: Vector2) =
  if isNil(controlSetPivotOffsetMethodBind):
    controlSetPivotOffsetMethodBind = getMethod(cstring"Control",
        cstring"set_pivot_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetPivotOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectPosition(self: Control): Vector2 =
  if isNil(controlGetPositionMethodBind):
    controlGetPositionMethodBind = getMethod(cstring"Control",
        cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlUnderscoresetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectPosition=`(self: Control; val: Vector2) =
  if isNil(controlUnderscoresetPositionMethodBind):
    controlUnderscoresetPositionMethodBind = getMethod(cstring"Control",
        cstring"_set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlUnderscoresetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlGetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectRotation(self: Control): float64 =
  if isNil(controlGetRotationDegreesMethodBind):
    controlGetRotationDegreesMethodBind = getMethod(cstring"Control",
        cstring"get_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetRotationDegreesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectRotation=`(self: Control; val: float64) =
  if isNil(controlSetRotationDegreesMethodBind):
    controlSetRotationDegreesMethodBind = getMethod(cstring"Control",
        cstring"set_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetRotationDegreesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlGetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectScale(self: Control): Vector2 =
  if isNil(controlGetScaleMethodBind):
    controlGetScaleMethodBind = getMethod(cstring"Control", cstring"get_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectScale=`(self: Control; val: Vector2) =
  if isNil(controlSetScaleMethodBind):
    controlSetScaleMethodBind = getMethod(cstring"Control", cstring"set_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var controlGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc rectSize(self: Control): Vector2 =
  if isNil(controlGetSizeMethodBind):
    controlGetSizeMethodBind = getMethod(cstring"Control", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlUnderscoresetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rectSize=`(self: Control; val: Vector2) =
  if isNil(controlUnderscoresetSizeMethodBind):
    controlUnderscoresetSizeMethodBind = getMethod(cstring"Control",
        cstring"_set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlUnderscoresetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetHSizeFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc sizeFlagsHorizontal(self: Control): int64 =
  if isNil(controlGetHSizeFlagsMethodBind):
    controlGetHSizeFlagsMethodBind = getMethod(cstring"Control",
        cstring"get_h_size_flags")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetHSizeFlagsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetHSizeFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sizeFlagsHorizontal=`(self: Control; val: int64) =
  if isNil(controlSetHSizeFlagsMethodBind):
    controlSetHSizeFlagsMethodBind = getMethod(cstring"Control",
        cstring"set_h_size_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetHSizeFlagsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetStretchRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc sizeFlagsStretchRatio(self: Control): float64 =
  if isNil(controlGetStretchRatioMethodBind):
    controlGetStretchRatioMethodBind = getMethod(cstring"Control",
        cstring"get_stretch_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetStretchRatioMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetStretchRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sizeFlagsStretchRatio=`(self: Control; val: float64) =
  if isNil(controlSetStretchRatioMethodBind):
    controlSetStretchRatioMethodBind = getMethod(cstring"Control",
        cstring"set_stretch_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetStretchRatioMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetVSizeFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc sizeFlagsVertical(self: Control): int64 =
  if isNil(controlGetVSizeFlagsMethodBind):
    controlGetVSizeFlagsMethodBind = getMethod(cstring"Control",
        cstring"get_v_size_flags")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetVSizeFlagsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetVSizeFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sizeFlagsVertical=`(self: Control; val: int64) =
  if isNil(controlSetVSizeFlagsMethodBind):
    controlSetVSizeFlagsMethodBind = getMethod(cstring"Control",
        cstring"set_v_size_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  controlSetVSizeFlagsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetThemeMethodBind {.threadvar.}: ptr GodotMethodBind
proc theme(self: Control): Theme =
  if isNil(controlGetThemeMethodBind):
    controlGetThemeMethodBind = getMethod(cstring"Control", cstring"get_theme")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  controlGetThemeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var controlSetThemeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `theme=`(self: Control; val: Theme) =
  if isNil(controlSetThemeMethodBind):
    controlSetThemeMethodBind = getMethod(cstring"Control", cstring"set_theme")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  controlSetThemeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var controlUnderscoreclipsInputMethodBind {.threadvar.}: ptr GodotMethodBind
method clipsInput(self: Control): bool =
  if isNil(controlUnderscoreclipsInputMethodBind):
    controlUnderscoreclipsInputMethodBind = getMethod(cstring"Control",
        cstring"_clips_input")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlUnderscoreclipsInputMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlUnderscoregetMinimumSizeMethodBind {.threadvar.}: ptr GodotMethodBind
method getMinimumSize(self: Control): Vector2 =
  if isNil(controlUnderscoregetMinimumSizeMethodBind):
    controlUnderscoregetMinimumSizeMethodBind = getMethod(cstring"Control",
        cstring"_get_minimum_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlUnderscoregetMinimumSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var controlUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: Control; event: InputEvent) =
  if isNil(controlUnderscoreguiInputMethodBind):
    controlUnderscoreguiInputMethodBind = getMethod(cstring"Control",
        cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  controlUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlUnderscoremakeCustomTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
method makeCustomTooltip(self: Control; forText: string): Object =
  if isNil(controlUnderscoremakeCustomTooltipMethodBind):
    controlUnderscoremakeCustomTooltipMethodBind = getMethod(cstring"Control",
        cstring"_make_custom_tooltip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(forText)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  controlUnderscoremakeCustomTooltipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var controlUnderscoreoverrideChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method overrideChanged(self: Control) =
  if isNil(controlUnderscoreoverrideChangedMethodBind):
    controlUnderscoreoverrideChangedMethodBind = getMethod(cstring"Control",
        cstring"_override_changed")
  var ptrCallRet: pointer
  controlUnderscoreoverrideChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var controlUnderscoresizeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method sizeChanged(self: Control) =
  if isNil(controlUnderscoresizeChangedMethodBind):
    controlUnderscoresizeChangedMethodBind = getMethod(cstring"Control",
        cstring"_size_changed")
  var ptrCallRet: pointer
  controlUnderscoresizeChangedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlUnderscorethemeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method themeChanged(self: Control) =
  if isNil(controlUnderscorethemeChangedMethodBind):
    controlUnderscorethemeChangedMethodBind = getMethod(cstring"Control",
        cstring"_theme_changed")
  var ptrCallRet: pointer
  controlUnderscorethemeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var controlUnderscoreupdateMinimumSizeMethodBind {.threadvar.}: ptr GodotMethodBind
method updateMinimumSize(self: Control) =
  if isNil(controlUnderscoreupdateMinimumSizeMethodBind):
    controlUnderscoreupdateMinimumSizeMethodBind = getMethod(cstring"Control",
        cstring"_update_minimum_size")
  var ptrCallRet: pointer
  controlUnderscoreupdateMinimumSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var controlAcceptEventMethodBind {.threadvar.}: ptr GodotMethodBind
proc acceptEvent(self: Control) =
  if isNil(controlAcceptEventMethodBind):
    controlAcceptEventMethodBind = getMethod(cstring"Control",
        cstring"accept_event")
  var ptrCallRet: pointer
  controlAcceptEventMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlAddColorOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc addColorOverride(self: Control; name: string; color: Color) =
  if isNil(controlAddColorOverrideMethodBind):
    controlAddColorOverrideMethodBind = getMethod(cstring"Control",
        cstring"add_color_override")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  controlAddColorOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlAddConstantOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc addConstantOverride(self: Control; name: string; constant: int64) =
  if isNil(controlAddConstantOverrideMethodBind):
    controlAddConstantOverrideMethodBind = getMethod(cstring"Control",
        cstring"add_constant_override")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(constant)
  var ptrCallRet: pointer
  controlAddConstantOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var controlAddFontOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFontOverride(self: Control; name: string; font: Font) =
  if isNil(controlAddFontOverrideMethodBind):
    controlAddFontOverrideMethodBind = getMethod(cstring"Control",
        cstring"add_font_override")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not font.isNil:
    font.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  controlAddFontOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlAddIconOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconOverride(self: Control; name: string; texture: Texture) =
  if isNil(controlAddIconOverrideMethodBind):
    controlAddIconOverrideMethodBind = getMethod(cstring"Control",
        cstring"add_icon_override")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  controlAddIconOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlAddShaderOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc addShaderOverride(self: Control; name: string; shader: Shader) =
  if isNil(controlAddShaderOverrideMethodBind):
    controlAddShaderOverrideMethodBind = getMethod(cstring"Control",
        cstring"add_shader_override")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not shader.isNil:
    shader.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  controlAddShaderOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlAddStyleboxOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc addStyleboxOverride(self: Control; name: string; stylebox: StyleBox) =
  if isNil(controlAddStyleboxOverrideMethodBind):
    controlAddStyleboxOverrideMethodBind = getMethod(cstring"Control",
        cstring"add_stylebox_override")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not stylebox.isNil:
    stylebox.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  controlAddStyleboxOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var controlCanDropDataMethodBind {.threadvar.}: ptr GodotMethodBind
method canDropData(self: Control; position: Vector2; data: Variant): bool =
  if isNil(controlCanDropDataMethodBind):
    controlCanDropDataMethodBind = getMethod(cstring"Control",
        cstring"can_drop_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = data.godotVariant
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlCanDropDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var controlDropDataMethodBind {.threadvar.}: ptr GodotMethodBind
method dropData(self: Control; position: Vector2; data: Variant) =
  if isNil(controlDropDataMethodBind):
    controlDropDataMethodBind = getMethod(cstring"Control", cstring"drop_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = data.godotVariant
  var ptrCallRet: pointer
  controlDropDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var controlForceDragMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceDrag(self: Control; data: Variant; preview: Control) =
  if isNil(controlForceDragMethodBind):
    controlForceDragMethodBind = getMethod(cstring"Control", cstring"force_drag")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = data.godotVariant
  let argToPassToGodot1 = if not preview.isNil:
    preview.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  controlForceDragMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var controlGetBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBegin(self: Control): Vector2 =
  if isNil(controlGetBeginMethodBind):
    controlGetBeginMethodBind = getMethod(cstring"Control", cstring"get_begin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetBeginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColor(self: Control; name: string; typee: string = ""): Color =
  if isNil(controlGetColorMethodBind):
    controlGetColorMethodBind = getMethod(cstring"Control", cstring"get_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var controlGetCombinedMinimumSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCombinedMinimumSize(self: Control): Vector2 =
  if isNil(controlGetCombinedMinimumSizeMethodBind):
    controlGetCombinedMinimumSizeMethodBind = getMethod(cstring"Control",
        cstring"get_combined_minimum_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetCombinedMinimumSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var controlGetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConstant(self: Control; name: string; typee: string = ""): int64 =
  if isNil(controlGetConstantMethodBind):
    controlGetConstantMethodBind = getMethod(cstring"Control",
        cstring"get_constant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetConstantMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var controlGetCursorShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCursorShape(self: Control; position: Vector2 = vec2(0.0, 0.0)): int64 =
  if isNil(controlGetCursorShapeMethodBind):
    controlGetCursorShapeMethodBind = getMethod(cstring"Control",
        cstring"get_cursor_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetCursorShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlGetDragDataMethodBind {.threadvar.}: ptr GodotMethodBind
method getDragData(self: Control; position: Vector2): Variant =
  if isNil(controlGetDragDataMethodBind):
    controlGetDragDataMethodBind = getMethod(cstring"Control",
        cstring"get_drag_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  controlGetDragDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  result = newVariant(ptrCallVal)

var controlGetEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEnd(self: Control): Vector2 =
  if isNil(controlGetEndMethodBind):
    controlGetEndMethodBind = getMethod(cstring"Control", cstring"get_end")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetEndMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGetFocusOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFocusOwner(self: Control): Control =
  if isNil(controlGetFocusOwnerMethodBind):
    controlGetFocusOwnerMethodBind = getMethod(cstring"Control",
        cstring"get_focus_owner")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  controlGetFocusOwnerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var controlGetFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFont(self: Control; name: string; typee: string = ""): Font =
  if isNil(controlGetFontMethodBind):
    controlGetFontMethodBind = getMethod(cstring"Control", cstring"get_font")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  controlGetFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var controlGetGlobalRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGlobalRect(self: Control): Rect2 =
  if isNil(controlGetGlobalRectMethodBind):
    controlGetGlobalRectMethodBind = getMethod(cstring"Control",
        cstring"get_global_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetGlobalRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGetIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIcon(self: Control; name: string; typee: string = ""): Texture =
  if isNil(controlGetIconMethodBind):
    controlGetIconMethodBind = getMethod(cstring"Control", cstring"get_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  controlGetIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var controlGetMinimumSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMinimumSizeImpl(self: Control): Vector2 =
  if isNil(controlGetMinimumSizeMethodBind):
    controlGetMinimumSizeMethodBind = getMethod(cstring"Control",
        cstring"get_minimum_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetMinimumSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGetParentAreaSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParentAreaSize(self: Control): Vector2 =
  if isNil(controlGetParentAreaSizeMethodBind):
    controlGetParentAreaSizeMethodBind = getMethod(cstring"Control",
        cstring"get_parent_area_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetParentAreaSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGetParentControlMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParentControl(self: Control): Control =
  if isNil(controlGetParentControlMethodBind):
    controlGetParentControlMethodBind = getMethod(cstring"Control",
        cstring"get_parent_control")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  controlGetParentControlMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var controlGetRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRect(self: Control): Rect2 =
  if isNil(controlGetRectMethodBind):
    controlGetRectMethodBind = getMethod(cstring"Control", cstring"get_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRotation(self: Control): float64 =
  if isNil(controlGetRotationMethodBind):
    controlGetRotationMethodBind = getMethod(cstring"Control",
        cstring"get_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlGetRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGetStyleboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStylebox(self: Control; name: string; typee: string = ""): StyleBox =
  if isNil(controlGetStyleboxMethodBind):
    controlGetStyleboxMethodBind = getMethod(cstring"Control",
        cstring"get_stylebox")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  controlGetStyleboxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var controlGetTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTooltipImpl(self: Control; atPosition: Vector2 = vec2(0.0, 0.0)): string =
  if isNil(controlGetTooltipMethodBind):
    controlGetTooltipMethodBind = getMethod(cstring"Control", cstring"get_tooltip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  controlGetTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var controlGrabClickFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc grabClickFocus(self: Control) =
  if isNil(controlGrabClickFocusMethodBind):
    controlGrabClickFocusMethodBind = getMethod(cstring"Control",
        cstring"grab_click_focus")
  var ptrCallRet: pointer
  controlGrabClickFocusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlGrabFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc grabFocus(self: Control) =
  if isNil(controlGrabFocusMethodBind):
    controlGrabFocusMethodBind = getMethod(cstring"Control", cstring"grab_focus")
  var ptrCallRet: pointer
  controlGrabFocusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlHasColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasColor(self: Control; name: string; typee: string = ""): bool =
  if isNil(controlHasColorMethodBind):
    controlHasColorMethodBind = getMethod(cstring"Control", cstring"has_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var controlHasColorOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasColorOverride(self: Control; name: string): bool =
  if isNil(controlHasColorOverrideMethodBind):
    controlHasColorOverrideMethodBind = getMethod(cstring"Control",
        cstring"has_color_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasColorOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlHasConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasConstant(self: Control; name: string; typee: string = ""): bool =
  if isNil(controlHasConstantMethodBind):
    controlHasConstantMethodBind = getMethod(cstring"Control",
        cstring"has_constant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasConstantMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var controlHasConstantOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasConstantOverride(self: Control; name: string): bool =
  if isNil(controlHasConstantOverrideMethodBind):
    controlHasConstantOverrideMethodBind = getMethod(cstring"Control",
        cstring"has_constant_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasConstantOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var controlHasFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasFocus(self: Control): bool =
  if isNil(controlHasFocusMethodBind):
    controlHasFocusMethodBind = getMethod(cstring"Control", cstring"has_focus")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasFocusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlHasFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasFont(self: Control; name: string; typee: string = ""): bool =
  if isNil(controlHasFontMethodBind):
    controlHasFontMethodBind = getMethod(cstring"Control", cstring"has_font")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var controlHasFontOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasFontOverride(self: Control; name: string): bool =
  if isNil(controlHasFontOverrideMethodBind):
    controlHasFontOverrideMethodBind = getMethod(cstring"Control",
        cstring"has_font_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasFontOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlHasIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasIcon(self: Control; name: string; typee: string = ""): bool =
  if isNil(controlHasIconMethodBind):
    controlHasIconMethodBind = getMethod(cstring"Control", cstring"has_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var controlHasIconOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasIconOverride(self: Control; name: string): bool =
  if isNil(controlHasIconOverrideMethodBind):
    controlHasIconOverrideMethodBind = getMethod(cstring"Control",
        cstring"has_icon_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasIconOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlHasPointMethodBind {.threadvar.}: ptr GodotMethodBind
method hasPoint(self: Control; point: Vector2): bool =
  if isNil(controlHasPointMethodBind):
    controlHasPointMethodBind = getMethod(cstring"Control", cstring"has_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var controlHasShaderOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasShaderOverride(self: Control; name: string): bool =
  if isNil(controlHasShaderOverrideMethodBind):
    controlHasShaderOverrideMethodBind = getMethod(cstring"Control",
        cstring"has_shader_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasShaderOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var controlHasStyleboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasStylebox(self: Control; name: string; typee: string = ""): bool =
  if isNil(controlHasStyleboxMethodBind):
    controlHasStyleboxMethodBind = getMethod(cstring"Control",
        cstring"has_stylebox")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasStyleboxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var controlHasStyleboxOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasStyleboxOverride(self: Control; name: string): bool =
  if isNil(controlHasStyleboxOverrideMethodBind):
    controlHasStyleboxOverrideMethodBind = getMethod(cstring"Control",
        cstring"has_stylebox_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  controlHasStyleboxOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var controlMinimumSizeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
proc minimumSizeChanged(self: Control) =
  if isNil(controlMinimumSizeChangedMethodBind):
    controlMinimumSizeChangedMethodBind = getMethod(cstring"Control",
        cstring"minimum_size_changed")
  var ptrCallRet: pointer
  controlMinimumSizeChangedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlReleaseFocusMethodBind {.threadvar.}: ptr GodotMethodBind
proc releaseFocus(self: Control) =
  if isNil(controlReleaseFocusMethodBind):
    controlReleaseFocusMethodBind = getMethod(cstring"Control",
        cstring"release_focus")
  var ptrCallRet: pointer
  controlReleaseFocusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var controlSetAnchorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAnchorImpl(self: Control; margin: int64; anchor: float64;
                  keepMargin: bool = false; pushOppositeAnchor: bool = true) =
  if isNil(controlSetAnchorMethodBind):
    controlSetAnchorMethodBind = getMethod(cstring"Control", cstring"set_anchor")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(margin)
  argsToPassToGodot[][1] = unsafeAddr(anchor)
  argsToPassToGodot[][2] = unsafeAddr(keepMargin)
  argsToPassToGodot[][3] = unsafeAddr(pushOppositeAnchor)
  var ptrCallRet: pointer
  controlSetAnchorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var controlSetAnchorAndMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAnchorAndMargin(self: Control; margin: int64; anchor: float64; offset: float64;
                       pushOppositeAnchor: bool = false) =
  if isNil(controlSetAnchorAndMarginMethodBind):
    controlSetAnchorAndMarginMethodBind = getMethod(cstring"Control",
        cstring"set_anchor_and_margin")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(margin)
  argsToPassToGodot[][1] = unsafeAddr(anchor)
  argsToPassToGodot[][2] = unsafeAddr(offset)
  argsToPassToGodot[][3] = unsafeAddr(pushOppositeAnchor)
  var ptrCallRet: pointer
  controlSetAnchorAndMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlSetAnchorsAndMarginsPresetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAnchorsAndMarginsPreset(self: Control; preset: int64;
                               resizeMode: int64 = 0'i64; margin: int64 = 0'i64) =
  if isNil(controlSetAnchorsAndMarginsPresetMethodBind):
    controlSetAnchorsAndMarginsPresetMethodBind = getMethod(cstring"Control",
        cstring"set_anchors_and_margins_preset")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(preset)
  argsToPassToGodot[][1] = unsafeAddr(resizeMode)
  argsToPassToGodot[][2] = unsafeAddr(margin)
  var ptrCallRet: pointer
  controlSetAnchorsAndMarginsPresetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var controlSetAnchorsPresetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAnchorsPreset(self: Control; preset: int64; keepMargins: bool = false) =
  if isNil(controlSetAnchorsPresetMethodBind):
    controlSetAnchorsPresetMethodBind = getMethod(cstring"Control",
        cstring"set_anchors_preset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(preset)
  argsToPassToGodot[][1] = unsafeAddr(keepMargins)
  var ptrCallRet: pointer
  controlSetAnchorsPresetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlSetBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBegin(self: Control; position: Vector2) =
  if isNil(controlSetBeginMethodBind):
    controlSetBeginMethodBind = getMethod(cstring"Control", cstring"set_begin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  controlSetBeginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var controlSetDragForwardingMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDragForwarding(self: Control; target: Control) =
  if isNil(controlSetDragForwardingMethodBind):
    controlSetDragForwardingMethodBind = getMethod(cstring"Control",
        cstring"set_drag_forwarding")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  controlSetDragForwardingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlSetDragPreviewMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDragPreview(self: Control; control: Control) =
  if isNil(controlSetDragPreviewMethodBind):
    controlSetDragPreviewMethodBind = getMethod(cstring"Control",
        cstring"set_drag_preview")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  controlSetDragPreviewMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlSetEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc setEnd(self: Control; position: Vector2) =
  if isNil(controlSetEndMethodBind):
    controlSetEndMethodBind = getMethod(cstring"Control", cstring"set_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  controlSetEndMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var controlSetGlobalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setGlobalPositionImpl(self: Control; position: Vector2;
                          keepMargins: bool = false) =
  if isNil(controlSetGlobalPositionMethodBind):
    controlSetGlobalPositionMethodBind = getMethod(cstring"Control",
        cstring"set_global_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(keepMargins)
  var ptrCallRet: pointer
  controlSetGlobalPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlSetMarginsPresetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMarginsPreset(self: Control; preset: int64; resizeMode: int64 = 0'i64;
                     margin: int64 = 0'i64) =
  if isNil(controlSetMarginsPresetMethodBind):
    controlSetMarginsPresetMethodBind = getMethod(cstring"Control",
        cstring"set_margins_preset")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(preset)
  argsToPassToGodot[][1] = unsafeAddr(resizeMode)
  argsToPassToGodot[][2] = unsafeAddr(margin)
  var ptrCallRet: pointer
  controlSetMarginsPresetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var controlSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPositionImpl(self: Control; position: Vector2; keepMargins: bool = false) =
  if isNil(controlSetPositionMethodBind):
    controlSetPositionMethodBind = getMethod(cstring"Control",
        cstring"set_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(keepMargins)
  var ptrCallRet: pointer
  controlSetPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var controlSetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRotation(self: Control; radians: float64) =
  if isNil(controlSetRotationMethodBind):
    controlSetRotationMethodBind = getMethod(cstring"Control",
        cstring"set_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(radians)
  var ptrCallRet: pointer
  controlSetRotationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var controlSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSizeImpl(self: Control; size: Vector2; keepMargins: bool = false) =
  if isNil(controlSetSizeMethodBind):
    controlSetSizeMethodBind = getMethod(cstring"Control", cstring"set_size")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  argsToPassToGodot[][1] = unsafeAddr(keepMargins)
  var ptrCallRet: pointer
  controlSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var controlShowModalMethodBind {.threadvar.}: ptr GodotMethodBind
proc showModal(self: Control; exclusive: bool = false) =
  if isNil(controlShowModalMethodBind):
    controlShowModalMethodBind = getMethod(cstring"Control", cstring"show_modal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(exclusive)
  var ptrCallRet: pointer
  controlShowModalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var controlWarpMouseMethodBind {.threadvar.}: ptr GodotMethodBind
proc warpMouse(self: Control; toPosition: Vector2) =
  if isNil(controlWarpMouseMethodBind):
    controlWarpMouseMethodBind = getMethod(cstring"Control", cstring"warp_mouse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  controlWarpMouseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
