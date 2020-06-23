
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc eraseSection*(self: ConfigFile; section: string) {.gcsafe, locks: 0.}
proc eraseSectionKey*(self: ConfigFile; section: string; key: string) {.gcsafe, locks: 0.}
proc getSectionKeys*(self: ConfigFile; section: string): PoolStringArray {.gcsafe,
    locks: 0.}
proc getSections*(self: ConfigFile): PoolStringArray {.gcsafe, locks: 0.}
proc getValue*(self: ConfigFile; section: string; key: string;
              default: Variant = newVariant()): Variant {.gcsafe, locks: 0.}
proc hasSection*(self: ConfigFile; section: string): bool {.gcsafe, locks: 0.}
proc hasSectionKey*(self: ConfigFile; section: string; key: string): bool {.gcsafe,
    locks: 0.}
proc load*(self: ConfigFile; path: string): Error {.gcsafe, locks: 0.}
proc loadEncrypted*(self: ConfigFile; path: string; key: PoolByteArray): Error {.gcsafe,
    locks: 0.}
proc loadEncryptedPass*(self: ConfigFile; path: string; password: string): Error {.
    gcsafe, locks: 0.}
proc parse*(self: ConfigFile; data: string): Error {.gcsafe, locks: 0.}
proc save*(self: ConfigFile; path: string): Error {.gcsafe, locks: 0.}
proc saveEncrypted*(self: ConfigFile; path: string; key: PoolByteArray): Error {.gcsafe,
    locks: 0.}
proc saveEncryptedPass*(self: ConfigFile; path: string; password: string): Error {.
    gcsafe, locks: 0.}
proc setValue*(self: ConfigFile; section: string; key: string; value: Variant) {.gcsafe,
    locks: 0.}
var configFileEraseSectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc eraseSection(self: ConfigFile; section: string) =
  if isNil(configFileEraseSectionMethodBind):
    configFileEraseSectionMethodBind = getMethod(cstring"ConfigFile",
        cstring"erase_section")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  configFileEraseSectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var configFileEraseSectionKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc eraseSectionKey(self: ConfigFile; section: string; key: string) =
  if isNil(configFileEraseSectionKeyMethodBind):
    configFileEraseSectionKeyMethodBind = getMethod(cstring"ConfigFile",
        cstring"erase_section_key")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  configFileEraseSectionKeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var configFileGetSectionKeysMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSectionKeys(self: ConfigFile; section: string): PoolStringArray =
  if isNil(configFileGetSectionKeysMethodBind):
    configFileGetSectionKeysMethodBind = getMethod(cstring"ConfigFile",
        cstring"get_section_keys")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  configFileGetSectionKeysMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var configFileGetSectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSections(self: ConfigFile): PoolStringArray =
  if isNil(configFileGetSectionsMethodBind):
    configFileGetSectionsMethodBind = getMethod(cstring"ConfigFile",
        cstring"get_sections")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  configFileGetSectionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var configFileGetValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getValue(self: ConfigFile; section: string; key: string;
             default: Variant = newVariant()): Variant =
  if isNil(configFileGetValueMethodBind):
    configFileGetValueMethodBind = getMethod(cstring"ConfigFile",
        cstring"get_value")
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
  configFileGetValueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = newVariant(ptrCallVal)

var configFileHasSectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSection(self: ConfigFile; section: string): bool =
  if isNil(configFileHasSectionMethodBind):
    configFileHasSectionMethodBind = getMethod(cstring"ConfigFile",
        cstring"has_section")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  configFileHasSectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var configFileHasSectionKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSectionKey(self: ConfigFile; section: string; key: string): bool =
  if isNil(configFileHasSectionKeyMethodBind):
    configFileHasSectionKeyMethodBind = getMethod(cstring"ConfigFile",
        cstring"has_section_key")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  configFileHasSectionKeyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var configFileLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc load(self: ConfigFile; path: string): Error =
  if isNil(configFileLoadMethodBind):
    configFileLoadMethodBind = getMethod(cstring"ConfigFile", cstring"load")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  configFileLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var configFileLoadEncryptedMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadEncrypted(self: ConfigFile; path: string; key: PoolByteArray): Error =
  if isNil(configFileLoadEncryptedMethodBind):
    configFileLoadEncryptedMethodBind = getMethod(cstring"ConfigFile",
        cstring"load_encrypted")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = key.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  configFileLoadEncryptedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var configFileLoadEncryptedPassMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadEncryptedPass(self: ConfigFile; path: string; password: string): Error =
  if isNil(configFileLoadEncryptedPassMethodBind):
    configFileLoadEncryptedPassMethodBind = getMethod(cstring"ConfigFile",
        cstring"load_encrypted_pass")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(password)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  configFileLoadEncryptedPassMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var configFileParseMethodBind {.threadvar.}: ptr GodotMethodBind
proc parse(self: ConfigFile; data: string): Error =
  if isNil(configFileParseMethodBind):
    configFileParseMethodBind = getMethod(cstring"ConfigFile", cstring"parse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(data)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  configFileParseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var configFileSaveMethodBind {.threadvar.}: ptr GodotMethodBind
proc save(self: ConfigFile; path: string): Error =
  if isNil(configFileSaveMethodBind):
    configFileSaveMethodBind = getMethod(cstring"ConfigFile", cstring"save")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  configFileSaveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var configFileSaveEncryptedMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveEncrypted(self: ConfigFile; path: string; key: PoolByteArray): Error =
  if isNil(configFileSaveEncryptedMethodBind):
    configFileSaveEncryptedMethodBind = getMethod(cstring"ConfigFile",
        cstring"save_encrypted")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = key.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  configFileSaveEncryptedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var configFileSaveEncryptedPassMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveEncryptedPass(self: ConfigFile; path: string; password: string): Error =
  if isNil(configFileSaveEncryptedPassMethodBind):
    configFileSaveEncryptedPassMethodBind = getMethod(cstring"ConfigFile",
        cstring"save_encrypted_pass")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(password)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  configFileSaveEncryptedPassMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var configFileSetValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc setValue(self: ConfigFile; section: string; key: string; value: Variant) =
  if isNil(configFileSetValueMethodBind):
    configFileSetValueMethodBind = getMethod(cstring"ConfigFile",
        cstring"set_value")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(section)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  configFileSetValueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
