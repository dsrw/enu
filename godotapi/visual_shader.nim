
import
  godot, godottypes, godotinternal, shader

export
  godottypes, shader

const
  NODE_ID_INVALID* = -1'i64
  NODE_ID_OUTPUT* = 0'i64
  TYPE_FRAGMENT* = 1'i64
  TYPE_LIGHT* = 2'i64
  TYPE_MAX* = 3'i64
  TYPE_VERTEX* = 0'i64
proc graphOffset*(self: VisualShader): Vector2 {.gcsafe, locks: 0.}
proc `graphOffset=`*(self: VisualShader; val: Vector2) {.gcsafe, locks: 0.}
method inputTypeChanged*(self: VisualShader; arg0: int64; arg1: int64) {.gcsafe,
    locks: 0, base.}
method queueUpdate*(self: VisualShader) {.gcsafe, locks: 0, base.}
method updateShader*(self: VisualShader) {.gcsafe, locks: 0, base.}
proc addNode*(self: VisualShader; typee: int64; node: VisualShaderNode;
             position: Vector2; id: int64) {.gcsafe, locks: 0.}
proc canConnectNodes*(self: VisualShader; typee: int64; fromNode: int64;
                     fromPort: int64; toNode: int64; toPort: int64): bool {.gcsafe,
    locks: 0.}
proc connectNodes*(self: VisualShader; typee: int64; fromNode: int64; fromPort: int64;
                  toNode: int64; toPort: int64): Error {.gcsafe, locks: 0.}
proc connectNodesForced*(self: VisualShader; typee: int64; fromNode: int64;
                        fromPort: int64; toNode: int64; toPort: int64) {.gcsafe,
    locks: 0.}
proc disconnectNodes*(self: VisualShader; typee: int64; fromNode: int64;
                     fromPort: int64; toNode: int64; toPort: int64) {.gcsafe, locks: 0.}
proc getNode*(self: VisualShader; typee: int64; id: int64): VisualShaderNode {.gcsafe,
    locks: 0.}
proc getNodeConnections*(self: VisualShader; typee: int64): Array {.gcsafe, locks: 0.}
proc getNodeList*(self: VisualShader; typee: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getNodePosition*(self: VisualShader; typee: int64; id: int64): Vector2 {.gcsafe,
    locks: 0.}
proc getValidNodeId*(self: VisualShader; typee: int64): int64 {.gcsafe, locks: 0.}
proc isNodeConnection*(self: VisualShader; typee: int64; fromNode: int64;
                      fromPort: int64; toNode: int64; toPort: int64): bool {.gcsafe,
    locks: 0.}
proc removeNode*(self: VisualShader; typee: int64; id: int64) {.gcsafe, locks: 0.}
proc setMode*(self: VisualShader; mode: int64) {.gcsafe, locks: 0.}
proc setNodePosition*(self: VisualShader; typee: int64; id: int64; position: Vector2) {.
    gcsafe, locks: 0.}
var visualShaderGetGraphOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc graphOffset(self: VisualShader): Vector2 =
  if isNil(visualShaderGetGraphOffsetMethodBind):
    visualShaderGetGraphOffsetMethodBind = getMethod(cstring"VisualShader",
        cstring"get_graph_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderGetGraphOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualShaderSetGraphOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `graphOffset=`(self: VisualShader; val: Vector2) =
  if isNil(visualShaderSetGraphOffsetMethodBind):
    visualShaderSetGraphOffsetMethodBind = getMethod(cstring"VisualShader",
        cstring"set_graph_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderSetGraphOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderUnderscoreinputTypeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method inputTypeChanged(self: VisualShader; arg0: int64; arg1: int64) =
  if isNil(visualShaderUnderscoreinputTypeChangedMethodBind):
    visualShaderUnderscoreinputTypeChangedMethodBind = getMethod(
        cstring"VisualShader", cstring"_input_type_changed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  visualShaderUnderscoreinputTypeChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderUnderscorequeueUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
method queueUpdate(self: VisualShader) =
  if isNil(visualShaderUnderscorequeueUpdateMethodBind):
    visualShaderUnderscorequeueUpdateMethodBind = getMethod(
        cstring"VisualShader", cstring"_queue_update")
  var ptrCallRet: pointer
  visualShaderUnderscorequeueUpdateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderUnderscoreupdateShaderMethodBind {.threadvar.}: ptr GodotMethodBind
method updateShader(self: VisualShader) =
  if isNil(visualShaderUnderscoreupdateShaderMethodBind):
    visualShaderUnderscoreupdateShaderMethodBind = getMethod(
        cstring"VisualShader", cstring"_update_shader")
  var ptrCallRet: pointer
  visualShaderUnderscoreupdateShaderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderAddNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addNode(self: VisualShader; typee: int64; node: VisualShaderNode;
            position: Vector2; id: int64) =
  if isNil(visualShaderAddNodeMethodBind):
    visualShaderAddNodeMethodBind = getMethod(cstring"VisualShader",
        cstring"add_node")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  let argToPassToGodot1 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(position)
  argsToPassToGodot[][3] = unsafeAddr(id)
  var ptrCallRet: pointer
  visualShaderAddNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var visualShaderCanConnectNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc canConnectNodes(self: VisualShader; typee: int64; fromNode: int64;
                    fromPort: int64; toNode: int64; toPort: int64): bool =
  if isNil(visualShaderCanConnectNodesMethodBind):
    visualShaderCanConnectNodesMethodBind = getMethod(cstring"VisualShader",
        cstring"can_connect_nodes")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderCanConnectNodesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderConnectNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectNodes(self: VisualShader; typee: int64; fromNode: int64; fromPort: int64;
                 toNode: int64; toPort: int64): Error =
  if isNil(visualShaderConnectNodesMethodBind):
    visualShaderConnectNodesMethodBind = getMethod(cstring"VisualShader",
        cstring"connect_nodes")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  visualShaderConnectNodesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var visualShaderConnectNodesForcedMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectNodesForced(self: VisualShader; typee: int64; fromNode: int64;
                       fromPort: int64; toNode: int64; toPort: int64) =
  if isNil(visualShaderConnectNodesForcedMethodBind):
    visualShaderConnectNodesForcedMethodBind = getMethod(cstring"VisualShader",
        cstring"connect_nodes_forced")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  visualShaderConnectNodesForcedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderDisconnectNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectNodes(self: VisualShader; typee: int64; fromNode: int64;
                    fromPort: int64; toNode: int64; toPort: int64) =
  if isNil(visualShaderDisconnectNodesMethodBind):
    visualShaderDisconnectNodesMethodBind = getMethod(cstring"VisualShader",
        cstring"disconnect_nodes")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  visualShaderDisconnectNodesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderGetNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNode(self: VisualShader; typee: int64; id: int64): VisualShaderNode =
  if isNil(visualShaderGetNodeMethodBind):
    visualShaderGetNodeMethodBind = getMethod(cstring"VisualShader",
        cstring"get_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  visualShaderGetNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var visualShaderGetNodeConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeConnections(self: VisualShader; typee: int64): Array =
  if isNil(visualShaderGetNodeConnectionsMethodBind):
    visualShaderGetNodeConnectionsMethodBind = getMethod(cstring"VisualShader",
        cstring"get_node_connections")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualShaderGetNodeConnectionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualShaderGetNodeListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeList(self: VisualShader; typee: int64): PoolIntArray =
  if isNil(visualShaderGetNodeListMethodBind):
    visualShaderGetNodeListMethodBind = getMethod(cstring"VisualShader",
        cstring"get_node_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  visualShaderGetNodeListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var visualShaderGetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePosition(self: VisualShader; typee: int64; id: int64): Vector2 =
  if isNil(visualShaderGetNodePositionMethodBind):
    visualShaderGetNodePositionMethodBind = getMethod(cstring"VisualShader",
        cstring"get_node_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderGetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderGetValidNodeIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getValidNodeId(self: VisualShader; typee: int64): int64 =
  if isNil(visualShaderGetValidNodeIdMethodBind):
    visualShaderGetValidNodeIdMethodBind = getMethod(cstring"VisualShader",
        cstring"get_valid_node_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderGetValidNodeIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderIsNodeConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc isNodeConnection(self: VisualShader; typee: int64; fromNode: int64;
                     fromPort: int64; toNode: int64; toPort: int64): bool =
  if isNil(visualShaderIsNodeConnectionMethodBind):
    visualShaderIsNodeConnectionMethodBind = getMethod(cstring"VisualShader",
        cstring"is_node_connection")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderIsNodeConnectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderRemoveNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeNode(self: VisualShader; typee: int64; id: int64) =
  if isNil(visualShaderRemoveNodeMethodBind):
    visualShaderRemoveNodeMethodBind = getMethod(cstring"VisualShader",
        cstring"remove_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  visualShaderRemoveNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualShaderSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMode(self: VisualShader; mode: int64) =
  if isNil(visualShaderSetModeMethodBind):
    visualShaderSetModeMethodBind = getMethod(cstring"VisualShader",
        cstring"set_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  var ptrCallRet: pointer
  visualShaderSetModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var visualShaderSetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNodePosition(self: VisualShader; typee: int64; id: int64; position: Vector2) =
  if isNil(visualShaderSetNodePositionMethodBind):
    visualShaderSetNodePositionMethodBind = getMethod(cstring"VisualShader",
        cstring"set_node_position")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(position)
  var ptrCallRet: pointer
  visualShaderSetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
