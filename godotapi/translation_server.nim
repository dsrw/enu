
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  TranslationServer = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(TranslationServer, "TranslationServer", true)
var singletonTranslationServer {.threadvar.}: TranslationServer
proc addTranslation*(translation: Translation) {.gcsafe, locks: 0.}
proc clear*() {.gcsafe, locks: 0.}
proc getLoadedLocales*(): Array {.gcsafe, locks: 0.}
proc getLocale*(): string {.gcsafe, locks: 0.}
proc getLocaleName*(locale: string): string {.gcsafe, locks: 0.}
proc removeTranslation*(translation: Translation) {.gcsafe, locks: 0.}
proc setLocale*(locale: string) {.gcsafe, locks: 0.}
proc translate*(message: string): string {.gcsafe, locks: 0.}
var translationServerAddTranslationMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTranslation(translation: Translation) =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerAddTranslationMethodBind):
    translationServerAddTranslationMethodBind = getMethod(
        cstring"TranslationServer", cstring"add_translation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not translation.isNil:
    translation.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  translationServerAddTranslationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var translationServerClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear() =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerClearMethodBind):
    translationServerClearMethodBind = getMethod(cstring"TranslationServer",
        cstring"clear")
  var ptrCallRet: pointer
  translationServerClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var translationServerGetLoadedLocalesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLoadedLocales(): Array =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerGetLoadedLocalesMethodBind):
    translationServerGetLoadedLocalesMethodBind = getMethod(
        cstring"TranslationServer", cstring"get_loaded_locales")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  translationServerGetLoadedLocalesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var translationServerGetLocaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLocale(): string =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerGetLocaleMethodBind):
    translationServerGetLocaleMethodBind = getMethod(cstring"TranslationServer",
        cstring"get_locale")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  translationServerGetLocaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var translationServerGetLocaleNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLocaleName(locale: string): string =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerGetLocaleNameMethodBind):
    translationServerGetLocaleNameMethodBind = getMethod(
        cstring"TranslationServer", cstring"get_locale_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(locale)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  translationServerGetLocaleNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var translationServerRemoveTranslationMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeTranslation(translation: Translation) =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerRemoveTranslationMethodBind):
    translationServerRemoveTranslationMethodBind = getMethod(
        cstring"TranslationServer", cstring"remove_translation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not translation.isNil:
    translation.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  translationServerRemoveTranslationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var translationServerSetLocaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLocale(locale: string) =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerSetLocaleMethodBind):
    translationServerSetLocaleMethodBind = getMethod(cstring"TranslationServer",
        cstring"set_locale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(locale)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  translationServerSetLocaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var translationServerTranslateMethodBind {.threadvar.}: ptr GodotMethodBind
proc translate(message: string): string =
  if isNil(singletonTranslationServer):
    singletonTranslationServer = getSingleton[TranslationServer]()
  let self = singletonTranslationServer
  if isNil(translationServerTranslateMethodBind):
    translationServerTranslateMethodBind = getMethod(cstring"TranslationServer",
        cstring"translate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(message)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  translationServerTranslateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)
