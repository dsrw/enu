
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  SWITCH_MODE_AT_END* = 2'i64
  SWITCH_MODE_IMMEDIATE* = 0'i64
  SWITCH_MODE_SYNC* = 1'i64
proc advanceCondition*(self: AnimationNodeStateMachineTransition): string {.gcsafe,
    locks: 0.}
proc `advanceCondition=`*(self: AnimationNodeStateMachineTransition; val: string) {.
    gcsafe, locks: 0.}
proc autoAdvance*(self: AnimationNodeStateMachineTransition): bool {.gcsafe, locks: 0.}
proc `autoAdvance=`*(self: AnimationNodeStateMachineTransition; val: bool) {.gcsafe,
    locks: 0.}
proc disabled*(self: AnimationNodeStateMachineTransition): bool {.gcsafe, locks: 0.}
proc `disabled=`*(self: AnimationNodeStateMachineTransition; val: bool) {.gcsafe,
    locks: 0.}
proc priority*(self: AnimationNodeStateMachineTransition): int64 {.gcsafe, locks: 0.}
proc `priority=`*(self: AnimationNodeStateMachineTransition; val: int64) {.gcsafe,
    locks: 0.}
proc switchMode*(self: AnimationNodeStateMachineTransition): int64 {.gcsafe, locks: 0.}
proc `switchMode=`*(self: AnimationNodeStateMachineTransition; val: int64) {.gcsafe,
    locks: 0.}
proc xfadeTime*(self: AnimationNodeStateMachineTransition): float64 {.gcsafe,
    locks: 0.}
proc `xfadeTime=`*(self: AnimationNodeStateMachineTransition; val: float64) {.gcsafe,
    locks: 0.}
var animationNodeStateMachineTransitionGetAdvanceConditionMethodBind {.threadvar.}: ptr GodotMethodBind
proc advanceCondition(self: AnimationNodeStateMachineTransition): string =
  if isNil(animationNodeStateMachineTransitionGetAdvanceConditionMethodBind):
    animationNodeStateMachineTransitionGetAdvanceConditionMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition",
        cstring"get_advance_condition")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeStateMachineTransitionGetAdvanceConditionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeStateMachineTransitionSetAdvanceConditionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `advanceCondition=`(self: AnimationNodeStateMachineTransition; val: string) =
  if isNil(animationNodeStateMachineTransitionSetAdvanceConditionMethodBind):
    animationNodeStateMachineTransitionSetAdvanceConditionMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition",
        cstring"set_advance_condition")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeStateMachineTransitionSetAdvanceConditionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeStateMachineTransitionHasAutoAdvanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoAdvance(self: AnimationNodeStateMachineTransition): bool =
  if isNil(animationNodeStateMachineTransitionHasAutoAdvanceMethodBind):
    animationNodeStateMachineTransitionHasAutoAdvanceMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"has_auto_advance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineTransitionHasAutoAdvanceMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeStateMachineTransitionSetAutoAdvanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoAdvance=`(self: AnimationNodeStateMachineTransition; val: bool) =
  if isNil(animationNodeStateMachineTransitionSetAutoAdvanceMethodBind):
    animationNodeStateMachineTransitionSetAutoAdvanceMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"set_auto_advance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeStateMachineTransitionSetAutoAdvanceMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeStateMachineTransitionIsDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disabled(self: AnimationNodeStateMachineTransition): bool =
  if isNil(animationNodeStateMachineTransitionIsDisabledMethodBind):
    animationNodeStateMachineTransitionIsDisabledMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"is_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineTransitionIsDisabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeStateMachineTransitionSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disabled=`(self: AnimationNodeStateMachineTransition; val: bool) =
  if isNil(animationNodeStateMachineTransitionSetDisabledMethodBind):
    animationNodeStateMachineTransitionSetDisabledMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"set_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeStateMachineTransitionSetDisabledMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeStateMachineTransitionGetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc priority(self: AnimationNodeStateMachineTransition): int64 =
  if isNil(animationNodeStateMachineTransitionGetPriorityMethodBind):
    animationNodeStateMachineTransitionGetPriorityMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"get_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineTransitionGetPriorityMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeStateMachineTransitionSetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `priority=`(self: AnimationNodeStateMachineTransition; val: int64) =
  if isNil(animationNodeStateMachineTransitionSetPriorityMethodBind):
    animationNodeStateMachineTransitionSetPriorityMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"set_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeStateMachineTransitionSetPriorityMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeStateMachineTransitionGetSwitchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc switchMode(self: AnimationNodeStateMachineTransition): int64 =
  if isNil(animationNodeStateMachineTransitionGetSwitchModeMethodBind):
    animationNodeStateMachineTransitionGetSwitchModeMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"get_switch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineTransitionGetSwitchModeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeStateMachineTransitionSetSwitchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `switchMode=`(self: AnimationNodeStateMachineTransition; val: int64) =
  if isNil(animationNodeStateMachineTransitionSetSwitchModeMethodBind):
    animationNodeStateMachineTransitionSetSwitchModeMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"set_switch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeStateMachineTransitionSetSwitchModeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var animationNodeStateMachineTransitionGetXfadeTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc xfadeTime(self: AnimationNodeStateMachineTransition): float64 =
  if isNil(animationNodeStateMachineTransitionGetXfadeTimeMethodBind):
    animationNodeStateMachineTransitionGetXfadeTimeMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"get_xfade_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeStateMachineTransitionGetXfadeTimeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var animationNodeStateMachineTransitionSetXfadeTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `xfadeTime=`(self: AnimationNodeStateMachineTransition; val: float64) =
  if isNil(animationNodeStateMachineTransitionSetXfadeTimeMethodBind):
    animationNodeStateMachineTransitionSetXfadeTimeMethodBind = getMethod(
        cstring"AnimationNodeStateMachineTransition", cstring"set_xfade_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeStateMachineTransitionSetXfadeTimeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
