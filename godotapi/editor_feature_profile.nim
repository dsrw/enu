
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  FEATURE_3D* = 0'i64
  FEATURE_ASSET_LIB* = 2'i64
  FEATURE_FILESYSTEM_DOCK* = 6'i64
  FEATURE_IMPORT_DOCK* = 4'i64
  FEATURE_MAX* = 7'i64
  FEATURE_NODE_DOCK* = 5'i64
  FEATURE_SCENE_TREE* = 3'i64
  FEATURE_SCRIPT* = 1'i64
proc getFeatureName*(self: EditorFeatureProfile; feature: int64): string {.gcsafe,
    locks: 0.}
proc isClassDisabled*(self: EditorFeatureProfile; className: string): bool {.gcsafe,
    locks: 0.}
proc isClassEditorDisabled*(self: EditorFeatureProfile; className: string): bool {.
    gcsafe, locks: 0.}
proc isClassPropertyDisabled*(self: EditorFeatureProfile; className: string;
                             property: string): bool {.gcsafe, locks: 0.}
proc isFeatureDisabled*(self: EditorFeatureProfile; feature: int64): bool {.gcsafe,
    locks: 0.}
proc loadFromFile*(self: EditorFeatureProfile; path: string): Error {.gcsafe, locks: 0.}
proc saveToFile*(self: EditorFeatureProfile; path: string): Error {.gcsafe, locks: 0.}
proc setDisableClass*(self: EditorFeatureProfile; className: string; disable: bool) {.
    gcsafe, locks: 0.}
proc setDisableClassEditor*(self: EditorFeatureProfile; className: string;
                           disable: bool) {.gcsafe, locks: 0.}
proc setDisableClassProperty*(self: EditorFeatureProfile; className: string;
                             property: string; disable: bool) {.gcsafe, locks: 0.}
proc setDisableFeature*(self: EditorFeatureProfile; feature: int64; disable: bool) {.
    gcsafe, locks: 0.}
var editorFeatureProfileGetFeatureNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFeatureName(self: EditorFeatureProfile; feature: int64): string =
  if isNil(editorFeatureProfileGetFeatureNameMethodBind):
    editorFeatureProfileGetFeatureNameMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"get_feature_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(feature)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorFeatureProfileGetFeatureNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorFeatureProfileIsClassDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isClassDisabled(self: EditorFeatureProfile; className: string): bool =
  if isNil(editorFeatureProfileIsClassDisabledMethodBind):
    editorFeatureProfileIsClassDisabledMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"is_class_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(className)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFeatureProfileIsClassDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFeatureProfileIsClassEditorDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isClassEditorDisabled(self: EditorFeatureProfile; className: string): bool =
  if isNil(editorFeatureProfileIsClassEditorDisabledMethodBind):
    editorFeatureProfileIsClassEditorDisabledMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"is_class_editor_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(className)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFeatureProfileIsClassEditorDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFeatureProfileIsClassPropertyDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isClassPropertyDisabled(self: EditorFeatureProfile; className: string;
                            property: string): bool =
  if isNil(editorFeatureProfileIsClassPropertyDisabledMethodBind):
    editorFeatureProfileIsClassPropertyDisabledMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"is_class_property_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(className)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFeatureProfileIsClassPropertyDisabledMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var editorFeatureProfileIsFeatureDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isFeatureDisabled(self: EditorFeatureProfile; feature: int64): bool =
  if isNil(editorFeatureProfileIsFeatureDisabledMethodBind):
    editorFeatureProfileIsFeatureDisabledMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"is_feature_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(feature)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorFeatureProfileIsFeatureDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorFeatureProfileLoadFromFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadFromFile(self: EditorFeatureProfile; path: string): Error =
  if isNil(editorFeatureProfileLoadFromFileMethodBind):
    editorFeatureProfileLoadFromFileMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"load_from_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  editorFeatureProfileLoadFromFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var editorFeatureProfileSaveToFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveToFile(self: EditorFeatureProfile; path: string): Error =
  if isNil(editorFeatureProfileSaveToFileMethodBind):
    editorFeatureProfileSaveToFileMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"save_to_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  editorFeatureProfileSaveToFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var editorFeatureProfileSetDisableClassMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDisableClass(self: EditorFeatureProfile; className: string; disable: bool) =
  if isNil(editorFeatureProfileSetDisableClassMethodBind):
    editorFeatureProfileSetDisableClassMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"set_disable_class")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(className)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(disable)
  var ptrCallRet: pointer
  editorFeatureProfileSetDisableClassMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFeatureProfileSetDisableClassEditorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDisableClassEditor(self: EditorFeatureProfile; className: string;
                          disable: bool) =
  if isNil(editorFeatureProfileSetDisableClassEditorMethodBind):
    editorFeatureProfileSetDisableClassEditorMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"set_disable_class_editor")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(className)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(disable)
  var ptrCallRet: pointer
  editorFeatureProfileSetDisableClassEditorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorFeatureProfileSetDisableClassPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDisableClassProperty(self: EditorFeatureProfile; className: string;
                            property: string; disable: bool) =
  if isNil(editorFeatureProfileSetDisableClassPropertyMethodBind):
    editorFeatureProfileSetDisableClassPropertyMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"set_disable_class_property")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(className)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(disable)
  var ptrCallRet: pointer
  editorFeatureProfileSetDisableClassPropertyMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var editorFeatureProfileSetDisableFeatureMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDisableFeature(self: EditorFeatureProfile; feature: int64; disable: bool) =
  if isNil(editorFeatureProfileSetDisableFeatureMethodBind):
    editorFeatureProfileSetDisableFeatureMethodBind = getMethod(
        cstring"EditorFeatureProfile", cstring"set_disable_feature")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(feature)
  argsToPassToGodot[][1] = unsafeAddr(disable)
  var ptrCallRet: pointer
  editorFeatureProfileSetDisableFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
