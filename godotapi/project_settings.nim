
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  ProjectSettings = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(ProjectSettings, "ProjectSettings", true)
var singletonProjectSettings {.threadvar.}: ProjectSettings
proc addPropertyInfo*(hint: Dictionary) {.gcsafe, locks: 0.}
proc clear*(name: string) {.gcsafe, locks: 0.}
proc getOrder*(name: string): int64 {.gcsafe, locks: 0.}
proc getSetting*(name: string): Variant {.gcsafe, locks: 0.}
proc globalizePath*(path: string): string {.gcsafe, locks: 0.}
proc hasSetting*(name: string): bool {.gcsafe, locks: 0.}
proc loadResourcePack*(pack: string; replaceFiles: bool = true): bool {.gcsafe, locks: 0.}
proc localizePath*(path: string): string {.gcsafe, locks: 0.}
proc propertyCanRevert*(name: string): bool {.gcsafe, locks: 0.}
proc propertyGetRevert*(name: string): Variant {.gcsafe, locks: 0.}
proc save*(): Error {.gcsafe, locks: 0.}
proc saveCustom*(file: string): Error {.gcsafe, locks: 0.}
proc setInitialValue*(name: string; value: Variant) {.gcsafe, locks: 0.}
proc setOrder*(name: string; position: int64) {.gcsafe, locks: 0.}
proc setSetting*(name: string; value: Variant) {.gcsafe, locks: 0.}
var projectSettingsAddPropertyInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPropertyInfo(hint: Dictionary) =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsAddPropertyInfoMethodBind):
    projectSettingsAddPropertyInfoMethodBind = getMethod(
        cstring"ProjectSettings", cstring"add_property_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = hint.godotDictionary
  var ptrCallRet: pointer
  projectSettingsAddPropertyInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var projectSettingsClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(name: string) =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsClearMethodBind):
    projectSettingsClearMethodBind = getMethod(cstring"ProjectSettings",
        cstring"clear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  projectSettingsClearMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var projectSettingsGetOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOrder(name: string): int64 =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsGetOrderMethodBind):
    projectSettingsGetOrderMethodBind = getMethod(cstring"ProjectSettings",
        cstring"get_order")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  projectSettingsGetOrderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var projectSettingsGetSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSetting(name: string): Variant =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsGetSettingMethodBind):
    projectSettingsGetSettingMethodBind = getMethod(cstring"ProjectSettings",
        cstring"get_setting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  projectSettingsGetSettingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var projectSettingsGlobalizePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalizePath(path: string): string =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsGlobalizePathMethodBind):
    projectSettingsGlobalizePathMethodBind = getMethod(cstring"ProjectSettings",
        cstring"globalize_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  projectSettingsGlobalizePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var projectSettingsHasSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSetting(name: string): bool =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsHasSettingMethodBind):
    projectSettingsHasSettingMethodBind = getMethod(cstring"ProjectSettings",
        cstring"has_setting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  projectSettingsHasSettingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var projectSettingsLoadResourcePackMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadResourcePack(pack: string; replaceFiles: bool = true): bool =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsLoadResourcePackMethodBind):
    projectSettingsLoadResourcePackMethodBind = getMethod(
        cstring"ProjectSettings", cstring"load_resource_pack")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(pack)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(replaceFiles)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  projectSettingsLoadResourcePackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var projectSettingsLocalizePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc localizePath(path: string): string =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsLocalizePathMethodBind):
    projectSettingsLocalizePathMethodBind = getMethod(cstring"ProjectSettings",
        cstring"localize_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  projectSettingsLocalizePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var projectSettingsPropertyCanRevertMethodBind {.threadvar.}: ptr GodotMethodBind
proc propertyCanRevert(name: string): bool =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsPropertyCanRevertMethodBind):
    projectSettingsPropertyCanRevertMethodBind = getMethod(
        cstring"ProjectSettings", cstring"property_can_revert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  projectSettingsPropertyCanRevertMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var projectSettingsPropertyGetRevertMethodBind {.threadvar.}: ptr GodotMethodBind
proc propertyGetRevert(name: string): Variant =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsPropertyGetRevertMethodBind):
    projectSettingsPropertyGetRevertMethodBind = getMethod(
        cstring"ProjectSettings", cstring"property_get_revert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  projectSettingsPropertyGetRevertMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var projectSettingsSaveMethodBind {.threadvar.}: ptr GodotMethodBind
proc save(): Error =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsSaveMethodBind):
    projectSettingsSaveMethodBind = getMethod(cstring"ProjectSettings",
        cstring"save")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  projectSettingsSaveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var projectSettingsSaveCustomMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveCustom(file: string): Error =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsSaveCustomMethodBind):
    projectSettingsSaveCustomMethodBind = getMethod(cstring"ProjectSettings",
        cstring"save_custom")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(file)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  projectSettingsSaveCustomMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var projectSettingsSetInitialValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInitialValue(name: string; value: Variant) =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsSetInitialValueMethodBind):
    projectSettingsSetInitialValueMethodBind = getMethod(
        cstring"ProjectSettings", cstring"set_initial_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  projectSettingsSetInitialValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var projectSettingsSetOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOrder(name: string; position: int64) =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsSetOrderMethodBind):
    projectSettingsSetOrderMethodBind = getMethod(cstring"ProjectSettings",
        cstring"set_order")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  projectSettingsSetOrderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var projectSettingsSetSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSetting(name: string; value: Variant) =
  if isNil(singletonProjectSettings):
    singletonProjectSettings = getSingleton[ProjectSettings]()
  let self = singletonProjectSettings
  if isNil(projectSettingsSetSettingMethodBind):
    projectSettingsSetSettingMethodBind = getMethod(cstring"ProjectSettings",
        cstring"set_setting")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  projectSettingsSetSettingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
