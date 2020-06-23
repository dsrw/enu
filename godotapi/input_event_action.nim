
import
  godot, godottypes, godotinternal, input_event

export
  godottypes, input_event

proc action*(self: InputEventAction): string {.gcsafe, locks: 0.}
proc `action=`*(self: InputEventAction; val: string) {.gcsafe, locks: 0.}
proc pressed*(self: InputEventAction): bool {.gcsafe, locks: 0.}
proc `pressed=`*(self: InputEventAction; val: bool) {.gcsafe, locks: 0.}
proc strength*(self: InputEventAction): float64 {.gcsafe, locks: 0.}
proc `strength=`*(self: InputEventAction; val: float64) {.gcsafe, locks: 0.}
var inputEventActionGetActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc action(self: InputEventAction): string =
  if isNil(inputEventActionGetActionMethodBind):
    inputEventActionGetActionMethodBind = getMethod(cstring"InputEventAction",
        cstring"get_action")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  inputEventActionGetActionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var inputEventActionSetActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `action=`(self: InputEventAction; val: string) =
  if isNil(inputEventActionSetActionMethodBind):
    inputEventActionSetActionMethodBind = getMethod(cstring"InputEventAction",
        cstring"set_action")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  inputEventActionSetActionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputEventActionIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressed(self: InputEventAction): bool =
  if isNil(inputEventActionIsPressedMethodBind):
    inputEventActionIsPressedMethodBind = getMethod(cstring"InputEventAction",
        cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventActionIsPressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventActionSetPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressed=`(self: InputEventAction; val: bool) =
  if isNil(inputEventActionSetPressedMethodBind):
    inputEventActionSetPressedMethodBind = getMethod(cstring"InputEventAction",
        cstring"set_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventActionSetPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventActionGetStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc strength(self: InputEventAction): float64 =
  if isNil(inputEventActionGetStrengthMethodBind):
    inputEventActionGetStrengthMethodBind = getMethod(cstring"InputEventAction",
        cstring"get_strength")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventActionGetStrengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventActionSetStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `strength=`(self: InputEventAction; val: float64) =
  if isNil(inputEventActionSetStrengthMethodBind):
    inputEventActionSetStrengthMethodBind = getMethod(cstring"InputEventAction",
        cstring"set_strength")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventActionSetStrengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
