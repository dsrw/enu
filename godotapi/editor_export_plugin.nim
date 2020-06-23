
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method exportBegin*(self: EditorExportPlugin; features: PoolStringArray;
                   isDebug: bool; path: string; flags: int64) {.gcsafe, locks: 0, base.}
method exportEnd*(self: EditorExportPlugin) {.gcsafe, locks: 0, base.}
method exportFile*(self: EditorExportPlugin; path: string; typee: string;
                  features: PoolStringArray) {.gcsafe, locks: 0, base.}
proc addFile*(self: EditorExportPlugin; path: string; file: PoolByteArray; remap: bool) {.
    gcsafe, locks: 0.}
proc addIosBundleFile*(self: EditorExportPlugin; path: string) {.gcsafe, locks: 0.}
proc addIosCppCode*(self: EditorExportPlugin; code: string) {.gcsafe, locks: 0.}
proc addIosFramework*(self: EditorExportPlugin; path: string) {.gcsafe, locks: 0.}
proc addIosLinkerFlags*(self: EditorExportPlugin; flags: string) {.gcsafe, locks: 0.}
proc addIosPlistContent*(self: EditorExportPlugin; plistContent: string) {.gcsafe,
    locks: 0.}
proc addIosProjectStaticLib*(self: EditorExportPlugin; path: string) {.gcsafe,
    locks: 0.}
proc addSharedObject*(self: EditorExportPlugin; path: string; tags: PoolStringArray) {.
    gcsafe, locks: 0.}
proc skip*(self: EditorExportPlugin) {.gcsafe, locks: 0.}
var editorExportPluginUnderscoreexportBeginMethodBind {.threadvar.}: ptr GodotMethodBind
method exportBegin(self: EditorExportPlugin; features: PoolStringArray;
                  isDebug: bool; path: string; flags: int64) =
  if isNil(editorExportPluginUnderscoreexportBeginMethodBind):
    editorExportPluginUnderscoreexportBeginMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"_export_begin")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = features.godotPoolStringArray
  argsToPassToGodot[][1] = unsafeAddr(isDebug)
  var argToPassToGodot2 = toGodotString(path)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(flags)
  var ptrCallRet: pointer
  editorExportPluginUnderscoreexportBeginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var editorExportPluginUnderscoreexportEndMethodBind {.threadvar.}: ptr GodotMethodBind
method exportEnd(self: EditorExportPlugin) =
  if isNil(editorExportPluginUnderscoreexportEndMethodBind):
    editorExportPluginUnderscoreexportEndMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"_export_end")
  var ptrCallRet: pointer
  editorExportPluginUnderscoreexportEndMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorExportPluginUnderscoreexportFileMethodBind {.threadvar.}: ptr GodotMethodBind
method exportFile(self: EditorExportPlugin; path: string; typee: string;
                 features: PoolStringArray) =
  if isNil(editorExportPluginUnderscoreexportFileMethodBind):
    editorExportPluginUnderscoreexportFileMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"_export_file")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = features.godotPoolStringArray
  var ptrCallRet: pointer
  editorExportPluginUnderscoreexportFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var editorExportPluginAddFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFile(self: EditorExportPlugin; path: string; file: PoolByteArray; remap: bool) =
  if isNil(editorExportPluginAddFileMethodBind):
    editorExportPluginAddFileMethodBind = getMethod(cstring"EditorExportPlugin",
        cstring"add_file")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = file.godotPoolByteArray
  argsToPassToGodot[][2] = unsafeAddr(remap)
  var ptrCallRet: pointer
  editorExportPluginAddFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginAddIosBundleFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIosBundleFile(self: EditorExportPlugin; path: string) =
  if isNil(editorExportPluginAddIosBundleFileMethodBind):
    editorExportPluginAddIosBundleFileMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"add_ios_bundle_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorExportPluginAddIosBundleFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginAddIosCppCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIosCppCode(self: EditorExportPlugin; code: string) =
  if isNil(editorExportPluginAddIosCppCodeMethodBind):
    editorExportPluginAddIosCppCodeMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"add_ios_cpp_code")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(code)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorExportPluginAddIosCppCodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginAddIosFrameworkMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIosFramework(self: EditorExportPlugin; path: string) =
  if isNil(editorExportPluginAddIosFrameworkMethodBind):
    editorExportPluginAddIosFrameworkMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"add_ios_framework")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorExportPluginAddIosFrameworkMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginAddIosLinkerFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIosLinkerFlags(self: EditorExportPlugin; flags: string) =
  if isNil(editorExportPluginAddIosLinkerFlagsMethodBind):
    editorExportPluginAddIosLinkerFlagsMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"add_ios_linker_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(flags)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorExportPluginAddIosLinkerFlagsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginAddIosPlistContentMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIosPlistContent(self: EditorExportPlugin; plistContent: string) =
  if isNil(editorExportPluginAddIosPlistContentMethodBind):
    editorExportPluginAddIosPlistContentMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"add_ios_plist_content")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(plistContent)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorExportPluginAddIosPlistContentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginAddIosProjectStaticLibMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIosProjectStaticLib(self: EditorExportPlugin; path: string) =
  if isNil(editorExportPluginAddIosProjectStaticLibMethodBind):
    editorExportPluginAddIosProjectStaticLibMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"add_ios_project_static_lib")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorExportPluginAddIosProjectStaticLibMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginAddSharedObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSharedObject(self: EditorExportPlugin; path: string; tags: PoolStringArray) =
  if isNil(editorExportPluginAddSharedObjectMethodBind):
    editorExportPluginAddSharedObjectMethodBind = getMethod(
        cstring"EditorExportPlugin", cstring"add_shared_object")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = tags.godotPoolStringArray
  var ptrCallRet: pointer
  editorExportPluginAddSharedObjectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorExportPluginSkipMethodBind {.threadvar.}: ptr GodotMethodBind
proc skip(self: EditorExportPlugin) =
  if isNil(editorExportPluginSkipMethodBind):
    editorExportPluginSkipMethodBind = getMethod(cstring"EditorExportPlugin",
        cstring"skip")
  var ptrCallRet: pointer
  editorExportPluginSkipMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
