
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  NOTIFICATION_POPUP_HIDE* = 81'i64
  NOTIFICATION_POST_POPUP* = 80'i64
proc popupExclusive*(self: Popup): bool {.gcsafe, locks: 0.}
proc `popupExclusive=`*(self: Popup; val: bool) {.gcsafe, locks: 0.}
proc popup*(self: Popup; bounds: Rect2 = initRect2(0.0, 0.0, 0.0, 0.0)) {.gcsafe, locks: 0.}
proc popupCentered*(self: Popup; size: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc popupCenteredClamped*(self: Popup; size: Vector2 = vec2(0.0, 0.0);
                          fallbackRatio: float64 = 0.75) {.gcsafe, locks: 0.}
proc popupCenteredMinsize*(self: Popup; minsize: Vector2 = vec2(0.0, 0.0)) {.gcsafe,
    locks: 0.}
proc popupCenteredRatio*(self: Popup; ratio: float64 = 0.75) {.gcsafe, locks: 0.}
proc setAsMinsize*(self: Popup) {.gcsafe, locks: 0.}
var popupIsExclusiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc popupExclusive(self: Popup): bool =
  if isNil(popupIsExclusiveMethodBind):
    popupIsExclusiveMethodBind = getMethod(cstring"Popup", cstring"is_exclusive")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  popupIsExclusiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var popupSetExclusiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `popupExclusive=`(self: Popup; val: bool) =
  if isNil(popupSetExclusiveMethodBind):
    popupSetExclusiveMethodBind = getMethod(cstring"Popup", cstring"set_exclusive")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  popupSetExclusiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var popupPopupMethodBind {.threadvar.}: ptr GodotMethodBind
proc popup(self: Popup; bounds: Rect2 = initRect2(0.0, 0.0, 0.0, 0.0)) =
  if isNil(popupPopupMethodBind):
    popupPopupMethodBind = getMethod(cstring"Popup", cstring"popup")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bounds)
  var ptrCallRet: pointer
  popupPopupMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var popupPopupCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc popupCentered(self: Popup; size: Vector2 = vec2(0.0, 0.0)) =
  if isNil(popupPopupCenteredMethodBind):
    popupPopupCenteredMethodBind = getMethod(cstring"Popup",
        cstring"popup_centered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  popupPopupCenteredMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var popupPopupCenteredClampedMethodBind {.threadvar.}: ptr GodotMethodBind
proc popupCenteredClamped(self: Popup; size: Vector2 = vec2(0.0, 0.0);
                         fallbackRatio: float64 = 0.75) =
  if isNil(popupPopupCenteredClampedMethodBind):
    popupPopupCenteredClampedMethodBind = getMethod(cstring"Popup",
        cstring"popup_centered_clamped")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  argsToPassToGodot[][1] = unsafeAddr(fallbackRatio)
  var ptrCallRet: pointer
  popupPopupCenteredClampedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupPopupCenteredMinsizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc popupCenteredMinsize(self: Popup; minsize: Vector2 = vec2(0.0, 0.0)) =
  if isNil(popupPopupCenteredMinsizeMethodBind):
    popupPopupCenteredMinsizeMethodBind = getMethod(cstring"Popup",
        cstring"popup_centered_minsize")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(minsize)
  var ptrCallRet: pointer
  popupPopupCenteredMinsizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var popupPopupCenteredRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc popupCenteredRatio(self: Popup; ratio: float64 = 0.75) =
  if isNil(popupPopupCenteredRatioMethodBind):
    popupPopupCenteredRatioMethodBind = getMethod(cstring"Popup",
        cstring"popup_centered_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ratio)
  var ptrCallRet: pointer
  popupPopupCenteredRatioMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var popupSetAsMinsizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAsMinsize(self: Popup) =
  if isNil(popupSetAsMinsizeMethodBind):
    popupSetAsMinsizeMethodBind = getMethod(cstring"Popup",
        cstring"set_as_minsize")
  var ptrCallRet: pointer
  popupSetAsMinsizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
