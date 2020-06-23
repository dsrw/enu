
import
  godot, godottypes, godotinternal, base_button

export
  godottypes, base_button

const
  ALIGN_CENTER* = 1'i64
  ALIGN_LEFT* = 0'i64
  ALIGN_RIGHT* = 2'i64
proc align*(self: Button): int64 {.gcsafe, locks: 0.}
proc `align=`*(self: Button; val: int64) {.gcsafe, locks: 0.}
proc clipText*(self: Button): bool {.gcsafe, locks: 0.}
proc `clipText=`*(self: Button; val: bool) {.gcsafe, locks: 0.}
proc expandIcon*(self: Button): bool {.gcsafe, locks: 0.}
proc `expandIcon=`*(self: Button; val: bool) {.gcsafe, locks: 0.}
proc flat*(self: Button): bool {.gcsafe, locks: 0.}
proc `flat=`*(self: Button; val: bool) {.gcsafe, locks: 0.}
proc icon*(self: Button): Texture {.gcsafe, locks: 0.}
proc `icon=`*(self: Button; val: Texture) {.gcsafe, locks: 0.}
proc text*(self: Button): string {.gcsafe, locks: 0.}
proc `text=`*(self: Button; val: string) {.gcsafe, locks: 0.}
var buttonGetTextAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc align(self: Button): int64 =
  if isNil(buttonGetTextAlignMethodBind):
    buttonGetTextAlignMethodBind = getMethod(cstring"Button",
        cstring"get_text_align")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  buttonGetTextAlignMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var buttonSetTextAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc `align=`(self: Button; val: int64) =
  if isNil(buttonSetTextAlignMethodBind):
    buttonSetTextAlignMethodBind = getMethod(cstring"Button",
        cstring"set_text_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  buttonSetTextAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var buttonGetClipTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc clipText(self: Button): bool =
  if isNil(buttonGetClipTextMethodBind):
    buttonGetClipTextMethodBind = getMethod(cstring"Button",
        cstring"get_clip_text")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  buttonGetClipTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var buttonSetClipTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `clipText=`(self: Button; val: bool) =
  if isNil(buttonSetClipTextMethodBind):
    buttonSetClipTextMethodBind = getMethod(cstring"Button",
        cstring"set_clip_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  buttonSetClipTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var buttonIsExpandIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc expandIcon(self: Button): bool =
  if isNil(buttonIsExpandIconMethodBind):
    buttonIsExpandIconMethodBind = getMethod(cstring"Button",
        cstring"is_expand_icon")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  buttonIsExpandIconMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var buttonSetExpandIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc `expandIcon=`(self: Button; val: bool) =
  if isNil(buttonSetExpandIconMethodBind):
    buttonSetExpandIconMethodBind = getMethod(cstring"Button",
        cstring"set_expand_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  buttonSetExpandIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var buttonIsFlatMethodBind {.threadvar.}: ptr GodotMethodBind
proc flat(self: Button): bool =
  if isNil(buttonIsFlatMethodBind):
    buttonIsFlatMethodBind = getMethod(cstring"Button", cstring"is_flat")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  buttonIsFlatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var buttonSetFlatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flat=`(self: Button; val: bool) =
  if isNil(buttonSetFlatMethodBind):
    buttonSetFlatMethodBind = getMethod(cstring"Button", cstring"set_flat")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  buttonSetFlatMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var buttonGetButtonIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc icon(self: Button): Texture =
  if isNil(buttonGetButtonIconMethodBind):
    buttonGetButtonIconMethodBind = getMethod(cstring"Button",
        cstring"get_button_icon")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  buttonGetButtonIconMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var buttonSetButtonIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc `icon=`(self: Button; val: Texture) =
  if isNil(buttonSetButtonIconMethodBind):
    buttonSetButtonIconMethodBind = getMethod(cstring"Button",
        cstring"set_button_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  buttonSetButtonIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var buttonGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc text(self: Button): string =
  if isNil(buttonGetTextMethodBind):
    buttonGetTextMethodBind = getMethod(cstring"Button", cstring"get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  buttonGetTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var buttonSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `text=`(self: Button; val: string) =
  if isNil(buttonSetTextMethodBind):
    buttonSetTextMethodBind = getMethod(cstring"Button", cstring"set_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  buttonSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
