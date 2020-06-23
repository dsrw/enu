
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  NOTIFICATION_EDITOR_SETTINGS_CHANGED* = 10000'i64
proc addPropertyInfo*(self: EditorSettings; info: Dictionary) {.gcsafe, locks: 0.}
proc erase*(self: EditorSettings; property: string) {.gcsafe, locks: 0.}
proc getFavorites*(self: EditorSettings): PoolStringArray {.gcsafe, locks: 0.}
proc getProjectMetadata*(self: EditorSettings; section: string; key: string;
                        default: Variant = newVariant()): Variant {.gcsafe, locks: 0.}
proc getProjectSettingsDir*(self: EditorSettings): string {.gcsafe, locks: 0.}
proc getRecentDirs*(self: EditorSettings): PoolStringArray {.gcsafe, locks: 0.}
proc getSetting*(self: EditorSettings; name: string): Variant {.gcsafe, locks: 0.}
proc getSettingsDir*(self: EditorSettings): string {.gcsafe, locks: 0.}
proc hasSetting*(self: EditorSettings; name: string): bool {.gcsafe, locks: 0.}
proc propertyCanRevert*(self: EditorSettings; name: string): bool {.gcsafe, locks: 0.}
proc propertyGetRevert*(self: EditorSettings; name: string): Variant {.gcsafe, locks: 0.}
proc setFavorites*(self: EditorSettings; dirs: PoolStringArray) {.gcsafe, locks: 0.}
proc setInitialValue*(self: EditorSettings; name: string; value: Variant;
                     updateCurrent: bool) {.gcsafe, locks: 0.}
proc setProjectMetadata*(self: EditorSettings; section: string; key: string;
                        data: Variant) {.gcsafe, locks: 0.}
proc setRecentDirs*(self: EditorSettings; dirs: PoolStringArray) {.gcsafe, locks: 0.}
proc setSetting*(self: EditorSettings; name: string; value: Variant) {.gcsafe, locks: 0.}
var editorSettingsAddPropertyInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPropertyInfo(self: EditorSettings; info: Dictionary) =
  if isNil(editorSettingsAddPropertyInfoMethodBind):
    editorSettingsAddPropertyInfoMethodBind = getMethod(cstring"EditorSettings",
        cstring"add_property_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = info.godotDictionary
  var ptrCallRet: pointer
  editorSettingsAddPropertyInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSettingsEraseMethodBind {.threadvar.}: ptr GodotMethodBind
proc erase(self: EditorSettings; property: string) =
  if isNil(editorSettingsEraseMethodBind):
    editorSettingsEraseMethodBind = getMethod(cstring"EditorSettings",
        cstring"erase")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorSettingsEraseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var editorSettingsGetFavoritesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFavorites(self: EditorSettings): PoolStringArray =
  if isNil(editorSettingsGetFavoritesMethodBind):
    editorSettingsGetFavoritesMethodBind = getMethod(cstring"EditorSettings",
        cstring"get_favorites")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  editorSettingsGetFavoritesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var editorSettingsGetProjectMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProjectMetadata(self: EditorSettings; section: string; key: string;
                       default: Variant = newVariant()): Variant =
  if isNil(editorSettingsGetProjectMetadataMethodBind):
    editorSettingsGetProjectMetadataMethodBind = getMethod(
        cstring"EditorSettings", cstring"get_project_metadata")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = default.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  editorSettingsGetProjectMetadataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = newVariant(ptrCallVal)

var editorSettingsGetProjectSettingsDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProjectSettingsDir(self: EditorSettings): string =
  if isNil(editorSettingsGetProjectSettingsDirMethodBind):
    editorSettingsGetProjectSettingsDirMethodBind = getMethod(
        cstring"EditorSettings", cstring"get_project_settings_dir")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorSettingsGetProjectSettingsDirMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorSettingsGetRecentDirsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRecentDirs(self: EditorSettings): PoolStringArray =
  if isNil(editorSettingsGetRecentDirsMethodBind):
    editorSettingsGetRecentDirsMethodBind = getMethod(cstring"EditorSettings",
        cstring"get_recent_dirs")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  editorSettingsGetRecentDirsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var editorSettingsGetSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSetting(self: EditorSettings; name: string): Variant =
  if isNil(editorSettingsGetSettingMethodBind):
    editorSettingsGetSettingMethodBind = getMethod(cstring"EditorSettings",
        cstring"get_setting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  editorSettingsGetSettingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var editorSettingsGetSettingsDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSettingsDir(self: EditorSettings): string =
  if isNil(editorSettingsGetSettingsDirMethodBind):
    editorSettingsGetSettingsDirMethodBind = getMethod(cstring"EditorSettings",
        cstring"get_settings_dir")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorSettingsGetSettingsDirMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorSettingsHasSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSetting(self: EditorSettings; name: string): bool =
  if isNil(editorSettingsHasSettingMethodBind):
    editorSettingsHasSettingMethodBind = getMethod(cstring"EditorSettings",
        cstring"has_setting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSettingsHasSettingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var editorSettingsPropertyCanRevertMethodBind {.threadvar.}: ptr GodotMethodBind
proc propertyCanRevert(self: EditorSettings; name: string): bool =
  if isNil(editorSettingsPropertyCanRevertMethodBind):
    editorSettingsPropertyCanRevertMethodBind = getMethod(
        cstring"EditorSettings", cstring"property_can_revert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSettingsPropertyCanRevertMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorSettingsPropertyGetRevertMethodBind {.threadvar.}: ptr GodotMethodBind
proc propertyGetRevert(self: EditorSettings; name: string): Variant =
  if isNil(editorSettingsPropertyGetRevertMethodBind):
    editorSettingsPropertyGetRevertMethodBind = getMethod(
        cstring"EditorSettings", cstring"property_get_revert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  editorSettingsPropertyGetRevertMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var editorSettingsSetFavoritesMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFavorites(self: EditorSettings; dirs: PoolStringArray) =
  if isNil(editorSettingsSetFavoritesMethodBind):
    editorSettingsSetFavoritesMethodBind = getMethod(cstring"EditorSettings",
        cstring"set_favorites")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = dirs.godotPoolStringArray
  var ptrCallRet: pointer
  editorSettingsSetFavoritesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSettingsSetInitialValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInitialValue(self: EditorSettings; name: string; value: Variant;
                    updateCurrent: bool) =
  if isNil(editorSettingsSetInitialValueMethodBind):
    editorSettingsSetInitialValueMethodBind = getMethod(cstring"EditorSettings",
        cstring"set_initial_value")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  argsToPassToGodot[][2] = unsafeAddr(updateCurrent)
  var ptrCallRet: pointer
  editorSettingsSetInitialValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorSettingsSetProjectMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setProjectMetadata(self: EditorSettings; section: string; key: string;
                       data: Variant) =
  if isNil(editorSettingsSetProjectMetadataMethodBind):
    editorSettingsSetProjectMetadataMethodBind = getMethod(
        cstring"EditorSettings", cstring"set_project_metadata")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = data.godotVariant
  var ptrCallRet: pointer
  editorSettingsSetProjectMetadataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var editorSettingsSetRecentDirsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRecentDirs(self: EditorSettings; dirs: PoolStringArray) =
  if isNil(editorSettingsSetRecentDirsMethodBind):
    editorSettingsSetRecentDirsMethodBind = getMethod(cstring"EditorSettings",
        cstring"set_recent_dirs")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = dirs.godotPoolStringArray
  var ptrCallRet: pointer
  editorSettingsSetRecentDirsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSettingsSetSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSetting(self: EditorSettings; name: string; value: Variant) =
  if isNil(editorSettingsSetSettingMethodBind):
    editorSettingsSetSettingMethodBind = getMethod(cstring"EditorSettings",
        cstring"set_setting")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  editorSettingsSetSettingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
