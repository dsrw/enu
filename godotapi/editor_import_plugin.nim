
import
  godot, godottypes, godotinternal, resource_importer

export
  godottypes, resource_importer

method getImportOptions*(self: EditorImportPlugin; preset: int64): Array {.gcsafe,
    locks: 0, base.}
method getImportOrder*(self: EditorImportPlugin): int64 {.gcsafe, locks: 0, base.}
method getImporterName*(self: EditorImportPlugin): string {.gcsafe, locks: 0, base.}
method getOptionVisibility*(self: EditorImportPlugin; option: string;
                           options: Dictionary): bool {.gcsafe, locks: 0, base.}
method getPresetCount*(self: EditorImportPlugin): int64 {.gcsafe, locks: 0, base.}
method getPresetName*(self: EditorImportPlugin; preset: int64): string {.gcsafe,
    locks: 0, base.}
method getPriority*(self: EditorImportPlugin): float64 {.gcsafe, locks: 0, base.}
method getRecognizedExtensions*(self: EditorImportPlugin): Array {.gcsafe, locks: 0,
    base.}
method getResourceType*(self: EditorImportPlugin): string {.gcsafe, locks: 0, base.}
method getSaveExtension*(self: EditorImportPlugin): string {.gcsafe, locks: 0, base.}
method getVisibleName*(self: EditorImportPlugin): string {.gcsafe, locks: 0, base.}
method importt*(self: EditorImportPlugin; sourceFile: string; savePath: string;
               options: Dictionary; platformVariants: Array; genFiles: Array): int64 {.
    gcsafe, locks: 0, base.}
var editorImportPluginGetImportOptionsMethodBind {.threadvar.}: ptr GodotMethodBind
method getImportOptions(self: EditorImportPlugin; preset: int64): Array =
  if isNil(editorImportPluginGetImportOptionsMethodBind):
    editorImportPluginGetImportOptionsMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_import_options")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(preset)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorImportPluginGetImportOptionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var editorImportPluginGetImportOrderMethodBind {.threadvar.}: ptr GodotMethodBind
method getImportOrder(self: EditorImportPlugin): int64 =
  if isNil(editorImportPluginGetImportOrderMethodBind):
    editorImportPluginGetImportOrderMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_import_order")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorImportPluginGetImportOrderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorImportPluginGetImporterNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getImporterName(self: EditorImportPlugin): string =
  if isNil(editorImportPluginGetImporterNameMethodBind):
    editorImportPluginGetImporterNameMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_importer_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorImportPluginGetImporterNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorImportPluginGetOptionVisibilityMethodBind {.threadvar.}: ptr GodotMethodBind
method getOptionVisibility(self: EditorImportPlugin; option: string;
                          options: Dictionary): bool =
  if isNil(editorImportPluginGetOptionVisibilityMethodBind):
    editorImportPluginGetOptionVisibilityMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_option_visibility")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(option)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = options.godotDictionary
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorImportPluginGetOptionVisibilityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorImportPluginGetPresetCountMethodBind {.threadvar.}: ptr GodotMethodBind
method getPresetCount(self: EditorImportPlugin): int64 =
  if isNil(editorImportPluginGetPresetCountMethodBind):
    editorImportPluginGetPresetCountMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_preset_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorImportPluginGetPresetCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorImportPluginGetPresetNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getPresetName(self: EditorImportPlugin; preset: int64): string =
  if isNil(editorImportPluginGetPresetNameMethodBind):
    editorImportPluginGetPresetNameMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_preset_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(preset)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorImportPluginGetPresetNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorImportPluginGetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
method getPriority(self: EditorImportPlugin): float64 =
  if isNil(editorImportPluginGetPriorityMethodBind):
    editorImportPluginGetPriorityMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorImportPluginGetPriorityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorImportPluginGetRecognizedExtensionsMethodBind {.threadvar.}: ptr GodotMethodBind
method getRecognizedExtensions(self: EditorImportPlugin): Array =
  if isNil(editorImportPluginGetRecognizedExtensionsMethodBind):
    editorImportPluginGetRecognizedExtensionsMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_recognized_extensions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorImportPluginGetRecognizedExtensionsMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = newArray(ptrCallVal)

var editorImportPluginGetResourceTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method getResourceType(self: EditorImportPlugin): string =
  if isNil(editorImportPluginGetResourceTypeMethodBind):
    editorImportPluginGetResourceTypeMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_resource_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorImportPluginGetResourceTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorImportPluginGetSaveExtensionMethodBind {.threadvar.}: ptr GodotMethodBind
method getSaveExtension(self: EditorImportPlugin): string =
  if isNil(editorImportPluginGetSaveExtensionMethodBind):
    editorImportPluginGetSaveExtensionMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_save_extension")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorImportPluginGetSaveExtensionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorImportPluginGetVisibleNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getVisibleName(self: EditorImportPlugin): string =
  if isNil(editorImportPluginGetVisibleNameMethodBind):
    editorImportPluginGetVisibleNameMethodBind = getMethod(
        cstring"EditorImportPlugin", cstring"get_visible_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorImportPluginGetVisibleNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorImportPluginImportMethodBind {.threadvar.}: ptr GodotMethodBind
method importt(self: EditorImportPlugin; sourceFile: string; savePath: string;
              options: Dictionary; platformVariants: Array; genFiles: Array): int64 =
  if isNil(editorImportPluginImportMethodBind):
    editorImportPluginImportMethodBind = getMethod(cstring"EditorImportPlugin",
        cstring"import")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(sourceFile)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(savePath)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = options.godotDictionary
  argsToPassToGodot[][3] = platformVariants.godotArray
  argsToPassToGodot[][4] = genFiles.godotArray
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorImportPluginImportMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
