
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  INTERPOLATION_CUBIC* = 2'i64
  INTERPOLATION_LINEAR* = 1'i64
  INTERPOLATION_NEAREST* = 0'i64
  TYPE_ANIMATION* = 5'i64
  TYPE_AUDIO* = 4'i64
  TYPE_BEZIER* = 3'i64
  TYPE_METHOD* = 2'i64
  TYPE_TRANSFORM* = 1'i64
  TYPE_VALUE* = 0'i64
  UPDATE_CAPTURE* = 3'i64
  UPDATE_CONTINUOUS* = 0'i64
  UPDATE_DISCRETE* = 1'i64
  UPDATE_TRIGGER* = 2'i64
proc length*(self: Animation): float64 {.gcsafe, locks: 0.}
proc `length=`*(self: Animation; val: float64) {.gcsafe, locks: 0.}
proc loop*(self: Animation): bool {.gcsafe, locks: 0.}
proc `loop=`*(self: Animation; val: bool) {.gcsafe, locks: 0.}
proc step*(self: Animation): float64 {.gcsafe, locks: 0.}
proc `step=`*(self: Animation; val: float64) {.gcsafe, locks: 0.}
proc addTrack*(self: Animation; typee: int64; atPosition: int64 = -1'i64): int64 {.gcsafe,
    locks: 0.}
proc animationTrackGetKeyAnimation*(self: Animation; trackIdx: int64; keyIdx: int64): string {.
    gcsafe, locks: 0.}
proc animationTrackInsertKey*(self: Animation; trackIdx: int64; time: float64;
                             animation: string): int64 {.gcsafe, locks: 0.}
proc animationTrackSetKeyAnimation*(self: Animation; trackIdx: int64; keyIdx: int64;
                                   animation: string) {.gcsafe, locks: 0.}
proc audioTrackGetKeyEndOffset*(self: Animation; trackIdx: int64; keyIdx: int64): float64 {.
    gcsafe, locks: 0.}
proc audioTrackGetKeyStartOffset*(self: Animation; trackIdx: int64; keyIdx: int64): float64 {.
    gcsafe, locks: 0.}
proc audioTrackGetKeyStream*(self: Animation; trackIdx: int64; keyIdx: int64): Resource {.
    gcsafe, locks: 0.}
proc audioTrackInsertKey*(self: Animation; trackIdx: int64; time: float64;
                         stream: Resource; startOffset: float64 = 0.0;
                         endOffset: float64 = 0.0): int64 {.gcsafe, locks: 0.}
proc audioTrackSetKeyEndOffset*(self: Animation; trackIdx: int64; keyIdx: int64;
                               offset: float64) {.gcsafe, locks: 0.}
proc audioTrackSetKeyStartOffset*(self: Animation; trackIdx: int64; keyIdx: int64;
                                 offset: float64) {.gcsafe, locks: 0.}
proc audioTrackSetKeyStream*(self: Animation; trackIdx: int64; keyIdx: int64;
                            stream: Resource) {.gcsafe, locks: 0.}
proc bezierTrackGetKeyInHandle*(self: Animation; trackIdx: int64; keyIdx: int64): Vector2 {.
    gcsafe, locks: 0.}
proc bezierTrackGetKeyOutHandle*(self: Animation; trackIdx: int64; keyIdx: int64): Vector2 {.
    gcsafe, locks: 0.}
proc bezierTrackGetKeyValue*(self: Animation; trackIdx: int64; keyIdx: int64): float64 {.
    gcsafe, locks: 0.}
proc bezierTrackInsertKey*(self: Animation; trackIdx: int64; time: float64;
                          value: float64; inHandle: Vector2 = vec2(0.0, 0.0);
                          outHandle: Vector2 = vec2(0.0, 0.0)): int64 {.gcsafe,
    locks: 0.}
proc bezierTrackInterpolate*(self: Animation; trackIdx: int64; time: float64): float64 {.
    gcsafe, locks: 0.}
proc bezierTrackSetKeyInHandle*(self: Animation; trackIdx: int64; keyIdx: int64;
                               inHandle: Vector2) {.gcsafe, locks: 0.}
proc bezierTrackSetKeyOutHandle*(self: Animation; trackIdx: int64; keyIdx: int64;
                                outHandle: Vector2) {.gcsafe, locks: 0.}
proc bezierTrackSetKeyValue*(self: Animation; trackIdx: int64; keyIdx: int64;
                            value: float64) {.gcsafe, locks: 0.}
proc clear*(self: Animation) {.gcsafe, locks: 0.}
proc copyTrack*(self: Animation; trackIdx: int64; toAnimation: Animation) {.gcsafe,
    locks: 0.}
proc findTrack*(self: Animation; path: NodePath): int64 {.gcsafe, locks: 0.}
proc getTrackCount*(self: Animation): int64 {.gcsafe, locks: 0.}
proc methodTrackGetKeyIndices*(self: Animation; trackIdx: int64; timeSec: float64;
                              delta: float64): PoolIntArray {.gcsafe, locks: 0.}
proc methodTrackGetName*(self: Animation; trackIdx: int64; keyIdx: int64): string {.
    gcsafe, locks: 0.}
proc methodTrackGetParams*(self: Animation; trackIdx: int64; keyIdx: int64): Array {.
    gcsafe, locks: 0.}
proc removeTrack*(self: Animation; trackIdx: int64) {.gcsafe, locks: 0.}
proc trackFindKey*(self: Animation; trackIdx: int64; time: float64; exact: bool = false): int64 {.
    gcsafe, locks: 0.}
proc trackGetInterpolationLoopWrap*(self: Animation; trackIdx: int64): bool {.gcsafe,
    locks: 0.}
proc trackGetInterpolationType*(self: Animation; trackIdx: int64): int64 {.gcsafe,
    locks: 0.}
proc trackGetKeyCount*(self: Animation; trackIdx: int64): int64 {.gcsafe, locks: 0.}
proc trackGetKeyTime*(self: Animation; trackIdx: int64; keyIdx: int64): float64 {.
    gcsafe, locks: 0.}
proc trackGetKeyTransition*(self: Animation; trackIdx: int64; keyIdx: int64): float64 {.
    gcsafe, locks: 0.}
proc trackGetKeyValue*(self: Animation; trackIdx: int64; keyIdx: int64): Variant {.
    gcsafe, locks: 0.}
proc trackGetPath*(self: Animation; trackIdx: int64): NodePath {.gcsafe, locks: 0.}
proc trackGetType*(self: Animation; trackIdx: int64): int64 {.gcsafe, locks: 0.}
proc trackInsertKey*(self: Animation; trackIdx: int64; time: float64; key: Variant;
                    transition: float64 = 1.0) {.gcsafe, locks: 0.}
proc trackIsEnabled*(self: Animation; trackIdx: int64): bool {.gcsafe, locks: 0.}
proc trackIsImported*(self: Animation; trackIdx: int64): bool {.gcsafe, locks: 0.}
proc trackMoveDown*(self: Animation; trackIdx: int64) {.gcsafe, locks: 0.}
proc trackMoveTo*(self: Animation; trackIdx: int64; toIdx: int64) {.gcsafe, locks: 0.}
proc trackMoveUp*(self: Animation; trackIdx: int64) {.gcsafe, locks: 0.}
proc trackRemoveKey*(self: Animation; trackIdx: int64; keyIdx: int64) {.gcsafe, locks: 0.}
proc trackRemoveKeyAtPosition*(self: Animation; trackIdx: int64; position: float64) {.
    gcsafe, locks: 0.}
proc trackSetEnabled*(self: Animation; trackIdx: int64; enabled: bool) {.gcsafe,
    locks: 0.}
proc trackSetImported*(self: Animation; trackIdx: int64; imported: bool) {.gcsafe,
    locks: 0.}
proc trackSetInterpolationLoopWrap*(self: Animation; trackIdx: int64;
                                   interpolation: bool) {.gcsafe, locks: 0.}
proc trackSetInterpolationType*(self: Animation; trackIdx: int64;
                               interpolation: int64) {.gcsafe, locks: 0.}
proc trackSetKeyTime*(self: Animation; trackIdx: int64; keyIdx: int64; time: float64) {.
    gcsafe, locks: 0.}
proc trackSetKeyTransition*(self: Animation; trackIdx: int64; keyIdx: int64;
                           transition: float64) {.gcsafe, locks: 0.}
proc trackSetKeyValue*(self: Animation; trackIdx: int64; key: int64; value: Variant) {.
    gcsafe, locks: 0.}
proc trackSetPath*(self: Animation; trackIdx: int64; path: NodePath) {.gcsafe, locks: 0.}
proc trackSwap*(self: Animation; trackIdx: int64; withIdx: int64) {.gcsafe, locks: 0.}
proc transformTrackInsertKey*(self: Animation; trackIdx: int64; time: float64;
                             location: Vector3; rotation: Quat; scale: Vector3): int64 {.
    gcsafe, locks: 0.}
proc transformTrackInterpolate*(self: Animation; trackIdx: int64; timeSec: float64): Array {.
    gcsafe, locks: 0.}
proc valueTrackGetKeyIndices*(self: Animation; trackIdx: int64; timeSec: float64;
                             delta: float64): PoolIntArray {.gcsafe, locks: 0.}
proc valueTrackGetUpdateMode*(self: Animation; trackIdx: int64): int64 {.gcsafe,
    locks: 0.}
proc valueTrackSetUpdateMode*(self: Animation; trackIdx: int64; mode: int64) {.gcsafe,
    locks: 0.}
var animationGetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc length(self: Animation): float64 =
  if isNil(animationGetLengthMethodBind):
    animationGetLengthMethodBind = getMethod(cstring"Animation",
        cstring"get_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationGetLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationSetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `length=`(self: Animation; val: float64) =
  if isNil(animationSetLengthMethodBind):
    animationSetLengthMethodBind = getMethod(cstring"Animation",
        cstring"set_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationSetLengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var animationHasLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc loop(self: Animation): bool =
  if isNil(animationHasLoopMethodBind):
    animationHasLoopMethodBind = getMethod(cstring"Animation", cstring"has_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationHasLoopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationSetLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loop=`(self: Animation; val: bool) =
  if isNil(animationSetLoopMethodBind):
    animationSetLoopMethodBind = getMethod(cstring"Animation", cstring"set_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationSetLoopMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var animationGetStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc step(self: Animation): float64 =
  if isNil(animationGetStepMethodBind):
    animationGetStepMethodBind = getMethod(cstring"Animation", cstring"get_step")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationGetStepMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationSetStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc `step=`(self: Animation; val: float64) =
  if isNil(animationSetStepMethodBind):
    animationSetStepMethodBind = getMethod(cstring"Animation", cstring"set_step")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationSetStepMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var animationAddTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc addTrack(self: Animation; typee: int64; atPosition: int64 = -1'i64): int64 =
  if isNil(animationAddTrackMethodBind):
    animationAddTrackMethodBind = getMethod(cstring"Animation", cstring"add_track")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  argsToPassToGodot[][1] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationAddTrackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var animationAnimationTrackGetKeyAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationTrackGetKeyAnimation(self: Animation; trackIdx: int64; keyIdx: int64): string =
  if isNil(animationAnimationTrackGetKeyAnimationMethodBind):
    animationAnimationTrackGetKeyAnimationMethodBind = getMethod(
        cstring"Animation", cstring"animation_track_get_key_animation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationAnimationTrackGetKeyAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationAnimationTrackInsertKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationTrackInsertKey(self: Animation; trackIdx: int64; time: float64;
                            animation: string): int64 =
  if isNil(animationAnimationTrackInsertKeyMethodBind):
    animationAnimationTrackInsertKeyMethodBind = getMethod(cstring"Animation",
        cstring"animation_track_insert_key")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(time)
  var argToPassToGodot2 = toGodotString(animation)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationAnimationTrackInsertKeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var animationAnimationTrackSetKeyAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationTrackSetKeyAnimation(self: Animation; trackIdx: int64; keyIdx: int64;
                                  animation: string) =
  if isNil(animationAnimationTrackSetKeyAnimationMethodBind):
    animationAnimationTrackSetKeyAnimationMethodBind = getMethod(
        cstring"Animation", cstring"animation_track_set_key_animation")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var argToPassToGodot2 = toGodotString(animation)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  animationAnimationTrackSetKeyAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var animationAudioTrackGetKeyEndOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrackGetKeyEndOffset(self: Animation; trackIdx: int64; keyIdx: int64): float64 =
  if isNil(animationAudioTrackGetKeyEndOffsetMethodBind):
    animationAudioTrackGetKeyEndOffsetMethodBind = getMethod(cstring"Animation",
        cstring"audio_track_get_key_end_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationAudioTrackGetKeyEndOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationAudioTrackGetKeyStartOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrackGetKeyStartOffset(self: Animation; trackIdx: int64; keyIdx: int64): float64 =
  if isNil(animationAudioTrackGetKeyStartOffsetMethodBind):
    animationAudioTrackGetKeyStartOffsetMethodBind = getMethod(
        cstring"Animation", cstring"audio_track_get_key_start_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationAudioTrackGetKeyStartOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationAudioTrackGetKeyStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrackGetKeyStream(self: Animation; trackIdx: int64; keyIdx: int64): Resource =
  if isNil(animationAudioTrackGetKeyStreamMethodBind):
    animationAudioTrackGetKeyStreamMethodBind = getMethod(cstring"Animation",
        cstring"audio_track_get_key_stream")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationAudioTrackGetKeyStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationAudioTrackInsertKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrackInsertKey(self: Animation; trackIdx: int64; time: float64;
                        stream: Resource; startOffset: float64 = 0.0;
                        endOffset: float64 = 0.0): int64 =
  if isNil(animationAudioTrackInsertKeyMethodBind):
    animationAudioTrackInsertKeyMethodBind = getMethod(cstring"Animation",
        cstring"audio_track_insert_key")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(time)
  let argToPassToGodot2 = if not stream.isNil:
    stream.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(startOffset)
  argsToPassToGodot[][4] = unsafeAddr(endOffset)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationAudioTrackInsertKeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationAudioTrackSetKeyEndOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrackSetKeyEndOffset(self: Animation; trackIdx: int64; keyIdx: int64;
                              offset: float64) =
  if isNil(animationAudioTrackSetKeyEndOffsetMethodBind):
    animationAudioTrackSetKeyEndOffsetMethodBind = getMethod(cstring"Animation",
        cstring"audio_track_set_key_end_offset")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  argsToPassToGodot[][2] = unsafeAddr(offset)
  var ptrCallRet: pointer
  animationAudioTrackSetKeyEndOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationAudioTrackSetKeyStartOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrackSetKeyStartOffset(self: Animation; trackIdx: int64; keyIdx: int64;
                                offset: float64) =
  if isNil(animationAudioTrackSetKeyStartOffsetMethodBind):
    animationAudioTrackSetKeyStartOffsetMethodBind = getMethod(
        cstring"Animation", cstring"audio_track_set_key_start_offset")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  argsToPassToGodot[][2] = unsafeAddr(offset)
  var ptrCallRet: pointer
  animationAudioTrackSetKeyStartOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationAudioTrackSetKeyStreamMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioTrackSetKeyStream(self: Animation; trackIdx: int64; keyIdx: int64;
                           stream: Resource) =
  if isNil(animationAudioTrackSetKeyStreamMethodBind):
    animationAudioTrackSetKeyStreamMethodBind = getMethod(cstring"Animation",
        cstring"audio_track_set_key_stream")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  let argToPassToGodot2 = if not stream.isNil:
    stream.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  animationAudioTrackSetKeyStreamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackGetKeyInHandleMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackGetKeyInHandle(self: Animation; trackIdx: int64; keyIdx: int64): Vector2 =
  if isNil(animationBezierTrackGetKeyInHandleMethodBind):
    animationBezierTrackGetKeyInHandleMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_get_key_in_handle")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationBezierTrackGetKeyInHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackGetKeyOutHandleMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackGetKeyOutHandle(self: Animation; trackIdx: int64; keyIdx: int64): Vector2 =
  if isNil(animationBezierTrackGetKeyOutHandleMethodBind):
    animationBezierTrackGetKeyOutHandleMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_get_key_out_handle")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationBezierTrackGetKeyOutHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackGetKeyValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackGetKeyValue(self: Animation; trackIdx: int64; keyIdx: int64): float64 =
  if isNil(animationBezierTrackGetKeyValueMethodBind):
    animationBezierTrackGetKeyValueMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_get_key_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationBezierTrackGetKeyValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackInsertKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackInsertKey(self: Animation; trackIdx: int64; time: float64;
                         value: float64; inHandle: Vector2 = vec2(0.0, 0.0);
                         outHandle: Vector2 = vec2(0.0, 0.0)): int64 =
  if isNil(animationBezierTrackInsertKeyMethodBind):
    animationBezierTrackInsertKeyMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_insert_key")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(time)
  argsToPassToGodot[][2] = unsafeAddr(value)
  argsToPassToGodot[][3] = unsafeAddr(inHandle)
  argsToPassToGodot[][4] = unsafeAddr(outHandle)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationBezierTrackInsertKeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackInterpolateMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackInterpolate(self: Animation; trackIdx: int64; time: float64): float64 =
  if isNil(animationBezierTrackInterpolateMethodBind):
    animationBezierTrackInterpolateMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_interpolate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(time)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationBezierTrackInterpolateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackSetKeyInHandleMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackSetKeyInHandle(self: Animation; trackIdx: int64; keyIdx: int64;
                              inHandle: Vector2) =
  if isNil(animationBezierTrackSetKeyInHandleMethodBind):
    animationBezierTrackSetKeyInHandleMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_set_key_in_handle")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  argsToPassToGodot[][2] = unsafeAddr(inHandle)
  var ptrCallRet: pointer
  animationBezierTrackSetKeyInHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackSetKeyOutHandleMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackSetKeyOutHandle(self: Animation; trackIdx: int64; keyIdx: int64;
                               outHandle: Vector2) =
  if isNil(animationBezierTrackSetKeyOutHandleMethodBind):
    animationBezierTrackSetKeyOutHandleMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_set_key_out_handle")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  argsToPassToGodot[][2] = unsafeAddr(outHandle)
  var ptrCallRet: pointer
  animationBezierTrackSetKeyOutHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationBezierTrackSetKeyValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc bezierTrackSetKeyValue(self: Animation; trackIdx: int64; keyIdx: int64;
                           value: float64) =
  if isNil(animationBezierTrackSetKeyValueMethodBind):
    animationBezierTrackSetKeyValueMethodBind = getMethod(cstring"Animation",
        cstring"bezier_track_set_key_value")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  animationBezierTrackSetKeyValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: Animation) =
  if isNil(animationClearMethodBind):
    animationClearMethodBind = getMethod(cstring"Animation", cstring"clear")
  var ptrCallRet: pointer
  animationClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationCopyTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc copyTrack(self: Animation; trackIdx: int64; toAnimation: Animation) =
  if isNil(animationCopyTrackMethodBind):
    animationCopyTrackMethodBind = getMethod(cstring"Animation",
        cstring"copy_track")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  let argToPassToGodot1 = if not toAnimation.isNil:
    toAnimation.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  animationCopyTrackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var animationFindTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc findTrack(self: Animation; path: NodePath): int64 =
  if isNil(animationFindTrackMethodBind):
    animationFindTrackMethodBind = getMethod(cstring"Animation",
        cstring"find_track")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationFindTrackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var animationGetTrackCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTrackCount(self: Animation): int64 =
  if isNil(animationGetTrackCountMethodBind):
    animationGetTrackCountMethodBind = getMethod(cstring"Animation",
        cstring"get_track_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationGetTrackCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationMethodTrackGetKeyIndicesMethodBind {.threadvar.}: ptr GodotMethodBind
proc methodTrackGetKeyIndices(self: Animation; trackIdx: int64; timeSec: float64;
                             delta: float64): PoolIntArray =
  if isNil(animationMethodTrackGetKeyIndicesMethodBind):
    animationMethodTrackGetKeyIndicesMethodBind = getMethod(cstring"Animation",
        cstring"method_track_get_key_indices")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(timeSec)
  argsToPassToGodot[][2] = unsafeAddr(delta)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  animationMethodTrackGetKeyIndicesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var animationMethodTrackGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc methodTrackGetName(self: Animation; trackIdx: int64; keyIdx: int64): string =
  if isNil(animationMethodTrackGetNameMethodBind):
    animationMethodTrackGetNameMethodBind = getMethod(cstring"Animation",
        cstring"method_track_get_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationMethodTrackGetNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationMethodTrackGetParamsMethodBind {.threadvar.}: ptr GodotMethodBind
proc methodTrackGetParams(self: Animation; trackIdx: int64; keyIdx: int64): Array =
  if isNil(animationMethodTrackGetParamsMethodBind):
    animationMethodTrackGetParamsMethodBind = getMethod(cstring"Animation",
        cstring"method_track_get_params")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  animationMethodTrackGetParamsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var animationRemoveTrackMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeTrack(self: Animation; trackIdx: int64) =
  if isNil(animationRemoveTrackMethodBind):
    animationRemoveTrackMethodBind = getMethod(cstring"Animation",
        cstring"remove_track")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  animationRemoveTrackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackFindKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackFindKey(self: Animation; trackIdx: int64; time: float64; exact: bool = false): int64 =
  if isNil(animationTrackFindKeyMethodBind):
    animationTrackFindKeyMethodBind = getMethod(cstring"Animation",
        cstring"track_find_key")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(time)
  argsToPassToGodot[][2] = unsafeAddr(exact)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackFindKeyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackGetInterpolationLoopWrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetInterpolationLoopWrap(self: Animation; trackIdx: int64): bool =
  if isNil(animationTrackGetInterpolationLoopWrapMethodBind):
    animationTrackGetInterpolationLoopWrapMethodBind = getMethod(
        cstring"Animation", cstring"track_get_interpolation_loop_wrap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackGetInterpolationLoopWrapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackGetInterpolationTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetInterpolationType(self: Animation; trackIdx: int64): int64 =
  if isNil(animationTrackGetInterpolationTypeMethodBind):
    animationTrackGetInterpolationTypeMethodBind = getMethod(cstring"Animation",
        cstring"track_get_interpolation_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackGetInterpolationTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackGetKeyCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetKeyCount(self: Animation; trackIdx: int64): int64 =
  if isNil(animationTrackGetKeyCountMethodBind):
    animationTrackGetKeyCountMethodBind = getMethod(cstring"Animation",
        cstring"track_get_key_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackGetKeyCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackGetKeyTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetKeyTime(self: Animation; trackIdx: int64; keyIdx: int64): float64 =
  if isNil(animationTrackGetKeyTimeMethodBind):
    animationTrackGetKeyTimeMethodBind = getMethod(cstring"Animation",
        cstring"track_get_key_time")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackGetKeyTimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackGetKeyTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetKeyTransition(self: Animation; trackIdx: int64; keyIdx: int64): float64 =
  if isNil(animationTrackGetKeyTransitionMethodBind):
    animationTrackGetKeyTransitionMethodBind = getMethod(cstring"Animation",
        cstring"track_get_key_transition")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackGetKeyTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackGetKeyValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetKeyValue(self: Animation; trackIdx: int64; keyIdx: int64): Variant =
  if isNil(animationTrackGetKeyValueMethodBind):
    animationTrackGetKeyValueMethodBind = getMethod(cstring"Animation",
        cstring"track_get_key_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  animationTrackGetKeyValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var animationTrackGetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetPath(self: Animation; trackIdx: int64): NodePath =
  if isNil(animationTrackGetPathMethodBind):
    animationTrackGetPathMethodBind = getMethod(cstring"Animation",
        cstring"track_get_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  animationTrackGetPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var animationTrackGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackGetType(self: Animation; trackIdx: int64): int64 =
  if isNil(animationTrackGetTypeMethodBind):
    animationTrackGetTypeMethodBind = getMethod(cstring"Animation",
        cstring"track_get_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackGetTypeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackInsertKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackInsertKey(self: Animation; trackIdx: int64; time: float64; key: Variant;
                   transition: float64 = 1.0) =
  if isNil(animationTrackInsertKeyMethodBind):
    animationTrackInsertKeyMethodBind = getMethod(cstring"Animation",
        cstring"track_insert_key")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(time)
  argsToPassToGodot[][2] = key.godotVariant
  argsToPassToGodot[][3] = unsafeAddr(transition)
  var ptrCallRet: pointer
  animationTrackInsertKeyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackIsEnabled(self: Animation; trackIdx: int64): bool =
  if isNil(animationTrackIsEnabledMethodBind):
    animationTrackIsEnabledMethodBind = getMethod(cstring"Animation",
        cstring"track_is_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackIsEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackIsImportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackIsImported(self: Animation; trackIdx: int64): bool =
  if isNil(animationTrackIsImportedMethodBind):
    animationTrackIsImportedMethodBind = getMethod(cstring"Animation",
        cstring"track_is_imported")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTrackIsImportedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackMoveDownMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackMoveDown(self: Animation; trackIdx: int64) =
  if isNil(animationTrackMoveDownMethodBind):
    animationTrackMoveDownMethodBind = getMethod(cstring"Animation",
        cstring"track_move_down")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  animationTrackMoveDownMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackMoveToMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackMoveTo(self: Animation; trackIdx: int64; toIdx: int64) =
  if isNil(animationTrackMoveToMethodBind):
    animationTrackMoveToMethodBind = getMethod(cstring"Animation",
        cstring"track_move_to")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(toIdx)
  var ptrCallRet: pointer
  animationTrackMoveToMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackMoveUpMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackMoveUp(self: Animation; trackIdx: int64) =
  if isNil(animationTrackMoveUpMethodBind):
    animationTrackMoveUpMethodBind = getMethod(cstring"Animation",
        cstring"track_move_up")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  animationTrackMoveUpMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackRemoveKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackRemoveKey(self: Animation; trackIdx: int64; keyIdx: int64) =
  if isNil(animationTrackRemoveKeyMethodBind):
    animationTrackRemoveKeyMethodBind = getMethod(cstring"Animation",
        cstring"track_remove_key")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  var ptrCallRet: pointer
  animationTrackRemoveKeyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackRemoveKeyAtPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackRemoveKeyAtPosition(self: Animation; trackIdx: int64; position: float64) =
  if isNil(animationTrackRemoveKeyAtPositionMethodBind):
    animationTrackRemoveKeyAtPositionMethodBind = getMethod(cstring"Animation",
        cstring"track_remove_key_at_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  animationTrackRemoveKeyAtPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetEnabled(self: Animation; trackIdx: int64; enabled: bool) =
  if isNil(animationTrackSetEnabledMethodBind):
    animationTrackSetEnabledMethodBind = getMethod(cstring"Animation",
        cstring"track_set_enabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  animationTrackSetEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackSetImportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetImported(self: Animation; trackIdx: int64; imported: bool) =
  if isNil(animationTrackSetImportedMethodBind):
    animationTrackSetImportedMethodBind = getMethod(cstring"Animation",
        cstring"track_set_imported")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(imported)
  var ptrCallRet: pointer
  animationTrackSetImportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackSetInterpolationLoopWrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetInterpolationLoopWrap(self: Animation; trackIdx: int64;
                                  interpolation: bool) =
  if isNil(animationTrackSetInterpolationLoopWrapMethodBind):
    animationTrackSetInterpolationLoopWrapMethodBind = getMethod(
        cstring"Animation", cstring"track_set_interpolation_loop_wrap")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(interpolation)
  var ptrCallRet: pointer
  animationTrackSetInterpolationLoopWrapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackSetInterpolationTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetInterpolationType(self: Animation; trackIdx: int64; interpolation: int64) =
  if isNil(animationTrackSetInterpolationTypeMethodBind):
    animationTrackSetInterpolationTypeMethodBind = getMethod(cstring"Animation",
        cstring"track_set_interpolation_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(interpolation)
  var ptrCallRet: pointer
  animationTrackSetInterpolationTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackSetKeyTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetKeyTime(self: Animation; trackIdx: int64; keyIdx: int64; time: float64) =
  if isNil(animationTrackSetKeyTimeMethodBind):
    animationTrackSetKeyTimeMethodBind = getMethod(cstring"Animation",
        cstring"track_set_key_time")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  argsToPassToGodot[][2] = unsafeAddr(time)
  var ptrCallRet: pointer
  animationTrackSetKeyTimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackSetKeyTransitionMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetKeyTransition(self: Animation; trackIdx: int64; keyIdx: int64;
                          transition: float64) =
  if isNil(animationTrackSetKeyTransitionMethodBind):
    animationTrackSetKeyTransitionMethodBind = getMethod(cstring"Animation",
        cstring"track_set_key_transition")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(keyIdx)
  argsToPassToGodot[][2] = unsafeAddr(transition)
  var ptrCallRet: pointer
  animationTrackSetKeyTransitionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackSetKeyValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetKeyValue(self: Animation; trackIdx: int64; key: int64; value: Variant) =
  if isNil(animationTrackSetKeyValueMethodBind):
    animationTrackSetKeyValueMethodBind = getMethod(cstring"Animation",
        cstring"track_set_key_value")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(key)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  animationTrackSetKeyValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTrackSetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSetPath(self: Animation; trackIdx: int64; path: NodePath) =
  if isNil(animationTrackSetPathMethodBind):
    animationTrackSetPathMethodBind = getMethod(cstring"Animation",
        cstring"track_set_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = path.godotNodePath
  var ptrCallRet: pointer
  animationTrackSetPathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationTrackSwapMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackSwap(self: Animation; trackIdx: int64; withIdx: int64) =
  if isNil(animationTrackSwapMethodBind):
    animationTrackSwapMethodBind = getMethod(cstring"Animation",
        cstring"track_swap")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(withIdx)
  var ptrCallRet: pointer
  animationTrackSwapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var animationTransformTrackInsertKeyMethodBind {.threadvar.}: ptr GodotMethodBind
proc transformTrackInsertKey(self: Animation; trackIdx: int64; time: float64;
                            location: Vector3; rotation: Quat; scale: Vector3): int64 =
  if isNil(animationTransformTrackInsertKeyMethodBind):
    animationTransformTrackInsertKeyMethodBind = getMethod(cstring"Animation",
        cstring"transform_track_insert_key")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(time)
  argsToPassToGodot[][2] = unsafeAddr(location)
  argsToPassToGodot[][3] = unsafeAddr(rotation)
  argsToPassToGodot[][4] = unsafeAddr(scale)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationTransformTrackInsertKeyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationTransformTrackInterpolateMethodBind {.threadvar.}: ptr GodotMethodBind
proc transformTrackInterpolate(self: Animation; trackIdx: int64; timeSec: float64): Array =
  if isNil(animationTransformTrackInterpolateMethodBind):
    animationTransformTrackInterpolateMethodBind = getMethod(cstring"Animation",
        cstring"transform_track_interpolate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(timeSec)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  animationTransformTrackInterpolateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var animationValueTrackGetKeyIndicesMethodBind {.threadvar.}: ptr GodotMethodBind
proc valueTrackGetKeyIndices(self: Animation; trackIdx: int64; timeSec: float64;
                            delta: float64): PoolIntArray =
  if isNil(animationValueTrackGetKeyIndicesMethodBind):
    animationValueTrackGetKeyIndicesMethodBind = getMethod(cstring"Animation",
        cstring"value_track_get_key_indices")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(timeSec)
  argsToPassToGodot[][2] = unsafeAddr(delta)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  animationValueTrackGetKeyIndicesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var animationValueTrackGetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc valueTrackGetUpdateMode(self: Animation; trackIdx: int64): int64 =
  if isNil(animationValueTrackGetUpdateModeMethodBind):
    animationValueTrackGetUpdateModeMethodBind = getMethod(cstring"Animation",
        cstring"value_track_get_update_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationValueTrackGetUpdateModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationValueTrackSetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc valueTrackSetUpdateMode(self: Animation; trackIdx: int64; mode: int64) =
  if isNil(animationValueTrackSetUpdateModeMethodBind):
    animationValueTrackSetUpdateModeMethodBind = getMethod(cstring"Animation",
        cstring"value_track_set_update_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(trackIdx)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  animationValueTrackSetUpdateModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
