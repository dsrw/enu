
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc device*(self: InputEvent): int64 {.gcsafe, locks: 0.}
proc `device=`*(self: InputEvent; val: int64) {.gcsafe, locks: 0.}
proc accumulate*(self: InputEvent; withEvent: InputEvent): bool {.gcsafe, locks: 0.}
proc asText*(self: InputEvent): string {.gcsafe, locks: 0.}
proc getActionStrength*(self: InputEvent; action: string): float64 {.gcsafe, locks: 0.}
proc isAction*(self: InputEvent; action: string): bool {.gcsafe, locks: 0.}
proc isActionPressed*(self: InputEvent; action: string; allowEcho: bool = false): bool {.
    gcsafe, locks: 0.}
proc isActionReleased*(self: InputEvent; action: string): bool {.gcsafe, locks: 0.}
proc isActionType*(self: InputEvent): bool {.gcsafe, locks: 0.}
proc isEcho*(self: InputEvent): bool {.gcsafe, locks: 0.}
proc isPressed*(self: InputEvent): bool {.gcsafe, locks: 0.}
proc shortcutMatch*(self: InputEvent; event: InputEvent): bool {.gcsafe, locks: 0.}
proc xformedBy*(self: InputEvent; xform: Transform2D;
               localOfs: Vector2 = vec2(0.0, 0.0)): InputEvent {.gcsafe, locks: 0.}
var inputEventGetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc device(self: InputEvent): int64 =
  if isNil(inputEventGetDeviceMethodBind):
    inputEventGetDeviceMethodBind = getMethod(cstring"InputEvent",
        cstring"get_device")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventGetDeviceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventSetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `device=`(self: InputEvent; val: int64) =
  if isNil(inputEventSetDeviceMethodBind):
    inputEventSetDeviceMethodBind = getMethod(cstring"InputEvent",
        cstring"set_device")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventSetDeviceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var inputEventAccumulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc accumulate(self: InputEvent; withEvent: InputEvent): bool =
  if isNil(inputEventAccumulateMethodBind):
    inputEventAccumulateMethodBind = getMethod(cstring"InputEvent",
        cstring"accumulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not withEvent.isNil:
    withEvent.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventAccumulateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventAsTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc asText(self: InputEvent): string =
  if isNil(inputEventAsTextMethodBind):
    inputEventAsTextMethodBind = getMethod(cstring"InputEvent", cstring"as_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  inputEventAsTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var inputEventGetActionStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getActionStrength(self: InputEvent; action: string): float64 =
  if isNil(inputEventGetActionStrengthMethodBind):
    inputEventGetActionStrengthMethodBind = getMethod(cstring"InputEvent",
        cstring"get_action_strength")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventGetActionStrengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputEventIsActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc isAction(self: InputEvent; action: string): bool =
  if isNil(inputEventIsActionMethodBind):
    inputEventIsActionMethodBind = getMethod(cstring"InputEvent",
        cstring"is_action")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventIsActionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var inputEventIsActionPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActionPressed(self: InputEvent; action: string; allowEcho: bool = false): bool =
  if isNil(inputEventIsActionPressedMethodBind):
    inputEventIsActionPressedMethodBind = getMethod(cstring"InputEvent",
        cstring"is_action_pressed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(allowEcho)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventIsActionPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputEventIsActionReleasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActionReleased(self: InputEvent; action: string): bool =
  if isNil(inputEventIsActionReleasedMethodBind):
    inputEventIsActionReleasedMethodBind = getMethod(cstring"InputEvent",
        cstring"is_action_released")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventIsActionReleasedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputEventIsActionTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActionType(self: InputEvent): bool =
  if isNil(inputEventIsActionTypeMethodBind):
    inputEventIsActionTypeMethodBind = getMethod(cstring"InputEvent",
        cstring"is_action_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventIsActionTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventIsEchoMethodBind {.threadvar.}: ptr GodotMethodBind
proc isEcho(self: InputEvent): bool =
  if isNil(inputEventIsEchoMethodBind):
    inputEventIsEchoMethodBind = getMethod(cstring"InputEvent", cstring"is_echo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventIsEchoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPressed(self: InputEvent): bool =
  if isNil(inputEventIsPressedMethodBind):
    inputEventIsPressedMethodBind = getMethod(cstring"InputEvent",
        cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventIsPressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventShortcutMatchMethodBind {.threadvar.}: ptr GodotMethodBind
proc shortcutMatch(self: InputEvent; event: InputEvent): bool =
  if isNil(inputEventShortcutMatchMethodBind):
    inputEventShortcutMatchMethodBind = getMethod(cstring"InputEvent",
        cstring"shortcut_match")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventShortcutMatchMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventXformedByMethodBind {.threadvar.}: ptr GodotMethodBind
proc xformedBy(self: InputEvent; xform: Transform2D;
              localOfs: Vector2 = vec2(0.0, 0.0)): InputEvent =
  if isNil(inputEventXformedByMethodBind):
    inputEventXformedByMethodBind = getMethod(cstring"InputEvent",
        cstring"xformed_by")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(xform)
  argsToPassToGodot[][1] = unsafeAddr(localOfs)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  inputEventXformedByMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
