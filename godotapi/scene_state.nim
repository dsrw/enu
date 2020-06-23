
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  GEN_EDIT_STATE_DISABLED* = 0'i64
  GEN_EDIT_STATE_INSTANCE* = 1'i64
  GEN_EDIT_STATE_MAIN* = 2'i64
proc getConnectionBinds*(self: SceneState; idx: int64): Array {.gcsafe, locks: 0.}
proc getConnectionCount*(self: SceneState): int64 {.gcsafe, locks: 0.}
proc getConnectionFlags*(self: SceneState; idx: int64): int64 {.gcsafe, locks: 0.}
proc getConnectionMethod*(self: SceneState; idx: int64): string {.gcsafe, locks: 0.}
proc getConnectionSignal*(self: SceneState; idx: int64): string {.gcsafe, locks: 0.}
proc getConnectionSource*(self: SceneState; idx: int64): NodePath {.gcsafe, locks: 0.}
proc getConnectionTarget*(self: SceneState; idx: int64): NodePath {.gcsafe, locks: 0.}
proc getNodeCount*(self: SceneState): int64 {.gcsafe, locks: 0.}
proc getNodeGroups*(self: SceneState; idx: int64): PoolStringArray {.gcsafe, locks: 0.}
proc getNodeIndex*(self: SceneState; idx: int64): int64 {.gcsafe, locks: 0.}
proc getNodeInstance*(self: SceneState; idx: int64): PackedScene {.gcsafe, locks: 0.}
proc getNodeInstancePlaceholder*(self: SceneState; idx: int64): string {.gcsafe,
    locks: 0.}
proc getNodeName*(self: SceneState; idx: int64): string {.gcsafe, locks: 0.}
proc getNodeOwnerPath*(self: SceneState; idx: int64): NodePath {.gcsafe, locks: 0.}
proc getNodePath*(self: SceneState; idx: int64; forParent: bool = false): NodePath {.
    gcsafe, locks: 0.}
proc getNodePropertyCount*(self: SceneState; idx: int64): int64 {.gcsafe, locks: 0.}
proc getNodePropertyName*(self: SceneState; idx: int64; propIdx: int64): string {.
    gcsafe, locks: 0.}
proc getNodePropertyValue*(self: SceneState; idx: int64; propIdx: int64): Variant {.
    gcsafe, locks: 0.}
proc getNodeType*(self: SceneState; idx: int64): string {.gcsafe, locks: 0.}
proc isNodeInstancePlaceholder*(self: SceneState; idx: int64): bool {.gcsafe, locks: 0.}
var sceneStateGetConnectionBindsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionBinds(self: SceneState; idx: int64): Array =
  if isNil(sceneStateGetConnectionBindsMethodBind):
    sceneStateGetConnectionBindsMethodBind = getMethod(cstring"SceneState",
        cstring"get_connection_binds")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetConnectionBindsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var sceneStateGetConnectionCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionCount(self: SceneState): int64 =
  if isNil(sceneStateGetConnectionCountMethodBind):
    sceneStateGetConnectionCountMethodBind = getMethod(cstring"SceneState",
        cstring"get_connection_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneStateGetConnectionCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneStateGetConnectionFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionFlags(self: SceneState; idx: int64): int64 =
  if isNil(sceneStateGetConnectionFlagsMethodBind):
    sceneStateGetConnectionFlagsMethodBind = getMethod(cstring"SceneState",
        cstring"get_connection_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneStateGetConnectionFlagsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneStateGetConnectionMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionMethod(self: SceneState; idx: int64): string =
  if isNil(sceneStateGetConnectionMethodMethodBind):
    sceneStateGetConnectionMethodMethodBind = getMethod(cstring"SceneState",
        cstring"get_connection_method")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetConnectionMethodMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var sceneStateGetConnectionSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionSignal(self: SceneState; idx: int64): string =
  if isNil(sceneStateGetConnectionSignalMethodBind):
    sceneStateGetConnectionSignalMethodBind = getMethod(cstring"SceneState",
        cstring"get_connection_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetConnectionSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var sceneStateGetConnectionSourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionSource(self: SceneState; idx: int64): NodePath =
  if isNil(sceneStateGetConnectionSourceMethodBind):
    sceneStateGetConnectionSourceMethodBind = getMethod(cstring"SceneState",
        cstring"get_connection_source")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetConnectionSourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newNodePath(ptrCallVal)

var sceneStateGetConnectionTargetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectionTarget(self: SceneState; idx: int64): NodePath =
  if isNil(sceneStateGetConnectionTargetMethodBind):
    sceneStateGetConnectionTargetMethodBind = getMethod(cstring"SceneState",
        cstring"get_connection_target")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetConnectionTargetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newNodePath(ptrCallVal)

var sceneStateGetNodeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeCount(self: SceneState): int64 =
  if isNil(sceneStateGetNodeCountMethodBind):
    sceneStateGetNodeCountMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneStateGetNodeCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sceneStateGetNodeGroupsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeGroups(self: SceneState; idx: int64): PoolStringArray =
  if isNil(sceneStateGetNodeGroupsMethodBind):
    sceneStateGetNodeGroupsMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_groups")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodeGroupsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var sceneStateGetNodeIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeIndex(self: SceneState; idx: int64): int64 =
  if isNil(sceneStateGetNodeIndexMethodBind):
    sceneStateGetNodeIndexMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneStateGetNodeIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sceneStateGetNodeInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeInstance(self: SceneState; idx: int64): PackedScene =
  if isNil(sceneStateGetNodeInstanceMethodBind):
    sceneStateGetNodeInstanceMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_instance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodeInstanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sceneStateGetNodeInstancePlaceholderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeInstancePlaceholder(self: SceneState; idx: int64): string =
  if isNil(sceneStateGetNodeInstancePlaceholderMethodBind):
    sceneStateGetNodeInstancePlaceholderMethodBind = getMethod(
        cstring"SceneState", cstring"get_node_instance_placeholder")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodeInstancePlaceholderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var sceneStateGetNodeNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeName(self: SceneState; idx: int64): string =
  if isNil(sceneStateGetNodeNameMethodBind):
    sceneStateGetNodeNameMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodeNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var sceneStateGetNodeOwnerPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeOwnerPath(self: SceneState; idx: int64): NodePath =
  if isNil(sceneStateGetNodeOwnerPathMethodBind):
    sceneStateGetNodeOwnerPathMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_owner_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodeOwnerPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newNodePath(ptrCallVal)

var sceneStateGetNodePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePath(self: SceneState; idx: int64; forParent: bool = false): NodePath =
  if isNil(sceneStateGetNodePathMethodBind):
    sceneStateGetNodePathMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(forParent)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodePathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var sceneStateGetNodePropertyCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePropertyCount(self: SceneState; idx: int64): int64 =
  if isNil(sceneStateGetNodePropertyCountMethodBind):
    sceneStateGetNodePropertyCountMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_property_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneStateGetNodePropertyCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var sceneStateGetNodePropertyNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePropertyName(self: SceneState; idx: int64; propIdx: int64): string =
  if isNil(sceneStateGetNodePropertyNameMethodBind):
    sceneStateGetNodePropertyNameMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_property_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(propIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodePropertyNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var sceneStateGetNodePropertyValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePropertyValue(self: SceneState; idx: int64; propIdx: int64): Variant =
  if isNil(sceneStateGetNodePropertyValueMethodBind):
    sceneStateGetNodePropertyValueMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_property_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(propIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodePropertyValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var sceneStateGetNodeTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeType(self: SceneState; idx: int64): string =
  if isNil(sceneStateGetNodeTypeMethodBind):
    sceneStateGetNodeTypeMethodBind = getMethod(cstring"SceneState",
        cstring"get_node_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  sceneStateGetNodeTypeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var sceneStateIsNodeInstancePlaceholderMethodBind {.threadvar.}: ptr GodotMethodBind
proc isNodeInstancePlaceholder(self: SceneState; idx: int64): bool =
  if isNil(sceneStateIsNodeInstancePlaceholderMethodBind):
    sceneStateIsNodeInstancePlaceholderMethodBind = getMethod(
        cstring"SceneState", cstring"is_node_instance_placeholder")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sceneStateIsNodeInstancePlaceholderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
