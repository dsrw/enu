
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  DUPLICATE_GROUPS* = 2'i64
  DUPLICATE_SCRIPTS* = 4'i64
  DUPLICATE_SIGNALS* = 1'i64
  DUPLICATE_USE_INSTANCING* = 8'i64
  NOTIFICATION_APP_PAUSED* = 1015'i64
  NOTIFICATION_APP_RESUMED* = 1014'i64
  NOTIFICATION_CRASH* = 1012'i64
  NOTIFICATION_DRAG_BEGIN* = 21'i64
  NOTIFICATION_DRAG_END* = 22'i64
  NOTIFICATION_ENTER_TREE* = 10'i64
  NOTIFICATION_EXIT_TREE* = 11'i64
  NOTIFICATION_INSTANCED* = 20'i64
  NOTIFICATION_INTERNAL_PHYSICS_PROCESS* = 26'i64
  NOTIFICATION_INTERNAL_PROCESS* = 25'i64
  NOTIFICATION_MOVED_IN_PARENT* = 12'i64
  NOTIFICATION_OS_IME_UPDATE* = 1013'i64
  NOTIFICATION_OS_MEMORY_WARNING* = 1009'i64
  NOTIFICATION_PARENTED* = 18'i64
  NOTIFICATION_PATH_CHANGED* = 23'i64
  NOTIFICATION_PAUSED* = 14'i64
  NOTIFICATION_PHYSICS_PROCESS* = 16'i64
  NOTIFICATION_PROCESS* = 17'i64
  NOTIFICATION_READY* = 13'i64
  NOTIFICATION_TRANSLATION_CHANGED* = 1010'i64
  NOTIFICATION_UNPARENTED* = 19'i64
  NOTIFICATION_UNPAUSED* = 15'i64
  NOTIFICATION_WM_ABOUT* = 1011'i64
  NOTIFICATION_WM_FOCUS_IN* = 1004'i64
  NOTIFICATION_WM_FOCUS_OUT* = 1005'i64
  NOTIFICATION_WM_GO_BACK_REQUEST* = 1007'i64
  NOTIFICATION_WM_MOUSE_ENTER* = 1002'i64
  NOTIFICATION_WM_MOUSE_EXIT* = 1003'i64
  NOTIFICATION_WM_QUIT_REQUEST* = 1006'i64
  NOTIFICATION_WM_UNFOCUS_REQUEST* = 1008'i64
  PAUSE_MODE_INHERIT* = 0'i64
  PAUSE_MODE_PROCESS* = 2'i64
  PAUSE_MODE_STOP* = 1'i64
proc importPath*(self: Node): NodePath {.gcsafe, locks: 0.}
proc `importPath=`*(self: Node; val: NodePath) {.gcsafe, locks: 0.}
proc customMultiplayer*(self: Node): MultiplayerAPI {.gcsafe, locks: 0.}
proc `customMultiplayer=`*(self: Node; val: MultiplayerAPI) {.gcsafe, locks: 0.}
proc editorDescription*(self: Node): string {.gcsafe, locks: 0.}
proc `editorDescription=`*(self: Node; val: string) {.gcsafe, locks: 0.}
proc filename*(self: Node): string {.gcsafe, locks: 0.}
proc `filename=`*(self: Node; val: string) {.gcsafe, locks: 0.}
proc multiplayer*(self: Node): MultiplayerAPI {.gcsafe, locks: 0.}
proc `multiplayer=`*(self: Node; val: MultiplayerAPI) {.gcsafe, locks: 0.}
proc name*(self: Node): string {.gcsafe, locks: 0.}
proc `name=`*(self: Node; val: string) {.gcsafe, locks: 0.}
proc owner*(self: Node): Node {.gcsafe, locks: 0.}
proc `owner=`*(self: Node; val: Node) {.gcsafe, locks: 0.}
proc pauseMode*(self: Node): int64 {.gcsafe, locks: 0.}
proc `pauseMode=`*(self: Node; val: int64) {.gcsafe, locks: 0.}
proc processPriority*(self: Node): int64 {.gcsafe, locks: 0.}
proc `processPriority=`*(self: Node; val: int64) {.gcsafe, locks: 0.}
method enterTree*(self: Node) {.gcsafe, locks: 0, base.}
method exitTree*(self: Node) {.gcsafe, locks: 0, base.}
method getConfigurationWarning*(self: Node): string {.gcsafe, locks: 0, base.}
method input*(self: Node; event: InputEvent) {.gcsafe, locks: 0, base.}
method physicsProcess*(self: Node; delta: float64) {.gcsafe, locks: 0, base.}
method process*(self: Node; delta: float64) {.gcsafe, locks: 0, base.}
method ready*(self: Node) {.gcsafe, locks: 0, base.}
method unhandledInput*(self: Node; event: InputEvent) {.gcsafe, locks: 0, base.}
method unhandledKeyInput*(self: Node; event: InputEventKey) {.gcsafe, locks: 0, base.}
proc addChild*(self: Node; node: Node; legibleUniqueName: bool = false) {.gcsafe, locks: 0.}
proc addChildBelowNode*(self: Node; node: Node; childNode: Node;
                       legibleUniqueName: bool = false) {.gcsafe, locks: 0.}
proc addToGroup*(self: Node; group: string; persistent: bool = false) {.gcsafe, locks: 0.}
proc canProcess*(self: Node): bool {.gcsafe, locks: 0.}
proc duplicate*(self: Node; flags: int64 = 15'i64): Node {.gcsafe, locks: 0.}
proc findNode*(self: Node; mask: string; recursive: bool = true; owned: bool = true): Node {.
    gcsafe, locks: 0.}
proc findParent*(self: Node; mask: string): Node {.gcsafe, locks: 0.}
proc getChild*(self: Node; idx: int64): Node {.gcsafe, locks: 0.}
proc getChildCount*(self: Node): int64 {.gcsafe, locks: 0.}
proc getChildren*(self: Node): Array {.gcsafe, locks: 0.}
proc getGroups*(self: Node): Array {.gcsafe, locks: 0.}
proc getIndex*(self: Node): int64 {.gcsafe, locks: 0.}
proc getNetworkMaster*(self: Node): int64 {.gcsafe, locks: 0.}
proc getNode*(self: Node; path: NodePath): Node {.gcsafe, locks: 0.}
proc getNodeAndResource*(self: Node; path: NodePath): Array {.gcsafe, locks: 0.}
proc getNodeOrNull*(self: Node; path: NodePath): Node {.gcsafe, locks: 0.}
proc getParent*(self: Node): Node {.gcsafe, locks: 0.}
proc getPath*(self: Node): NodePath {.gcsafe, locks: 0.}
proc getPathTo*(self: Node; node: Node): NodePath {.gcsafe, locks: 0.}
proc getPhysicsProcessDeltaTime*(self: Node): float64 {.gcsafe, locks: 0.}
proc getPositionInParent*(self: Node): int64 {.gcsafe, locks: 0.}
proc getProcessDeltaTime*(self: Node): float64 {.gcsafe, locks: 0.}
proc getSceneInstanceLoadPlaceholder*(self: Node): bool {.gcsafe, locks: 0.}
proc getTree*(self: Node): SceneTree {.gcsafe, locks: 0.}
proc getViewport*(self: Node): Viewport {.gcsafe, locks: 0.}
proc hasNode*(self: Node; path: NodePath): bool {.gcsafe, locks: 0.}
proc hasNodeAndResource*(self: Node; path: NodePath): bool {.gcsafe, locks: 0.}
proc isAParentOf*(self: Node; node: Node): bool {.gcsafe, locks: 0.}
proc isDisplayedFolded*(self: Node): bool {.gcsafe, locks: 0.}
proc isGreaterThan*(self: Node; node: Node): bool {.gcsafe, locks: 0.}
proc isInGroup*(self: Node; group: string): bool {.gcsafe, locks: 0.}
proc isInsideTree*(self: Node): bool {.gcsafe, locks: 0.}
proc isNetworkMaster*(self: Node): bool {.gcsafe, locks: 0.}
proc isPhysicsProcessing*(self: Node): bool {.gcsafe, locks: 0.}
proc isPhysicsProcessingInternal*(self: Node): bool {.gcsafe, locks: 0.}
proc isProcessing*(self: Node): bool {.gcsafe, locks: 0.}
proc isProcessingInput*(self: Node): bool {.gcsafe, locks: 0.}
proc isProcessingInternal*(self: Node): bool {.gcsafe, locks: 0.}
proc isProcessingUnhandledInput*(self: Node): bool {.gcsafe, locks: 0.}
proc isProcessingUnhandledKeyInput*(self: Node): bool {.gcsafe, locks: 0.}
proc moveChild*(self: Node; childNode: Node; toPosition: int64) {.gcsafe, locks: 0.}
proc printStrayNodes*(self: Node) {.gcsafe, locks: 0.}
proc printTree*(self: Node) {.gcsafe, locks: 0.}
proc printTreePretty*(self: Node) {.gcsafe, locks: 0.}
proc propagateCall*(self: Node; methodd: string; args: Array = newArray();
                   parentFirst: bool = false) {.gcsafe, locks: 0.}
proc propagateNotification*(self: Node; what: int64) {.gcsafe, locks: 0.}
proc queueFree*(self: Node) {.gcsafe, locks: 0.}
proc raisee*(self: Node) {.gcsafe, locks: 0.}
proc removeAndSkip*(self: Node) {.gcsafe, locks: 0.}
proc removeChild*(self: Node; node: Node) {.gcsafe, locks: 0.}
proc removeFromGroup*(self: Node; group: string) {.gcsafe, locks: 0.}
proc replaceBy*(self: Node; node: Node; keepData: bool = false) {.gcsafe, locks: 0.}
proc requestReady*(self: Node) {.gcsafe, locks: 0.}
proc rpc*(self: Node; methodd: string; variantArgs: varargs[Variant]): Variant {.gcsafe,
    locks: 0.}
proc rpcConfig*(self: Node; methodd: string; mode: int64) {.gcsafe, locks: 0.}
proc rpcId*(self: Node; peerId: int64; methodd: string; variantArgs: varargs[Variant]): Variant {.
    gcsafe, locks: 0.}
proc rpcUnreliable*(self: Node; methodd: string; variantArgs: varargs[Variant]): Variant {.
    gcsafe, locks: 0.}
proc rpcUnreliableId*(self: Node; peerId: int64; methodd: string;
                     variantArgs: varargs[Variant]): Variant {.gcsafe, locks: 0.}
proc rset*(self: Node; property: string; value: Variant) {.gcsafe, locks: 0.}
proc rsetConfig*(self: Node; property: string; mode: int64) {.gcsafe, locks: 0.}
proc rsetId*(self: Node; peerId: int64; property: string; value: Variant) {.gcsafe,
    locks: 0.}
proc rsetUnreliable*(self: Node; property: string; value: Variant) {.gcsafe, locks: 0.}
proc rsetUnreliableId*(self: Node; peerId: int64; property: string; value: Variant) {.
    gcsafe, locks: 0.}
proc setDisplayFolded*(self: Node; fold: bool) {.gcsafe, locks: 0.}
proc setNetworkMaster*(self: Node; id: int64; recursive: bool = true) {.gcsafe, locks: 0.}
proc setPhysicsProcess*(self: Node; enable: bool) {.gcsafe, locks: 0.}
proc setPhysicsProcessInternal*(self: Node; enable: bool) {.gcsafe, locks: 0.}
proc setProcess*(self: Node; enable: bool) {.gcsafe, locks: 0.}
proc setProcessInput*(self: Node; enable: bool) {.gcsafe, locks: 0.}
proc setProcessInternal*(self: Node; enable: bool) {.gcsafe, locks: 0.}
proc setProcessUnhandledInput*(self: Node; enable: bool) {.gcsafe, locks: 0.}
proc setProcessUnhandledKeyInput*(self: Node; enable: bool) {.gcsafe, locks: 0.}
proc setSceneInstanceLoadPlaceholder*(self: Node; loadPlaceholder: bool) {.gcsafe,
    locks: 0.}
proc updateConfigurationWarning*(self: Node) {.gcsafe, locks: 0.}
var nodeUnderscoregetImportPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc importPath(self: Node): NodePath =
  if isNil(nodeUnderscoregetImportPathMethodBind):
    nodeUnderscoregetImportPathMethodBind = getMethod(cstring"Node",
        cstring"_get_import_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  nodeUnderscoregetImportPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var nodeUnderscoresetImportPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `importPath=`(self: Node; val: NodePath) =
  if isNil(nodeUnderscoresetImportPathMethodBind):
    nodeUnderscoresetImportPathMethodBind = getMethod(cstring"Node",
        cstring"_set_import_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  nodeUnderscoresetImportPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeGetCustomMultiplayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc customMultiplayer(self: Node): MultiplayerAPI =
  if isNil(nodeGetCustomMultiplayerMethodBind):
    nodeGetCustomMultiplayerMethodBind = getMethod(cstring"Node",
        cstring"get_custom_multiplayer")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetCustomMultiplayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeSetCustomMultiplayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customMultiplayer=`(self: Node; val: MultiplayerAPI) =
  if isNil(nodeSetCustomMultiplayerMethodBind):
    nodeSetCustomMultiplayerMethodBind = getMethod(cstring"Node",
        cstring"set_custom_multiplayer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  nodeSetCustomMultiplayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeUnderscoregetEditorDescriptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc editorDescription(self: Node): string =
  if isNil(nodeUnderscoregetEditorDescriptionMethodBind):
    nodeUnderscoregetEditorDescriptionMethodBind = getMethod(cstring"Node",
        cstring"_get_editor_description")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nodeUnderscoregetEditorDescriptionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nodeUnderscoresetEditorDescriptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editorDescription=`(self: Node; val: string) =
  if isNil(nodeUnderscoresetEditorDescriptionMethodBind):
    nodeUnderscoresetEditorDescriptionMethodBind = getMethod(cstring"Node",
        cstring"_set_editor_description")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  nodeUnderscoresetEditorDescriptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nodeGetFilenameMethodBind {.threadvar.}: ptr GodotMethodBind
proc filename(self: Node): string =
  if isNil(nodeGetFilenameMethodBind):
    nodeGetFilenameMethodBind = getMethod(cstring"Node", cstring"get_filename")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nodeGetFilenameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nodeSetFilenameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filename=`(self: Node; val: string) =
  if isNil(nodeSetFilenameMethodBind):
    nodeSetFilenameMethodBind = getMethod(cstring"Node", cstring"set_filename")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  nodeSetFilenameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var nodeGetMultiplayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc multiplayer(self: Node): MultiplayerAPI =
  if isNil(nodeGetMultiplayerMethodBind):
    nodeGetMultiplayerMethodBind = getMethod(cstring"Node",
        cstring"get_multiplayer")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetMultiplayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `multiplayer=`(self: Node; val: MultiplayerAPI) =
  if isNil(nodeMethodBind):
    nodeMethodBind = getMethod(cstring"Node", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  nodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var nodeGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc name(self: Node): string =
  if isNil(nodeGetNameMethodBind):
    nodeGetNameMethodBind = getMethod(cstring"Node", cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nodeGetNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nodeSetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `name=`(self: Node; val: string) =
  if isNil(nodeSetNameMethodBind):
    nodeSetNameMethodBind = getMethod(cstring"Node", cstring"set_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  nodeSetNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nodeGetOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc owner(self: Node): Node =
  if isNil(nodeGetOwnerMethodBind):
    nodeGetOwnerMethodBind = getMethod(cstring"Node", cstring"get_owner")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetOwnerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeSetOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `owner=`(self: Node; val: Node) =
  if isNil(nodeSetOwnerMethodBind):
    nodeSetOwnerMethodBind = getMethod(cstring"Node", cstring"set_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  nodeSetOwnerMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var nodeGetPauseModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc pauseMode(self: Node): int64 =
  if isNil(nodeGetPauseModeMethodBind):
    nodeGetPauseModeMethodBind = getMethod(cstring"Node", cstring"get_pause_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetPauseModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeSetPauseModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pauseMode=`(self: Node; val: int64) =
  if isNil(nodeSetPauseModeMethodBind):
    nodeSetPauseModeMethodBind = getMethod(cstring"Node", cstring"set_pause_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  nodeSetPauseModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var nodeGetProcessPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc processPriority(self: Node): int64 =
  if isNil(nodeGetProcessPriorityMethodBind):
    nodeGetProcessPriorityMethodBind = getMethod(cstring"Node",
        cstring"get_process_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetProcessPriorityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeSetProcessPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `processPriority=`(self: Node; val: int64) =
  if isNil(nodeSetProcessPriorityMethodBind):
    nodeSetProcessPriorityMethodBind = getMethod(cstring"Node",
        cstring"set_process_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  nodeSetProcessPriorityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeUnderscoreenterTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method enterTree(self: Node) =
  if isNil(nodeUnderscoreenterTreeMethodBind):
    nodeUnderscoreenterTreeMethodBind = getMethod(cstring"Node",
        cstring"_enter_tree")
  var ptrCallRet: pointer
  nodeUnderscoreenterTreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeUnderscoreexitTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method exitTree(self: Node) =
  if isNil(nodeUnderscoreexitTreeMethodBind):
    nodeUnderscoreexitTreeMethodBind = getMethod(cstring"Node",
        cstring"_exit_tree")
  var ptrCallRet: pointer
  nodeUnderscoreexitTreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeUnderscoregetConfigurationWarningMethodBind {.threadvar.}: ptr GodotMethodBind
method getConfigurationWarning(self: Node): string =
  if isNil(nodeUnderscoregetConfigurationWarningMethodBind):
    nodeUnderscoregetConfigurationWarningMethodBind = getMethod(cstring"Node",
        cstring"_get_configuration_warning")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nodeUnderscoregetConfigurationWarningMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nodeUnderscoreinputMethodBind {.threadvar.}: ptr GodotMethodBind
method input(self: Node; event: InputEvent) =
  if isNil(nodeUnderscoreinputMethodBind):
    nodeUnderscoreinputMethodBind = getMethod(cstring"Node", cstring"_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  nodeUnderscoreinputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var nodeUnderscorephysicsProcessMethodBind {.threadvar.}: ptr GodotMethodBind
method physicsProcess(self: Node; delta: float64) =
  if isNil(nodeUnderscorephysicsProcessMethodBind):
    nodeUnderscorephysicsProcessMethodBind = getMethod(cstring"Node",
        cstring"_physics_process")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  nodeUnderscorephysicsProcessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeUnderscoreprocessMethodBind {.threadvar.}: ptr GodotMethodBind
method process(self: Node; delta: float64) =
  if isNil(nodeUnderscoreprocessMethodBind):
    nodeUnderscoreprocessMethodBind = getMethod(cstring"Node", cstring"_process")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  nodeUnderscoreprocessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeUnderscorereadyMethodBind {.threadvar.}: ptr GodotMethodBind
method ready(self: Node) =
  if isNil(nodeUnderscorereadyMethodBind):
    nodeUnderscorereadyMethodBind = getMethod(cstring"Node", cstring"_ready")
  var ptrCallRet: pointer
  nodeUnderscorereadyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeUnderscoreunhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledInput(self: Node; event: InputEvent) =
  if isNil(nodeUnderscoreunhandledInputMethodBind):
    nodeUnderscoreunhandledInputMethodBind = getMethod(cstring"Node",
        cstring"_unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  nodeUnderscoreunhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeUnderscoreunhandledKeyInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledKeyInput(self: Node; event: InputEventKey) =
  if isNil(nodeUnderscoreunhandledKeyInputMethodBind):
    nodeUnderscoreunhandledKeyInputMethodBind = getMethod(cstring"Node",
        cstring"_unhandled_key_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  nodeUnderscoreunhandledKeyInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeAddChildMethodBind {.threadvar.}: ptr GodotMethodBind
proc addChild(self: Node; node: Node; legibleUniqueName: bool = false) =
  if isNil(nodeAddChildMethodBind):
    nodeAddChildMethodBind = getMethod(cstring"Node", cstring"add_child")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(legibleUniqueName)
  var ptrCallRet: pointer
  nodeAddChildMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var nodeAddChildBelowNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addChildBelowNode(self: Node; node: Node; childNode: Node;
                      legibleUniqueName: bool = false) =
  if isNil(nodeAddChildBelowNodeMethodBind):
    nodeAddChildBelowNodeMethodBind = getMethod(cstring"Node",
        cstring"add_child_below_node")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not childNode.isNil:
    childNode.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(legibleUniqueName)
  var ptrCallRet: pointer
  nodeAddChildBelowNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeAddToGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc addToGroup(self: Node; group: string; persistent: bool = false) =
  if isNil(nodeAddToGroupMethodBind):
    nodeAddToGroupMethodBind = getMethod(cstring"Node", cstring"add_to_group")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(group)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(persistent)
  var ptrCallRet: pointer
  nodeAddToGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nodeCanProcessMethodBind {.threadvar.}: ptr GodotMethodBind
proc canProcess(self: Node): bool =
  if isNil(nodeCanProcessMethodBind):
    nodeCanProcessMethodBind = getMethod(cstring"Node", cstring"can_process")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeCanProcessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeDuplicateMethodBind {.threadvar.}: ptr GodotMethodBind
proc duplicate(self: Node; flags: int64 = 15'i64): Node =
  if isNil(nodeDuplicateMethodBind):
    nodeDuplicateMethodBind = getMethod(cstring"Node", cstring"duplicate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(flags)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeDuplicateMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeFindNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc findNode(self: Node; mask: string; recursive: bool = true; owned: bool = true): Node =
  if isNil(nodeFindNodeMethodBind):
    nodeFindNodeMethodBind = getMethod(cstring"Node", cstring"find_node")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(mask)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(recursive)
  argsToPassToGodot[][2] = unsafeAddr(owned)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeFindNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeFindParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc findParent(self: Node; mask: string): Node =
  if isNil(nodeFindParentMethodBind):
    nodeFindParentMethodBind = getMethod(cstring"Node", cstring"find_parent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(mask)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeFindParentMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeGetChildMethodBind {.threadvar.}: ptr GodotMethodBind
proc getChild(self: Node; idx: int64): Node =
  if isNil(nodeGetChildMethodBind):
    nodeGetChildMethodBind = getMethod(cstring"Node", cstring"get_child")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetChildMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeGetChildCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getChildCount(self: Node): int64 =
  if isNil(nodeGetChildCountMethodBind):
    nodeGetChildCountMethodBind = getMethod(cstring"Node",
        cstring"get_child_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetChildCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeGetChildrenMethodBind {.threadvar.}: ptr GodotMethodBind
proc getChildren(self: Node): Array =
  if isNil(nodeGetChildrenMethodBind):
    nodeGetChildrenMethodBind = getMethod(cstring"Node", cstring"get_children")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  nodeGetChildrenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var nodeGetGroupsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGroups(self: Node): Array =
  if isNil(nodeGetGroupsMethodBind):
    nodeGetGroupsMethodBind = getMethod(cstring"Node", cstring"get_groups")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  nodeGetGroupsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var nodeGetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIndex(self: Node): int64 =
  if isNil(nodeGetIndexMethodBind):
    nodeGetIndexMethodBind = getMethod(cstring"Node", cstring"get_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetIndexMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeGetNetworkMasterMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNetworkMaster(self: Node): int64 =
  if isNil(nodeGetNetworkMasterMethodBind):
    nodeGetNetworkMasterMethodBind = getMethod(cstring"Node",
        cstring"get_network_master")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetNetworkMasterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeGetNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNode(self: Node; path: NodePath): Node =
  if isNil(nodeGetNodeMethodBind):
    nodeGetNodeMethodBind = getMethod(cstring"Node", cstring"get_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeGetNodeAndResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeAndResource(self: Node; path: NodePath): Array =
  if isNil(nodeGetNodeAndResourceMethodBind):
    nodeGetNodeAndResourceMethodBind = getMethod(cstring"Node",
        cstring"get_node_and_resource")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  nodeGetNodeAndResourceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var nodeGetNodeOrNullMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeOrNull(self: Node; path: NodePath): Node =
  if isNil(nodeGetNodeOrNullMethodBind):
    nodeGetNodeOrNullMethodBind = getMethod(cstring"Node",
        cstring"get_node_or_null")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetNodeOrNullMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeGetParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParent(self: Node): Node =
  if isNil(nodeGetParentMethodBind):
    nodeGetParentMethodBind = getMethod(cstring"Node", cstring"get_parent")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetParentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeGetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPath(self: Node): NodePath =
  if isNil(nodeGetPathMethodBind):
    nodeGetPathMethodBind = getMethod(cstring"Node", cstring"get_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  nodeGetPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var nodeGetPathToMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPathTo(self: Node; node: Node): NodePath =
  if isNil(nodeGetPathToMethodBind):
    nodeGetPathToMethodBind = getMethod(cstring"Node", cstring"get_path_to")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  nodeGetPathToMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newNodePath(ptrCallVal)

var nodeGetPhysicsProcessDeltaTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPhysicsProcessDeltaTime(self: Node): float64 =
  if isNil(nodeGetPhysicsProcessDeltaTimeMethodBind):
    nodeGetPhysicsProcessDeltaTimeMethodBind = getMethod(cstring"Node",
        cstring"get_physics_process_delta_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetPhysicsProcessDeltaTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var nodeGetPositionInParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPositionInParent(self: Node): int64 =
  if isNil(nodeGetPositionInParentMethodBind):
    nodeGetPositionInParentMethodBind = getMethod(cstring"Node",
        cstring"get_position_in_parent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetPositionInParentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeGetProcessDeltaTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProcessDeltaTime(self: Node): float64 =
  if isNil(nodeGetProcessDeltaTimeMethodBind):
    nodeGetProcessDeltaTimeMethodBind = getMethod(cstring"Node",
        cstring"get_process_delta_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetProcessDeltaTimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeGetSceneInstanceLoadPlaceholderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSceneInstanceLoadPlaceholder(self: Node): bool =
  if isNil(nodeGetSceneInstanceLoadPlaceholderMethodBind):
    nodeGetSceneInstanceLoadPlaceholderMethodBind = getMethod(cstring"Node",
        cstring"get_scene_instance_load_placeholder")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeGetSceneInstanceLoadPlaceholderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var nodeGetTreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTree(self: Node): SceneTree =
  if isNil(nodeGetTreeMethodBind):
    nodeGetTreeMethodBind = getMethod(cstring"Node", cstring"get_tree")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetTreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeGetViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc getViewport(self: Node): Viewport =
  if isNil(nodeGetViewportMethodBind):
    nodeGetViewportMethodBind = getMethod(cstring"Node", cstring"get_viewport")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nodeGetViewportMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nodeHasNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasNode(self: Node; path: NodePath): bool =
  if isNil(nodeHasNodeMethodBind):
    nodeHasNodeMethodBind = getMethod(cstring"Node", cstring"has_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeHasNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var nodeHasNodeAndResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasNodeAndResource(self: Node; path: NodePath): bool =
  if isNil(nodeHasNodeAndResourceMethodBind):
    nodeHasNodeAndResourceMethodBind = getMethod(cstring"Node",
        cstring"has_node_and_resource")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeHasNodeAndResourceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeIsAParentOfMethodBind {.threadvar.}: ptr GodotMethodBind
proc isAParentOf(self: Node; node: Node): bool =
  if isNil(nodeIsAParentOfMethodBind):
    nodeIsAParentOfMethodBind = getMethod(cstring"Node", cstring"is_a_parent_of")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsAParentOfMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var nodeIsDisplayedFoldedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isDisplayedFolded(self: Node): bool =
  if isNil(nodeIsDisplayedFoldedMethodBind):
    nodeIsDisplayedFoldedMethodBind = getMethod(cstring"Node",
        cstring"is_displayed_folded")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsDisplayedFoldedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeIsGreaterThanMethodBind {.threadvar.}: ptr GodotMethodBind
proc isGreaterThan(self: Node; node: Node): bool =
  if isNil(nodeIsGreaterThanMethodBind):
    nodeIsGreaterThanMethodBind = getMethod(cstring"Node",
        cstring"is_greater_than")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsGreaterThanMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var nodeIsInGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInGroup(self: Node; group: string): bool =
  if isNil(nodeIsInGroupMethodBind):
    nodeIsInGroupMethodBind = getMethod(cstring"Node", cstring"is_in_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(group)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsInGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nodeIsInsideTreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInsideTree(self: Node): bool =
  if isNil(nodeIsInsideTreeMethodBind):
    nodeIsInsideTreeMethodBind = getMethod(cstring"Node", cstring"is_inside_tree")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsInsideTreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeIsNetworkMasterMethodBind {.threadvar.}: ptr GodotMethodBind
proc isNetworkMaster(self: Node): bool =
  if isNil(nodeIsNetworkMasterMethodBind):
    nodeIsNetworkMasterMethodBind = getMethod(cstring"Node",
        cstring"is_network_master")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsNetworkMasterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeIsPhysicsProcessingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPhysicsProcessing(self: Node): bool =
  if isNil(nodeIsPhysicsProcessingMethodBind):
    nodeIsPhysicsProcessingMethodBind = getMethod(cstring"Node",
        cstring"is_physics_processing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsPhysicsProcessingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeIsPhysicsProcessingInternalMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPhysicsProcessingInternal(self: Node): bool =
  if isNil(nodeIsPhysicsProcessingInternalMethodBind):
    nodeIsPhysicsProcessingInternalMethodBind = getMethod(cstring"Node",
        cstring"is_physics_processing_internal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsPhysicsProcessingInternalMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var nodeIsProcessingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isProcessing(self: Node): bool =
  if isNil(nodeIsProcessingMethodBind):
    nodeIsProcessingMethodBind = getMethod(cstring"Node", cstring"is_processing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsProcessingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeIsProcessingInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc isProcessingInput(self: Node): bool =
  if isNil(nodeIsProcessingInputMethodBind):
    nodeIsProcessingInputMethodBind = getMethod(cstring"Node",
        cstring"is_processing_input")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsProcessingInputMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeIsProcessingInternalMethodBind {.threadvar.}: ptr GodotMethodBind
proc isProcessingInternal(self: Node): bool =
  if isNil(nodeIsProcessingInternalMethodBind):
    nodeIsProcessingInternalMethodBind = getMethod(cstring"Node",
        cstring"is_processing_internal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsProcessingInternalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeIsProcessingUnhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc isProcessingUnhandledInput(self: Node): bool =
  if isNil(nodeIsProcessingUnhandledInputMethodBind):
    nodeIsProcessingUnhandledInputMethodBind = getMethod(cstring"Node",
        cstring"is_processing_unhandled_input")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsProcessingUnhandledInputMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var nodeIsProcessingUnhandledKeyInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc isProcessingUnhandledKeyInput(self: Node): bool =
  if isNil(nodeIsProcessingUnhandledKeyInputMethodBind):
    nodeIsProcessingUnhandledKeyInputMethodBind = getMethod(cstring"Node",
        cstring"is_processing_unhandled_key_input")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  nodeIsProcessingUnhandledKeyInputMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var nodeMoveChildMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveChild(self: Node; childNode: Node; toPosition: int64) =
  if isNil(nodeMoveChildMethodBind):
    nodeMoveChildMethodBind = getMethod(cstring"Node", cstring"move_child")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not childNode.isNil:
    childNode.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  nodeMoveChildMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var nodePrintStrayNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc printStrayNodes(self: Node) =
  if isNil(nodePrintStrayNodesMethodBind):
    nodePrintStrayNodesMethodBind = getMethod(cstring"Node",
        cstring"print_stray_nodes")
  var ptrCallRet: pointer
  nodePrintStrayNodesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodePrintTreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc printTree(self: Node) =
  if isNil(nodePrintTreeMethodBind):
    nodePrintTreeMethodBind = getMethod(cstring"Node", cstring"print_tree")
  var ptrCallRet: pointer
  nodePrintTreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodePrintTreePrettyMethodBind {.threadvar.}: ptr GodotMethodBind
proc printTreePretty(self: Node) =
  if isNil(nodePrintTreePrettyMethodBind):
    nodePrintTreePrettyMethodBind = getMethod(cstring"Node",
        cstring"print_tree_pretty")
  var ptrCallRet: pointer
  nodePrintTreePrettyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodePropagateCallMethodBind {.threadvar.}: ptr GodotMethodBind
proc propagateCall(self: Node; methodd: string; args: Array = newArray();
                  parentFirst: bool = false) =
  if isNil(nodePropagateCallMethodBind):
    nodePropagateCallMethodBind = getMethod(cstring"Node", cstring"propagate_call")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(methodd)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = args.godotArray
  argsToPassToGodot[][2] = unsafeAddr(parentFirst)
  var ptrCallRet: pointer
  nodePropagateCallMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var nodePropagateNotificationMethodBind {.threadvar.}: ptr GodotMethodBind
proc propagateNotification(self: Node; what: int64) =
  if isNil(nodePropagateNotificationMethodBind):
    nodePropagateNotificationMethodBind = getMethod(cstring"Node",
        cstring"propagate_notification")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(what)
  var ptrCallRet: pointer
  nodePropagateNotificationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeQueueFreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc queueFree(self: Node) =
  if isNil(nodeQueueFreeMethodBind):
    nodeQueueFreeMethodBind = getMethod(cstring"Node", cstring"queue_free")
  var ptrCallRet: pointer
  nodeQueueFreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeRaiseMethodBind {.threadvar.}: ptr GodotMethodBind
proc raisee(self: Node) =
  if isNil(nodeRaiseMethodBind):
    nodeRaiseMethodBind = getMethod(cstring"Node", cstring"raise")
  var ptrCallRet: pointer
  nodeRaiseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeRemoveAndSkipMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeAndSkip(self: Node) =
  if isNil(nodeRemoveAndSkipMethodBind):
    nodeRemoveAndSkipMethodBind = getMethod(cstring"Node",
        cstring"remove_and_skip")
  var ptrCallRet: pointer
  nodeRemoveAndSkipMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeRemoveChildMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeChild(self: Node; node: Node) =
  if isNil(nodeRemoveChildMethodBind):
    nodeRemoveChildMethodBind = getMethod(cstring"Node", cstring"remove_child")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  nodeRemoveChildMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var nodeRemoveFromGroupMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeFromGroup(self: Node; group: string) =
  if isNil(nodeRemoveFromGroupMethodBind):
    nodeRemoveFromGroupMethodBind = getMethod(cstring"Node",
        cstring"remove_from_group")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(group)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  nodeRemoveFromGroupMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var nodeReplaceByMethodBind {.threadvar.}: ptr GodotMethodBind
proc replaceBy(self: Node; node: Node; keepData: bool = false) =
  if isNil(nodeReplaceByMethodBind):
    nodeReplaceByMethodBind = getMethod(cstring"Node", cstring"replace_by")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(keepData)
  var ptrCallRet: pointer
  nodeReplaceByMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var nodeRequestReadyMethodBind {.threadvar.}: ptr GodotMethodBind
proc requestReady(self: Node) =
  if isNil(nodeRequestReadyMethodBind):
    nodeRequestReadyMethodBind = getMethod(cstring"Node", cstring"request_ready")
  var ptrCallRet: pointer
  nodeRequestReadyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var nodeRpcMethodBind {.threadvar.}: ptr GodotMethodBind
proc rpc(self: Node; methodd: string; variantArgs: varargs[Variant]): Variant =
  if isNil(nodeRpcMethodBind):
    nodeRpcMethodBind = getMethod(cstring"Node", cstring"rpc")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(1 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(methodd)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var idx = 1
  while idx < cint(1 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 1].godotVariant
    inc idx
  let callRet {.used.} = nodeRpcMethodBind.call(self.godotObject, argsToPassToGodot,
      cint(1 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var nodeRpcConfigMethodBind {.threadvar.}: ptr GodotMethodBind
proc rpcConfig(self: Node; methodd: string; mode: int64) =
  if isNil(nodeRpcConfigMethodBind):
    nodeRpcConfigMethodBind = getMethod(cstring"Node", cstring"rpc_config")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(methodd)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  nodeRpcConfigMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nodeRpcIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc rpcId(self: Node; peerId: int64; methodd: string; variantArgs: varargs[Variant]): Variant =
  if isNil(nodeRpcIdMethodBind):
    nodeRpcIdMethodBind = getMethod(cstring"Node", cstring"rpc_id")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(2 + variantArgs.len)))))
  var variant0: GodotVariant
  initGodotVariant(variant0, peerId)
  argsToPassToGodot[][0] = addr(variant0)
  var variant1: GodotVariant
  var variantString1: GodotString = toGodotString(methodd)
  initGodotVariant(variant1, variantString1)
  argsToPassToGodot[][1] = addr(variant1)
  var idx = 2
  while idx < cint(2 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 2].godotVariant
    inc idx
  let callRet {.used.} = nodeRpcIdMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(2 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variant1)
  deinit(variantString1)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var nodeRpcUnreliableMethodBind {.threadvar.}: ptr GodotMethodBind
proc rpcUnreliable(self: Node; methodd: string; variantArgs: varargs[Variant]): Variant =
  if isNil(nodeRpcUnreliableMethodBind):
    nodeRpcUnreliableMethodBind = getMethod(cstring"Node", cstring"rpc_unreliable")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(1 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(methodd)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var idx = 1
  while idx < cint(1 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 1].godotVariant
    inc idx
  let callRet {.used.} = nodeRpcUnreliableMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(1 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var nodeRpcUnreliableIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc rpcUnreliableId(self: Node; peerId: int64; methodd: string;
                    variantArgs: varargs[Variant]): Variant =
  if isNil(nodeRpcUnreliableIdMethodBind):
    nodeRpcUnreliableIdMethodBind = getMethod(cstring"Node",
        cstring"rpc_unreliable_id")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(2 + variantArgs.len)))))
  var variant0: GodotVariant
  initGodotVariant(variant0, peerId)
  argsToPassToGodot[][0] = addr(variant0)
  var variant1: GodotVariant
  var variantString1: GodotString = toGodotString(methodd)
  initGodotVariant(variant1, variantString1)
  argsToPassToGodot[][1] = addr(variant1)
  var idx = 2
  while idx < cint(2 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 2].godotVariant
    inc idx
  let callRet {.used.} = nodeRpcUnreliableIdMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(2 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variant1)
  deinit(variantString1)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var nodeRsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc rset(self: Node; property: string; value: Variant) =
  if isNil(nodeRsetMethodBind):
    nodeRsetMethodBind = getMethod(cstring"Node", cstring"rset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  nodeRsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nodeRsetConfigMethodBind {.threadvar.}: ptr GodotMethodBind
proc rsetConfig(self: Node; property: string; mode: int64) =
  if isNil(nodeRsetConfigMethodBind):
    nodeRsetConfigMethodBind = getMethod(cstring"Node", cstring"rset_config")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  nodeRsetConfigMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nodeRsetIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc rsetId(self: Node; peerId: int64; property: string; value: Variant) =
  if isNil(nodeRsetIdMethodBind):
    nodeRsetIdMethodBind = getMethod(cstring"Node", cstring"rset_id")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(peerId)
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  nodeRsetIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var nodeRsetUnreliableMethodBind {.threadvar.}: ptr GodotMethodBind
proc rsetUnreliable(self: Node; property: string; value: Variant) =
  if isNil(nodeRsetUnreliableMethodBind):
    nodeRsetUnreliableMethodBind = getMethod(cstring"Node",
        cstring"rset_unreliable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  nodeRsetUnreliableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var nodeRsetUnreliableIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc rsetUnreliableId(self: Node; peerId: int64; property: string; value: Variant) =
  if isNil(nodeRsetUnreliableIdMethodBind):
    nodeRsetUnreliableIdMethodBind = getMethod(cstring"Node",
        cstring"rset_unreliable_id")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(peerId)
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  nodeRsetUnreliableIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var nodeSetDisplayFoldedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDisplayFolded(self: Node; fold: bool) =
  if isNil(nodeSetDisplayFoldedMethodBind):
    nodeSetDisplayFoldedMethodBind = getMethod(cstring"Node",
        cstring"set_display_folded")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fold)
  var ptrCallRet: pointer
  nodeSetDisplayFoldedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeSetNetworkMasterMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNetworkMaster(self: Node; id: int64; recursive: bool = true) =
  if isNil(nodeSetNetworkMasterMethodBind):
    nodeSetNetworkMasterMethodBind = getMethod(cstring"Node",
        cstring"set_network_master")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(recursive)
  var ptrCallRet: pointer
  nodeSetNetworkMasterMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeSetPhysicsProcessMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPhysicsProcess(self: Node; enable: bool) =
  if isNil(nodeSetPhysicsProcessMethodBind):
    nodeSetPhysicsProcessMethodBind = getMethod(cstring"Node",
        cstring"set_physics_process")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  nodeSetPhysicsProcessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeSetPhysicsProcessInternalMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPhysicsProcessInternal(self: Node; enable: bool) =
  if isNil(nodeSetPhysicsProcessInternalMethodBind):
    nodeSetPhysicsProcessInternalMethodBind = getMethod(cstring"Node",
        cstring"set_physics_process_internal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  nodeSetPhysicsProcessInternalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeSetProcessMethodBind {.threadvar.}: ptr GodotMethodBind
proc setProcess(self: Node; enable: bool) =
  if isNil(nodeSetProcessMethodBind):
    nodeSetProcessMethodBind = getMethod(cstring"Node", cstring"set_process")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  nodeSetProcessMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var nodeSetProcessInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc setProcessInput(self: Node; enable: bool) =
  if isNil(nodeSetProcessInputMethodBind):
    nodeSetProcessInputMethodBind = getMethod(cstring"Node",
        cstring"set_process_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  nodeSetProcessInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var nodeSetProcessInternalMethodBind {.threadvar.}: ptr GodotMethodBind
proc setProcessInternal(self: Node; enable: bool) =
  if isNil(nodeSetProcessInternalMethodBind):
    nodeSetProcessInternalMethodBind = getMethod(cstring"Node",
        cstring"set_process_internal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  nodeSetProcessInternalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nodeSetProcessUnhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc setProcessUnhandledInput(self: Node; enable: bool) =
  if isNil(nodeSetProcessUnhandledInputMethodBind):
    nodeSetProcessUnhandledInputMethodBind = getMethod(cstring"Node",
        cstring"set_process_unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  nodeSetProcessUnhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeSetProcessUnhandledKeyInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc setProcessUnhandledKeyInput(self: Node; enable: bool) =
  if isNil(nodeSetProcessUnhandledKeyInputMethodBind):
    nodeSetProcessUnhandledKeyInputMethodBind = getMethod(cstring"Node",
        cstring"set_process_unhandled_key_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  nodeSetProcessUnhandledKeyInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeSetSceneInstanceLoadPlaceholderMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSceneInstanceLoadPlaceholder(self: Node; loadPlaceholder: bool) =
  if isNil(nodeSetSceneInstanceLoadPlaceholderMethodBind):
    nodeSetSceneInstanceLoadPlaceholderMethodBind = getMethod(cstring"Node",
        cstring"set_scene_instance_load_placeholder")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(loadPlaceholder)
  var ptrCallRet: pointer
  nodeSetSceneInstanceLoadPlaceholderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var nodeUpdateConfigurationWarningMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateConfigurationWarning(self: Node) =
  if isNil(nodeUpdateConfigurationWarningMethodBind):
    nodeUpdateConfigurationWarningMethodBind = getMethod(cstring"Node",
        cstring"update_configuration_warning")
  var ptrCallRet: pointer
  nodeUpdateConfigurationWarningMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
