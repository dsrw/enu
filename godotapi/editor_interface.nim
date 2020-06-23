
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

proc distractionFreeMode*(self: EditorInterface): bool {.gcsafe, locks: 0.}
proc `distractionFreeMode=`*(self: EditorInterface; val: bool) {.gcsafe, locks: 0.}
proc editResource*(self: EditorInterface; resource: Resource) {.gcsafe, locks: 0.}
proc getBaseControl*(self: EditorInterface): Control {.gcsafe, locks: 0.}
proc getCurrentPath*(self: EditorInterface): string {.gcsafe, locks: 0.}
proc getEditedSceneRoot*(self: EditorInterface): Node {.gcsafe, locks: 0.}
proc getEditorSettings*(self: EditorInterface): EditorSettings {.gcsafe, locks: 0.}
proc getEditorViewport*(self: EditorInterface): Control {.gcsafe, locks: 0.}
proc getFileSystemDock*(self: EditorInterface): FileSystemDock {.gcsafe, locks: 0.}
proc getInspector*(self: EditorInterface): EditorInspector {.gcsafe, locks: 0.}
proc getOpenScenes*(self: EditorInterface): Array {.gcsafe, locks: 0.}
proc getResourceFilesystem*(self: EditorInterface): EditorFileSystem {.gcsafe,
    locks: 0.}
proc getResourcePreviewer*(self: EditorInterface): EditorResourcePreview {.gcsafe,
    locks: 0.}
proc getScriptEditor*(self: EditorInterface): ScriptEditor {.gcsafe, locks: 0.}
proc getSelectedPath*(self: EditorInterface): string {.gcsafe, locks: 0.}
proc getSelection*(self: EditorInterface): EditorSelection {.gcsafe, locks: 0.}
proc inspectObject*(self: EditorInterface; objectt: Object; forProperty: string = "") {.
    gcsafe, locks: 0.}
proc isPluginEnabled*(self: EditorInterface; plugin: string): bool {.gcsafe, locks: 0.}
proc makeMeshPreviews*(self: EditorInterface; meshes: Array; previewSize: int64): Array {.
    gcsafe, locks: 0.}
proc openSceneFromPath*(self: EditorInterface; sceneFilepath: string) {.gcsafe,
    locks: 0.}
proc reloadSceneFromPath*(self: EditorInterface; sceneFilepath: string) {.gcsafe,
    locks: 0.}
proc saveScene*(self: EditorInterface): Error {.gcsafe, locks: 0.}
proc saveSceneAs*(self: EditorInterface; path: string; withPreview: bool = true) {.
    gcsafe, locks: 0.}
proc selectFile*(self: EditorInterface; file: string) {.gcsafe, locks: 0.}
proc setMainScreenEditor*(self: EditorInterface; name: string) {.gcsafe, locks: 0.}
proc setPluginEnabled*(self: EditorInterface; plugin: string; enabled: bool) {.gcsafe,
    locks: 0.}
var editorInterfaceIsDistractionFreeModeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc distractionFreeMode(self: EditorInterface): bool =
  if isNil(editorInterfaceIsDistractionFreeModeEnabledMethodBind):
    editorInterfaceIsDistractionFreeModeEnabledMethodBind = getMethod(
        cstring"EditorInterface", cstring"is_distraction_free_mode_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorInterfaceIsDistractionFreeModeEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorInterfaceSetDistractionFreeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `distractionFreeMode=`(self: EditorInterface; val: bool) =
  if isNil(editorInterfaceSetDistractionFreeModeMethodBind):
    editorInterfaceSetDistractionFreeModeMethodBind = getMethod(
        cstring"EditorInterface", cstring"set_distraction_free_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorInterfaceSetDistractionFreeModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorInterfaceEditResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc editResource(self: EditorInterface; resource: Resource) =
  if isNil(editorInterfaceEditResourceMethodBind):
    editorInterfaceEditResourceMethodBind = getMethod(cstring"EditorInterface",
        cstring"edit_resource")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorInterfaceEditResourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorInterfaceGetBaseControlMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBaseControl(self: EditorInterface): Control =
  if isNil(editorInterfaceGetBaseControlMethodBind):
    editorInterfaceGetBaseControlMethodBind = getMethod(cstring"EditorInterface",
        cstring"get_base_control")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetBaseControlMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetCurrentPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentPath(self: EditorInterface): string =
  if isNil(editorInterfaceGetCurrentPathMethodBind):
    editorInterfaceGetCurrentPathMethodBind = getMethod(cstring"EditorInterface",
        cstring"get_current_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetCurrentPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorInterfaceGetEditedSceneRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditedSceneRoot(self: EditorInterface): Node =
  if isNil(editorInterfaceGetEditedSceneRootMethodBind):
    editorInterfaceGetEditedSceneRootMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_edited_scene_root")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetEditedSceneRootMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetEditorSettingsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditorSettings(self: EditorInterface): EditorSettings =
  if isNil(editorInterfaceGetEditorSettingsMethodBind):
    editorInterfaceGetEditorSettingsMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_editor_settings")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetEditorSettingsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetEditorViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditorViewport(self: EditorInterface): Control =
  if isNil(editorInterfaceGetEditorViewportMethodBind):
    editorInterfaceGetEditorViewportMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_editor_viewport")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetEditorViewportMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetFileSystemDockMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFileSystemDock(self: EditorInterface): FileSystemDock =
  if isNil(editorInterfaceGetFileSystemDockMethodBind):
    editorInterfaceGetFileSystemDockMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_file_system_dock")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetFileSystemDockMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetInspectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInspector(self: EditorInterface): EditorInspector =
  if isNil(editorInterfaceGetInspectorMethodBind):
    editorInterfaceGetInspectorMethodBind = getMethod(cstring"EditorInterface",
        cstring"get_inspector")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetInspectorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetOpenScenesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOpenScenes(self: EditorInterface): Array =
  if isNil(editorInterfaceGetOpenScenesMethodBind):
    editorInterfaceGetOpenScenesMethodBind = getMethod(cstring"EditorInterface",
        cstring"get_open_scenes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetOpenScenesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var editorInterfaceGetResourceFilesystemMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResourceFilesystem(self: EditorInterface): EditorFileSystem =
  if isNil(editorInterfaceGetResourceFilesystemMethodBind):
    editorInterfaceGetResourceFilesystemMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_resource_filesystem")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetResourceFilesystemMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetResourcePreviewerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResourcePreviewer(self: EditorInterface): EditorResourcePreview =
  if isNil(editorInterfaceGetResourcePreviewerMethodBind):
    editorInterfaceGetResourcePreviewerMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_resource_previewer")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetResourcePreviewerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetScriptEditorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScriptEditor(self: EditorInterface): ScriptEditor =
  if isNil(editorInterfaceGetScriptEditorMethodBind):
    editorInterfaceGetScriptEditorMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_script_editor")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetScriptEditorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceGetSelectedPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectedPath(self: EditorInterface): string =
  if isNil(editorInterfaceGetSelectedPathMethodBind):
    editorInterfaceGetSelectedPathMethodBind = getMethod(
        cstring"EditorInterface", cstring"get_selected_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetSelectedPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorInterfaceGetSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelection(self: EditorInterface): EditorSelection =
  if isNil(editorInterfaceGetSelectionMethodBind):
    editorInterfaceGetSelectionMethodBind = getMethod(cstring"EditorInterface",
        cstring"get_selection")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceGetSelectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorInterfaceInspectObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc inspectObject(self: EditorInterface; objectt: Object; forProperty: string = "") =
  if isNil(editorInterfaceInspectObjectMethodBind):
    editorInterfaceInspectObjectMethodBind = getMethod(cstring"EditorInterface",
        cstring"inspect_object")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(forProperty)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  editorInterfaceInspectObjectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var editorInterfaceIsPluginEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPluginEnabled(self: EditorInterface; plugin: string): bool =
  if isNil(editorInterfaceIsPluginEnabledMethodBind):
    editorInterfaceIsPluginEnabledMethodBind = getMethod(
        cstring"EditorInterface", cstring"is_plugin_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(plugin)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorInterfaceIsPluginEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInterfaceMakeMeshPreviewsMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeMeshPreviews(self: EditorInterface; meshes: Array; previewSize: int64): Array =
  if isNil(editorInterfaceMakeMeshPreviewsMethodBind):
    editorInterfaceMakeMeshPreviewsMethodBind = getMethod(
        cstring"EditorInterface", cstring"make_mesh_previews")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = meshes.godotArray
  argsToPassToGodot[][1] = unsafeAddr(previewSize)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceMakeMeshPreviewsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var editorInterfaceOpenSceneFromPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc openSceneFromPath(self: EditorInterface; sceneFilepath: string) =
  if isNil(editorInterfaceOpenSceneFromPathMethodBind):
    editorInterfaceOpenSceneFromPathMethodBind = getMethod(
        cstring"EditorInterface", cstring"open_scene_from_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(sceneFilepath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorInterfaceOpenSceneFromPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInterfaceReloadSceneFromPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc reloadSceneFromPath(self: EditorInterface; sceneFilepath: string) =
  if isNil(editorInterfaceReloadSceneFromPathMethodBind):
    editorInterfaceReloadSceneFromPathMethodBind = getMethod(
        cstring"EditorInterface", cstring"reload_scene_from_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(sceneFilepath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorInterfaceReloadSceneFromPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInterfaceSaveSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveScene(self: EditorInterface): Error =
  if isNil(editorInterfaceSaveSceneMethodBind):
    editorInterfaceSaveSceneMethodBind = getMethod(cstring"EditorInterface",
        cstring"save_scene")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  editorInterfaceSaveSceneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var editorInterfaceSaveSceneAsMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveSceneAs(self: EditorInterface; path: string; withPreview: bool = true) =
  if isNil(editorInterfaceSaveSceneAsMethodBind):
    editorInterfaceSaveSceneAsMethodBind = getMethod(cstring"EditorInterface",
        cstring"save_scene_as")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(withPreview)
  var ptrCallRet: pointer
  editorInterfaceSaveSceneAsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInterfaceSelectFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectFile(self: EditorInterface; file: string) =
  if isNil(editorInterfaceSelectFileMethodBind):
    editorInterfaceSelectFileMethodBind = getMethod(cstring"EditorInterface",
        cstring"select_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(file)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorInterfaceSelectFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInterfaceSetMainScreenEditorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMainScreenEditor(self: EditorInterface; name: string) =
  if isNil(editorInterfaceSetMainScreenEditorMethodBind):
    editorInterfaceSetMainScreenEditorMethodBind = getMethod(
        cstring"EditorInterface", cstring"set_main_screen_editor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorInterfaceSetMainScreenEditorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInterfaceSetPluginEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPluginEnabled(self: EditorInterface; plugin: string; enabled: bool) =
  if isNil(editorInterfaceSetPluginEnabledMethodBind):
    editorInterfaceSetPluginEnabledMethodBind = getMethod(
        cstring"EditorInterface", cstring"set_plugin_enabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(plugin)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  editorInterfaceSetPluginEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
