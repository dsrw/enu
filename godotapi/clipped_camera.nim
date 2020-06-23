
import
  godot, godottypes, godotinternal, camera

export
  godottypes, camera

const
  CLIP_PROCESS_IDLE* = 1'i64
  CLIP_PROCESS_PHYSICS* = 0'i64
proc clipToAreas*(self: ClippedCamera): bool {.gcsafe, locks: 0.}
proc `clipToAreas=`*(self: ClippedCamera; val: bool) {.gcsafe, locks: 0.}
proc clipToBodies*(self: ClippedCamera): bool {.gcsafe, locks: 0.}
proc `clipToBodies=`*(self: ClippedCamera; val: bool) {.gcsafe, locks: 0.}
proc collisionMask*(self: ClippedCamera): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: ClippedCamera; val: int64) {.gcsafe, locks: 0.}
proc margin*(self: ClippedCamera): float64 {.gcsafe, locks: 0.}
proc `margin=`*(self: ClippedCamera; val: float64) {.gcsafe, locks: 0.}
proc processMode*(self: ClippedCamera): int64 {.gcsafe, locks: 0.}
proc `processMode=`*(self: ClippedCamera; val: int64) {.gcsafe, locks: 0.}
proc addException*(self: ClippedCamera; node: Object) {.gcsafe, locks: 0.}
proc addExceptionRid*(self: ClippedCamera; rid: RID) {.gcsafe, locks: 0.}
proc clearExceptions*(self: ClippedCamera) {.gcsafe, locks: 0.}
proc getClipOffset*(self: ClippedCamera): float64 {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: ClippedCamera; bit: int64): bool {.gcsafe, locks: 0.}
proc removeException*(self: ClippedCamera; node: Object) {.gcsafe, locks: 0.}
proc removeExceptionRid*(self: ClippedCamera; rid: RID) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: ClippedCamera; bit: int64; value: bool) {.gcsafe,
    locks: 0.}
var clippedCameraIsClipToAreasEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc clipToAreas(self: ClippedCamera): bool =
  if isNil(clippedCameraIsClipToAreasEnabledMethodBind):
    clippedCameraIsClipToAreasEnabledMethodBind = getMethod(
        cstring"ClippedCamera", cstring"is_clip_to_areas_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  clippedCameraIsClipToAreasEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var clippedCameraSetClipToAreasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `clipToAreas=`(self: ClippedCamera; val: bool) =
  if isNil(clippedCameraSetClipToAreasMethodBind):
    clippedCameraSetClipToAreasMethodBind = getMethod(cstring"ClippedCamera",
        cstring"set_clip_to_areas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  clippedCameraSetClipToAreasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraIsClipToBodiesEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc clipToBodies(self: ClippedCamera): bool =
  if isNil(clippedCameraIsClipToBodiesEnabledMethodBind):
    clippedCameraIsClipToBodiesEnabledMethodBind = getMethod(
        cstring"ClippedCamera", cstring"is_clip_to_bodies_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  clippedCameraIsClipToBodiesEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var clippedCameraSetClipToBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `clipToBodies=`(self: ClippedCamera; val: bool) =
  if isNil(clippedCameraSetClipToBodiesMethodBind):
    clippedCameraSetClipToBodiesMethodBind = getMethod(cstring"ClippedCamera",
        cstring"set_clip_to_bodies")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  clippedCameraSetClipToBodiesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: ClippedCamera): int64 =
  if isNil(clippedCameraGetCollisionMaskMethodBind):
    clippedCameraGetCollisionMaskMethodBind = getMethod(cstring"ClippedCamera",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  clippedCameraGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var clippedCameraSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: ClippedCamera; val: int64) =
  if isNil(clippedCameraSetCollisionMaskMethodBind):
    clippedCameraSetCollisionMaskMethodBind = getMethod(cstring"ClippedCamera",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  clippedCameraSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc margin(self: ClippedCamera): float64 =
  if isNil(clippedCameraGetMarginMethodBind):
    clippedCameraGetMarginMethodBind = getMethod(cstring"ClippedCamera",
        cstring"get_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  clippedCameraGetMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var clippedCameraSetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `margin=`(self: ClippedCamera; val: float64) =
  if isNil(clippedCameraSetMarginMethodBind):
    clippedCameraSetMarginMethodBind = getMethod(cstring"ClippedCamera",
        cstring"set_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  clippedCameraSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var clippedCameraGetProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc processMode(self: ClippedCamera): int64 =
  if isNil(clippedCameraGetProcessModeMethodBind):
    clippedCameraGetProcessModeMethodBind = getMethod(cstring"ClippedCamera",
        cstring"get_process_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  clippedCameraGetProcessModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var clippedCameraSetProcessModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `processMode=`(self: ClippedCamera; val: int64) =
  if isNil(clippedCameraSetProcessModeMethodBind):
    clippedCameraSetProcessModeMethodBind = getMethod(cstring"ClippedCamera",
        cstring"set_process_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  clippedCameraSetProcessModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraAddExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc addException(self: ClippedCamera; node: Object) =
  if isNil(clippedCameraAddExceptionMethodBind):
    clippedCameraAddExceptionMethodBind = getMethod(cstring"ClippedCamera",
        cstring"add_exception")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  clippedCameraAddExceptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraAddExceptionRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc addExceptionRid(self: ClippedCamera; rid: RID) =
  if isNil(clippedCameraAddExceptionRidMethodBind):
    clippedCameraAddExceptionRidMethodBind = getMethod(cstring"ClippedCamera",
        cstring"add_exception_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  clippedCameraAddExceptionRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraClearExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearExceptions(self: ClippedCamera) =
  if isNil(clippedCameraClearExceptionsMethodBind):
    clippedCameraClearExceptionsMethodBind = getMethod(cstring"ClippedCamera",
        cstring"clear_exceptions")
  var ptrCallRet: pointer
  clippedCameraClearExceptionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var clippedCameraGetClipOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClipOffset(self: ClippedCamera): float64 =
  if isNil(clippedCameraGetClipOffsetMethodBind):
    clippedCameraGetClipOffsetMethodBind = getMethod(cstring"ClippedCamera",
        cstring"get_clip_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  clippedCameraGetClipOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var clippedCameraGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: ClippedCamera; bit: int64): bool =
  if isNil(clippedCameraGetCollisionMaskBitMethodBind):
    clippedCameraGetCollisionMaskBitMethodBind = getMethod(
        cstring"ClippedCamera", cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  clippedCameraGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraRemoveExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeException(self: ClippedCamera; node: Object) =
  if isNil(clippedCameraRemoveExceptionMethodBind):
    clippedCameraRemoveExceptionMethodBind = getMethod(cstring"ClippedCamera",
        cstring"remove_exception")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  clippedCameraRemoveExceptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraRemoveExceptionRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeExceptionRid(self: ClippedCamera; rid: RID) =
  if isNil(clippedCameraRemoveExceptionRidMethodBind):
    clippedCameraRemoveExceptionRidMethodBind = getMethod(cstring"ClippedCamera",
        cstring"remove_exception_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  clippedCameraRemoveExceptionRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var clippedCameraSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: ClippedCamera; bit: int64; value: bool) =
  if isNil(clippedCameraSetCollisionMaskBitMethodBind):
    clippedCameraSetCollisionMaskBitMethodBind = getMethod(
        cstring"ClippedCamera", cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  clippedCameraSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
