
import
  godot, godottypes, godotinternal, main_loop

export
  godottypes, main_loop

const
  GROUP_CALL_DEFAULT* = 0'i64
  GROUP_CALL_REALTIME* = 2'i64
  GROUP_CALL_REVERSE* = 1'i64
  GROUP_CALL_UNIQUE* = 4'i64
  STRETCH_ASPECT_EXPAND* = 4'i64
  STRETCH_ASPECT_IGNORE* = 0'i64
  STRETCH_ASPECT_KEEP* = 1'i64
  STRETCH_ASPECT_KEEP_HEIGHT* = 3'i64
  STRETCH_ASPECT_KEEP_WIDTH* = 2'i64
  STRETCH_MODE_2D* = 1'i64
  STRETCH_MODE_DISABLED* = 0'i64
  STRETCH_MODE_VIEWPORT* = 2'i64
proc currentScene*(self: SceneTree): Node {.gcsafe, locks: 0.}
proc `currentScene=`*(self: SceneTree; val: Node) {.gcsafe, locks: 0.}
proc debugCollisionsHint*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc `debugCollisionsHint=`*(self: SceneTree; val: bool) {.gcsafe, locks: 0.}
proc debugNavigationHint*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc `debugNavigationHint=`*(self: SceneTree; val: bool) {.gcsafe, locks: 0.}
proc editedSceneRoot*(self: SceneTree): Node {.gcsafe, locks: 0.}
proc `editedSceneRoot=`*(self: SceneTree; val: Node) {.gcsafe, locks: 0.}
proc multiplayer*(self: SceneTree): MultiplayerAPI {.gcsafe, locks: 0.}
proc `multiplayer=`*(self: SceneTree; val: MultiplayerAPI) {.gcsafe, locks: 0.}
proc multiplayerPoll*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc `multiplayerPoll=`*(self: SceneTree; val: bool) {.gcsafe, locks: 0.}
proc networkPeer*(self: SceneTree): NetworkedMultiplayerPeer {.gcsafe, locks: 0.}
proc `networkPeer=`*(self: SceneTree; val: NetworkedMultiplayerPeer) {.gcsafe,
    locks: 0.}
proc paused*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc `paused=`*(self: SceneTree; val: bool) {.gcsafe, locks: 0.}
proc refuseNewNetworkConnections*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc `refuseNewNetworkConnections=`*(self: SceneTree; val: bool) {.gcsafe, locks: 0.}
proc root*(self: SceneTree): Viewport {.gcsafe, locks: 0.}
proc `root=`*(self: SceneTree; val: Viewport) {.gcsafe, locks: 0.}
proc useFontOversampling*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc `useFontOversampling=`*(self: SceneTree; val: bool) {.gcsafe, locks: 0.}
method changeScene*(self: SceneTree; arg0: Node) {.gcsafe, locks: 0, base.}
method connectedToServer*(self: SceneTree) {.gcsafe, locks: 0, base.}
method connectionFailed*(self: SceneTree) {.gcsafe, locks: 0, base.}
method networkPeerConnected*(self: SceneTree; arg0: int64) {.gcsafe, locks: 0, base.}
method networkPeerDisconnected*(self: SceneTree; arg0: int64) {.gcsafe, locks: 0, base.}
method serverDisconnected*(self: SceneTree) {.gcsafe, locks: 0, base.}
proc callGroup*(self: SceneTree; group: string; methodd: string;
               variantArgs: varargs[Variant]): Variant {.gcsafe, locks: 0.}
proc callGroupFlags*(self: SceneTree; flags: int64; group: string; methodd: string;
                    variantArgs: varargs[Variant]): Variant {.gcsafe, locks: 0.}
proc changeSceneImpl*(self: SceneTree; path: string): Error {.gcsafe, locks: 0.}
proc changeSceneTo*(self: SceneTree; packedScene: PackedScene): Error {.gcsafe,
    locks: 0.}
proc createTimer*(self: SceneTree; timeSec: float64; pauseModeProcess: bool = true): SceneTreeTimer {.
    gcsafe, locks: 0.}
proc getFrame*(self: SceneTree): int64 {.gcsafe, locks: 0.}
proc getNetworkConnectedPeers*(self: SceneTree): PoolIntArray {.gcsafe, locks: 0.}
proc getNetworkUniqueId*(self: SceneTree): int64 {.gcsafe, locks: 0.}
proc getNodeCount*(self: SceneTree): int64 {.gcsafe, locks: 0.}
proc getNodesInGroup*(self: SceneTree; group: string): Array {.gcsafe, locks: 0.}
proc getRpcSenderId*(self: SceneTree): int64 {.gcsafe, locks: 0.}
proc hasGroup*(self: SceneTree; name: string): bool {.gcsafe, locks: 0.}
proc hasNetworkPeer*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc isInputHandled*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc isNetworkServer*(self: SceneTree): bool {.gcsafe, locks: 0.}
proc notifyGroup*(self: SceneTree; group: string; notification: int64) {.gcsafe,
    locks: 0.}
proc notifyGroupFlags*(self: SceneTree; callFlags: int64; group: string;
                      notification: int64) {.gcsafe, locks: 0.}
proc queueDelete*(self: SceneTree; obj: Object) {.gcsafe, locks: 0.}
proc quit*(self: SceneTree; exitCode: int64 = -1'i64) {.gcsafe, locks: 0.}
proc reloadCurrentScene*(self: SceneTree): Error {.gcsafe, locks: 0.}
proc setAutoAcceptQuit*(self: SceneTree; enabled: bool) {.gcsafe, locks: 0.}
proc setGroup*(self: SceneTree; group: string; property: string; value: Variant) {.
    gcsafe, locks: 0.}
proc setGroupFlags*(self: SceneTree; callFlags: int64; group: string; property: string;
                   value: Variant) {.gcsafe, locks: 0.}
proc setInputAsHandled*(self: SceneTree) {.gcsafe, locks: 0.}
proc setQuitOnGoBack*(self: SceneTree; enabled: bool) {.gcsafe, locks: 0.}
proc setScreenStretch*(self: SceneTree; mode: int64; aspect: int64; minsize: Vector2;
                      shrink: float64 = 1.0) {.gcsafe, locks: 0.}
var sceneTreeGetCurrentSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc currentScene(self: SceneTree): Node =
  if isNil(sceneTreeGetCurrentSceneMethodBind):
    sceneTreeGetCurrentSceneMethodBind = getMethod(cstring"SceneTree",
        cstring"get_current_scene")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sceneTreeGetCurrentSceneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sceneTreeSetCurrentSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `currentScene=`(self: SceneTree; val: Node) =
  if isNil(sceneTreeSetCurrentSceneMethodBind):
    sceneTreeSetCurrentSceneMethodBind = getMethod(cstring"SceneTree",
        cstring"set_current_scene")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sceneTreeSetCurrentSceneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sceneTreeIsDebuggingCollisionsHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc debugCollisionsHint(self: SceneTree): bool =
  if isNil(sceneTreeIsDebuggingCollisionsHintMethodBind):
    sceneTreeIsDebuggingCollisionsHintMethodBind = getMethod(cstring"SceneTree",
        cstring"is_debugging_collisions_hint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsDebuggingCollisionsHintMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var sceneTreeSetDebugCollisionsHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc `debugCollisionsHint=`(self: SceneTree; val: bool) =
  if isNil(sceneTreeSetDebugCollisionsHintMethodBind):
    sceneTreeSetDebugCollisionsHintMethodBind = getMethod(cstring"SceneTree",
        cstring"set_debug_collisions_hint")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sceneTreeSetDebugCollisionsHintMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeIsDebuggingNavigationHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc debugNavigationHint(self: SceneTree): bool =
  if isNil(sceneTreeIsDebuggingNavigationHintMethodBind):
    sceneTreeIsDebuggingNavigationHintMethodBind = getMethod(cstring"SceneTree",
        cstring"is_debugging_navigation_hint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsDebuggingNavigationHintMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var sceneTreeSetDebugNavigationHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc `debugNavigationHint=`(self: SceneTree; val: bool) =
  if isNil(sceneTreeSetDebugNavigationHintMethodBind):
    sceneTreeSetDebugNavigationHintMethodBind = getMethod(cstring"SceneTree",
        cstring"set_debug_navigation_hint")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sceneTreeSetDebugNavigationHintMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeGetEditedSceneRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc editedSceneRoot(self: SceneTree): Node =
  if isNil(sceneTreeGetEditedSceneRootMethodBind):
    sceneTreeGetEditedSceneRootMethodBind = getMethod(cstring"SceneTree",
        cstring"get_edited_scene_root")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sceneTreeGetEditedSceneRootMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sceneTreeSetEditedSceneRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editedSceneRoot=`(self: SceneTree; val: Node) =
  if isNil(sceneTreeSetEditedSceneRootMethodBind):
    sceneTreeSetEditedSceneRootMethodBind = getMethod(cstring"SceneTree",
        cstring"set_edited_scene_root")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sceneTreeSetEditedSceneRootMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeGetMultiplayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc multiplayer(self: SceneTree): MultiplayerAPI =
  if isNil(sceneTreeGetMultiplayerMethodBind):
    sceneTreeGetMultiplayerMethodBind = getMethod(cstring"SceneTree",
        cstring"get_multiplayer")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sceneTreeGetMultiplayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sceneTreeSetMultiplayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `multiplayer=`(self: SceneTree; val: MultiplayerAPI) =
  if isNil(sceneTreeSetMultiplayerMethodBind):
    sceneTreeSetMultiplayerMethodBind = getMethod(cstring"SceneTree",
        cstring"set_multiplayer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sceneTreeSetMultiplayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sceneTreeIsMultiplayerPollEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc multiplayerPoll(self: SceneTree): bool =
  if isNil(sceneTreeIsMultiplayerPollEnabledMethodBind):
    sceneTreeIsMultiplayerPollEnabledMethodBind = getMethod(cstring"SceneTree",
        cstring"is_multiplayer_poll_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsMultiplayerPollEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var sceneTreeSetMultiplayerPollEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `multiplayerPoll=`(self: SceneTree; val: bool) =
  if isNil(sceneTreeSetMultiplayerPollEnabledMethodBind):
    sceneTreeSetMultiplayerPollEnabledMethodBind = getMethod(cstring"SceneTree",
        cstring"set_multiplayer_poll_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sceneTreeSetMultiplayerPollEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeGetNetworkPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc networkPeer(self: SceneTree): NetworkedMultiplayerPeer =
  if isNil(sceneTreeGetNetworkPeerMethodBind):
    sceneTreeGetNetworkPeerMethodBind = getMethod(cstring"SceneTree",
        cstring"get_network_peer")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sceneTreeGetNetworkPeerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sceneTreeSetNetworkPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `networkPeer=`(self: SceneTree; val: NetworkedMultiplayerPeer) =
  if isNil(sceneTreeSetNetworkPeerMethodBind):
    sceneTreeSetNetworkPeerMethodBind = getMethod(cstring"SceneTree",
        cstring"set_network_peer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sceneTreeSetNetworkPeerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sceneTreeIsPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc paused(self: SceneTree): bool =
  if isNil(sceneTreeIsPausedMethodBind):
    sceneTreeIsPausedMethodBind = getMethod(cstring"SceneTree", cstring"is_paused")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsPausedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeSetPauseMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paused=`(self: SceneTree; val: bool) =
  if isNil(sceneTreeSetPauseMethodBind):
    sceneTreeSetPauseMethodBind = getMethod(cstring"SceneTree", cstring"set_pause")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sceneTreeSetPauseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var sceneTreeIsRefusingNewNetworkConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc refuseNewNetworkConnections(self: SceneTree): bool =
  if isNil(sceneTreeIsRefusingNewNetworkConnectionsMethodBind):
    sceneTreeIsRefusingNewNetworkConnectionsMethodBind = getMethod(
        cstring"SceneTree", cstring"is_refusing_new_network_connections")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsRefusingNewNetworkConnectionsMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var sceneTreeSetRefuseNewNetworkConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `refuseNewNetworkConnections=`(self: SceneTree; val: bool) =
  if isNil(sceneTreeSetRefuseNewNetworkConnectionsMethodBind):
    sceneTreeSetRefuseNewNetworkConnectionsMethodBind = getMethod(
        cstring"SceneTree", cstring"set_refuse_new_network_connections")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sceneTreeSetRefuseNewNetworkConnectionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeGetRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc root(self: SceneTree): Viewport =
  if isNil(sceneTreeGetRootMethodBind):
    sceneTreeGetRootMethodBind = getMethod(cstring"SceneTree", cstring"get_root")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sceneTreeGetRootMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sceneTreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `root=`(self: SceneTree; val: Viewport) =
  if isNil(sceneTreeMethodBind):
    sceneTreeMethodBind = getMethod(cstring"SceneTree", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sceneTreeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var sceneTreeIsUsingFontOversamplingMethodBind {.threadvar.}: ptr GodotMethodBind
proc useFontOversampling(self: SceneTree): bool =
  if isNil(sceneTreeIsUsingFontOversamplingMethodBind):
    sceneTreeIsUsingFontOversamplingMethodBind = getMethod(cstring"SceneTree",
        cstring"is_using_font_oversampling")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsUsingFontOversamplingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var sceneTreeSetUseFontOversamplingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useFontOversampling=`(self: SceneTree; val: bool) =
  if isNil(sceneTreeSetUseFontOversamplingMethodBind):
    sceneTreeSetUseFontOversamplingMethodBind = getMethod(cstring"SceneTree",
        cstring"set_use_font_oversampling")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sceneTreeSetUseFontOversamplingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeUnderscorechangeSceneMethodBind {.threadvar.}: ptr GodotMethodBind
method changeScene(self: SceneTree; arg0: Node) =
  if isNil(sceneTreeUnderscorechangeSceneMethodBind):
    sceneTreeUnderscorechangeSceneMethodBind = getMethod(cstring"SceneTree",
        cstring"_change_scene")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sceneTreeUnderscorechangeSceneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeUnderscoreconnectedToServerMethodBind {.threadvar.}: ptr GodotMethodBind
method connectedToServer(self: SceneTree) =
  if isNil(sceneTreeUnderscoreconnectedToServerMethodBind):
    sceneTreeUnderscoreconnectedToServerMethodBind = getMethod(
        cstring"SceneTree", cstring"_connected_to_server")
  var ptrCallRet: pointer
  sceneTreeUnderscoreconnectedToServerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var sceneTreeUnderscoreconnectionFailedMethodBind {.threadvar.}: ptr GodotMethodBind
method connectionFailed(self: SceneTree) =
  if isNil(sceneTreeUnderscoreconnectionFailedMethodBind):
    sceneTreeUnderscoreconnectionFailedMethodBind = getMethod(cstring"SceneTree",
        cstring"_connection_failed")
  var ptrCallRet: pointer
  sceneTreeUnderscoreconnectionFailedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var sceneTreeUnderscorenetworkPeerConnectedMethodBind {.threadvar.}: ptr GodotMethodBind
method networkPeerConnected(self: SceneTree; arg0: int64) =
  if isNil(sceneTreeUnderscorenetworkPeerConnectedMethodBind):
    sceneTreeUnderscorenetworkPeerConnectedMethodBind = getMethod(
        cstring"SceneTree", cstring"_network_peer_connected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  sceneTreeUnderscorenetworkPeerConnectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeUnderscorenetworkPeerDisconnectedMethodBind {.threadvar.}: ptr GodotMethodBind
method networkPeerDisconnected(self: SceneTree; arg0: int64) =
  if isNil(sceneTreeUnderscorenetworkPeerDisconnectedMethodBind):
    sceneTreeUnderscorenetworkPeerDisconnectedMethodBind = getMethod(
        cstring"SceneTree", cstring"_network_peer_disconnected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  sceneTreeUnderscorenetworkPeerDisconnectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeUnderscoreserverDisconnectedMethodBind {.threadvar.}: ptr GodotMethodBind
method serverDisconnected(self: SceneTree) =
  if isNil(sceneTreeUnderscoreserverDisconnectedMethodBind):
    sceneTreeUnderscoreserverDisconnectedMethodBind = getMethod(
        cstring"SceneTree", cstring"_server_disconnected")
  var ptrCallRet: pointer
  sceneTreeUnderscoreserverDisconnectedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var sceneTreeCallGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc callGroup(self: SceneTree; group: string; methodd: string;
              variantArgs: varargs[Variant]): Variant =
  if isNil(sceneTreeCallGroupMethodBind):
    sceneTreeCallGroupMethodBind = getMethod(cstring"SceneTree",
        cstring"call_group")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(2 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(group)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var variant1: GodotVariant
  var variantString1: GodotString = toGodotString(methodd)
  initGodotVariant(variant1, variantString1)
  argsToPassToGodot[][1] = addr(variant1)
  var idx = 2
  while idx < cint(2 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 2].godotVariant
    inc idx
  let callRet {.used.} = sceneTreeCallGroupMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(2 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  deinit(variant1)
  deinit(variantString1)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var sceneTreeCallGroupFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc callGroupFlags(self: SceneTree; flags: int64; group: string; methodd: string;
                   variantArgs: varargs[Variant]): Variant =
  if isNil(sceneTreeCallGroupFlagsMethodBind):
    sceneTreeCallGroupFlagsMethodBind = getMethod(cstring"SceneTree",
        cstring"call_group_flags")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(3 + variantArgs.len)))))
  var variant0: GodotVariant
  initGodotVariant(variant0, flags)
  argsToPassToGodot[][0] = addr(variant0)
  var variant1: GodotVariant
  var variantString1: GodotString = toGodotString(group)
  initGodotVariant(variant1, variantString1)
  argsToPassToGodot[][1] = addr(variant1)
  var variant2: GodotVariant
  var variantString2: GodotString = toGodotString(methodd)
  initGodotVariant(variant2, variantString2)
  argsToPassToGodot[][2] = addr(variant2)
  var idx = 3
  while idx < cint(3 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 3].godotVariant
    inc idx
  let callRet {.used.} = sceneTreeCallGroupFlagsMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(3 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variant1)
  deinit(variantString1)
  deinit(variant2)
  deinit(variantString2)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var sceneTreeChangeSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc changeSceneImpl(self: SceneTree; path: string): Error =
  if isNil(sceneTreeChangeSceneMethodBind):
    sceneTreeChangeSceneMethodBind = getMethod(cstring"SceneTree",
        cstring"change_scene")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  sceneTreeChangeSceneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var sceneTreeChangeSceneToMethodBind {.threadvar.}: ptr GodotMethodBind
proc changeSceneTo(self: SceneTree; packedScene: PackedScene): Error =
  if isNil(sceneTreeChangeSceneToMethodBind):
    sceneTreeChangeSceneToMethodBind = getMethod(cstring"SceneTree",
        cstring"change_scene_to")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not packedScene.isNil:
    packedScene.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  sceneTreeChangeSceneToMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var sceneTreeCreateTimerMethodBind {.threadvar.}: ptr GodotMethodBind
proc createTimer(self: SceneTree; timeSec: float64; pauseModeProcess: bool = true): SceneTreeTimer =
  if isNil(sceneTreeCreateTimerMethodBind):
    sceneTreeCreateTimerMethodBind = getMethod(cstring"SceneTree",
        cstring"create_timer")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(timeSec)
  argsToPassToGodot[][1] = unsafeAddr(pauseModeProcess)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sceneTreeCreateTimerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sceneTreeGetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFrame(self: SceneTree): int64 =
  if isNil(sceneTreeGetFrameMethodBind):
    sceneTreeGetFrameMethodBind = getMethod(cstring"SceneTree", cstring"get_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeGetFrameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeGetNetworkConnectedPeersMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNetworkConnectedPeers(self: SceneTree): PoolIntArray =
  if isNil(sceneTreeGetNetworkConnectedPeersMethodBind):
    sceneTreeGetNetworkConnectedPeersMethodBind = getMethod(cstring"SceneTree",
        cstring"get_network_connected_peers")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  sceneTreeGetNetworkConnectedPeersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var sceneTreeGetNetworkUniqueIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNetworkUniqueId(self: SceneTree): int64 =
  if isNil(sceneTreeGetNetworkUniqueIdMethodBind):
    sceneTreeGetNetworkUniqueIdMethodBind = getMethod(cstring"SceneTree",
        cstring"get_network_unique_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeGetNetworkUniqueIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeGetNodeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeCount(self: SceneTree): int64 =
  if isNil(sceneTreeGetNodeCountMethodBind):
    sceneTreeGetNodeCountMethodBind = getMethod(cstring"SceneTree",
        cstring"get_node_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeGetNodeCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeGetNodesInGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodesInGroup(self: SceneTree; group: string): Array =
  if isNil(sceneTreeGetNodesInGroupMethodBind):
    sceneTreeGetNodesInGroupMethodBind = getMethod(cstring"SceneTree",
        cstring"get_nodes_in_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(group)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  sceneTreeGetNodesInGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var sceneTreeGetRpcSenderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRpcSenderId(self: SceneTree): int64 =
  if isNil(sceneTreeGetRpcSenderIdMethodBind):
    sceneTreeGetRpcSenderIdMethodBind = getMethod(cstring"SceneTree",
        cstring"get_rpc_sender_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeGetRpcSenderIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeHasGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasGroup(self: SceneTree; name: string): bool =
  if isNil(sceneTreeHasGroupMethodBind):
    sceneTreeHasGroupMethodBind = getMethod(cstring"SceneTree", cstring"has_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeHasGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var sceneTreeHasNetworkPeerMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasNetworkPeer(self: SceneTree): bool =
  if isNil(sceneTreeHasNetworkPeerMethodBind):
    sceneTreeHasNetworkPeerMethodBind = getMethod(cstring"SceneTree",
        cstring"has_network_peer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeHasNetworkPeerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeIsInputHandledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInputHandled(self: SceneTree): bool =
  if isNil(sceneTreeIsInputHandledMethodBind):
    sceneTreeIsInputHandledMethodBind = getMethod(cstring"SceneTree",
        cstring"is_input_handled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsInputHandledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeIsNetworkServerMethodBind {.threadvar.}: ptr GodotMethodBind
proc isNetworkServer(self: SceneTree): bool =
  if isNil(sceneTreeIsNetworkServerMethodBind):
    sceneTreeIsNetworkServerMethodBind = getMethod(cstring"SceneTree",
        cstring"is_network_server")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneTreeIsNetworkServerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeNotifyGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc notifyGroup(self: SceneTree; group: string; notification: int64) =
  if isNil(sceneTreeNotifyGroupMethodBind):
    sceneTreeNotifyGroupMethodBind = getMethod(cstring"SceneTree",
        cstring"notify_group")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(group)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(notification)
  var ptrCallRet: pointer
  sceneTreeNotifyGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var sceneTreeNotifyGroupFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc notifyGroupFlags(self: SceneTree; callFlags: int64; group: string;
                     notification: int64) =
  if isNil(sceneTreeNotifyGroupFlagsMethodBind):
    sceneTreeNotifyGroupFlagsMethodBind = getMethod(cstring"SceneTree",
        cstring"notify_group_flags")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(callFlags)
  var argToPassToGodot1 = toGodotString(group)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(notification)
  var ptrCallRet: pointer
  sceneTreeNotifyGroupFlagsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var sceneTreeQueueDeleteMethodBind {.threadvar.}: ptr GodotMethodBind
proc queueDelete(self: SceneTree; obj: Object) =
  if isNil(sceneTreeQueueDeleteMethodBind):
    sceneTreeQueueDeleteMethodBind = getMethod(cstring"SceneTree",
        cstring"queue_delete")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not obj.isNil:
    obj.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sceneTreeQueueDeleteMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sceneTreeQuitMethodBind {.threadvar.}: ptr GodotMethodBind
proc quit(self: SceneTree; exitCode: int64 = -1'i64) =
  if isNil(sceneTreeQuitMethodBind):
    sceneTreeQuitMethodBind = getMethod(cstring"SceneTree", cstring"quit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(exitCode)
  var ptrCallRet: pointer
  sceneTreeQuitMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var sceneTreeReloadCurrentSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc reloadCurrentScene(self: SceneTree): Error =
  if isNil(sceneTreeReloadCurrentSceneMethodBind):
    sceneTreeReloadCurrentSceneMethodBind = getMethod(cstring"SceneTree",
        cstring"reload_current_scene")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  sceneTreeReloadCurrentSceneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var sceneTreeSetAutoAcceptQuitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAutoAcceptQuit(self: SceneTree; enabled: bool) =
  if isNil(sceneTreeSetAutoAcceptQuitMethodBind):
    sceneTreeSetAutoAcceptQuitMethodBind = getMethod(cstring"SceneTree",
        cstring"set_auto_accept_quit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  sceneTreeSetAutoAcceptQuitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneTreeSetGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc setGroup(self: SceneTree; group: string; property: string; value: Variant) =
  if isNil(sceneTreeSetGroupMethodBind):
    sceneTreeSetGroupMethodBind = getMethod(cstring"SceneTree", cstring"set_group")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(group)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  sceneTreeSetGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var sceneTreeSetGroupFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setGroupFlags(self: SceneTree; callFlags: int64; group: string; property: string;
                  value: Variant) =
  if isNil(sceneTreeSetGroupFlagsMethodBind):
    sceneTreeSetGroupFlagsMethodBind = getMethod(cstring"SceneTree",
        cstring"set_group_flags")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(callFlags)
  var argToPassToGodot1 = toGodotString(group)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var argToPassToGodot2 = toGodotString(property)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = value.godotVariant
  var ptrCallRet: pointer
  sceneTreeSetGroupFlagsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)
  deinit(argToPassToGodot2)

var sceneTreeSetInputAsHandledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputAsHandled(self: SceneTree) =
  if isNil(sceneTreeSetInputAsHandledMethodBind):
    sceneTreeSetInputAsHandledMethodBind = getMethod(cstring"SceneTree",
        cstring"set_input_as_handled")
  var ptrCallRet: pointer
  sceneTreeSetInputAsHandledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneTreeSetQuitOnGoBackMethodBind {.threadvar.}: ptr GodotMethodBind
proc setQuitOnGoBack(self: SceneTree; enabled: bool) =
  if isNil(sceneTreeSetQuitOnGoBackMethodBind):
    sceneTreeSetQuitOnGoBackMethodBind = getMethod(cstring"SceneTree",
        cstring"set_quit_on_go_back")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  sceneTreeSetQuitOnGoBackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sceneTreeSetScreenStretchMethodBind {.threadvar.}: ptr GodotMethodBind
proc setScreenStretch(self: SceneTree; mode: int64; aspect: int64; minsize: Vector2;
                     shrink: float64 = 1.0) =
  if isNil(sceneTreeSetScreenStretchMethodBind):
    sceneTreeSetScreenStretchMethodBind = getMethod(cstring"SceneTree",
        cstring"set_screen_stretch")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  argsToPassToGodot[][1] = unsafeAddr(aspect)
  argsToPassToGodot[][2] = unsafeAddr(minsize)
  argsToPassToGodot[][3] = unsafeAddr(shrink)
  var ptrCallRet: pointer
  sceneTreeSetScreenStretchMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
