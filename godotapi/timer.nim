
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  TIMER_PROCESS_IDLE* = 1'i64
  TIMER_PROCESS_PHYSICS* = 0'i64
proc autostart*(self: Timer): bool {.gcsafe, locks: 0.}
proc `autostart=`*(self: Timer; val: bool) {.gcsafe, locks: 0.}
proc oneShot*(self: Timer): bool {.gcsafe, locks: 0.}
proc `oneShot=`*(self: Timer; val: bool) {.gcsafe, locks: 0.}
proc paused*(self: Timer): bool {.gcsafe, locks: 0.}
proc `paused=`*(self: Timer; val: bool) {.gcsafe, locks: 0.}
proc processMode*(self: Timer): int64 {.gcsafe, locks: 0.}
proc `processMode=`*(self: Timer; val: int64) {.gcsafe, locks: 0.}
proc timeLeft*(self: Timer): float64 {.gcsafe, locks: 0.}
proc `timeLeft=`*(self: Timer; val: float64) {.gcsafe, locks: 0.}
proc waitTime*(self: Timer): float64 {.gcsafe, locks: 0.}
proc `waitTime=`*(self: Timer; val: float64) {.gcsafe, locks: 0.}
proc isStopped*(self: Timer): bool {.gcsafe, locks: 0.}
proc start*(self: Timer; timeSec: float64 = -1.0) {.gcsafe, locks: 0.}
proc stop*(self: Timer) {.gcsafe, locks: 0.}
var timerHasAutostartMethodBind {.threadvar.}: ptr GodotMethodBind
proc autostart(self: Timer): bool =
  if isNil(timerHasAutostartMethodBind):
    timerHasAutostartMethodBind = getMethod(cstring"Timer", cstring"has_autostart")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  timerHasAutostartMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var timerSetAutostartMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autostart=`(self: Timer; val: bool) =
  if isNil(timerSetAutostartMethodBind):
    timerSetAutostartMethodBind = getMethod(cstring"Timer", cstring"set_autostart")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  timerSetAutostartMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var timerIsOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc oneShot(self: Timer): bool =
  if isNil(timerIsOneShotMethodBind):
    timerIsOneShotMethodBind = getMethod(cstring"Timer", cstring"is_one_shot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  timerIsOneShotMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var timerSetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oneShot=`(self: Timer; val: bool) =
  if isNil(timerSetOneShotMethodBind):
    timerSetOneShotMethodBind = getMethod(cstring"Timer", cstring"set_one_shot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  timerSetOneShotMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var timerIsPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc paused(self: Timer): bool =
  if isNil(timerIsPausedMethodBind):
    timerIsPausedMethodBind = getMethod(cstring"Timer", cstring"is_paused")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  timerIsPausedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var timerSetPausedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paused=`(self: Timer; val: bool) =
  if isNil(timerSetPausedMethodBind):
    timerSetPausedMethodBind = getMethod(cstring"Timer", cstring"set_paused")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  timerSetPausedMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var timerGetTimerProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc processMode(self: Timer): int64 =
  if isNil(timerGetTimerProcessModeMethodBind):
    timerGetTimerProcessModeMethodBind = getMethod(cstring"Timer",
        cstring"get_timer_process_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  timerGetTimerProcessModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var timerSetTimerProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `processMode=`(self: Timer; val: int64) =
  if isNil(timerSetTimerProcessModeMethodBind):
    timerSetTimerProcessModeMethodBind = getMethod(cstring"Timer",
        cstring"set_timer_process_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  timerSetTimerProcessModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var timerGetTimeLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc timeLeft(self: Timer): float64 =
  if isNil(timerGetTimeLeftMethodBind):
    timerGetTimeLeftMethodBind = getMethod(cstring"Timer", cstring"get_time_left")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  timerGetTimeLeftMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var timerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `timeLeft=`(self: Timer; val: float64) =
  if isNil(timerMethodBind):
    timerMethodBind = getMethod(cstring"Timer", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  timerMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var timerGetWaitTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc waitTime(self: Timer): float64 =
  if isNil(timerGetWaitTimeMethodBind):
    timerGetWaitTimeMethodBind = getMethod(cstring"Timer", cstring"get_wait_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  timerGetWaitTimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var timerSetWaitTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `waitTime=`(self: Timer; val: float64) =
  if isNil(timerSetWaitTimeMethodBind):
    timerSetWaitTimeMethodBind = getMethod(cstring"Timer", cstring"set_wait_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  timerSetWaitTimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var timerIsStoppedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isStopped(self: Timer): bool =
  if isNil(timerIsStoppedMethodBind):
    timerIsStoppedMethodBind = getMethod(cstring"Timer", cstring"is_stopped")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  timerIsStoppedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var timerStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: Timer; timeSec: float64 = -1.0) =
  if isNil(timerStartMethodBind):
    timerStartMethodBind = getMethod(cstring"Timer", cstring"start")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(timeSec)
  var ptrCallRet: pointer
  timerStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var timerStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: Timer) =
  if isNil(timerStopMethodBind):
    timerStopMethodBind = getMethod(cstring"Timer", cstring"stop")
  var ptrCallRet: pointer
  timerStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
