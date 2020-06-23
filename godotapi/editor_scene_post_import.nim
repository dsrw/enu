
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc getSourceFile*(self: EditorScenePostImport): string {.gcsafe, locks: 0.}
proc getSourceFolder*(self: EditorScenePostImport): string {.gcsafe, locks: 0.}
method postImport*(self: EditorScenePostImport; scene: Object): Object {.gcsafe,
    locks: 0, base.}
var editorScenePostImportGetSourceFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSourceFile(self: EditorScenePostImport): string =
  if isNil(editorScenePostImportGetSourceFileMethodBind):
    editorScenePostImportGetSourceFileMethodBind = getMethod(
        cstring"EditorScenePostImport", cstring"get_source_file")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorScenePostImportGetSourceFileMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorScenePostImportGetSourceFolderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSourceFolder(self: EditorScenePostImport): string =
  if isNil(editorScenePostImportGetSourceFolderMethodBind):
    editorScenePostImportGetSourceFolderMethodBind = getMethod(
        cstring"EditorScenePostImport", cstring"get_source_folder")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorScenePostImportGetSourceFolderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorScenePostImportPostImportMethodBind {.threadvar.}: ptr GodotMethodBind
method postImport(self: EditorScenePostImport; scene: Object): Object =
  if isNil(editorScenePostImportPostImportMethodBind):
    editorScenePostImportPostImportMethodBind = getMethod(
        cstring"EditorScenePostImport", cstring"post_import")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not scene.isNil:
    scene.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorScenePostImportPostImportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
