
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

method emitChange*(self: EditorSelection) {.gcsafe, locks: 0, base.}
method nodeRemoved*(self: EditorSelection; arg0: Node) {.gcsafe, locks: 0, base.}
proc addNode*(self: EditorSelection; node: Node) {.gcsafe, locks: 0.}
proc clear*(self: EditorSelection) {.gcsafe, locks: 0.}
proc getSelectedNodes*(self: EditorSelection): Array {.gcsafe, locks: 0.}
proc getTransformableSelectedNodes*(self: EditorSelection): Array {.gcsafe, locks: 0.}
proc removeNode*(self: EditorSelection; node: Node) {.gcsafe, locks: 0.}
var editorSelectionUnderscoreemitChangeMethodBind {.threadvar.}: ptr GodotMethodBind
method emitChange(self: EditorSelection) =
  if isNil(editorSelectionUnderscoreemitChangeMethodBind):
    editorSelectionUnderscoreemitChangeMethodBind = getMethod(
        cstring"EditorSelection", cstring"_emit_change")
  var ptrCallRet: pointer
  editorSelectionUnderscoreemitChangeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorSelectionUnderscorenodeRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodeRemoved(self: EditorSelection; arg0: Node) =
  if isNil(editorSelectionUnderscorenodeRemovedMethodBind):
    editorSelectionUnderscorenodeRemovedMethodBind = getMethod(
        cstring"EditorSelection", cstring"_node_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSelectionUnderscorenodeRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSelectionAddNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addNode(self: EditorSelection; node: Node) =
  if isNil(editorSelectionAddNodeMethodBind):
    editorSelectionAddNodeMethodBind = getMethod(cstring"EditorSelection",
        cstring"add_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSelectionAddNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorSelectionClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: EditorSelection) =
  if isNil(editorSelectionClearMethodBind):
    editorSelectionClearMethodBind = getMethod(cstring"EditorSelection",
        cstring"clear")
  var ptrCallRet: pointer
  editorSelectionClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorSelectionGetSelectedNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectedNodes(self: EditorSelection): Array =
  if isNil(editorSelectionGetSelectedNodesMethodBind):
    editorSelectionGetSelectedNodesMethodBind = getMethod(
        cstring"EditorSelection", cstring"get_selected_nodes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorSelectionGetSelectedNodesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var editorSelectionGetTransformableSelectedNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransformableSelectedNodes(self: EditorSelection): Array =
  if isNil(editorSelectionGetTransformableSelectedNodesMethodBind):
    editorSelectionGetTransformableSelectedNodesMethodBind = getMethod(
        cstring"EditorSelection", cstring"get_transformable_selected_nodes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorSelectionGetTransformableSelectedNodesMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var editorSelectionRemoveNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeNode(self: EditorSelection; node: Node) =
  if isNil(editorSelectionRemoveNodeMethodBind):
    editorSelectionRemoveNodeMethodBind = getMethod(cstring"EditorSelection",
        cstring"remove_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSelectionRemoveNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
