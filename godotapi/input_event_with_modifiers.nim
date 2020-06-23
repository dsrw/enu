
import
  godot, godottypes, godotinternal, input_event

export
  godottypes, input_event

proc alt*(self: InputEventWithModifiers): bool {.gcsafe, locks: 0.}
proc `alt=`*(self: InputEventWithModifiers; val: bool) {.gcsafe, locks: 0.}
proc command*(self: InputEventWithModifiers): bool {.gcsafe, locks: 0.}
proc `command=`*(self: InputEventWithModifiers; val: bool) {.gcsafe, locks: 0.}
proc control*(self: InputEventWithModifiers): bool {.gcsafe, locks: 0.}
proc `control=`*(self: InputEventWithModifiers; val: bool) {.gcsafe, locks: 0.}
proc meta*(self: InputEventWithModifiers): bool {.gcsafe, locks: 0.}
proc `meta=`*(self: InputEventWithModifiers; val: bool) {.gcsafe, locks: 0.}
proc shift*(self: InputEventWithModifiers): bool {.gcsafe, locks: 0.}
proc `shift=`*(self: InputEventWithModifiers; val: bool) {.gcsafe, locks: 0.}
var inputEventWithModifiersGetAltMethodBind {.threadvar.}: ptr GodotMethodBind
proc alt(self: InputEventWithModifiers): bool =
  if isNil(inputEventWithModifiersGetAltMethodBind):
    inputEventWithModifiersGetAltMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"get_alt")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventWithModifiersGetAltMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventWithModifiersSetAltMethodBind {.threadvar.}: ptr GodotMethodBind
proc `alt=`(self: InputEventWithModifiers; val: bool) =
  if isNil(inputEventWithModifiersSetAltMethodBind):
    inputEventWithModifiersSetAltMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"set_alt")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventWithModifiersSetAltMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventWithModifiersGetCommandMethodBind {.threadvar.}: ptr GodotMethodBind
proc command(self: InputEventWithModifiers): bool =
  if isNil(inputEventWithModifiersGetCommandMethodBind):
    inputEventWithModifiersGetCommandMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"get_command")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventWithModifiersGetCommandMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventWithModifiersSetCommandMethodBind {.threadvar.}: ptr GodotMethodBind
proc `command=`(self: InputEventWithModifiers; val: bool) =
  if isNil(inputEventWithModifiersSetCommandMethodBind):
    inputEventWithModifiersSetCommandMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"set_command")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventWithModifiersSetCommandMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventWithModifiersGetControlMethodBind {.threadvar.}: ptr GodotMethodBind
proc control(self: InputEventWithModifiers): bool =
  if isNil(inputEventWithModifiersGetControlMethodBind):
    inputEventWithModifiersGetControlMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"get_control")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventWithModifiersGetControlMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventWithModifiersSetControlMethodBind {.threadvar.}: ptr GodotMethodBind
proc `control=`(self: InputEventWithModifiers; val: bool) =
  if isNil(inputEventWithModifiersSetControlMethodBind):
    inputEventWithModifiersSetControlMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"set_control")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventWithModifiersSetControlMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventWithModifiersGetMetakeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc meta(self: InputEventWithModifiers): bool =
  if isNil(inputEventWithModifiersGetMetakeyMethodBind):
    inputEventWithModifiersGetMetakeyMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"get_metakey")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventWithModifiersGetMetakeyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventWithModifiersSetMetakeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `meta=`(self: InputEventWithModifiers; val: bool) =
  if isNil(inputEventWithModifiersSetMetakeyMethodBind):
    inputEventWithModifiersSetMetakeyMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"set_metakey")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventWithModifiersSetMetakeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventWithModifiersGetShiftMethodBind {.threadvar.}: ptr GodotMethodBind
proc shift(self: InputEventWithModifiers): bool =
  if isNil(inputEventWithModifiersGetShiftMethodBind):
    inputEventWithModifiersGetShiftMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"get_shift")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventWithModifiersGetShiftMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventWithModifiersSetShiftMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shift=`(self: InputEventWithModifiers; val: bool) =
  if isNil(inputEventWithModifiersSetShiftMethodBind):
    inputEventWithModifiersSetShiftMethodBind = getMethod(
        cstring"InputEventWithModifiers", cstring"set_shift")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventWithModifiersSetShiftMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
