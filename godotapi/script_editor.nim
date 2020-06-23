
import
  godot, godottypes, godotinternal, panel_container

export
  godottypes, panel_container

method addCallback*(self: ScriptEditor; arg0: Object; arg1: string;
                   arg2: PoolStringArray) {.gcsafe, locks: 0, base.}
method autosaveScripts*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method breaked*(self: ScriptEditor; arg0: bool; arg1: bool) {.gcsafe, locks: 0, base.}
method clearExecution*(self: ScriptEditor; arg0: Reference) {.gcsafe, locks: 0, base.}
method closeAllTabs*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method closeCurrentTab*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method closeDiscardCurrentTab*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0,
    base.}
method closeDocsTab*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method closeOtherTabs*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method copyScriptPath*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method editorPause*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method editorPlay*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method editorSettingsChanged*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method editorStop*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method fileDialogAction*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0, base.}
method filterMethodsTextChanged*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0,
    base.}
method filterScriptsTextChanged*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0,
    base.}
method getDebugTooltip*(self: ScriptEditor; arg0: string; arg1: Node): string {.gcsafe,
    locks: 0, base.}
method gotoScriptLine*(self: ScriptEditor; arg0: Reference; arg1: int64) {.gcsafe,
    locks: 0, base.}
method gotoScriptLine2*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0, base.}
method helpClassGoto*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0, base.}
method helpClassOpen*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0, base.}
method helpOverviewSelected*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0, base.}
method helpSearch*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0, base.}
method historyBack*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method historyForward*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method liveAutoReloadRunningScripts*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method membersOverviewSelected*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0,
    base.}
method menuOption*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0, base.}
method onFindInFilesModifiedFiles*(self: ScriptEditor; arg0: PoolStringArray) {.
    gcsafe, locks: 0, base.}
method onFindInFilesRequested*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0,
    base.}
method onFindInFilesResultSelected*(self: ScriptEditor; arg0: string; arg1: int64;
                                   arg2: int64; arg3: int64) {.gcsafe, locks: 0, base.}
method openRecentScript*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0, base.}
method reloadScripts*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method requestHelp*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0, base.}
method resSavedCallback*(self: ScriptEditor; arg0: Resource) {.gcsafe, locks: 0, base.}
method resaveScripts*(self: ScriptEditor; arg0: string) {.gcsafe, locks: 0, base.}
method saveHistory*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method scriptChanged*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method scriptCreated*(self: ScriptEditor; arg0: Script) {.gcsafe, locks: 0, base.}
method scriptListGuiInput*(self: ScriptEditor; arg0: InputEvent) {.gcsafe, locks: 0,
    base.}
method scriptSelected*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0, base.}
method scriptSplitDragged*(self: ScriptEditor; arg0: float64) {.gcsafe, locks: 0, base.}
method setExecution*(self: ScriptEditor; arg0: Reference; arg1: int64) {.gcsafe,
    locks: 0, base.}
method showDebugger*(self: ScriptEditor; arg0: bool) {.gcsafe, locks: 0, base.}
method startFindInFiles*(self: ScriptEditor; arg0: bool) {.gcsafe, locks: 0, base.}
method tabChanged*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0, base.}
method themeOption*(self: ScriptEditor; arg0: int64) {.gcsafe, locks: 0, base.}
method toggleMembersOverviewAlphaSort*(self: ScriptEditor; arg0: bool) {.gcsafe,
    locks: 0, base.}
method treeChanged*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method unhandledInput*(self: ScriptEditor; event: InputEvent) {.gcsafe, locks: 0.}
method updateAutosaveTimer*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method updateMembersOverview*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method updateRecentScripts*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method updateScriptConnections*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
method updateScriptNames*(self: ScriptEditor) {.gcsafe, locks: 0, base.}
proc canDropDataFw*(self: ScriptEditor; point: Vector2; data: Variant; fromm: Control): bool {.
    gcsafe, locks: 0.}
proc dropDataFw*(self: ScriptEditor; point: Vector2; data: Variant; fromm: Control) {.
    gcsafe, locks: 0.}
proc getCurrentScript*(self: ScriptEditor): Script {.gcsafe, locks: 0.}
proc getDragDataFw*(self: ScriptEditor; point: Vector2; fromm: Control): Variant {.
    gcsafe, locks: 0.}
proc getOpenScripts*(self: ScriptEditor): Array {.gcsafe, locks: 0.}
proc gotoLine*(self: ScriptEditor; lineNumber: int64) {.gcsafe, locks: 0.}
proc openScriptCreateDialog*(self: ScriptEditor; baseName: string; basePath: string) {.
    gcsafe, locks: 0.}
var scriptEditorUnderscoreaddCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
method addCallback(self: ScriptEditor; arg0: Object; arg1: string;
                  arg2: PoolStringArray) =
  if isNil(scriptEditorUnderscoreaddCallbackMethodBind):
    scriptEditorUnderscoreaddCallbackMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_add_callback")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(arg1)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = arg2.godotPoolStringArray
  var ptrCallRet: pointer
  scriptEditorUnderscoreaddCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var scriptEditorUnderscoreautosaveScriptsMethodBind {.threadvar.}: ptr GodotMethodBind
method autosaveScripts(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreautosaveScriptsMethodBind):
    scriptEditorUnderscoreautosaveScriptsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_autosave_scripts")
  var ptrCallRet: pointer
  scriptEditorUnderscoreautosaveScriptsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorebreakedMethodBind {.threadvar.}: ptr GodotMethodBind
method breaked(self: ScriptEditor; arg0: bool; arg1: bool) =
  if isNil(scriptEditorUnderscorebreakedMethodBind):
    scriptEditorUnderscorebreakedMethodBind = getMethod(cstring"ScriptEditor",
        cstring"_breaked")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  scriptEditorUnderscorebreakedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoreclearExecutionMethodBind {.threadvar.}: ptr GodotMethodBind
method clearExecution(self: ScriptEditor; arg0: Reference) =
  if isNil(scriptEditorUnderscoreclearExecutionMethodBind):
    scriptEditorUnderscoreclearExecutionMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_clear_execution")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scriptEditorUnderscoreclearExecutionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorecloseAllTabsMethodBind {.threadvar.}: ptr GodotMethodBind
method closeAllTabs(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorecloseAllTabsMethodBind):
    scriptEditorUnderscorecloseAllTabsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_close_all_tabs")
  var ptrCallRet: pointer
  scriptEditorUnderscorecloseAllTabsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorecloseCurrentTabMethodBind {.threadvar.}: ptr GodotMethodBind
method closeCurrentTab(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorecloseCurrentTabMethodBind):
    scriptEditorUnderscorecloseCurrentTabMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_close_current_tab")
  var ptrCallRet: pointer
  scriptEditorUnderscorecloseCurrentTabMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorecloseDiscardCurrentTabMethodBind {.threadvar.}: ptr GodotMethodBind
method closeDiscardCurrentTab(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorecloseDiscardCurrentTabMethodBind):
    scriptEditorUnderscorecloseDiscardCurrentTabMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_close_discard_current_tab")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorecloseDiscardCurrentTabMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscorecloseDocsTabMethodBind {.threadvar.}: ptr GodotMethodBind
method closeDocsTab(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorecloseDocsTabMethodBind):
    scriptEditorUnderscorecloseDocsTabMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_close_docs_tab")
  var ptrCallRet: pointer
  scriptEditorUnderscorecloseDocsTabMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorecloseOtherTabsMethodBind {.threadvar.}: ptr GodotMethodBind
method closeOtherTabs(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorecloseOtherTabsMethodBind):
    scriptEditorUnderscorecloseOtherTabsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_close_other_tabs")
  var ptrCallRet: pointer
  scriptEditorUnderscorecloseOtherTabsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorecopyScriptPathMethodBind {.threadvar.}: ptr GodotMethodBind
method copyScriptPath(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorecopyScriptPathMethodBind):
    scriptEditorUnderscorecopyScriptPathMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_copy_script_path")
  var ptrCallRet: pointer
  scriptEditorUnderscorecopyScriptPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscoreeditorPauseMethodBind {.threadvar.}: ptr GodotMethodBind
method editorPause(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreeditorPauseMethodBind):
    scriptEditorUnderscoreeditorPauseMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_editor_pause")
  var ptrCallRet: pointer
  scriptEditorUnderscoreeditorPauseMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscoreeditorPlayMethodBind {.threadvar.}: ptr GodotMethodBind
method editorPlay(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreeditorPlayMethodBind):
    scriptEditorUnderscoreeditorPlayMethodBind = getMethod(cstring"ScriptEditor",
        cstring"_editor_play")
  var ptrCallRet: pointer
  scriptEditorUnderscoreeditorPlayMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscoreeditorSettingsChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method editorSettingsChanged(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreeditorSettingsChangedMethodBind):
    scriptEditorUnderscoreeditorSettingsChangedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_editor_settings_changed")
  var ptrCallRet: pointer
  scriptEditorUnderscoreeditorSettingsChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var scriptEditorUnderscoreeditorStopMethodBind {.threadvar.}: ptr GodotMethodBind
method editorStop(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreeditorStopMethodBind):
    scriptEditorUnderscoreeditorStopMethodBind = getMethod(cstring"ScriptEditor",
        cstring"_editor_stop")
  var ptrCallRet: pointer
  scriptEditorUnderscoreeditorStopMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorefileDialogActionMethodBind {.threadvar.}: ptr GodotMethodBind
method fileDialogAction(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorefileDialogActionMethodBind):
    scriptEditorUnderscorefileDialogActionMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_file_dialog_action")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorefileDialogActionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscorefilterMethodsTextChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method filterMethodsTextChanged(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorefilterMethodsTextChangedMethodBind):
    scriptEditorUnderscorefilterMethodsTextChangedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_filter_methods_text_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorefilterMethodsTextChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscorefilterScriptsTextChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method filterScriptsTextChanged(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorefilterScriptsTextChangedMethodBind):
    scriptEditorUnderscorefilterScriptsTextChangedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_filter_scripts_text_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorefilterScriptsTextChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscoregetDebugTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
method getDebugTooltip(self: ScriptEditor; arg0: string; arg1: Node): string =
  if isNil(scriptEditorUnderscoregetDebugTooltipMethodBind):
    scriptEditorUnderscoregetDebugTooltipMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_get_debug_tooltip")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  scriptEditorUnderscoregetDebugTooltipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var scriptEditorUnderscoregotoScriptLineMethodBind {.threadvar.}: ptr GodotMethodBind
method gotoScriptLine(self: ScriptEditor; arg0: Reference; arg1: int64) =
  if isNil(scriptEditorUnderscoregotoScriptLineMethodBind):
    scriptEditorUnderscoregotoScriptLineMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_goto_script_line")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  scriptEditorUnderscoregotoScriptLineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoregotoScriptLine2MethodBind {.threadvar.}: ptr GodotMethodBind
method gotoScriptLine2(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscoregotoScriptLine2MethodBind):
    scriptEditorUnderscoregotoScriptLine2MethodBind = getMethod(
        cstring"ScriptEditor", cstring"_goto_script_line2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscoregotoScriptLine2MethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorehelpClassGotoMethodBind {.threadvar.}: ptr GodotMethodBind
method helpClassGoto(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorehelpClassGotoMethodBind):
    scriptEditorUnderscorehelpClassGotoMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_help_class_goto")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorehelpClassGotoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscorehelpClassOpenMethodBind {.threadvar.}: ptr GodotMethodBind
method helpClassOpen(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorehelpClassOpenMethodBind):
    scriptEditorUnderscorehelpClassOpenMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_help_class_open")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorehelpClassOpenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscorehelpOverviewSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method helpOverviewSelected(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscorehelpOverviewSelectedMethodBind):
    scriptEditorUnderscorehelpOverviewSelectedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_help_overview_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscorehelpOverviewSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorehelpSearchMethodBind {.threadvar.}: ptr GodotMethodBind
method helpSearch(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorehelpSearchMethodBind):
    scriptEditorUnderscorehelpSearchMethodBind = getMethod(cstring"ScriptEditor",
        cstring"_help_search")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorehelpSearchMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscorehistoryBackMethodBind {.threadvar.}: ptr GodotMethodBind
method historyBack(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorehistoryBackMethodBind):
    scriptEditorUnderscorehistoryBackMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_history_back")
  var ptrCallRet: pointer
  scriptEditorUnderscorehistoryBackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorehistoryForwardMethodBind {.threadvar.}: ptr GodotMethodBind
method historyForward(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorehistoryForwardMethodBind):
    scriptEditorUnderscorehistoryForwardMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_history_forward")
  var ptrCallRet: pointer
  scriptEditorUnderscorehistoryForwardMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscoreliveAutoReloadRunningScriptsMethodBind {.threadvar.}: ptr GodotMethodBind
method liveAutoReloadRunningScripts(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreliveAutoReloadRunningScriptsMethodBind):
    scriptEditorUnderscoreliveAutoReloadRunningScriptsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_live_auto_reload_running_scripts")
  var ptrCallRet: pointer
  scriptEditorUnderscoreliveAutoReloadRunningScriptsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var scriptEditorUnderscoremembersOverviewSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method membersOverviewSelected(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscoremembersOverviewSelectedMethodBind):
    scriptEditorUnderscoremembersOverviewSelectedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_members_overview_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscoremembersOverviewSelectedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoremenuOptionMethodBind {.threadvar.}: ptr GodotMethodBind
method menuOption(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscoremenuOptionMethodBind):
    scriptEditorUnderscoremenuOptionMethodBind = getMethod(cstring"ScriptEditor",
        cstring"_menu_option")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscoremenuOptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoreonFindInFilesModifiedFilesMethodBind {.threadvar.}: ptr GodotMethodBind
method onFindInFilesModifiedFiles(self: ScriptEditor; arg0: PoolStringArray) =
  if isNil(scriptEditorUnderscoreonFindInFilesModifiedFilesMethodBind):
    scriptEditorUnderscoreonFindInFilesModifiedFilesMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_on_find_in_files_modified_files")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotPoolStringArray
  var ptrCallRet: pointer
  scriptEditorUnderscoreonFindInFilesModifiedFilesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoreonFindInFilesRequestedMethodBind {.threadvar.}: ptr GodotMethodBind
method onFindInFilesRequested(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscoreonFindInFilesRequestedMethodBind):
    scriptEditorUnderscoreonFindInFilesRequestedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_on_find_in_files_requested")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscoreonFindInFilesRequestedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscoreonFindInFilesResultSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method onFindInFilesResultSelected(self: ScriptEditor; arg0: string; arg1: int64;
                                  arg2: int64; arg3: int64) =
  if isNil(scriptEditorUnderscoreonFindInFilesResultSelectedMethodBind):
    scriptEditorUnderscoreonFindInFilesResultSelectedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_on_find_in_files_result_selected")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  argsToPassToGodot[][2] = unsafeAddr(arg2)
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  var ptrCallRet: pointer
  scriptEditorUnderscoreonFindInFilesResultSelectedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscoreopenRecentScriptMethodBind {.threadvar.}: ptr GodotMethodBind
method openRecentScript(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscoreopenRecentScriptMethodBind):
    scriptEditorUnderscoreopenRecentScriptMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_open_recent_script")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscoreopenRecentScriptMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorereloadScriptsMethodBind {.threadvar.}: ptr GodotMethodBind
method reloadScripts(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorereloadScriptsMethodBind):
    scriptEditorUnderscorereloadScriptsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_reload_scripts")
  var ptrCallRet: pointer
  scriptEditorUnderscorereloadScriptsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorerequestHelpMethodBind {.threadvar.}: ptr GodotMethodBind
method requestHelp(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscorerequestHelpMethodBind):
    scriptEditorUnderscorerequestHelpMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_request_help")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscorerequestHelpMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscoreresSavedCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
method resSavedCallback(self: ScriptEditor; arg0: Resource) =
  if isNil(scriptEditorUnderscoreresSavedCallbackMethodBind):
    scriptEditorUnderscoreresSavedCallbackMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_res_saved_callback")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scriptEditorUnderscoreresSavedCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoreresaveScriptsMethodBind {.threadvar.}: ptr GodotMethodBind
method resaveScripts(self: ScriptEditor; arg0: string) =
  if isNil(scriptEditorUnderscoreresaveScriptsMethodBind):
    scriptEditorUnderscoreresaveScriptsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_resave_scripts")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptEditorUnderscoreresaveScriptsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var scriptEditorUnderscoresaveHistoryMethodBind {.threadvar.}: ptr GodotMethodBind
method saveHistory(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoresaveHistoryMethodBind):
    scriptEditorUnderscoresaveHistoryMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_save_history")
  var ptrCallRet: pointer
  scriptEditorUnderscoresaveHistoryMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorescriptChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method scriptChanged(self: ScriptEditor) =
  if isNil(scriptEditorUnderscorescriptChangedMethodBind):
    scriptEditorUnderscorescriptChangedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_script_changed")
  var ptrCallRet: pointer
  scriptEditorUnderscorescriptChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscorescriptCreatedMethodBind {.threadvar.}: ptr GodotMethodBind
method scriptCreated(self: ScriptEditor; arg0: Script) =
  if isNil(scriptEditorUnderscorescriptCreatedMethodBind):
    scriptEditorUnderscorescriptCreatedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_script_created")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scriptEditorUnderscorescriptCreatedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorescriptListGuiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method scriptListGuiInput(self: ScriptEditor; arg0: InputEvent) =
  if isNil(scriptEditorUnderscorescriptListGuiInputMethodBind):
    scriptEditorUnderscorescriptListGuiInputMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_script_list_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scriptEditorUnderscorescriptListGuiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorescriptSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method scriptSelected(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscorescriptSelectedMethodBind):
    scriptEditorUnderscorescriptSelectedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_script_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscorescriptSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorescriptSplitDraggedMethodBind {.threadvar.}: ptr GodotMethodBind
method scriptSplitDragged(self: ScriptEditor; arg0: float64) =
  if isNil(scriptEditorUnderscorescriptSplitDraggedMethodBind):
    scriptEditorUnderscorescriptSplitDraggedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_script_split_dragged")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscorescriptSplitDraggedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoresetExecutionMethodBind {.threadvar.}: ptr GodotMethodBind
method setExecution(self: ScriptEditor; arg0: Reference; arg1: int64) =
  if isNil(scriptEditorUnderscoresetExecutionMethodBind):
    scriptEditorUnderscoresetExecutionMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_set_execution")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  scriptEditorUnderscoresetExecutionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoreshowDebuggerMethodBind {.threadvar.}: ptr GodotMethodBind
method showDebugger(self: ScriptEditor; arg0: bool) =
  if isNil(scriptEditorUnderscoreshowDebuggerMethodBind):
    scriptEditorUnderscoreshowDebuggerMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_show_debugger")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscoreshowDebuggerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorestartFindInFilesMethodBind {.threadvar.}: ptr GodotMethodBind
method startFindInFiles(self: ScriptEditor; arg0: bool) =
  if isNil(scriptEditorUnderscorestartFindInFilesMethodBind):
    scriptEditorUnderscorestartFindInFilesMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_start_find_in_files")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscorestartFindInFilesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoretabChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method tabChanged(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscoretabChangedMethodBind):
    scriptEditorUnderscoretabChangedMethodBind = getMethod(cstring"ScriptEditor",
        cstring"_tab_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscoretabChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscorethemeOptionMethodBind {.threadvar.}: ptr GodotMethodBind
method themeOption(self: ScriptEditor; arg0: int64) =
  if isNil(scriptEditorUnderscorethemeOptionMethodBind):
    scriptEditorUnderscorethemeOptionMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_theme_option")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscorethemeOptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoretoggleMembersOverviewAlphaSortMethodBind {.threadvar.}: ptr GodotMethodBind
method toggleMembersOverviewAlphaSort(self: ScriptEditor; arg0: bool) =
  if isNil(scriptEditorUnderscoretoggleMembersOverviewAlphaSortMethodBind):
    scriptEditorUnderscoretoggleMembersOverviewAlphaSortMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_toggle_members_overview_alpha_sort")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  scriptEditorUnderscoretoggleMembersOverviewAlphaSortMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoretreeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method treeChanged(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoretreeChangedMethodBind):
    scriptEditorUnderscoretreeChangedMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_tree_changed")
  var ptrCallRet: pointer
  scriptEditorUnderscoretreeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var scriptEditorUnderscoreunhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledInput(self: ScriptEditor; event: InputEvent) =
  if isNil(scriptEditorUnderscoreunhandledInputMethodBind):
    scriptEditorUnderscoreunhandledInputMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  scriptEditorUnderscoreunhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorUnderscoreupdateAutosaveTimerMethodBind {.threadvar.}: ptr GodotMethodBind
method updateAutosaveTimer(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreupdateAutosaveTimerMethodBind):
    scriptEditorUnderscoreupdateAutosaveTimerMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_update_autosave_timer")
  var ptrCallRet: pointer
  scriptEditorUnderscoreupdateAutosaveTimerMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var scriptEditorUnderscoreupdateMembersOverviewMethodBind {.threadvar.}: ptr GodotMethodBind
method updateMembersOverview(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreupdateMembersOverviewMethodBind):
    scriptEditorUnderscoreupdateMembersOverviewMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_update_members_overview")
  var ptrCallRet: pointer
  scriptEditorUnderscoreupdateMembersOverviewMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var scriptEditorUnderscoreupdateRecentScriptsMethodBind {.threadvar.}: ptr GodotMethodBind
method updateRecentScripts(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreupdateRecentScriptsMethodBind):
    scriptEditorUnderscoreupdateRecentScriptsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_update_recent_scripts")
  var ptrCallRet: pointer
  scriptEditorUnderscoreupdateRecentScriptsMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var scriptEditorUnderscoreupdateScriptConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
method updateScriptConnections(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreupdateScriptConnectionsMethodBind):
    scriptEditorUnderscoreupdateScriptConnectionsMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_update_script_connections")
  var ptrCallRet: pointer
  scriptEditorUnderscoreupdateScriptConnectionsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var scriptEditorUnderscoreupdateScriptNamesMethodBind {.threadvar.}: ptr GodotMethodBind
method updateScriptNames(self: ScriptEditor) =
  if isNil(scriptEditorUnderscoreupdateScriptNamesMethodBind):
    scriptEditorUnderscoreupdateScriptNamesMethodBind = getMethod(
        cstring"ScriptEditor", cstring"_update_script_names")
  var ptrCallRet: pointer
  scriptEditorUnderscoreupdateScriptNamesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var scriptEditorCanDropDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc canDropDataFw(self: ScriptEditor; point: Vector2; data: Variant; fromm: Control): bool =
  if isNil(scriptEditorCanDropDataFwMethodBind):
    scriptEditorCanDropDataFwMethodBind = getMethod(cstring"ScriptEditor",
        cstring"can_drop_data_fw")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = data.godotVariant
  let argToPassToGodot2 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scriptEditorCanDropDataFwMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var scriptEditorDropDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc dropDataFw(self: ScriptEditor; point: Vector2; data: Variant; fromm: Control) =
  if isNil(scriptEditorDropDataFwMethodBind):
    scriptEditorDropDataFwMethodBind = getMethod(cstring"ScriptEditor",
        cstring"drop_data_fw")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = data.godotVariant
  let argToPassToGodot2 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  scriptEditorDropDataFwMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var scriptEditorGetCurrentScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentScript(self: ScriptEditor): Script =
  if isNil(scriptEditorGetCurrentScriptMethodBind):
    scriptEditorGetCurrentScriptMethodBind = getMethod(cstring"ScriptEditor",
        cstring"get_current_script")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  scriptEditorGetCurrentScriptMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var scriptEditorGetDragDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDragDataFw(self: ScriptEditor; point: Vector2; fromm: Control): Variant =
  if isNil(scriptEditorGetDragDataFwMethodBind):
    scriptEditorGetDragDataFwMethodBind = getMethod(cstring"ScriptEditor",
        cstring"get_drag_data_fw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  let argToPassToGodot1 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  scriptEditorGetDragDataFwMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var scriptEditorGetOpenScriptsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOpenScripts(self: ScriptEditor): Array =
  if isNil(scriptEditorGetOpenScriptsMethodBind):
    scriptEditorGetOpenScriptsMethodBind = getMethod(cstring"ScriptEditor",
        cstring"get_open_scripts")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  scriptEditorGetOpenScriptsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var scriptEditorGotoLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc gotoLine(self: ScriptEditor; lineNumber: int64) =
  if isNil(scriptEditorGotoLineMethodBind):
    scriptEditorGotoLineMethodBind = getMethod(cstring"ScriptEditor",
        cstring"goto_line")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(lineNumber)
  var ptrCallRet: pointer
  scriptEditorGotoLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var scriptEditorOpenScriptCreateDialogMethodBind {.threadvar.}: ptr GodotMethodBind
proc openScriptCreateDialog(self: ScriptEditor; baseName: string; basePath: string) =
  if isNil(scriptEditorOpenScriptCreateDialogMethodBind):
    scriptEditorOpenScriptCreateDialogMethodBind = getMethod(
        cstring"ScriptEditor", cstring"open_script_create_dialog")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(baseName)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(basePath)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  scriptEditorOpenScriptCreateDialogMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
