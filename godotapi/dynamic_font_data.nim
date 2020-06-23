
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  HINTING_LIGHT* = 1'i64
  HINTING_NONE* = 0'i64
  HINTING_NORMAL* = 2'i64
proc antialiased*(self: DynamicFontData): bool {.gcsafe, locks: 0.}
proc `antialiased=`*(self: DynamicFontData; val: bool) {.gcsafe, locks: 0.}
proc fontPath*(self: DynamicFontData): string {.gcsafe, locks: 0.}
proc `fontPath=`*(self: DynamicFontData; val: string) {.gcsafe, locks: 0.}
proc hinting*(self: DynamicFontData): int64 {.gcsafe, locks: 0.}
proc `hinting=`*(self: DynamicFontData; val: int64) {.gcsafe, locks: 0.}
var dynamicFontDataIsAntialiasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc antialiased(self: DynamicFontData): bool =
  if isNil(dynamicFontDataIsAntialiasedMethodBind):
    dynamicFontDataIsAntialiasedMethodBind = getMethod(cstring"DynamicFontData",
        cstring"is_antialiased")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontDataIsAntialiasedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontDataSetAntialiasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `antialiased=`(self: DynamicFontData; val: bool) =
  if isNil(dynamicFontDataSetAntialiasedMethodBind):
    dynamicFontDataSetAntialiasedMethodBind = getMethod(cstring"DynamicFontData",
        cstring"set_antialiased")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontDataSetAntialiasedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var dynamicFontDataGetFontPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc fontPath(self: DynamicFontData): string =
  if isNil(dynamicFontDataGetFontPathMethodBind):
    dynamicFontDataGetFontPathMethodBind = getMethod(cstring"DynamicFontData",
        cstring"get_font_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  dynamicFontDataGetFontPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var dynamicFontDataSetFontPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fontPath=`(self: DynamicFontData; val: string) =
  if isNil(dynamicFontDataSetFontPathMethodBind):
    dynamicFontDataSetFontPathMethodBind = getMethod(cstring"DynamicFontData",
        cstring"set_font_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  dynamicFontDataSetFontPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var dynamicFontDataGetHintingMethodBind {.threadvar.}: ptr GodotMethodBind
proc hinting(self: DynamicFontData): int64 =
  if isNil(dynamicFontDataGetHintingMethodBind):
    dynamicFontDataGetHintingMethodBind = getMethod(cstring"DynamicFontData",
        cstring"get_hinting")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontDataGetHintingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontDataSetHintingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hinting=`(self: DynamicFontData; val: int64) =
  if isNil(dynamicFontDataSetHintingMethodBind):
    dynamicFontDataSetHintingMethodBind = getMethod(cstring"DynamicFontData",
        cstring"set_hinting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontDataSetHintingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
