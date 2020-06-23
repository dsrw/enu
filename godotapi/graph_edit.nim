
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

proc rightDisconnects*(self: GraphEdit): bool {.gcsafe, locks: 0.}
proc `rightDisconnects=`*(self: GraphEdit; val: bool) {.gcsafe, locks: 0.}
proc scrollOffset*(self: GraphEdit): Vector2 {.gcsafe, locks: 0.}
proc `scrollOffset=`*(self: GraphEdit; val: Vector2) {.gcsafe, locks: 0.}
proc snapDistance*(self: GraphEdit): int64 {.gcsafe, locks: 0.}
proc `snapDistance=`*(self: GraphEdit; val: int64) {.gcsafe, locks: 0.}
proc useSnap*(self: GraphEdit): bool {.gcsafe, locks: 0.}
proc `useSnap=`*(self: GraphEdit; val: bool) {.gcsafe, locks: 0.}
proc zoom*(self: GraphEdit): float64 {.gcsafe, locks: 0.}
proc `zoom=`*(self: GraphEdit; val: float64) {.gcsafe, locks: 0.}
method connectionsLayerDraw*(self: GraphEdit) {.gcsafe, locks: 0, base.}
method graphNodeMoved*(self: GraphEdit; arg0: Node) {.gcsafe, locks: 0, base.}
method graphNodeRaised*(self: GraphEdit; arg0: Node) {.gcsafe, locks: 0, base.}
method guiInput*(self: GraphEdit; event: InputEvent) {.gcsafe, locks: 0.}
method scrollMoved*(self: GraphEdit; arg0: float64) {.gcsafe, locks: 0, base.}
method snapToggled*(self: GraphEdit) {.gcsafe, locks: 0, base.}
method snapValueChanged*(self: GraphEdit; arg0: float64) {.gcsafe, locks: 0, base.}
method topLayerDraw*(self: GraphEdit) {.gcsafe, locks: 0, base.}
method topLayerInput*(self: GraphEdit; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method updateScrollOffset*(self: GraphEdit) {.gcsafe, locks: 0, base.}
method zoomMinus*(self: GraphEdit) {.gcsafe, locks: 0, base.}
method zoomPlus*(self: GraphEdit) {.gcsafe, locks: 0, base.}
method zoomReset*(self: GraphEdit) {.gcsafe, locks: 0, base.}
proc addValidConnectionType*(self: GraphEdit; fromType: int64; toType: int64) {.gcsafe,
    locks: 0.}
proc addValidLeftDisconnectType*(self: GraphEdit; typee: int64) {.gcsafe, locks: 0.}
proc addValidRightDisconnectType*(self: GraphEdit; typee: int64) {.gcsafe, locks: 0.}
proc clearConnections*(self: GraphEdit) {.gcsafe, locks: 0.}
proc connectNode*(self: GraphEdit; fromm: string; fromPort: int64; to: string;
                 toPort: int64): Error {.gcsafe, locks: 0.}
proc disconnectNode*(self: GraphEdit; fromm: string; fromPort: int64; to: string;
                    toPort: int64) {.gcsafe, locks: 0.}
proc getConnectionList*(self: GraphEdit): Array {.gcsafe, locks: 0.}
proc getZoomHbox*(self: GraphEdit): HBoxContainer {.gcsafe, locks: 0.}
proc isNodeConnected*(self: GraphEdit; fromm: string; fromPort: int64; to: string;
                     toPort: int64): bool {.gcsafe, locks: 0.}
proc isValidConnectionType*(self: GraphEdit; fromType: int64; toType: int64): bool {.
    gcsafe, locks: 0.}
proc removeValidConnectionType*(self: GraphEdit; fromType: int64; toType: int64) {.
    gcsafe, locks: 0.}
proc removeValidLeftDisconnectType*(self: GraphEdit; typee: int64) {.gcsafe, locks: 0.}
proc removeValidRightDisconnectType*(self: GraphEdit; typee: int64) {.gcsafe, locks: 0.}
proc setConnectionActivity*(self: GraphEdit; fromm: string; fromPort: int64;
                           to: string; toPort: int64; amount: float64) {.gcsafe,
    locks: 0.}
proc setSelected*(self: GraphEdit; node: Node) {.gcsafe, locks: 0.}
var graphEditIsRightDisconnectsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc rightDisconnects(self: GraphEdit): bool =
  if isNil(graphEditIsRightDisconnectsEnabledMethodBind):
    graphEditIsRightDisconnectsEnabledMethodBind = getMethod(cstring"GraphEdit",
        cstring"is_right_disconnects_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphEditIsRightDisconnectsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var graphEditSetRightDisconnectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rightDisconnects=`(self: GraphEdit; val: bool) =
  if isNil(graphEditSetRightDisconnectsMethodBind):
    graphEditSetRightDisconnectsMethodBind = getMethod(cstring"GraphEdit",
        cstring"set_right_disconnects")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphEditSetRightDisconnectsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditGetScrollOfsMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollOffset(self: GraphEdit): Vector2 =
  if isNil(graphEditGetScrollOfsMethodBind):
    graphEditGetScrollOfsMethodBind = getMethod(cstring"GraphEdit",
        cstring"get_scroll_ofs")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphEditGetScrollOfsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditSetScrollOfsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollOffset=`(self: GraphEdit; val: Vector2) =
  if isNil(graphEditSetScrollOfsMethodBind):
    graphEditSetScrollOfsMethodBind = getMethod(cstring"GraphEdit",
        cstring"set_scroll_ofs")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphEditSetScrollOfsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var graphEditGetSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc snapDistance(self: GraphEdit): int64 =
  if isNil(graphEditGetSnapMethodBind):
    graphEditGetSnapMethodBind = getMethod(cstring"GraphEdit", cstring"get_snap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphEditGetSnapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditSetSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `snapDistance=`(self: GraphEdit; val: int64) =
  if isNil(graphEditSetSnapMethodBind):
    graphEditSetSnapMethodBind = getMethod(cstring"GraphEdit", cstring"set_snap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphEditSetSnapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var graphEditIsUsingSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc useSnap(self: GraphEdit): bool =
  if isNil(graphEditIsUsingSnapMethodBind):
    graphEditIsUsingSnapMethodBind = getMethod(cstring"GraphEdit",
        cstring"is_using_snap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphEditIsUsingSnapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditSetUseSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useSnap=`(self: GraphEdit; val: bool) =
  if isNil(graphEditSetUseSnapMethodBind):
    graphEditSetUseSnapMethodBind = getMethod(cstring"GraphEdit",
        cstring"set_use_snap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphEditSetUseSnapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var graphEditGetZoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc zoom(self: GraphEdit): float64 =
  if isNil(graphEditGetZoomMethodBind):
    graphEditGetZoomMethodBind = getMethod(cstring"GraphEdit", cstring"get_zoom")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphEditGetZoomMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditSetZoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc `zoom=`(self: GraphEdit; val: float64) =
  if isNil(graphEditSetZoomMethodBind):
    graphEditSetZoomMethodBind = getMethod(cstring"GraphEdit", cstring"set_zoom")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  graphEditSetZoomMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var graphEditUnderscoreconnectionsLayerDrawMethodBind {.threadvar.}: ptr GodotMethodBind
method connectionsLayerDraw(self: GraphEdit) =
  if isNil(graphEditUnderscoreconnectionsLayerDrawMethodBind):
    graphEditUnderscoreconnectionsLayerDrawMethodBind = getMethod(
        cstring"GraphEdit", cstring"_connections_layer_draw")
  var ptrCallRet: pointer
  graphEditUnderscoreconnectionsLayerDrawMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var graphEditUnderscoregraphNodeMovedMethodBind {.threadvar.}: ptr GodotMethodBind
method graphNodeMoved(self: GraphEdit; arg0: Node) =
  if isNil(graphEditUnderscoregraphNodeMovedMethodBind):
    graphEditUnderscoregraphNodeMovedMethodBind = getMethod(cstring"GraphEdit",
        cstring"_graph_node_moved")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  graphEditUnderscoregraphNodeMovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditUnderscoregraphNodeRaisedMethodBind {.threadvar.}: ptr GodotMethodBind
method graphNodeRaised(self: GraphEdit; arg0: Node) =
  if isNil(graphEditUnderscoregraphNodeRaisedMethodBind):
    graphEditUnderscoregraphNodeRaisedMethodBind = getMethod(cstring"GraphEdit",
        cstring"_graph_node_raised")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  graphEditUnderscoregraphNodeRaisedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: GraphEdit; event: InputEvent) =
  if isNil(graphEditUnderscoreguiInputMethodBind):
    graphEditUnderscoreguiInputMethodBind = getMethod(cstring"GraphEdit",
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
  graphEditUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditUnderscorescrollMovedMethodBind {.threadvar.}: ptr GodotMethodBind
method scrollMoved(self: GraphEdit; arg0: float64) =
  if isNil(graphEditUnderscorescrollMovedMethodBind):
    graphEditUnderscorescrollMovedMethodBind = getMethod(cstring"GraphEdit",
        cstring"_scroll_moved")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  graphEditUnderscorescrollMovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditUnderscoresnapToggledMethodBind {.threadvar.}: ptr GodotMethodBind
method snapToggled(self: GraphEdit) =
  if isNil(graphEditUnderscoresnapToggledMethodBind):
    graphEditUnderscoresnapToggledMethodBind = getMethod(cstring"GraphEdit",
        cstring"_snap_toggled")
  var ptrCallRet: pointer
  graphEditUnderscoresnapToggledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var graphEditUnderscoresnapValueChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method snapValueChanged(self: GraphEdit; arg0: float64) =
  if isNil(graphEditUnderscoresnapValueChangedMethodBind):
    graphEditUnderscoresnapValueChangedMethodBind = getMethod(cstring"GraphEdit",
        cstring"_snap_value_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  graphEditUnderscoresnapValueChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditUnderscoretopLayerDrawMethodBind {.threadvar.}: ptr GodotMethodBind
method topLayerDraw(self: GraphEdit) =
  if isNil(graphEditUnderscoretopLayerDrawMethodBind):
    graphEditUnderscoretopLayerDrawMethodBind = getMethod(cstring"GraphEdit",
        cstring"_top_layer_draw")
  var ptrCallRet: pointer
  graphEditUnderscoretopLayerDrawMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var graphEditUnderscoretopLayerInputMethodBind {.threadvar.}: ptr GodotMethodBind
method topLayerInput(self: GraphEdit; arg0: InputEvent) =
  if isNil(graphEditUnderscoretopLayerInputMethodBind):
    graphEditUnderscoretopLayerInputMethodBind = getMethod(cstring"GraphEdit",
        cstring"_top_layer_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  graphEditUnderscoretopLayerInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditUnderscoreupdateScrollOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
method updateScrollOffset(self: GraphEdit) =
  if isNil(graphEditUnderscoreupdateScrollOffsetMethodBind):
    graphEditUnderscoreupdateScrollOffsetMethodBind = getMethod(
        cstring"GraphEdit", cstring"_update_scroll_offset")
  var ptrCallRet: pointer
  graphEditUnderscoreupdateScrollOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var graphEditUnderscorezoomMinusMethodBind {.threadvar.}: ptr GodotMethodBind
method zoomMinus(self: GraphEdit) =
  if isNil(graphEditUnderscorezoomMinusMethodBind):
    graphEditUnderscorezoomMinusMethodBind = getMethod(cstring"GraphEdit",
        cstring"_zoom_minus")
  var ptrCallRet: pointer
  graphEditUnderscorezoomMinusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditUnderscorezoomPlusMethodBind {.threadvar.}: ptr GodotMethodBind
method zoomPlus(self: GraphEdit) =
  if isNil(graphEditUnderscorezoomPlusMethodBind):
    graphEditUnderscorezoomPlusMethodBind = getMethod(cstring"GraphEdit",
        cstring"_zoom_plus")
  var ptrCallRet: pointer
  graphEditUnderscorezoomPlusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditUnderscorezoomResetMethodBind {.threadvar.}: ptr GodotMethodBind
method zoomReset(self: GraphEdit) =
  if isNil(graphEditUnderscorezoomResetMethodBind):
    graphEditUnderscorezoomResetMethodBind = getMethod(cstring"GraphEdit",
        cstring"_zoom_reset")
  var ptrCallRet: pointer
  graphEditUnderscorezoomResetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditAddValidConnectionTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addValidConnectionType(self: GraphEdit; fromType: int64; toType: int64) =
  if isNil(graphEditAddValidConnectionTypeMethodBind):
    graphEditAddValidConnectionTypeMethodBind = getMethod(cstring"GraphEdit",
        cstring"add_valid_connection_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromType)
  argsToPassToGodot[][1] = unsafeAddr(toType)
  var ptrCallRet: pointer
  graphEditAddValidConnectionTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditAddValidLeftDisconnectTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addValidLeftDisconnectType(self: GraphEdit; typee: int64) =
  if isNil(graphEditAddValidLeftDisconnectTypeMethodBind):
    graphEditAddValidLeftDisconnectTypeMethodBind = getMethod(cstring"GraphEdit",
        cstring"add_valid_left_disconnect_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  graphEditAddValidLeftDisconnectTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditAddValidRightDisconnectTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addValidRightDisconnectType(self: GraphEdit; typee: int64) =
  if isNil(graphEditAddValidRightDisconnectTypeMethodBind):
    graphEditAddValidRightDisconnectTypeMethodBind = getMethod(
        cstring"GraphEdit", cstring"add_valid_right_disconnect_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  graphEditAddValidRightDisconnectTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditClearConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearConnections(self: GraphEdit) =
  if isNil(graphEditClearConnectionsMethodBind):
    graphEditClearConnectionsMethodBind = getMethod(cstring"GraphEdit",
        cstring"clear_connections")
  var ptrCallRet: pointer
  graphEditClearConnectionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var graphEditConnectNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectNode(self: GraphEdit; fromm: string; fromPort: int64; to: string;
                toPort: int64): Error =
  if isNil(graphEditConnectNodeMethodBind):
    graphEditConnectNodeMethodBind = getMethod(cstring"GraphEdit",
        cstring"connect_node")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromPort)
  var argToPassToGodot2 = toGodotString(to)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  graphEditConnectNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)
  result = Error(ptrCallVal)

var graphEditDisconnectNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectNode(self: GraphEdit; fromm: string; fromPort: int64; to: string;
                   toPort: int64) =
  if isNil(graphEditDisconnectNodeMethodBind):
    graphEditDisconnectNodeMethodBind = getMethod(cstring"GraphEdit",
        cstring"disconnect_node")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromPort)
  var argToPassToGodot2 = toGodotString(to)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  graphEditDisconnectNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var graphEditGetConnectionListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionList(self: GraphEdit): Array =
  if isNil(graphEditGetConnectionListMethodBind):
    graphEditGetConnectionListMethodBind = getMethod(cstring"GraphEdit",
        cstring"get_connection_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  graphEditGetConnectionListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var graphEditGetZoomHboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc getZoomHbox(self: GraphEdit): HBoxContainer =
  if isNil(graphEditGetZoomHboxMethodBind):
    graphEditGetZoomHboxMethodBind = getMethod(cstring"GraphEdit",
        cstring"get_zoom_hbox")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  graphEditGetZoomHboxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var graphEditIsNodeConnectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isNodeConnected(self: GraphEdit; fromm: string; fromPort: int64; to: string;
                    toPort: int64): bool =
  if isNil(graphEditIsNodeConnectedMethodBind):
    graphEditIsNodeConnectedMethodBind = getMethod(cstring"GraphEdit",
        cstring"is_node_connected")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromPort)
  var argToPassToGodot2 = toGodotString(to)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphEditIsNodeConnectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var graphEditIsValidConnectionTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValidConnectionType(self: GraphEdit; fromType: int64; toType: int64): bool =
  if isNil(graphEditIsValidConnectionTypeMethodBind):
    graphEditIsValidConnectionTypeMethodBind = getMethod(cstring"GraphEdit",
        cstring"is_valid_connection_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromType)
  argsToPassToGodot[][1] = unsafeAddr(toType)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  graphEditIsValidConnectionTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditRemoveValidConnectionTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeValidConnectionType(self: GraphEdit; fromType: int64; toType: int64) =
  if isNil(graphEditRemoveValidConnectionTypeMethodBind):
    graphEditRemoveValidConnectionTypeMethodBind = getMethod(cstring"GraphEdit",
        cstring"remove_valid_connection_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromType)
  argsToPassToGodot[][1] = unsafeAddr(toType)
  var ptrCallRet: pointer
  graphEditRemoveValidConnectionTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditRemoveValidLeftDisconnectTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeValidLeftDisconnectType(self: GraphEdit; typee: int64) =
  if isNil(graphEditRemoveValidLeftDisconnectTypeMethodBind):
    graphEditRemoveValidLeftDisconnectTypeMethodBind = getMethod(
        cstring"GraphEdit", cstring"remove_valid_left_disconnect_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  graphEditRemoveValidLeftDisconnectTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditRemoveValidRightDisconnectTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeValidRightDisconnectType(self: GraphEdit; typee: int64) =
  if isNil(graphEditRemoveValidRightDisconnectTypeMethodBind):
    graphEditRemoveValidRightDisconnectTypeMethodBind = getMethod(
        cstring"GraphEdit", cstring"remove_valid_right_disconnect_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  graphEditRemoveValidRightDisconnectTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var graphEditSetConnectionActivityMethodBind {.threadvar.}: ptr GodotMethodBind
proc setConnectionActivity(self: GraphEdit; fromm: string; fromPort: int64; to: string;
                          toPort: int64; amount: float64) =
  if isNil(graphEditSetConnectionActivityMethodBind):
    graphEditSetConnectionActivityMethodBind = getMethod(cstring"GraphEdit",
        cstring"set_connection_activity")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromPort)
  var argToPassToGodot2 = toGodotString(to)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(toPort)
  argsToPassToGodot[][4] = unsafeAddr(amount)
  var ptrCallRet: pointer
  graphEditSetConnectionActivityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var graphEditSetSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSelected(self: GraphEdit; node: Node) =
  if isNil(graphEditSetSelectedMethodBind):
    graphEditSetSelectedMethodBind = getMethod(cstring"GraphEdit",
        cstring"set_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  graphEditSetSelectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
