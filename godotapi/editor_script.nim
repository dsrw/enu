
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method run*(self: EditorScript) {.gcsafe, locks: 0, base.}
proc addRootNode*(self: EditorScript; node: Node) {.gcsafe, locks: 0.}
proc getEditorInterface*(self: EditorScript): EditorInterface {.gcsafe, locks: 0.}
proc getScene*(self: EditorScript): Node {.gcsafe, locks: 0.}
var editorScriptUnderscorerunMethodBind {.threadvar.}: ptr GodotMethodBind
method run(self: EditorScript) =
  if isNil(editorScriptUnderscorerunMethodBind):
    editorScriptUnderscorerunMethodBind = getMethod(cstring"EditorScript",
        cstring"_run")
  var ptrCallRet: pointer
  editorScriptUnderscorerunMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorScriptAddRootNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addRootNode(self: EditorScript; node: Node) =
  if isNil(editorScriptAddRootNodeMethodBind):
    editorScriptAddRootNodeMethodBind = getMethod(cstring"EditorScript",
        cstring"add_root_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorScriptAddRootNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorScriptGetEditorInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditorInterface(self: EditorScript): EditorInterface =
  if isNil(editorScriptGetEditorInterfaceMethodBind):
    editorScriptGetEditorInterfaceMethodBind = getMethod(cstring"EditorScript",
        cstring"get_editor_interface")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorScriptGetEditorInterfaceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorScriptGetSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScene(self: EditorScript): Node =
  if isNil(editorScriptGetSceneMethodBind):
    editorScriptGetSceneMethodBind = getMethod(cstring"EditorScript",
        cstring"get_scene")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorScriptGetSceneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
