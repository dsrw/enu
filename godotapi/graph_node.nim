
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

const
  OVERLAY_BREAKPOINT* = 1'i64
  OVERLAY_DISABLED* = 0'i64
  OVERLAY_POSITION* = 2'i64
proc comment*(self: GraphNode): bool {.gcsafe, locks: 0.}
proc `comment=`*(self: GraphNode; val: bool) {.gcsafe, locks: 0.}
proc offset*(self: GraphNode): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: GraphNode; val: Vector2) {.gcsafe, locks: 0.}
proc overlay*(self: GraphNode): int64 {.gcsafe, locks: 0.}
proc `overlay=`*(self: GraphNode; val: int64) {.gcsafe, locks: 0.}
proc resizable*(self: GraphNode): bool {.gcsafe, locks: 0.}
proc `resizable=`*(self: GraphNode; val: bool) {.gcsafe, locks: 0.}
proc selected*(self: GraphNode): bool {.gcsafe, locks: 0.}
proc `selected=`*(self: GraphNode; val: bool) {.gcsafe, locks: 0.}
proc showClose*(self: GraphNode): bool {.gcsafe, locks: 0.}
proc `showClose=`*(self: GraphNode; val: bool) {.gcsafe, locks: 0.}
proc title*(self: GraphNode): string {.gcsafe, locks: 0.}
proc `title=`*(self: GraphNode; val: string) {.gcsafe, locks: 0.}
method guiInput*(self: GraphNode; event: InputEvent) {.gcsafe, locks: 0.}
proc clearAllSlots*(self: GraphNode) {.gcsafe, locks: 0.}
proc clearSlot*(self: GraphNode; idx: int64) {.gcsafe, locks: 0.}
proc getConnectionInputColor*(self: GraphNode; idx: int64): Color {.gcsafe, locks: 0.}
proc getConnectionInputCount*(self: GraphNode): int64 {.gcsafe, locks: 0.}
proc getConnectionInputPosition*(self: GraphNode; idx: int64): Vector2 {.gcsafe,
    locks: 0.}
proc getConnectionInputType*(self: GraphNode; idx: int64): int64 {.gcsafe, locks: 0.}
proc getConnectionOutputColor*(self: GraphNode; idx: int64): Color {.gcsafe, locks: 0.}
proc getConnectionOutputCount*(self: GraphNode): int64 {.gcsafe, locks: 0.}
proc getConnectionOutputPosition*(self: GraphNode; idx: int64): Vector2 {.gcsafe,
    locks: 0.}
proc getConnectionOutputType*(self: GraphNode; idx: int64): int64 {.gcsafe, locks: 0.}
proc getSlotColorLeft*(self: GraphNode; idx: int64): Color {.gcsafe, locks: 0.}
proc getSlotColorRight*(self: GraphNode; idx: int64): Color {.gcsafe, locks: 0.}
proc getSlotTypeLeft*(self: GraphNode; idx: int64): int64 {.gcsafe, locks: 0.}
proc getSlotTypeRight*(self: GraphNode; idx: int64): int64 {.gcsafe, locks: 0.}
proc isSlotEnabledLeft*(self: GraphNode; idx: int64): bool {.gcsafe, locks: 0.}
proc isSlotEnabledRight*(self: GraphNode; idx: int64): bool {.gcsafe, locks: 0.}
proc setSlot*(self: GraphNode; idx: int64; enableLeft: bool; typeLeft: int64;
             colorLeft: Color; enableRight: bool; typeRight: int64; colorRight: Color;
             customLeft: Texture = nil; customRight: Texture = nil) {.gcsafe, locks: 0.}
var graphNodeIsCommentMethodBind {.threadvar.}: ptr GodotMethodBind
proc comment(self: GraphNode): bool =
  if isNil(graphNodeIsCommentMethodBind):
    graphNodeIsCommentMethodBind = getMethod(cstring"GraphNode",
        cstring"is_comment")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeIsCommentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphNodeSetCommentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `comment=`(self: GraphNode; val: bool) =
  if isNil(graphNodeSetCommentMethodBind):
    graphNodeSetCommentMethodBind = getMethod(cstring"GraphNode",
        cstring"set_comment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphNodeSetCommentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var graphNodeGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: GraphNode): Vector2 =
  if isNil(graphNodeGetOffsetMethodBind):
    graphNodeGetOffsetMethodBind = getMethod(cstring"GraphNode",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphNodeSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: GraphNode; val: Vector2) =
  if isNil(graphNodeSetOffsetMethodBind):
    graphNodeSetOffsetMethodBind = getMethod(cstring"GraphNode",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphNodeSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var graphNodeGetOverlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc overlay(self: GraphNode): int64 =
  if isNil(graphNodeGetOverlayMethodBind):
    graphNodeGetOverlayMethodBind = getMethod(cstring"GraphNode",
        cstring"get_overlay")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetOverlayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphNodeSetOverlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `overlay=`(self: GraphNode; val: int64) =
  if isNil(graphNodeSetOverlayMethodBind):
    graphNodeSetOverlayMethodBind = getMethod(cstring"GraphNode",
        cstring"set_overlay")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphNodeSetOverlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var graphNodeIsResizableMethodBind {.threadvar.}: ptr GodotMethodBind
proc resizable(self: GraphNode): bool =
  if isNil(graphNodeIsResizableMethodBind):
    graphNodeIsResizableMethodBind = getMethod(cstring"GraphNode",
        cstring"is_resizable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeIsResizableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphNodeSetResizableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resizable=`(self: GraphNode; val: bool) =
  if isNil(graphNodeSetResizableMethodBind):
    graphNodeSetResizableMethodBind = getMethod(cstring"GraphNode",
        cstring"set_resizable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphNodeSetResizableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var graphNodeIsSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc selected(self: GraphNode): bool =
  if isNil(graphNodeIsSelectedMethodBind):
    graphNodeIsSelectedMethodBind = getMethod(cstring"GraphNode",
        cstring"is_selected")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeIsSelectedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphNodeSetSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `selected=`(self: GraphNode; val: bool) =
  if isNil(graphNodeSetSelectedMethodBind):
    graphNodeSetSelectedMethodBind = getMethod(cstring"GraphNode",
        cstring"set_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphNodeSetSelectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var graphNodeIsCloseButtonVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc showClose(self: GraphNode): bool =
  if isNil(graphNodeIsCloseButtonVisibleMethodBind):
    graphNodeIsCloseButtonVisibleMethodBind = getMethod(cstring"GraphNode",
        cstring"is_close_button_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeIsCloseButtonVisibleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var graphNodeSetShowCloseButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `showClose=`(self: GraphNode; val: bool) =
  if isNil(graphNodeSetShowCloseButtonMethodBind):
    graphNodeSetShowCloseButtonMethodBind = getMethod(cstring"GraphNode",
        cstring"set_show_close_button")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphNodeSetShowCloseButtonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc title(self: GraphNode): string =
  if isNil(graphNodeGetTitleMethodBind):
    graphNodeGetTitleMethodBind = getMethod(cstring"GraphNode", cstring"get_title")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  graphNodeGetTitleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var graphNodeSetTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `title=`(self: GraphNode; val: string) =
  if isNil(graphNodeSetTitleMethodBind):
    graphNodeSetTitleMethodBind = getMethod(cstring"GraphNode", cstring"set_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  graphNodeSetTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var graphNodeUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: GraphNode; event: InputEvent) =
  if isNil(graphNodeUnderscoreguiInputMethodBind):
    graphNodeUnderscoreguiInputMethodBind = getMethod(cstring"GraphNode",
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
  graphNodeUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeClearAllSlotsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearAllSlots(self: GraphNode) =
  if isNil(graphNodeClearAllSlotsMethodBind):
    graphNodeClearAllSlotsMethodBind = getMethod(cstring"GraphNode",
        cstring"clear_all_slots")
  var ptrCallRet: pointer
  graphNodeClearAllSlotsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphNodeClearSlotMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearSlot(self: GraphNode; idx: int64) =
  if isNil(graphNodeClearSlotMethodBind):
    graphNodeClearSlotMethodBind = getMethod(cstring"GraphNode",
        cstring"clear_slot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  graphNodeClearSlotMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var graphNodeGetConnectionInputColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionInputColor(self: GraphNode; idx: int64): Color =
  if isNil(graphNodeGetConnectionInputColorMethodBind):
    graphNodeGetConnectionInputColorMethodBind = getMethod(cstring"GraphNode",
        cstring"get_connection_input_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionInputColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetConnectionInputCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionInputCount(self: GraphNode): int64 =
  if isNil(graphNodeGetConnectionInputCountMethodBind):
    graphNodeGetConnectionInputCountMethodBind = getMethod(cstring"GraphNode",
        cstring"get_connection_input_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionInputCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var graphNodeGetConnectionInputPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionInputPosition(self: GraphNode; idx: int64): Vector2 =
  if isNil(graphNodeGetConnectionInputPositionMethodBind):
    graphNodeGetConnectionInputPositionMethodBind = getMethod(cstring"GraphNode",
        cstring"get_connection_input_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionInputPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetConnectionInputTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionInputType(self: GraphNode; idx: int64): int64 =
  if isNil(graphNodeGetConnectionInputTypeMethodBind):
    graphNodeGetConnectionInputTypeMethodBind = getMethod(cstring"GraphNode",
        cstring"get_connection_input_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionInputTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetConnectionOutputColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionOutputColor(self: GraphNode; idx: int64): Color =
  if isNil(graphNodeGetConnectionOutputColorMethodBind):
    graphNodeGetConnectionOutputColorMethodBind = getMethod(cstring"GraphNode",
        cstring"get_connection_output_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionOutputColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetConnectionOutputCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionOutputCount(self: GraphNode): int64 =
  if isNil(graphNodeGetConnectionOutputCountMethodBind):
    graphNodeGetConnectionOutputCountMethodBind = getMethod(cstring"GraphNode",
        cstring"get_connection_output_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionOutputCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var graphNodeGetConnectionOutputPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionOutputPosition(self: GraphNode; idx: int64): Vector2 =
  if isNil(graphNodeGetConnectionOutputPositionMethodBind):
    graphNodeGetConnectionOutputPositionMethodBind = getMethod(
        cstring"GraphNode", cstring"get_connection_output_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionOutputPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetConnectionOutputTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionOutputType(self: GraphNode; idx: int64): int64 =
  if isNil(graphNodeGetConnectionOutputTypeMethodBind):
    graphNodeGetConnectionOutputTypeMethodBind = getMethod(cstring"GraphNode",
        cstring"get_connection_output_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetConnectionOutputTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetSlotColorLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlotColorLeft(self: GraphNode; idx: int64): Color =
  if isNil(graphNodeGetSlotColorLeftMethodBind):
    graphNodeGetSlotColorLeftMethodBind = getMethod(cstring"GraphNode",
        cstring"get_slot_color_left")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetSlotColorLeftMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetSlotColorRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlotColorRight(self: GraphNode; idx: int64): Color =
  if isNil(graphNodeGetSlotColorRightMethodBind):
    graphNodeGetSlotColorRightMethodBind = getMethod(cstring"GraphNode",
        cstring"get_slot_color_right")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetSlotColorRightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeGetSlotTypeLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlotTypeLeft(self: GraphNode; idx: int64): int64 =
  if isNil(graphNodeGetSlotTypeLeftMethodBind):
    graphNodeGetSlotTypeLeftMethodBind = getMethod(cstring"GraphNode",
        cstring"get_slot_type_left")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetSlotTypeLeftMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var graphNodeGetSlotTypeRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlotTypeRight(self: GraphNode; idx: int64): int64 =
  if isNil(graphNodeGetSlotTypeRightMethodBind):
    graphNodeGetSlotTypeRightMethodBind = getMethod(cstring"GraphNode",
        cstring"get_slot_type_right")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeGetSlotTypeRightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeIsSlotEnabledLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSlotEnabledLeft(self: GraphNode; idx: int64): bool =
  if isNil(graphNodeIsSlotEnabledLeftMethodBind):
    graphNodeIsSlotEnabledLeftMethodBind = getMethod(cstring"GraphNode",
        cstring"is_slot_enabled_left")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeIsSlotEnabledLeftMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeIsSlotEnabledRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSlotEnabledRight(self: GraphNode; idx: int64): bool =
  if isNil(graphNodeIsSlotEnabledRightMethodBind):
    graphNodeIsSlotEnabledRightMethodBind = getMethod(cstring"GraphNode",
        cstring"is_slot_enabled_right")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphNodeIsSlotEnabledRightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphNodeSetSlotMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSlot(self: GraphNode; idx: int64; enableLeft: bool; typeLeft: int64;
            colorLeft: Color; enableRight: bool; typeRight: int64; colorRight: Color;
            customLeft: Texture = nil; customRight: Texture = nil) =
  if isNil(graphNodeSetSlotMethodBind):
    graphNodeSetSlotMethodBind = getMethod(cstring"GraphNode", cstring"set_slot")
  var
    argsStatic: array[9, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(enableLeft)
  argsToPassToGodot[][2] = unsafeAddr(typeLeft)
  argsToPassToGodot[][3] = unsafeAddr(colorLeft)
  argsToPassToGodot[][4] = unsafeAddr(enableRight)
  argsToPassToGodot[][5] = unsafeAddr(typeRight)
  argsToPassToGodot[][6] = unsafeAddr(colorRight)
  let argToPassToGodot7 = if not customLeft.isNil:
    customLeft.godotObject
  else:
    nil
  argsToPassToGodot[][7] = argToPassToGodot7
  let argToPassToGodot8 = if not customRight.isNil:
    customRight.godotObject
  else:
    nil
  argsToPassToGodot[][8] = argToPassToGodot8
  var ptrCallRet: pointer
  graphNodeSetSlotMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
