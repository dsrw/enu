
import
  godot, godottypes, godotinternal, font

export
  godottypes, font

const
  SPACING_BOTTOM* = 1'i64
  SPACING_CHAR* = 2'i64
  SPACING_SPACE* = 3'i64
  SPACING_TOP* = 0'i64
proc extraSpacingBottom*(self: DynamicFont): int64 {.gcsafe, locks: 0.}
proc `extraSpacingBottom=`*(self: DynamicFont; val: int64) {.gcsafe, locks: 0.}
proc extraSpacingChar*(self: DynamicFont): int64 {.gcsafe, locks: 0.}
proc `extraSpacingChar=`*(self: DynamicFont; val: int64) {.gcsafe, locks: 0.}
proc extraSpacingSpace*(self: DynamicFont): int64 {.gcsafe, locks: 0.}
proc `extraSpacingSpace=`*(self: DynamicFont; val: int64) {.gcsafe, locks: 0.}
proc extraSpacingTop*(self: DynamicFont): int64 {.gcsafe, locks: 0.}
proc `extraSpacingTop=`*(self: DynamicFont; val: int64) {.gcsafe, locks: 0.}
proc fontData*(self: DynamicFont): DynamicFontData {.gcsafe, locks: 0.}
proc `fontData=`*(self: DynamicFont; val: DynamicFontData) {.gcsafe, locks: 0.}
proc outlineColor*(self: DynamicFont): Color {.gcsafe, locks: 0.}
proc `outlineColor=`*(self: DynamicFont; val: Color) {.gcsafe, locks: 0.}
proc outlineSize*(self: DynamicFont): int64 {.gcsafe, locks: 0.}
proc `outlineSize=`*(self: DynamicFont; val: int64) {.gcsafe, locks: 0.}
proc size*(self: DynamicFont): int64 {.gcsafe, locks: 0.}
proc `size=`*(self: DynamicFont; val: int64) {.gcsafe, locks: 0.}
proc useFilter*(self: DynamicFont): bool {.gcsafe, locks: 0.}
proc `useFilter=`*(self: DynamicFont; val: bool) {.gcsafe, locks: 0.}
proc useMipmaps*(self: DynamicFont): bool {.gcsafe, locks: 0.}
proc `useMipmaps=`*(self: DynamicFont; val: bool) {.gcsafe, locks: 0.}
proc addFallback*(self: DynamicFont; data: DynamicFontData) {.gcsafe, locks: 0.}
proc getFallback*(self: DynamicFont; idx: int64): DynamicFontData {.gcsafe, locks: 0.}
proc getFallbackCount*(self: DynamicFont): int64 {.gcsafe, locks: 0.}
proc removeFallback*(self: DynamicFont; idx: int64) {.gcsafe, locks: 0.}
proc setFallback*(self: DynamicFont; idx: int64; data: DynamicFontData) {.gcsafe,
    locks: 0.}
var dynamicFontGetSpacingMethodBind {.threadvar.}: ptr GodotMethodBind
proc extraSpacingBottom(self: DynamicFont): int64 =
  if isNil(dynamicFontGetSpacingMethodBind):
    dynamicFontGetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_spacing")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var dynamicFontSetSpacingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `extraSpacingBottom=`(self: DynamicFont; val: int64) =
  if isNil(dynamicFontSetSpacingMethodBind):
    dynamicFontSetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_spacing")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc extraSpacingChar(self: DynamicFont): int64 =
  if isNil(dynamicFontGetSpacingMethodBind):
    dynamicFontGetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_spacing")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `extraSpacingChar=`(self: DynamicFont; val: int64) =
  if isNil(dynamicFontSetSpacingMethodBind):
    dynamicFontSetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_spacing")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc extraSpacingSpace(self: DynamicFont): int64 =
  if isNil(dynamicFontGetSpacingMethodBind):
    dynamicFontGetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_spacing")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `extraSpacingSpace=`(self: DynamicFont; val: int64) =
  if isNil(dynamicFontSetSpacingMethodBind):
    dynamicFontSetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_spacing")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc extraSpacingTop(self: DynamicFont): int64 =
  if isNil(dynamicFontGetSpacingMethodBind):
    dynamicFontGetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_spacing")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `extraSpacingTop=`(self: DynamicFont; val: int64) =
  if isNil(dynamicFontSetSpacingMethodBind):
    dynamicFontSetSpacingMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_spacing")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetSpacingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var dynamicFontGetFontDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc fontData(self: DynamicFont): DynamicFontData =
  if isNil(dynamicFontGetFontDataMethodBind):
    dynamicFontGetFontDataMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_font_data")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  dynamicFontGetFontDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var dynamicFontSetFontDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fontData=`(self: DynamicFont; val: DynamicFontData) =
  if isNil(dynamicFontSetFontDataMethodBind):
    dynamicFontSetFontDataMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_font_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  dynamicFontSetFontDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var dynamicFontGetOutlineColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc outlineColor(self: DynamicFont): Color =
  if isNil(dynamicFontGetOutlineColorMethodBind):
    dynamicFontGetOutlineColorMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_outline_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetOutlineColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontSetOutlineColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outlineColor=`(self: DynamicFont; val: Color) =
  if isNil(dynamicFontSetOutlineColorMethodBind):
    dynamicFontSetOutlineColorMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_outline_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetOutlineColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var dynamicFontGetOutlineSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc outlineSize(self: DynamicFont): int64 =
  if isNil(dynamicFontGetOutlineSizeMethodBind):
    dynamicFontGetOutlineSizeMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_outline_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetOutlineSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontSetOutlineSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outlineSize=`(self: DynamicFont; val: int64) =
  if isNil(dynamicFontSetOutlineSizeMethodBind):
    dynamicFontSetOutlineSizeMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_outline_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetOutlineSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var dynamicFontGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: DynamicFont): int64 =
  if isNil(dynamicFontGetSizeMethodBind):
    dynamicFontGetSizeMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: DynamicFont; val: int64) =
  if isNil(dynamicFontSetSizeMethodBind):
    dynamicFontSetSizeMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var dynamicFontGetUseFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc useFilter(self: DynamicFont): bool =
  if isNil(dynamicFontGetUseFilterMethodBind):
    dynamicFontGetUseFilterMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_use_filter")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetUseFilterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontSetUseFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useFilter=`(self: DynamicFont; val: bool) =
  if isNil(dynamicFontSetUseFilterMethodBind):
    dynamicFontSetUseFilterMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_use_filter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetUseFilterMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var dynamicFontGetUseMipmapsMethodBind {.threadvar.}: ptr GodotMethodBind
proc useMipmaps(self: DynamicFont): bool =
  if isNil(dynamicFontGetUseMipmapsMethodBind):
    dynamicFontGetUseMipmapsMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_use_mipmaps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetUseMipmapsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontSetUseMipmapsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useMipmaps=`(self: DynamicFont; val: bool) =
  if isNil(dynamicFontSetUseMipmapsMethodBind):
    dynamicFontSetUseMipmapsMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_use_mipmaps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  dynamicFontSetUseMipmapsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var dynamicFontAddFallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFallback(self: DynamicFont; data: DynamicFontData) =
  if isNil(dynamicFontAddFallbackMethodBind):
    dynamicFontAddFallbackMethodBind = getMethod(cstring"DynamicFont",
        cstring"add_fallback")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not data.isNil:
    data.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  dynamicFontAddFallbackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var dynamicFontGetFallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFallback(self: DynamicFont; idx: int64): DynamicFontData =
  if isNil(dynamicFontGetFallbackMethodBind):
    dynamicFontGetFallbackMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_fallback")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  dynamicFontGetFallbackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var dynamicFontGetFallbackCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFallbackCount(self: DynamicFont): int64 =
  if isNil(dynamicFontGetFallbackCountMethodBind):
    dynamicFontGetFallbackCountMethodBind = getMethod(cstring"DynamicFont",
        cstring"get_fallback_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  dynamicFontGetFallbackCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var dynamicFontRemoveFallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeFallback(self: DynamicFont; idx: int64) =
  if isNil(dynamicFontRemoveFallbackMethodBind):
    dynamicFontRemoveFallbackMethodBind = getMethod(cstring"DynamicFont",
        cstring"remove_fallback")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  dynamicFontRemoveFallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var dynamicFontSetFallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFallback(self: DynamicFont; idx: int64; data: DynamicFontData) =
  if isNil(dynamicFontSetFallbackMethodBind):
    dynamicFontSetFallbackMethodBind = getMethod(cstring"DynamicFont",
        cstring"set_fallback")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  let argToPassToGodot1 = if not data.isNil:
    data.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  dynamicFontSetFallbackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
