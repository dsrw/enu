
import
  godot, godottypes, godotinternal, input_event_with_modifiers

export
  godottypes, input_event_with_modifiers

proc echo*(self: InputEventKey): bool {.gcsafe, locks: 0.}
proc `echo=`*(self: InputEventKey; val: bool) {.gcsafe, locks: 0.}
proc pressed*(self: InputEventKey): bool {.gcsafe, locks: 0.}
proc `pressed=`*(self: InputEventKey; val: bool) {.gcsafe, locks: 0.}
proc scancode*(self: InputEventKey): int64 {.gcsafe, locks: 0.}
proc `scancode=`*(self: InputEventKey; val: int64) {.gcsafe, locks: 0.}
proc unicode*(self: InputEventKey): int64 {.gcsafe, locks: 0.}
proc `unicode=`*(self: InputEventKey; val: int64) {.gcsafe, locks: 0.}
proc getScancodeWithModifiers*(self: InputEventKey): int64 {.gcsafe, locks: 0.}
var inputEventKeyIsEchoMethodBind {.threadvar.}: ptr GodotMethodBind
proc echo(self: InputEventKey): bool =
  if isNil(inputEventKeyIsEchoMethodBind):
    inputEventKeyIsEchoMethodBind = getMethod(cstring"InputEventKey",
        cstring"is_echo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventKeyIsEchoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventKeySetEchoMethodBind {.threadvar.}: ptr GodotMethodBind
proc `echo=`(self: InputEventKey; val: bool) =
  if isNil(inputEventKeySetEchoMethodBind):
    inputEventKeySetEchoMethodBind = getMethod(cstring"InputEventKey",
        cstring"set_echo")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventKeySetEchoMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventKeyIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressed(self: InputEventKey): bool =
  if isNil(inputEventKeyIsPressedMethodBind):
    inputEventKeyIsPressedMethodBind = getMethod(cstring"InputEventKey",
        cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventKeyIsPressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventKeySetPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressed=`(self: InputEventKey; val: bool) =
  if isNil(inputEventKeySetPressedMethodBind):
    inputEventKeySetPressedMethodBind = getMethod(cstring"InputEventKey",
        cstring"set_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventKeySetPressedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventKeyGetScancodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc scancode(self: InputEventKey): int64 =
  if isNil(inputEventKeyGetScancodeMethodBind):
    inputEventKeyGetScancodeMethodBind = getMethod(cstring"InputEventKey",
        cstring"get_scancode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventKeyGetScancodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventKeySetScancodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scancode=`(self: InputEventKey; val: int64) =
  if isNil(inputEventKeySetScancodeMethodBind):
    inputEventKeySetScancodeMethodBind = getMethod(cstring"InputEventKey",
        cstring"set_scancode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventKeySetScancodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventKeyGetUnicodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc unicode(self: InputEventKey): int64 =
  if isNil(inputEventKeyGetUnicodeMethodBind):
    inputEventKeyGetUnicodeMethodBind = getMethod(cstring"InputEventKey",
        cstring"get_unicode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventKeyGetUnicodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventKeySetUnicodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `unicode=`(self: InputEventKey; val: int64) =
  if isNil(inputEventKeySetUnicodeMethodBind):
    inputEventKeySetUnicodeMethodBind = getMethod(cstring"InputEventKey",
        cstring"set_unicode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventKeySetUnicodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventKeyGetScancodeWithModifiersMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScancodeWithModifiers(self: InputEventKey): int64 =
  if isNil(inputEventKeyGetScancodeWithModifiersMethodBind):
    inputEventKeyGetScancodeWithModifiersMethodBind = getMethod(
        cstring"InputEventKey", cstring"get_scancode_with_modifiers")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventKeyGetScancodeWithModifiersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
