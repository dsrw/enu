
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  CONTAINER_CANVAS_EDITOR_BOTTOM* = 8'i64
  CONTAINER_CANVAS_EDITOR_MENU* = 5'i64
  CONTAINER_CANVAS_EDITOR_SIDE_LEFT* = 6'i64
  CONTAINER_CANVAS_EDITOR_SIDE_RIGHT* = 7'i64
  CONTAINER_PROJECT_SETTING_TAB_LEFT* = 10'i64
  CONTAINER_PROJECT_SETTING_TAB_RIGHT* = 11'i64
  CONTAINER_PROPERTY_EDITOR_BOTTOM* = 9'i64
  CONTAINER_SPATIAL_EDITOR_BOTTOM* = 4'i64
  CONTAINER_SPATIAL_EDITOR_MENU* = 1'i64
  CONTAINER_SPATIAL_EDITOR_SIDE_LEFT* = 2'i64
  CONTAINER_SPATIAL_EDITOR_SIDE_RIGHT* = 3'i64
  CONTAINER_TOOLBAR* = 0'i64
  DOCK_SLOT_LEFT_BL* = 1'i64
  DOCK_SLOT_LEFT_BR* = 3'i64
  DOCK_SLOT_LEFT_UL* = 0'i64
  DOCK_SLOT_LEFT_UR* = 2'i64
  DOCK_SLOT_MAX* = 8'i64
  DOCK_SLOT_RIGHT_BL* = 5'i64
  DOCK_SLOT_RIGHT_BR* = 7'i64
  DOCK_SLOT_RIGHT_UL* = 4'i64
  DOCK_SLOT_RIGHT_UR* = 6'i64
proc addAutoloadSingleton*(self: EditorPlugin; name: string; path: string) {.gcsafe,
    locks: 0.}
proc addControlToBottomPanel*(self: EditorPlugin; control: Control; title: string): ToolButton {.
    gcsafe, locks: 0.}
proc addControlToContainer*(self: EditorPlugin; container: int64; control: Control) {.
    gcsafe, locks: 0.}
proc addControlToDock*(self: EditorPlugin; slot: int64; control: Control) {.gcsafe,
    locks: 0.}
proc addCustomType*(self: EditorPlugin; typee: string; base: string; script: Script;
                   icon: Texture) {.gcsafe, locks: 0.}
proc addExportPlugin*(self: EditorPlugin; plugin: EditorExportPlugin) {.gcsafe,
    locks: 0.}
proc addImportPlugin*(self: EditorPlugin; importer: EditorImportPlugin) {.gcsafe,
    locks: 0.}
proc addInspectorPlugin*(self: EditorPlugin; plugin: EditorInspectorPlugin) {.gcsafe,
    locks: 0.}
proc addSceneImportPlugin*(self: EditorPlugin; sceneImporter: EditorSceneImporter) {.
    gcsafe, locks: 0.}
proc addSpatialGizmoPlugin*(self: EditorPlugin; plugin: EditorSpatialGizmoPlugin) {.
    gcsafe, locks: 0.}
proc addToolMenuItem*(self: EditorPlugin; name: string; handler: Object;
                     callback: string; ud: Variant = newVariant()) {.gcsafe, locks: 0.}
proc addToolSubmenuItem*(self: EditorPlugin; name: string; submenu: Object) {.gcsafe,
    locks: 0.}
method applyChanges*(self: EditorPlugin) {.gcsafe, locks: 0, base.}
method build*(self: EditorPlugin): bool {.gcsafe, locks: 0, base.}
method clear*(self: EditorPlugin) {.gcsafe, locks: 0, base.}
method disablePlugin*(self: EditorPlugin) {.gcsafe, locks: 0, base.}
method edit*(self: EditorPlugin; objectt: Object) {.gcsafe, locks: 0, base.}
method enablePlugin*(self: EditorPlugin) {.gcsafe, locks: 0, base.}
method forwardCanvasDrawOverViewport*(self: EditorPlugin; overlay: Control) {.gcsafe,
    locks: 0, base.}
method forwardCanvasForceDrawOverViewport*(self: EditorPlugin; overlay: Control) {.
    gcsafe, locks: 0, base.}
method forwardCanvasGuiInput*(self: EditorPlugin; event: InputEvent): bool {.gcsafe,
    locks: 0, base.}
method forwardSpatialGuiInput*(self: EditorPlugin; camera: Camera; event: InputEvent): bool {.
    gcsafe, locks: 0, base.}
method getBreakpoints*(self: EditorPlugin): PoolStringArray {.gcsafe, locks: 0, base.}
proc getEditorInterface*(self: EditorPlugin): EditorInterface {.gcsafe, locks: 0.}
method getPluginIcon*(self: EditorPlugin): Texture {.gcsafe, locks: 0, base.}
method getPluginName*(self: EditorPlugin): string {.gcsafe, locks: 0, base.}
proc getScriptCreateDialog*(self: EditorPlugin): ScriptCreateDialog {.gcsafe,
    locks: 0.}
method getState*(self: EditorPlugin): Dictionary {.gcsafe, locks: 0, base.}
proc getUndoRedo*(self: EditorPlugin): UndoRedo {.gcsafe, locks: 0.}
method getWindowLayout*(self: EditorPlugin; layout: ConfigFile) {.gcsafe, locks: 0, base.}
method handles*(self: EditorPlugin; objectt: Object): bool {.gcsafe, locks: 0, base.}
method hasMainScreen*(self: EditorPlugin): bool {.gcsafe, locks: 0, base.}
proc hideBottomPanel*(self: EditorPlugin) {.gcsafe, locks: 0.}
proc makeBottomPanelItemVisible*(self: EditorPlugin; item: Control) {.gcsafe, locks: 0.}
method makeVisible*(self: EditorPlugin; visible: bool) {.gcsafe, locks: 0, base.}
proc queueSaveLayout*(self: EditorPlugin) {.gcsafe, locks: 0.}
proc removeAutoloadSingleton*(self: EditorPlugin; name: string) {.gcsafe, locks: 0.}
proc removeControlFromBottomPanel*(self: EditorPlugin; control: Control) {.gcsafe,
    locks: 0.}
proc removeControlFromContainer*(self: EditorPlugin; container: int64;
                                control: Control) {.gcsafe, locks: 0.}
proc removeControlFromDocks*(self: EditorPlugin; control: Control) {.gcsafe, locks: 0.}
proc removeCustomType*(self: EditorPlugin; typee: string) {.gcsafe, locks: 0.}
proc removeExportPlugin*(self: EditorPlugin; plugin: EditorExportPlugin) {.gcsafe,
    locks: 0.}
proc removeImportPlugin*(self: EditorPlugin; importer: EditorImportPlugin) {.gcsafe,
    locks: 0.}
proc removeInspectorPlugin*(self: EditorPlugin; plugin: EditorInspectorPlugin) {.
    gcsafe, locks: 0.}
proc removeSceneImportPlugin*(self: EditorPlugin;
                             sceneImporter: EditorSceneImporter) {.gcsafe, locks: 0.}
proc removeSpatialGizmoPlugin*(self: EditorPlugin; plugin: EditorSpatialGizmoPlugin) {.
    gcsafe, locks: 0.}
proc removeToolMenuItem*(self: EditorPlugin; name: string) {.gcsafe, locks: 0.}
method saveExternalData*(self: EditorPlugin) {.gcsafe, locks: 0, base.}
proc setForceDrawOverForwardingEnabled*(self: EditorPlugin) {.gcsafe, locks: 0.}
proc setInputEventForwardingAlwaysEnabled*(self: EditorPlugin) {.gcsafe, locks: 0.}
method setState*(self: EditorPlugin; state: Dictionary) {.gcsafe, locks: 0, base.}
method setWindowLayout*(self: EditorPlugin; layout: ConfigFile) {.gcsafe, locks: 0, base.}
proc updateOverlays*(self: EditorPlugin): int64 {.gcsafe, locks: 0.}
var editorPluginAddAutoloadSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc addAutoloadSingleton(self: EditorPlugin; name: string; path: string) =
  if isNil(editorPluginAddAutoloadSingletonMethodBind):
    editorPluginAddAutoloadSingletonMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_autoload_singleton")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(path)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  editorPluginAddAutoloadSingletonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var editorPluginAddControlToBottomPanelMethodBind {.threadvar.}: ptr GodotMethodBind
proc addControlToBottomPanel(self: EditorPlugin; control: Control; title: string): ToolButton =
  if isNil(editorPluginAddControlToBottomPanelMethodBind):
    editorPluginAddControlToBottomPanelMethodBind = getMethod(
        cstring"EditorPlugin", cstring"add_control_to_bottom_panel")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(title)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorPluginAddControlToBottomPanelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorPluginAddControlToContainerMethodBind {.threadvar.}: ptr GodotMethodBind
proc addControlToContainer(self: EditorPlugin; container: int64; control: Control) =
  if isNil(editorPluginAddControlToContainerMethodBind):
    editorPluginAddControlToContainerMethodBind = getMethod(
        cstring"EditorPlugin", cstring"add_control_to_container")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(container)
  let argToPassToGodot1 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorPluginAddControlToContainerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginAddControlToDockMethodBind {.threadvar.}: ptr GodotMethodBind
proc addControlToDock(self: EditorPlugin; slot: int64; control: Control) =
  if isNil(editorPluginAddControlToDockMethodBind):
    editorPluginAddControlToDockMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_control_to_dock")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(slot)
  let argToPassToGodot1 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorPluginAddControlToDockMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginAddCustomTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCustomType(self: EditorPlugin; typee: string; base: string; script: Script;
                  icon: Texture) =
  if isNil(editorPluginAddCustomTypeMethodBind):
    editorPluginAddCustomTypeMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_custom_type")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(base)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  let argToPassToGodot2 = if not script.isNil:
    script.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  let argToPassToGodot3 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var ptrCallRet: pointer
  editorPluginAddCustomTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var editorPluginAddExportPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc addExportPlugin(self: EditorPlugin; plugin: EditorExportPlugin) =
  if isNil(editorPluginAddExportPluginMethodBind):
    editorPluginAddExportPluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_export_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not plugin.isNil:
    plugin.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginAddExportPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginAddImportPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc addImportPlugin(self: EditorPlugin; importer: EditorImportPlugin) =
  if isNil(editorPluginAddImportPluginMethodBind):
    editorPluginAddImportPluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_import_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not importer.isNil:
    importer.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginAddImportPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginAddInspectorPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc addInspectorPlugin(self: EditorPlugin; plugin: EditorInspectorPlugin) =
  if isNil(editorPluginAddInspectorPluginMethodBind):
    editorPluginAddInspectorPluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_inspector_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not plugin.isNil:
    plugin.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginAddInspectorPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginAddSceneImportPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSceneImportPlugin(self: EditorPlugin; sceneImporter: EditorSceneImporter) =
  if isNil(editorPluginAddSceneImportPluginMethodBind):
    editorPluginAddSceneImportPluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_scene_import_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not sceneImporter.isNil:
    sceneImporter.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginAddSceneImportPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginAddSpatialGizmoPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSpatialGizmoPlugin(self: EditorPlugin; plugin: EditorSpatialGizmoPlugin) =
  if isNil(editorPluginAddSpatialGizmoPluginMethodBind):
    editorPluginAddSpatialGizmoPluginMethodBind = getMethod(
        cstring"EditorPlugin", cstring"add_spatial_gizmo_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not plugin.isNil:
    plugin.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginAddSpatialGizmoPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginAddToolMenuItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addToolMenuItem(self: EditorPlugin; name: string; handler: Object;
                    callback: string; ud: Variant = newVariant()) =
  if isNil(editorPluginAddToolMenuItemMethodBind):
    editorPluginAddToolMenuItemMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_tool_menu_item")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not handler.isNil:
    handler.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(callback)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = ud.godotVariant
  var ptrCallRet: pointer
  editorPluginAddToolMenuItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var editorPluginAddToolSubmenuItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addToolSubmenuItem(self: EditorPlugin; name: string; submenu: Object) =
  if isNil(editorPluginAddToolSubmenuItemMethodBind):
    editorPluginAddToolSubmenuItemMethodBind = getMethod(cstring"EditorPlugin",
        cstring"add_tool_submenu_item")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not submenu.isNil:
    submenu.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorPluginAddToolSubmenuItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorPluginApplyChangesMethodBind {.threadvar.}: ptr GodotMethodBind
method applyChanges(self: EditorPlugin) =
  if isNil(editorPluginApplyChangesMethodBind):
    editorPluginApplyChangesMethodBind = getMethod(cstring"EditorPlugin",
        cstring"apply_changes")
  var ptrCallRet: pointer
  editorPluginApplyChangesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginBuildMethodBind {.threadvar.}: ptr GodotMethodBind
method build(self: EditorPlugin): bool =
  if isNil(editorPluginBuildMethodBind):
    editorPluginBuildMethodBind = getMethod(cstring"EditorPlugin", cstring"build")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPluginBuildMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginClearMethodBind {.threadvar.}: ptr GodotMethodBind
method clear(self: EditorPlugin) =
  if isNil(editorPluginClearMethodBind):
    editorPluginClearMethodBind = getMethod(cstring"EditorPlugin", cstring"clear")
  var ptrCallRet: pointer
  editorPluginClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginDisablePluginMethodBind {.threadvar.}: ptr GodotMethodBind
method disablePlugin(self: EditorPlugin) =
  if isNil(editorPluginDisablePluginMethodBind):
    editorPluginDisablePluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"disable_plugin")
  var ptrCallRet: pointer
  editorPluginDisablePluginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginEditMethodBind {.threadvar.}: ptr GodotMethodBind
method edit(self: EditorPlugin; objectt: Object) =
  if isNil(editorPluginEditMethodBind):
    editorPluginEditMethodBind = getMethod(cstring"EditorPlugin", cstring"edit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginEditMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var editorPluginEnablePluginMethodBind {.threadvar.}: ptr GodotMethodBind
method enablePlugin(self: EditorPlugin) =
  if isNil(editorPluginEnablePluginMethodBind):
    editorPluginEnablePluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"enable_plugin")
  var ptrCallRet: pointer
  editorPluginEnablePluginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginForwardCanvasDrawOverViewportMethodBind {.threadvar.}: ptr GodotMethodBind
method forwardCanvasDrawOverViewport(self: EditorPlugin; overlay: Control) =
  if isNil(editorPluginForwardCanvasDrawOverViewportMethodBind):
    editorPluginForwardCanvasDrawOverViewportMethodBind = getMethod(
        cstring"EditorPlugin", cstring"forward_canvas_draw_over_viewport")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not overlay.isNil:
    overlay.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginForwardCanvasDrawOverViewportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginForwardCanvasForceDrawOverViewportMethodBind {.threadvar.}: ptr GodotMethodBind
method forwardCanvasForceDrawOverViewport(self: EditorPlugin; overlay: Control) =
  if isNil(editorPluginForwardCanvasForceDrawOverViewportMethodBind):
    editorPluginForwardCanvasForceDrawOverViewportMethodBind = getMethod(
        cstring"EditorPlugin", cstring"forward_canvas_force_draw_over_viewport")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not overlay.isNil:
    overlay.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginForwardCanvasForceDrawOverViewportMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var editorPluginForwardCanvasGuiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method forwardCanvasGuiInput(self: EditorPlugin; event: InputEvent): bool =
  if isNil(editorPluginForwardCanvasGuiInputMethodBind):
    editorPluginForwardCanvasGuiInputMethodBind = getMethod(
        cstring"EditorPlugin", cstring"forward_canvas_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPluginForwardCanvasGuiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginForwardSpatialGuiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method forwardSpatialGuiInput(self: EditorPlugin; camera: Camera; event: InputEvent): bool =
  if isNil(editorPluginForwardSpatialGuiInputMethodBind):
    editorPluginForwardSpatialGuiInputMethodBind = getMethod(
        cstring"EditorPlugin", cstring"forward_spatial_gui_input")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not camera.isNil:
    camera.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPluginForwardSpatialGuiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginGetBreakpointsMethodBind {.threadvar.}: ptr GodotMethodBind
method getBreakpoints(self: EditorPlugin): PoolStringArray =
  if isNil(editorPluginGetBreakpointsMethodBind):
    editorPluginGetBreakpointsMethodBind = getMethod(cstring"EditorPlugin",
        cstring"get_breakpoints")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  editorPluginGetBreakpointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var editorPluginGetEditorInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEditorInterface(self: EditorPlugin): EditorInterface =
  if isNil(editorPluginGetEditorInterfaceMethodBind):
    editorPluginGetEditorInterfaceMethodBind = getMethod(cstring"EditorPlugin",
        cstring"get_editor_interface")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorPluginGetEditorInterfaceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorPluginGetPluginIconMethodBind {.threadvar.}: ptr GodotMethodBind
method getPluginIcon(self: EditorPlugin): Texture =
  if isNil(editorPluginGetPluginIconMethodBind):
    editorPluginGetPluginIconMethodBind = getMethod(cstring"EditorPlugin",
        cstring"get_plugin_icon")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorPluginGetPluginIconMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorPluginGetPluginNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getPluginName(self: EditorPlugin): string =
  if isNil(editorPluginGetPluginNameMethodBind):
    editorPluginGetPluginNameMethodBind = getMethod(cstring"EditorPlugin",
        cstring"get_plugin_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorPluginGetPluginNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorPluginGetScriptCreateDialogMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScriptCreateDialog(self: EditorPlugin): ScriptCreateDialog =
  if isNil(editorPluginGetScriptCreateDialogMethodBind):
    editorPluginGetScriptCreateDialogMethodBind = getMethod(
        cstring"EditorPlugin", cstring"get_script_create_dialog")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorPluginGetScriptCreateDialogMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorPluginGetStateMethodBind {.threadvar.}: ptr GodotMethodBind
method getState(self: EditorPlugin): Dictionary =
  if isNil(editorPluginGetStateMethodBind):
    editorPluginGetStateMethodBind = getMethod(cstring"EditorPlugin",
        cstring"get_state")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  editorPluginGetStateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var editorPluginGetUndoRedoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUndoRedo(self: EditorPlugin): UndoRedo =
  if isNil(editorPluginGetUndoRedoMethodBind):
    editorPluginGetUndoRedoMethodBind = getMethod(cstring"EditorPlugin",
        cstring"get_undo_redo")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorPluginGetUndoRedoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorPluginGetWindowLayoutMethodBind {.threadvar.}: ptr GodotMethodBind
method getWindowLayout(self: EditorPlugin; layout: ConfigFile) =
  if isNil(editorPluginGetWindowLayoutMethodBind):
    editorPluginGetWindowLayoutMethodBind = getMethod(cstring"EditorPlugin",
        cstring"get_window_layout")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not layout.isNil:
    layout.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginGetWindowLayoutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginHandlesMethodBind {.threadvar.}: ptr GodotMethodBind
method handles(self: EditorPlugin; objectt: Object): bool =
  if isNil(editorPluginHandlesMethodBind):
    editorPluginHandlesMethodBind = getMethod(cstring"EditorPlugin",
        cstring"handles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPluginHandlesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var editorPluginHasMainScreenMethodBind {.threadvar.}: ptr GodotMethodBind
method hasMainScreen(self: EditorPlugin): bool =
  if isNil(editorPluginHasMainScreenMethodBind):
    editorPluginHasMainScreenMethodBind = getMethod(cstring"EditorPlugin",
        cstring"has_main_screen")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPluginHasMainScreenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginHideBottomPanelMethodBind {.threadvar.}: ptr GodotMethodBind
proc hideBottomPanel(self: EditorPlugin) =
  if isNil(editorPluginHideBottomPanelMethodBind):
    editorPluginHideBottomPanelMethodBind = getMethod(cstring"EditorPlugin",
        cstring"hide_bottom_panel")
  var ptrCallRet: pointer
  editorPluginHideBottomPanelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginMakeBottomPanelItemVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeBottomPanelItemVisible(self: EditorPlugin; item: Control) =
  if isNil(editorPluginMakeBottomPanelItemVisibleMethodBind):
    editorPluginMakeBottomPanelItemVisibleMethodBind = getMethod(
        cstring"EditorPlugin", cstring"make_bottom_panel_item_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not item.isNil:
    item.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginMakeBottomPanelItemVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginMakeVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
method makeVisible(self: EditorPlugin; visible: bool) =
  if isNil(editorPluginMakeVisibleMethodBind):
    editorPluginMakeVisibleMethodBind = getMethod(cstring"EditorPlugin",
        cstring"make_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(visible)
  var ptrCallRet: pointer
  editorPluginMakeVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorPluginQueueSaveLayoutMethodBind {.threadvar.}: ptr GodotMethodBind
proc queueSaveLayout(self: EditorPlugin) =
  if isNil(editorPluginQueueSaveLayoutMethodBind):
    editorPluginQueueSaveLayoutMethodBind = getMethod(cstring"EditorPlugin",
        cstring"queue_save_layout")
  var ptrCallRet: pointer
  editorPluginQueueSaveLayoutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginRemoveAutoloadSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeAutoloadSingleton(self: EditorPlugin; name: string) =
  if isNil(editorPluginRemoveAutoloadSingletonMethodBind):
    editorPluginRemoveAutoloadSingletonMethodBind = getMethod(
        cstring"EditorPlugin", cstring"remove_autoload_singleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorPluginRemoveAutoloadSingletonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorPluginRemoveControlFromBottomPanelMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeControlFromBottomPanel(self: EditorPlugin; control: Control) =
  if isNil(editorPluginRemoveControlFromBottomPanelMethodBind):
    editorPluginRemoveControlFromBottomPanelMethodBind = getMethod(
        cstring"EditorPlugin", cstring"remove_control_from_bottom_panel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginRemoveControlFromBottomPanelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveControlFromContainerMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeControlFromContainer(self: EditorPlugin; container: int64;
                               control: Control) =
  if isNil(editorPluginRemoveControlFromContainerMethodBind):
    editorPluginRemoveControlFromContainerMethodBind = getMethod(
        cstring"EditorPlugin", cstring"remove_control_from_container")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(container)
  let argToPassToGodot1 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorPluginRemoveControlFromContainerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveControlFromDocksMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeControlFromDocks(self: EditorPlugin; control: Control) =
  if isNil(editorPluginRemoveControlFromDocksMethodBind):
    editorPluginRemoveControlFromDocksMethodBind = getMethod(
        cstring"EditorPlugin", cstring"remove_control_from_docks")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginRemoveControlFromDocksMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveCustomTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCustomType(self: EditorPlugin; typee: string) =
  if isNil(editorPluginRemoveCustomTypeMethodBind):
    editorPluginRemoveCustomTypeMethodBind = getMethod(cstring"EditorPlugin",
        cstring"remove_custom_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorPluginRemoveCustomTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorPluginRemoveExportPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeExportPlugin(self: EditorPlugin; plugin: EditorExportPlugin) =
  if isNil(editorPluginRemoveExportPluginMethodBind):
    editorPluginRemoveExportPluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"remove_export_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not plugin.isNil:
    plugin.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginRemoveExportPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveImportPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeImportPlugin(self: EditorPlugin; importer: EditorImportPlugin) =
  if isNil(editorPluginRemoveImportPluginMethodBind):
    editorPluginRemoveImportPluginMethodBind = getMethod(cstring"EditorPlugin",
        cstring"remove_import_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not importer.isNil:
    importer.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginRemoveImportPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveInspectorPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeInspectorPlugin(self: EditorPlugin; plugin: EditorInspectorPlugin) =
  if isNil(editorPluginRemoveInspectorPluginMethodBind):
    editorPluginRemoveInspectorPluginMethodBind = getMethod(
        cstring"EditorPlugin", cstring"remove_inspector_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not plugin.isNil:
    plugin.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginRemoveInspectorPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveSceneImportPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeSceneImportPlugin(self: EditorPlugin; sceneImporter: EditorSceneImporter) =
  if isNil(editorPluginRemoveSceneImportPluginMethodBind):
    editorPluginRemoveSceneImportPluginMethodBind = getMethod(
        cstring"EditorPlugin", cstring"remove_scene_import_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not sceneImporter.isNil:
    sceneImporter.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginRemoveSceneImportPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveSpatialGizmoPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeSpatialGizmoPlugin(self: EditorPlugin; plugin: EditorSpatialGizmoPlugin) =
  if isNil(editorPluginRemoveSpatialGizmoPluginMethodBind):
    editorPluginRemoveSpatialGizmoPluginMethodBind = getMethod(
        cstring"EditorPlugin", cstring"remove_spatial_gizmo_plugin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not plugin.isNil:
    plugin.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginRemoveSpatialGizmoPluginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginRemoveToolMenuItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeToolMenuItem(self: EditorPlugin; name: string) =
  if isNil(editorPluginRemoveToolMenuItemMethodBind):
    editorPluginRemoveToolMenuItemMethodBind = getMethod(cstring"EditorPlugin",
        cstring"remove_tool_menu_item")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorPluginRemoveToolMenuItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorPluginSaveExternalDataMethodBind {.threadvar.}: ptr GodotMethodBind
method saveExternalData(self: EditorPlugin) =
  if isNil(editorPluginSaveExternalDataMethodBind):
    editorPluginSaveExternalDataMethodBind = getMethod(cstring"EditorPlugin",
        cstring"save_external_data")
  var ptrCallRet: pointer
  editorPluginSaveExternalDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorPluginSetForceDrawOverForwardingEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setForceDrawOverForwardingEnabled(self: EditorPlugin) =
  if isNil(editorPluginSetForceDrawOverForwardingEnabledMethodBind):
    editorPluginSetForceDrawOverForwardingEnabledMethodBind = getMethod(
        cstring"EditorPlugin", cstring"set_force_draw_over_forwarding_enabled")
  var ptrCallRet: pointer
  editorPluginSetForceDrawOverForwardingEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorPluginSetInputEventForwardingAlwaysEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputEventForwardingAlwaysEnabled(self: EditorPlugin) =
  if isNil(editorPluginSetInputEventForwardingAlwaysEnabledMethodBind):
    editorPluginSetInputEventForwardingAlwaysEnabledMethodBind = getMethod(
        cstring"EditorPlugin",
        cstring"set_input_event_forwarding_always_enabled")
  var ptrCallRet: pointer
  editorPluginSetInputEventForwardingAlwaysEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorPluginSetStateMethodBind {.threadvar.}: ptr GodotMethodBind
method setState(self: EditorPlugin; state: Dictionary) =
  if isNil(editorPluginSetStateMethodBind):
    editorPluginSetStateMethodBind = getMethod(cstring"EditorPlugin",
        cstring"set_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = state.godotDictionary
  var ptrCallRet: pointer
  editorPluginSetStateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var editorPluginSetWindowLayoutMethodBind {.threadvar.}: ptr GodotMethodBind
method setWindowLayout(self: EditorPlugin; layout: ConfigFile) =
  if isNil(editorPluginSetWindowLayoutMethodBind):
    editorPluginSetWindowLayoutMethodBind = getMethod(cstring"EditorPlugin",
        cstring"set_window_layout")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not layout.isNil:
    layout.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorPluginSetWindowLayoutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorPluginUpdateOverlaysMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateOverlays(self: EditorPlugin): int64 =
  if isNil(editorPluginUpdateOverlaysMethodBind):
    editorPluginUpdateOverlaysMethodBind = getMethod(cstring"EditorPlugin",
        cstring"update_overlays")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorPluginUpdateOverlaysMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
