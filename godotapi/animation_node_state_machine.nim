
import
  godot, godottypes, godotinternal, animation_root_node

export
  godottypes, animation_root_node

method treeChanged*(self: AnimationNodeStateMachine) {.gcsafe, locks: 0, base.}
proc addNode*(self: AnimationNodeStateMachine; name: string; node: AnimationNode;
             position: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc addTransition*(self: AnimationNodeStateMachine; fromm: string; to: string;
                   transition: AnimationNodeStateMachineTransition) {.gcsafe,
    locks: 0.}
proc getEndNode*(self: AnimationNodeStateMachine): string {.gcsafe, locks: 0.}
proc getGraphOffset*(self: AnimationNodeStateMachine): Vector2 {.gcsafe, locks: 0.}
proc getNode*(self: AnimationNodeStateMachine; name: string): AnimationNode {.gcsafe,
    locks: 0.}
proc getNodeName*(self: AnimationNodeStateMachine; node: AnimationNode): string {.
    gcsafe, locks: 0.}
proc getNodePosition*(self: AnimationNodeStateMachine; name: string): Vector2 {.
    gcsafe, locks: 0.}
proc getStartNode*(self: AnimationNodeStateMachine): string {.gcsafe, locks: 0.}
proc getTransition*(self: AnimationNodeStateMachine; idx: int64): AnimationNodeStateMachineTransition {.
    gcsafe, locks: 0.}
proc getTransitionCount*(self: AnimationNodeStateMachine): int64 {.gcsafe, locks: 0.}
proc getTransitionFrom*(self: AnimationNodeStateMachine; idx: int64): string {.gcsafe,
    locks: 0.}
proc getTransitionTo*(self: AnimationNodeStateMachine; idx: int64): string {.gcsafe,
    locks: 0.}
proc hasNode*(self: AnimationNodeStateMachine; name: string): bool {.gcsafe, locks: 0.}
proc hasTransition*(self: AnimationNodeStateMachine; fromm: string; to: string): bool {.
    gcsafe, locks: 0.}
proc removeNode*(self: AnimationNodeStateMachine; name: string) {.gcsafe, locks: 0.}
proc removeTransition*(self: AnimationNodeStateMachine; fromm: string; to: string) {.
    gcsafe, locks: 0.}
proc removeTransitionByIndex*(self: AnimationNodeStateMachine; idx: int64) {.gcsafe,
    locks: 0.}
proc renameNode*(self: AnimationNodeStateMachine; name: string; newName: string) {.
    gcsafe, locks: 0.}
proc replaceNode*(self: AnimationNodeStateMachine; name: string; node: AnimationNode) {.
    gcsafe, locks: 0.}
proc setEndNode*(self: AnimationNodeStateMachine; name: string) {.gcsafe, locks: 0.}
proc setGraphOffset*(self: AnimationNodeStateMachine; offset: Vector2) {.gcsafe,
    locks: 0.}
proc setNodePosition*(self: AnimationNodeStateMachine; name: string;
                     position: Vector2) {.gcsafe, locks: 0.}
proc setStartNode*(self: AnimationNodeStateMachine; name: string) {.gcsafe, locks: 0.}
var animationNodeStateMachineUnderscoretreeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeChanged(self: AnimationNodeStateMachine) =
  if isNil(animationNodeStateMachineUnderscoretreeChangedMethodBind):
    animationNodeStateMachineUnderscoretreeChangedMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"_tree_changed")
  var ptrCallRet: pointer
  animationNodeStateMachineUnderscoretreeChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeStateMachineAddNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addNode(self: AnimationNodeStateMachine; name: string; node: AnimationNode;
            position: Vector2 = vec2(0.0, 0.0)) =
  if isNil(animationNodeStateMachineAddNodeMethodBind):
    animationNodeStateMachineAddNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"add_node")
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
  animationNodeStateMachineAddNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineAddTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTransition(self: AnimationNodeStateMachine; fromm: string; to: string;
                  transition: AnimationNodeStateMachineTransition) =
  if isNil(animationNodeStateMachineAddTransitionMethodBind):
    animationNodeStateMachineAddTransitionMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"add_transition")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(to)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  let argToPassToGodot2 = if not transition.isNil:
    transition.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  animationNodeStateMachineAddTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationNodeStateMachineGetEndNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEndNode(self: AnimationNodeStateMachine): string =
  if isNil(animationNodeStateMachineGetEndNodeMethodBind):
    animationNodeStateMachineGetEndNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_end_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineGetEndNodeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeStateMachineGetGraphOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGraphOffset(self: AnimationNodeStateMachine): Vector2 =
  if isNil(animationNodeStateMachineGetGraphOffsetMethodBind):
    animationNodeStateMachineGetGraphOffsetMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_graph_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineGetGraphOffsetMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var animationNodeStateMachineGetNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNode(self: AnimationNodeStateMachine; name: string): AnimationNode =
  if isNil(animationNodeStateMachineGetNodeMethodBind):
    animationNodeStateMachineGetNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineGetNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationNodeStateMachineGetNodeNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeName(self: AnimationNodeStateMachine; node: AnimationNode): string =
  if isNil(animationNodeStateMachineGetNodeNameMethodBind):
    animationNodeStateMachineGetNodeNameMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_node_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineGetNodeNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeStateMachineGetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePosition(self: AnimationNodeStateMachine; name: string): Vector2 =
  if isNil(animationNodeStateMachineGetNodePositionMethodBind):
    animationNodeStateMachineGetNodePositionMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_node_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineGetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineGetStartNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStartNode(self: AnimationNodeStateMachine): string =
  if isNil(animationNodeStateMachineGetStartNodeMethodBind):
    animationNodeStateMachineGetStartNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_start_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineGetStartNodeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeStateMachineGetTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransition(self: AnimationNodeStateMachine; idx: int64): AnimationNodeStateMachineTransition =
  if isNil(animationNodeStateMachineGetTransitionMethodBind):
    animationNodeStateMachineGetTransitionMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_transition")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineGetTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationNodeStateMachineGetTransitionCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransitionCount(self: AnimationNodeStateMachine): int64 =
  if isNil(animationNodeStateMachineGetTransitionCountMethodBind):
    animationNodeStateMachineGetTransitionCountMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_transition_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineGetTransitionCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeStateMachineGetTransitionFromMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransitionFrom(self: AnimationNodeStateMachine; idx: int64): string =
  if isNil(animationNodeStateMachineGetTransitionFromMethodBind):
    animationNodeStateMachineGetTransitionFromMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_transition_from")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineGetTransitionFromMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeStateMachineGetTransitionToMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransitionTo(self: AnimationNodeStateMachine; idx: int64): string =
  if isNil(animationNodeStateMachineGetTransitionToMethodBind):
    animationNodeStateMachineGetTransitionToMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"get_transition_to")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineGetTransitionToMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeStateMachineHasNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasNode(self: AnimationNodeStateMachine; name: string): bool =
  if isNil(animationNodeStateMachineHasNodeMethodBind):
    animationNodeStateMachineHasNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"has_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineHasNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineHasTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasTransition(self: AnimationNodeStateMachine; fromm: string; to: string): bool =
  if isNil(animationNodeStateMachineHasTransitionMethodBind):
    animationNodeStateMachineHasTransitionMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"has_transition")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(to)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineHasTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationNodeStateMachineRemoveNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeNode(self: AnimationNodeStateMachine; name: string) =
  if isNil(animationNodeStateMachineRemoveNodeMethodBind):
    animationNodeStateMachineRemoveNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"remove_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeStateMachineRemoveNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineRemoveTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeTransition(self: AnimationNodeStateMachine; fromm: string; to: string) =
  if isNil(animationNodeStateMachineRemoveTransitionMethodBind):
    animationNodeStateMachineRemoveTransitionMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"remove_transition")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(fromm)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(to)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationNodeStateMachineRemoveTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationNodeStateMachineRemoveTransitionByIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeTransitionByIndex(self: AnimationNodeStateMachine; idx: int64) =
  if isNil(animationNodeStateMachineRemoveTransitionByIndexMethodBind):
    animationNodeStateMachineRemoveTransitionByIndexMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"remove_transition_by_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  animationNodeStateMachineRemoveTransitionByIndexMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeStateMachineRenameNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameNode(self: AnimationNodeStateMachine; name: string; newName: string) =
  if isNil(animationNodeStateMachineRenameNodeMethodBind):
    animationNodeStateMachineRenameNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"rename_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  animationNodeStateMachineRenameNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var animationNodeStateMachineReplaceNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc replaceNode(self: AnimationNodeStateMachine; name: string; node: AnimationNode) =
  if isNil(animationNodeStateMachineReplaceNodeMethodBind):
    animationNodeStateMachineReplaceNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"replace_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animationNodeStateMachineReplaceNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineSetEndNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setEndNode(self: AnimationNodeStateMachine; name: string) =
  if isNil(animationNodeStateMachineSetEndNodeMethodBind):
    animationNodeStateMachineSetEndNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"set_end_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeStateMachineSetEndNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineSetGraphOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setGraphOffset(self: AnimationNodeStateMachine; offset: Vector2) =
  if isNil(animationNodeStateMachineSetGraphOffsetMethodBind):
    animationNodeStateMachineSetGraphOffsetMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"set_graph_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  animationNodeStateMachineSetGraphOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeStateMachineSetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNodePosition(self: AnimationNodeStateMachine; name: string; position: Vector2) =
  if isNil(animationNodeStateMachineSetNodePositionMethodBind):
    animationNodeStateMachineSetNodePositionMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"set_node_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  animationNodeStateMachineSetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineSetStartNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setStartNode(self: AnimationNodeStateMachine; name: string) =
  if isNil(animationNodeStateMachineSetStartNodeMethodBind):
    animationNodeStateMachineSetStartNodeMethodBind = getMethod(
        cstring"AnimationNodeStateMachine", cstring"set_start_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeStateMachineSetStartNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
