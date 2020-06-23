
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  InputMap = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(InputMap, "InputMap", true)
var singletonInputMap {.threadvar.}: InputMap
proc actionAddEvent*(action: string; event: InputEvent) {.gcsafe, locks: 0.}
proc actionEraseEvent*(action: string; event: InputEvent) {.gcsafe, locks: 0.}
proc actionEraseEvents*(action: string) {.gcsafe, locks: 0.}
proc actionHasEvent*(action: string; event: InputEvent): bool {.gcsafe, locks: 0.}
proc actionSetDeadzone*(action: string; deadzone: float64) {.gcsafe, locks: 0.}
proc addAction*(action: string; deadzone: float64 = 0.5) {.gcsafe, locks: 0.}
proc eraseAction*(action: string) {.gcsafe, locks: 0.}
proc eventIsAction*(event: InputEvent; action: string): bool {.gcsafe, locks: 0.}
proc getActionList*(action: string): Array {.gcsafe, locks: 0.}
proc getActions*(): Array {.gcsafe, locks: 0.}
proc hasAction*(action: string): bool {.gcsafe, locks: 0.}
proc loadFromGlobals*() {.gcsafe, locks: 0.}
var inputMapActionAddEventMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionAddEvent(action: string; event: InputEvent) =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapActionAddEventMethodBind):
    inputMapActionAddEventMethodBind = getMethod(cstring"InputMap",
        cstring"action_add_event")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  inputMapActionAddEventMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapActionEraseEventMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionEraseEvent(action: string; event: InputEvent) =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapActionEraseEventMethodBind):
    inputMapActionEraseEventMethodBind = getMethod(cstring"InputMap",
        cstring"action_erase_event")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  inputMapActionEraseEventMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapActionEraseEventsMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionEraseEvents(action: string) =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapActionEraseEventsMethodBind):
    inputMapActionEraseEventsMethodBind = getMethod(cstring"InputMap",
        cstring"action_erase_events")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  inputMapActionEraseEventsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapActionHasEventMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionHasEvent(action: string; event: InputEvent): bool =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapActionHasEventMethodBind):
    inputMapActionHasEventMethodBind = getMethod(cstring"InputMap",
        cstring"action_has_event")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputMapActionHasEventMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapActionSetDeadzoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionSetDeadzone(action: string; deadzone: float64) =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapActionSetDeadzoneMethodBind):
    inputMapActionSetDeadzoneMethodBind = getMethod(cstring"InputMap",
        cstring"action_set_deadzone")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(deadzone)
  var ptrCallRet: pointer
  inputMapActionSetDeadzoneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapAddActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc addAction(action: string; deadzone: float64 = 0.5) =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapAddActionMethodBind):
    inputMapAddActionMethodBind = getMethod(cstring"InputMap", cstring"add_action")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(deadzone)
  var ptrCallRet: pointer
  inputMapAddActionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapEraseActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc eraseAction(action: string) =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapEraseActionMethodBind):
    inputMapEraseActionMethodBind = getMethod(cstring"InputMap",
        cstring"erase_action")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  inputMapEraseActionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapEventIsActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc eventIsAction(event: InputEvent; action: string): bool =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapEventIsActionMethodBind):
    inputMapEventIsActionMethodBind = getMethod(cstring"InputMap",
        cstring"event_is_action")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(action)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputMapEventIsActionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var inputMapGetActionListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getActionList(action: string): Array =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapGetActionListMethodBind):
    inputMapGetActionListMethodBind = getMethod(cstring"InputMap",
        cstring"get_action_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  inputMapGetActionListMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var inputMapGetActionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getActions(): Array =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapGetActionsMethodBind):
    inputMapGetActionsMethodBind = getMethod(cstring"InputMap",
        cstring"get_actions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  inputMapGetActionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var inputMapHasActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasAction(action: string): bool =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapHasActionMethodBind):
    inputMapHasActionMethodBind = getMethod(cstring"InputMap", cstring"has_action")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputMapHasActionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var inputMapLoadFromGlobalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadFromGlobals() =
  if isNil(singletonInputMap):
    singletonInputMap = getSingleton[InputMap]()
  let self = singletonInputMap
  if isNil(inputMapLoadFromGlobalsMethodBind):
    inputMapLoadFromGlobalsMethodBind = getMethod(cstring"InputMap",
        cstring"load_from_globals")
  var ptrCallRet: pointer
  inputMapLoadFromGlobalsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
