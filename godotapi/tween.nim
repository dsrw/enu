
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  EASE_IN* = 0'i64
  EASE_IN_OUT* = 2'i64
  EASE_OUT* = 1'i64
  EASE_OUT_IN* = 3'i64
  TRANS_BACK* = 10'i64
  TRANS_BOUNCE* = 9'i64
  TRANS_CIRC* = 8'i64
  TRANS_CUBIC* = 7'i64
  TRANS_ELASTIC* = 6'i64
  TRANS_EXPO* = 5'i64
  TRANS_LINEAR* = 0'i64
  TRANS_QUAD* = 4'i64
  TRANS_QUART* = 3'i64
  TRANS_QUINT* = 2'i64
  TRANS_SINE* = 1'i64
  TWEEN_PROCESS_IDLE* = 1'i64
  TWEEN_PROCESS_PHYSICS* = 0'i64
proc playbackProcessMode*(self: Tween): int64 {.gcsafe, locks: 0.}
proc `playbackProcessMode=`*(self: Tween; val: int64) {.gcsafe, locks: 0.}
proc playbackSpeed*(self: Tween): float64 {.gcsafe, locks: 0.}
proc `playbackSpeed=`*(self: Tween; val: float64) {.gcsafe, locks: 0.}
proc repeat*(self: Tween): bool {.gcsafe, locks: 0.}
proc `repeat=`*(self: Tween; val: bool) {.gcsafe, locks: 0.}
method removeByUid*(self: Tween; uid: int64) {.gcsafe, locks: 0, base.}
proc followMethod*(self: Tween; objectt: Object; methodd: string; initialVal: Variant;
                  target: Object; targetMethod: string; duration: float64;
                  transType: int64 = 0'i64; easeType: int64 = 2'i64;
                  delay: float64 = 0.0): bool {.gcsafe, locks: 0.}
proc followProperty*(self: Tween; objectt: Object; property: NodePath;
                    initialVal: Variant; target: Object; targetProperty: NodePath;
                    duration: float64; transType: int64 = 0'i64;
                    easeType: int64 = 2'i64; delay: float64 = 0.0): bool {.gcsafe,
    locks: 0.}
proc getRuntime*(self: Tween): float64 {.gcsafe, locks: 0.}
proc interpolateCallback*(self: Tween; objectt: Object; duration: float64;
                         callback: string; arg1: Variant = newVariant();
                         arg2: Variant = newVariant(); arg3: Variant = newVariant();
                         arg4: Variant = newVariant(); arg5: Variant = newVariant()): bool {.
    gcsafe, locks: 0.}
proc interpolateDeferredCallback*(self: Tween; objectt: Object; duration: float64;
                                 callback: string; arg1: Variant = newVariant();
                                 arg2: Variant = newVariant();
                                 arg3: Variant = newVariant();
                                 arg4: Variant = newVariant();
                                 arg5: Variant = newVariant()): bool {.gcsafe,
    locks: 0.}
proc interpolateMethod*(self: Tween; objectt: Object; methodd: string;
                       initialVal: Variant; finalVal: Variant; duration: float64;
                       transType: int64 = 0'i64; easeType: int64 = 2'i64;
                       delay: float64 = 0.0): bool {.gcsafe, locks: 0.}
proc interpolateProperty*(self: Tween; objectt: Object; property: NodePath;
                         initialVal: Variant; finalVal: Variant; duration: float64;
                         transType: int64 = 0'i64; easeType: int64 = 2'i64;
                         delay: float64 = 0.0): bool {.gcsafe, locks: 0.}
proc isActive*(self: Tween): bool {.gcsafe, locks: 0.}
proc remove*(self: Tween; objectt: Object; key: string = ""): bool {.gcsafe, locks: 0.}
proc removeAll*(self: Tween): bool {.gcsafe, locks: 0.}
proc reset*(self: Tween; objectt: Object; key: string = ""): bool {.gcsafe, locks: 0.}
proc resetAll*(self: Tween): bool {.gcsafe, locks: 0.}
proc resume*(self: Tween; objectt: Object; key: string = ""): bool {.gcsafe, locks: 0.}
proc resumeAll*(self: Tween): bool {.gcsafe, locks: 0.}
proc seek*(self: Tween; time: float64): bool {.gcsafe, locks: 0.}
proc setActive*(self: Tween; active: bool) {.gcsafe, locks: 0.}
proc start*(self: Tween): bool {.gcsafe, locks: 0.}
proc stop*(self: Tween; objectt: Object; key: string = ""): bool {.gcsafe, locks: 0.}
proc stopAll*(self: Tween): bool {.gcsafe, locks: 0.}
proc targetingMethod*(self: Tween; objectt: Object; methodd: string; initial: Object;
                     initialMethod: string; finalVal: Variant; duration: float64;
                     transType: int64 = 0'i64; easeType: int64 = 2'i64;
                     delay: float64 = 0.0): bool {.gcsafe, locks: 0.}
proc targetingProperty*(self: Tween; objectt: Object; property: NodePath;
                       initial: Object; initialVal: NodePath; finalVal: Variant;
                       duration: float64; transType: int64 = 0'i64;
                       easeType: int64 = 2'i64; delay: float64 = 0.0): bool {.gcsafe,
    locks: 0.}
proc tell*(self: Tween): float64 {.gcsafe, locks: 0.}
var tweenGetTweenProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc playbackProcessMode(self: Tween): int64 =
  if isNil(tweenGetTweenProcessModeMethodBind):
    tweenGetTweenProcessModeMethodBind = getMethod(cstring"Tween",
        cstring"get_tween_process_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenGetTweenProcessModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenSetTweenProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playbackProcessMode=`(self: Tween; val: int64) =
  if isNil(tweenSetTweenProcessModeMethodBind):
    tweenSetTweenProcessModeMethodBind = getMethod(cstring"Tween",
        cstring"set_tween_process_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tweenSetTweenProcessModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tweenGetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc playbackSpeed(self: Tween): float64 =
  if isNil(tweenGetSpeedScaleMethodBind):
    tweenGetSpeedScaleMethodBind = getMethod(cstring"Tween",
        cstring"get_speed_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenGetSpeedScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `playbackSpeed=`(self: Tween; val: float64) =
  if isNil(tweenSetSpeedScaleMethodBind):
    tweenSetSpeedScaleMethodBind = getMethod(cstring"Tween",
        cstring"set_speed_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tweenSetSpeedScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var tweenIsRepeatMethodBind {.threadvar.}: ptr GodotMethodBind
proc repeat(self: Tween): bool =
  if isNil(tweenIsRepeatMethodBind):
    tweenIsRepeatMethodBind = getMethod(cstring"Tween", cstring"is_repeat")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenIsRepeatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenSetRepeatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `repeat=`(self: Tween; val: bool) =
  if isNil(tweenSetRepeatMethodBind):
    tweenSetRepeatMethodBind = getMethod(cstring"Tween", cstring"set_repeat")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  tweenSetRepeatMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tweenUnderscoreremoveByUidMethodBind {.threadvar.}: ptr GodotMethodBind
method removeByUid(self: Tween; uid: int64) =
  if isNil(tweenUnderscoreremoveByUidMethodBind):
    tweenUnderscoreremoveByUidMethodBind = getMethod(cstring"Tween",
        cstring"_remove_by_uid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(uid)
  var ptrCallRet: pointer
  tweenUnderscoreremoveByUidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var tweenFollowMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc followMethod(self: Tween; objectt: Object; methodd: string; initialVal: Variant;
                 target: Object; targetMethod: string; duration: float64;
                 transType: int64 = 0'i64; easeType: int64 = 2'i64; delay: float64 = 0.0): bool =
  if isNil(tweenFollowMethodMethodBind):
    tweenFollowMethodMethodBind = getMethod(cstring"Tween", cstring"follow_method")
  var
    argsStatic: array[9, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(methodd)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = initialVal.godotVariant
  let argToPassToGodot3 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var argToPassToGodot4 = toGodotString(targetMethod)
  argsToPassToGodot[][4] = unsafeAddr(argToPassToGodot4)
  argsToPassToGodot[][5] = unsafeAddr(duration)
  argsToPassToGodot[][6] = unsafeAddr(transType)
  argsToPassToGodot[][7] = unsafeAddr(easeType)
  argsToPassToGodot[][8] = unsafeAddr(delay)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenFollowMethodMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot1)
  deinit(argToPassToGodot4)

var tweenFollowPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc followProperty(self: Tween; objectt: Object; property: NodePath;
                   initialVal: Variant; target: Object; targetProperty: NodePath;
                   duration: float64; transType: int64 = 0'i64;
                   easeType: int64 = 2'i64; delay: float64 = 0.0): bool =
  if isNil(tweenFollowPropertyMethodBind):
    tweenFollowPropertyMethodBind = getMethod(cstring"Tween",
        cstring"follow_property")
  var
    argsStatic: array[9, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = property.godotNodePath
  argsToPassToGodot[][2] = initialVal.godotVariant
  let argToPassToGodot3 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  argsToPassToGodot[][4] = targetProperty.godotNodePath
  argsToPassToGodot[][5] = unsafeAddr(duration)
  argsToPassToGodot[][6] = unsafeAddr(transType)
  argsToPassToGodot[][7] = unsafeAddr(easeType)
  argsToPassToGodot[][8] = unsafeAddr(delay)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenFollowPropertyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var tweenGetRuntimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRuntime(self: Tween): float64 =
  if isNil(tweenGetRuntimeMethodBind):
    tweenGetRuntimeMethodBind = getMethod(cstring"Tween", cstring"get_runtime")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenGetRuntimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenInterpolateCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateCallback(self: Tween; objectt: Object; duration: float64;
                        callback: string; arg1: Variant = newVariant();
                        arg2: Variant = newVariant(); arg3: Variant = newVariant();
                        arg4: Variant = newVariant(); arg5: Variant = newVariant()): bool =
  if isNil(tweenInterpolateCallbackMethodBind):
    tweenInterpolateCallbackMethodBind = getMethod(cstring"Tween",
        cstring"interpolate_callback")
  var
    argsStatic: array[8, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(duration)
  var argToPassToGodot2 = toGodotString(callback)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = arg1.godotVariant
  argsToPassToGodot[][4] = arg2.godotVariant
  argsToPassToGodot[][5] = arg3.godotVariant
  argsToPassToGodot[][6] = arg4.godotVariant
  argsToPassToGodot[][7] = arg5.godotVariant
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenInterpolateCallbackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot2)

var tweenInterpolateDeferredCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateDeferredCallback(self: Tween; objectt: Object; duration: float64;
                                callback: string; arg1: Variant = newVariant();
                                arg2: Variant = newVariant();
                                arg3: Variant = newVariant();
                                arg4: Variant = newVariant();
                                arg5: Variant = newVariant()): bool =
  if isNil(tweenInterpolateDeferredCallbackMethodBind):
    tweenInterpolateDeferredCallbackMethodBind = getMethod(cstring"Tween",
        cstring"interpolate_deferred_callback")
  var
    argsStatic: array[8, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(duration)
  var argToPassToGodot2 = toGodotString(callback)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = arg1.godotVariant
  argsToPassToGodot[][4] = arg2.godotVariant
  argsToPassToGodot[][5] = arg3.godotVariant
  argsToPassToGodot[][6] = arg4.godotVariant
  argsToPassToGodot[][7] = arg5.godotVariant
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenInterpolateDeferredCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var tweenInterpolateMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateMethod(self: Tween; objectt: Object; methodd: string;
                      initialVal: Variant; finalVal: Variant; duration: float64;
                      transType: int64 = 0'i64; easeType: int64 = 2'i64;
                      delay: float64 = 0.0): bool =
  if isNil(tweenInterpolateMethodMethodBind):
    tweenInterpolateMethodMethodBind = getMethod(cstring"Tween",
        cstring"interpolate_method")
  var
    argsStatic: array[8, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(methodd)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = initialVal.godotVariant
  argsToPassToGodot[][3] = finalVal.godotVariant
  argsToPassToGodot[][4] = unsafeAddr(duration)
  argsToPassToGodot[][5] = unsafeAddr(transType)
  argsToPassToGodot[][6] = unsafeAddr(easeType)
  argsToPassToGodot[][7] = unsafeAddr(delay)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenInterpolateMethodMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var tweenInterpolatePropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolateProperty(self: Tween; objectt: Object; property: NodePath;
                        initialVal: Variant; finalVal: Variant; duration: float64;
                        transType: int64 = 0'i64; easeType: int64 = 2'i64;
                        delay: float64 = 0.0): bool =
  if isNil(tweenInterpolatePropertyMethodBind):
    tweenInterpolatePropertyMethodBind = getMethod(cstring"Tween",
        cstring"interpolate_property")
  var
    argsStatic: array[8, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = property.godotNodePath
  argsToPassToGodot[][2] = initialVal.godotVariant
  argsToPassToGodot[][3] = finalVal.godotVariant
  argsToPassToGodot[][4] = unsafeAddr(duration)
  argsToPassToGodot[][5] = unsafeAddr(transType)
  argsToPassToGodot[][6] = unsafeAddr(easeType)
  argsToPassToGodot[][7] = unsafeAddr(delay)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenInterpolatePropertyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tweenIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActive(self: Tween): bool =
  if isNil(tweenIsActiveMethodBind):
    tweenIsActiveMethodBind = getMethod(cstring"Tween", cstring"is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenRemoveMethodBind {.threadvar.}: ptr GodotMethodBind
proc remove(self: Tween; objectt: Object; key: string = ""): bool =
  if isNil(tweenRemoveMethodBind):
    tweenRemoveMethodBind = getMethod(cstring"Tween", cstring"remove")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenRemoveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var tweenRemoveAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeAll(self: Tween): bool =
  if isNil(tweenRemoveAllMethodBind):
    tweenRemoveAllMethodBind = getMethod(cstring"Tween", cstring"remove_all")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenRemoveAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenResetMethodBind {.threadvar.}: ptr GodotMethodBind
proc reset(self: Tween; objectt: Object; key: string = ""): bool =
  if isNil(tweenResetMethodBind):
    tweenResetMethodBind = getMethod(cstring"Tween", cstring"reset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenResetMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var tweenResetAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc resetAll(self: Tween): bool =
  if isNil(tweenResetAllMethodBind):
    tweenResetAllMethodBind = getMethod(cstring"Tween", cstring"reset_all")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenResetAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenResumeMethodBind {.threadvar.}: ptr GodotMethodBind
proc resume(self: Tween; objectt: Object; key: string = ""): bool =
  if isNil(tweenResumeMethodBind):
    tweenResumeMethodBind = getMethod(cstring"Tween", cstring"resume")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenResumeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var tweenResumeAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc resumeAll(self: Tween): bool =
  if isNil(tweenResumeAllMethodBind):
    tweenResumeAllMethodBind = getMethod(cstring"Tween", cstring"resume_all")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenResumeAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: Tween; time: float64): bool =
  if isNil(tweenSeekMethodBind):
    tweenSeekMethodBind = getMethod(cstring"Tween", cstring"seek")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(time)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tweenSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc setActive(self: Tween; active: bool) =
  if isNil(tweenSetActiveMethodBind):
    tweenSetActiveMethodBind = getMethod(cstring"Tween", cstring"set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(active)
  var ptrCallRet: pointer
  tweenSetActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var tweenStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: Tween): bool =
  if isNil(tweenStartMethodBind):
    tweenStartMethodBind = getMethod(cstring"Tween", cstring"start")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenStartMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: Tween; objectt: Object; key: string = ""): bool =
  if isNil(tweenStopMethodBind):
    tweenStopMethodBind = getMethod(cstring"Tween", cstring"stop")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(key)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenStopMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var tweenStopAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc stopAll(self: Tween): bool =
  if isNil(tweenStopAllMethodBind):
    tweenStopAllMethodBind = getMethod(cstring"Tween", cstring"stop_all")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenStopAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var tweenTargetingMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc targetingMethod(self: Tween; objectt: Object; methodd: string; initial: Object;
                    initialMethod: string; finalVal: Variant; duration: float64;
                    transType: int64 = 0'i64; easeType: int64 = 2'i64;
                    delay: float64 = 0.0): bool =
  if isNil(tweenTargetingMethodMethodBind):
    tweenTargetingMethodMethodBind = getMethod(cstring"Tween",
        cstring"targeting_method")
  var
    argsStatic: array[9, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(methodd)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  let argToPassToGodot2 = if not initial.isNil:
    initial.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var argToPassToGodot3 = toGodotString(initialMethod)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  argsToPassToGodot[][4] = finalVal.godotVariant
  argsToPassToGodot[][5] = unsafeAddr(duration)
  argsToPassToGodot[][6] = unsafeAddr(transType)
  argsToPassToGodot[][7] = unsafeAddr(easeType)
  argsToPassToGodot[][8] = unsafeAddr(delay)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenTargetingMethodMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)
  deinit(argToPassToGodot3)

var tweenTargetingPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc targetingProperty(self: Tween; objectt: Object; property: NodePath;
                      initial: Object; initialVal: NodePath; finalVal: Variant;
                      duration: float64; transType: int64 = 0'i64;
                      easeType: int64 = 2'i64; delay: float64 = 0.0): bool =
  if isNil(tweenTargetingPropertyMethodBind):
    tweenTargetingPropertyMethodBind = getMethod(cstring"Tween",
        cstring"targeting_property")
  var
    argsStatic: array[9, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = property.godotNodePath
  let argToPassToGodot2 = if not initial.isNil:
    initial.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = initialVal.godotNodePath
  argsToPassToGodot[][4] = finalVal.godotVariant
  argsToPassToGodot[][5] = unsafeAddr(duration)
  argsToPassToGodot[][6] = unsafeAddr(transType)
  argsToPassToGodot[][7] = unsafeAddr(easeType)
  argsToPassToGodot[][8] = unsafeAddr(delay)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenTargetingPropertyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var tweenTellMethodBind {.threadvar.}: ptr GodotMethodBind
proc tell(self: Tween): float64 =
  if isNil(tweenTellMethodBind):
    tweenTellMethodBind = getMethod(cstring"Tween", cstring"tell")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  tweenTellMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
