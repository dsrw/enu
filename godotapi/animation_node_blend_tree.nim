
import
  godot, godottypes, godotinternal, animation_root_node

export
  godottypes, animation_root_node

const
  CONNECTION_ERROR_CONNECTION_EXISTS* = 5'i64
  CONNECTION_ERROR_NO_INPUT* = 1'i64
  CONNECTION_ERROR_NO_INPUT_INDEX* = 2'i64
  CONNECTION_ERROR_NO_OUTPUT* = 3'i64
  CONNECTION_ERROR_SAME_NODE* = 4'i64
  CONNECTION_OK* = 0'i64
proc graphOffset*(self: AnimationNodeBlendTree): Vector2 {.gcsafe, locks: 0.}
proc `graphOffset=`*(self: AnimationNodeBlendTree; val: Vector2) {.gcsafe, locks: 0.}
method nodeChanged*(self: AnimationNodeBlendTree; node: string) {.gcsafe, locks: 0, base.}
method treeChanged*(self: AnimationNodeBlendTree) {.gcsafe, locks: 0, base.}
proc addNode*(self: AnimationNodeBlendTree; name: string; node: AnimationNode;
             position: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc connectNode*(self: AnimationNodeBlendTree; inputNode: string; inputIndex: int64;
                 outputNode: string) {.gcsafe, locks: 0.}
proc disconnectNode*(self: AnimationNodeBlendTree; inputNode: string;
                    inputIndex: int64) {.gcsafe, locks: 0.}
proc getNode*(self: AnimationNodeBlendTree; name: string): AnimationNode {.gcsafe,
    locks: 0.}
proc getNodePosition*(self: AnimationNodeBlendTree; name: string): Vector2 {.gcsafe,
    locks: 0.}
proc hasNode*(self: AnimationNodeBlendTree; name: string): bool {.gcsafe, locks: 0.}
proc removeNode*(self: AnimationNodeBlendTree; name: string) {.gcsafe, locks: 0.}
proc renameNode*(self: AnimationNodeBlendTree; name: string; newName: string) {.gcsafe,
    locks: 0.}
proc setNodePosition*(self: AnimationNodeBlendTree; name: string; position: Vector2) {.
    gcsafe, locks: 0.}
var animationNodeBlendTreeGetGraphOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc graphOffset(self: AnimationNodeBlendTree): Vector2 =
  if isNil(animationNodeBlendTreeGetGraphOffsetMethodBind):
    animationNodeBlendTreeGetGraphOffsetMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"get_graph_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendTreeGetGraphOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var animationNodeBlendTreeSetGraphOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `graphOffset=`(self: AnimationNodeBlendTree; val: Vector2) =
  if isNil(animationNodeBlendTreeSetGraphOffsetMethodBind):
    animationNodeBlendTreeSetGraphOffsetMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"set_graph_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeBlendTreeSetGraphOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeBlendTreeUnderscorenodeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodeChanged(self: AnimationNodeBlendTree; node: string) =
  if isNil(animationNodeBlendTreeUnderscorenodeChangedMethodBind):
    animationNodeBlendTreeUnderscorenodeChangedMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"_node_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(node)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeBlendTreeUnderscorenodeChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendTreeUnderscoretreeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeChanged(self: AnimationNodeBlendTree) =
  if isNil(animationNodeBlendTreeUnderscoretreeChangedMethodBind):
    animationNodeBlendTreeUnderscoretreeChangedMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"_tree_changed")
  var ptrCallRet: pointer
  animationNodeBlendTreeUnderscoretreeChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeBlendTreeAddNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addNode(self: AnimationNodeBlendTree; name: string; node: AnimationNode;
            position: Vector2 = vec2(0.0, 0.0)) =
  if isNil(animationNodeBlendTreeAddNodeMethodBind):
    animationNodeBlendTreeAddNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"add_node")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(position)
  var ptrCallRet: pointer
  animationNodeBlendTreeAddNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendTreeConnectNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectNode(self: AnimationNodeBlendTree; inputNode: string; inputIndex: int64;
                outputNode: string) =
  if isNil(animationNodeBlendTreeConnectNodeMethodBind):
    animationNodeBlendTreeConnectNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"connect_node")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(inputNode)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(inputIndex)
  var argToPassToGodot2 = toGodotString(outputNode)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  animationNodeBlendTreeConnectNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var animationNodeBlendTreeDisconnectNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnectNode(self: AnimationNodeBlendTree; inputNode: string;
                   inputIndex: int64) =
  if isNil(animationNodeBlendTreeDisconnectNodeMethodBind):
    animationNodeBlendTreeDisconnectNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"disconnect_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(inputNode)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(inputIndex)
  var ptrCallRet: pointer
  animationNodeBlendTreeDisconnectNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendTreeGetNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNode(self: AnimationNodeBlendTree; name: string): AnimationNode =
  if isNil(animationNodeBlendTreeGetNodeMethodBind):
    animationNodeBlendTreeGetNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"get_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeBlendTreeGetNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationNodeBlendTreeGetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePosition(self: AnimationNodeBlendTree; name: string): Vector2 =
  if isNil(animationNodeBlendTreeGetNodePositionMethodBind):
    animationNodeBlendTreeGetNodePositionMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"get_node_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendTreeGetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendTreeHasNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasNode(self: AnimationNodeBlendTree; name: string): bool =
  if isNil(animationNodeBlendTreeHasNodeMethodBind):
    animationNodeBlendTreeHasNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"has_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendTreeHasNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendTreeRemoveNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeNode(self: AnimationNodeBlendTree; name: string) =
  if isNil(animationNodeBlendTreeRemoveNodeMethodBind):
    animationNodeBlendTreeRemoveNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"remove_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeBlendTreeRemoveNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendTreeRenameNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameNode(self: AnimationNodeBlendTree; name: string; newName: string) =
  if isNil(animationNodeBlendTreeRenameNodeMethodBind):
    animationNodeBlendTreeRenameNodeMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"rename_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationNodeBlendTreeRenameNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationNodeBlendTreeSetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNodePosition(self: AnimationNodeBlendTree; name: string; position: Vector2) =
  if isNil(animationNodeBlendTreeSetNodePositionMethodBind):
    animationNodeBlendTreeSetNodePositionMethodBind = getMethod(
        cstring"AnimationNodeBlendTree", cstring"set_node_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  animationNodeBlendTreeSetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
