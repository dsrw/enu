
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc defaultFont*(self: Theme): Font {.gcsafe, locks: 0.}
proc `defaultFont=`*(self: Theme; val: Font) {.gcsafe, locks: 0.}
method emitThemeChanged*(self: Theme) {.gcsafe, locks: 0, base.}
proc clear*(self: Theme) {.gcsafe, locks: 0.}
proc clearColor*(self: Theme; name: string; typee: string) {.gcsafe, locks: 0.}
proc clearConstant*(self: Theme; name: string; typee: string) {.gcsafe, locks: 0.}
proc clearFont*(self: Theme; name: string; typee: string) {.gcsafe, locks: 0.}
proc clearIcon*(self: Theme; name: string; typee: string) {.gcsafe, locks: 0.}
proc clearStylebox*(self: Theme; name: string; typee: string) {.gcsafe, locks: 0.}
proc copyDefaultTheme*(self: Theme) {.gcsafe, locks: 0.}
proc copyTheme*(self: Theme; other: Theme) {.gcsafe, locks: 0.}
proc getColor*(self: Theme; name: string; typee: string): Color {.gcsafe, locks: 0.}
proc getColorList*(self: Theme; typee: string): PoolStringArray {.gcsafe, locks: 0.}
proc getConstant*(self: Theme; name: string; typee: string): int64 {.gcsafe, locks: 0.}
proc getConstantList*(self: Theme; typee: string): PoolStringArray {.gcsafe, locks: 0.}
proc getFont*(self: Theme; name: string; typee: string): Font {.gcsafe, locks: 0.}
proc getFontList*(self: Theme; typee: string): PoolStringArray {.gcsafe, locks: 0.}
proc getIcon*(self: Theme; name: string; typee: string): Texture {.gcsafe, locks: 0.}
proc getIconList*(self: Theme; typee: string): PoolStringArray {.gcsafe, locks: 0.}
proc getStylebox*(self: Theme; name: string; typee: string): StyleBox {.gcsafe, locks: 0.}
proc getStyleboxList*(self: Theme; typee: string): PoolStringArray {.gcsafe, locks: 0.}
proc getStyleboxTypes*(self: Theme): PoolStringArray {.gcsafe, locks: 0.}
proc getTypeList*(self: Theme; typee: string): PoolStringArray {.gcsafe, locks: 0.}
proc hasColor*(self: Theme; name: string; typee: string): bool {.gcsafe, locks: 0.}
proc hasConstant*(self: Theme; name: string; typee: string): bool {.gcsafe, locks: 0.}
proc hasFont*(self: Theme; name: string; typee: string): bool {.gcsafe, locks: 0.}
proc hasIcon*(self: Theme; name: string; typee: string): bool {.gcsafe, locks: 0.}
proc hasStylebox*(self: Theme; name: string; typee: string): bool {.gcsafe, locks: 0.}
proc setColor*(self: Theme; name: string; typee: string; color: Color) {.gcsafe, locks: 0.}
proc setConstant*(self: Theme; name: string; typee: string; constant: int64) {.gcsafe,
    locks: 0.}
proc setFont*(self: Theme; name: string; typee: string; font: Font) {.gcsafe, locks: 0.}
proc setIcon*(self: Theme; name: string; typee: string; texture: Texture) {.gcsafe,
    locks: 0.}
proc setStylebox*(self: Theme; name: string; typee: string; texture: StyleBox) {.gcsafe,
    locks: 0.}
var themeGetDefaultFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc defaultFont(self: Theme): Font =
  if isNil(themeGetDefaultFontMethodBind):
    themeGetDefaultFontMethodBind = getMethod(cstring"Theme",
        cstring"get_default_font")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  themeGetDefaultFontMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var themeSetDefaultFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc `defaultFont=`(self: Theme; val: Font) =
  if isNil(themeSetDefaultFontMethodBind):
    themeSetDefaultFontMethodBind = getMethod(cstring"Theme",
        cstring"set_default_font")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  themeSetDefaultFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var themeUnderscoreemitThemeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method emitThemeChanged(self: Theme) =
  if isNil(themeUnderscoreemitThemeChangedMethodBind):
    themeUnderscoreemitThemeChangedMethodBind = getMethod(cstring"Theme",
        cstring"_emit_theme_changed")
  var ptrCallRet: pointer
  themeUnderscoreemitThemeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var themeClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: Theme) =
  if isNil(themeClearMethodBind):
    themeClearMethodBind = getMethod(cstring"Theme", cstring"clear")
  var ptrCallRet: pointer
  themeClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var themeClearColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearColor(self: Theme; name: string; typee: string) =
  if isNil(themeClearColorMethodBind):
    themeClearColorMethodBind = getMethod(cstring"Theme", cstring"clear_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  themeClearColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeClearConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearConstant(self: Theme; name: string; typee: string) =
  if isNil(themeClearConstantMethodBind):
    themeClearConstantMethodBind = getMethod(cstring"Theme",
        cstring"clear_constant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  themeClearConstantMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeClearFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearFont(self: Theme; name: string; typee: string) =
  if isNil(themeClearFontMethodBind):
    themeClearFontMethodBind = getMethod(cstring"Theme", cstring"clear_font")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  themeClearFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeClearIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearIcon(self: Theme; name: string; typee: string) =
  if isNil(themeClearIconMethodBind):
    themeClearIconMethodBind = getMethod(cstring"Theme", cstring"clear_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  themeClearIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeClearStyleboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearStylebox(self: Theme; name: string; typee: string) =
  if isNil(themeClearStyleboxMethodBind):
    themeClearStyleboxMethodBind = getMethod(cstring"Theme",
        cstring"clear_stylebox")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  themeClearStyleboxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeCopyDefaultThemeMethodBind {.threadvar.}: ptr GodotMethodBind
proc copyDefaultTheme(self: Theme) =
  if isNil(themeCopyDefaultThemeMethodBind):
    themeCopyDefaultThemeMethodBind = getMethod(cstring"Theme",
        cstring"copy_default_theme")
  var ptrCallRet: pointer
  themeCopyDefaultThemeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var themeCopyThemeMethodBind {.threadvar.}: ptr GodotMethodBind
proc copyTheme(self: Theme; other: Theme) =
  if isNil(themeCopyThemeMethodBind):
    themeCopyThemeMethodBind = getMethod(cstring"Theme", cstring"copy_theme")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not other.isNil:
    other.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  themeCopyThemeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var themeGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColor(self: Theme; name: string; typee: string): Color =
  if isNil(themeGetColorMethodBind):
    themeGetColorMethodBind = getMethod(cstring"Theme", cstring"get_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  themeGetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeGetColorListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColorList(self: Theme; typee: string): PoolStringArray =
  if isNil(themeGetColorListMethodBind):
    themeGetColorListMethodBind = getMethod(cstring"Theme",
        cstring"get_color_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  themeGetColorListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var themeGetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConstant(self: Theme; name: string; typee: string): int64 =
  if isNil(themeGetConstantMethodBind):
    themeGetConstantMethodBind = getMethod(cstring"Theme", cstring"get_constant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  themeGetConstantMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeGetConstantListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConstantList(self: Theme; typee: string): PoolStringArray =
  if isNil(themeGetConstantListMethodBind):
    themeGetConstantListMethodBind = getMethod(cstring"Theme",
        cstring"get_constant_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  themeGetConstantListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var themeGetFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFont(self: Theme; name: string; typee: string): Font =
  if isNil(themeGetFontMethodBind):
    themeGetFontMethodBind = getMethod(cstring"Theme", cstring"get_font")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  themeGetFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var themeGetFontListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFontList(self: Theme; typee: string): PoolStringArray =
  if isNil(themeGetFontListMethodBind):
    themeGetFontListMethodBind = getMethod(cstring"Theme", cstring"get_font_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  themeGetFontListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var themeGetIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIcon(self: Theme; name: string; typee: string): Texture =
  if isNil(themeGetIconMethodBind):
    themeGetIconMethodBind = getMethod(cstring"Theme", cstring"get_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  themeGetIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var themeGetIconListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIconList(self: Theme; typee: string): PoolStringArray =
  if isNil(themeGetIconListMethodBind):
    themeGetIconListMethodBind = getMethod(cstring"Theme", cstring"get_icon_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  themeGetIconListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var themeGetStyleboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStylebox(self: Theme; name: string; typee: string): StyleBox =
  if isNil(themeGetStyleboxMethodBind):
    themeGetStyleboxMethodBind = getMethod(cstring"Theme", cstring"get_stylebox")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  themeGetStyleboxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var themeGetStyleboxListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStyleboxList(self: Theme; typee: string): PoolStringArray =
  if isNil(themeGetStyleboxListMethodBind):
    themeGetStyleboxListMethodBind = getMethod(cstring"Theme",
        cstring"get_stylebox_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  themeGetStyleboxListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var themeGetStyleboxTypesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStyleboxTypes(self: Theme): PoolStringArray =
  if isNil(themeGetStyleboxTypesMethodBind):
    themeGetStyleboxTypesMethodBind = getMethod(cstring"Theme",
        cstring"get_stylebox_types")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  themeGetStyleboxTypesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var themeGetTypeListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTypeList(self: Theme; typee: string): PoolStringArray =
  if isNil(themeGetTypeListMethodBind):
    themeGetTypeListMethodBind = getMethod(cstring"Theme", cstring"get_type_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  themeGetTypeListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var themeHasColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasColor(self: Theme; name: string; typee: string): bool =
  if isNil(themeHasColorMethodBind):
    themeHasColorMethodBind = getMethod(cstring"Theme", cstring"has_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  themeHasColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeHasConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasConstant(self: Theme; name: string; typee: string): bool =
  if isNil(themeHasConstantMethodBind):
    themeHasConstantMethodBind = getMethod(cstring"Theme", cstring"has_constant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  themeHasConstantMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeHasFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasFont(self: Theme; name: string; typee: string): bool =
  if isNil(themeHasFontMethodBind):
    themeHasFontMethodBind = getMethod(cstring"Theme", cstring"has_font")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  themeHasFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeHasIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasIcon(self: Theme; name: string; typee: string): bool =
  if isNil(themeHasIconMethodBind):
    themeHasIconMethodBind = getMethod(cstring"Theme", cstring"has_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  themeHasIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeHasStyleboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasStylebox(self: Theme; name: string; typee: string): bool =
  if isNil(themeHasStyleboxMethodBind):
    themeHasStyleboxMethodBind = getMethod(cstring"Theme", cstring"has_stylebox")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  themeHasStyleboxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setColor(self: Theme; name: string; typee: string; color: Color) =
  if isNil(themeSetColorMethodBind):
    themeSetColorMethodBind = getMethod(cstring"Theme", cstring"set_color")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(color)
  var ptrCallRet: pointer
  themeSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeSetConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc setConstant(self: Theme; name: string; typee: string; constant: int64) =
  if isNil(themeSetConstantMethodBind):
    themeSetConstantMethodBind = getMethod(cstring"Theme", cstring"set_constant")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(constant)
  var ptrCallRet: pointer
  themeSetConstantMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeSetFontMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFont(self: Theme; name: string; typee: string; font: Font) =
  if isNil(themeSetFontMethodBind):
    themeSetFontMethodBind = getMethod(cstring"Theme", cstring"set_font")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  let argToPassToGodot2 = if not font.isNil:
    font.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  themeSetFontMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeSetIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIcon(self: Theme; name: string; typee: string; texture: Texture) =
  if isNil(themeSetIconMethodBind):
    themeSetIconMethodBind = getMethod(cstring"Theme", cstring"set_icon")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  let argToPassToGodot2 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  themeSetIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var themeSetStyleboxMethodBind {.threadvar.}: ptr GodotMethodBind
proc setStylebox(self: Theme; name: string; typee: string; texture: StyleBox) =
  if isNil(themeSetStyleboxMethodBind):
    themeSetStyleboxMethodBind = getMethod(cstring"Theme", cstring"set_stylebox")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(typee)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  let argToPassToGodot2 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  themeSetStyleboxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
