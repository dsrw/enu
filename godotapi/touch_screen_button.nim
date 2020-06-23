
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  VISIBILITY_ALWAYS* = 0'i64
  VISIBILITY_TOUCHSCREEN_ONLY* = 1'i64
proc action*(self: TouchScreenButton): string {.gcsafe, locks: 0.}
proc `action=`*(self: TouchScreenButton; val: string) {.gcsafe, locks: 0.}
proc bitmask*(self: TouchScreenButton): BitMap {.gcsafe, locks: 0.}
proc `bitmask=`*(self: TouchScreenButton; val: BitMap) {.gcsafe, locks: 0.}
proc normal*(self: TouchScreenButton): Texture {.gcsafe, locks: 0.}
proc `normal=`*(self: TouchScreenButton; val: Texture) {.gcsafe, locks: 0.}
proc passbyPress*(self: TouchScreenButton): bool {.gcsafe, locks: 0.}
proc `passbyPress=`*(self: TouchScreenButton; val: bool) {.gcsafe, locks: 0.}
proc pressed*(self: TouchScreenButton): Texture {.gcsafe, locks: 0.}
proc `pressed=`*(self: TouchScreenButton; val: Texture) {.gcsafe, locks: 0.}
proc shape*(self: TouchScreenButton): Shape2D {.gcsafe, locks: 0.}
proc `shape=`*(self: TouchScreenButton; val: Shape2D) {.gcsafe, locks: 0.}
proc shapeCentered*(self: TouchScreenButton): bool {.gcsafe, locks: 0.}
proc `shapeCentered=`*(self: TouchScreenButton; val: bool) {.gcsafe, locks: 0.}
proc shapeVisible*(self: TouchScreenButton): bool {.gcsafe, locks: 0.}
proc `shapeVisible=`*(self: TouchScreenButton; val: bool) {.gcsafe, locks: 0.}
proc visibilityMode*(self: TouchScreenButton): int64 {.gcsafe, locks: 0.}
proc `visibilityMode=`*(self: TouchScreenButton; val: int64) {.gcsafe, locks: 0.}
method input*(self: TouchScreenButton; event: InputEvent) {.gcsafe, locks: 0.}
proc isPressed*(self: TouchScreenButton): bool {.gcsafe, locks: 0.}
var touchScreenButtonGetActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc action(self: TouchScreenButton): string =
  if isNil(touchScreenButtonGetActionMethodBind):
    touchScreenButtonGetActionMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"get_action")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  touchScreenButtonGetActionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var touchScreenButtonSetActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `action=`(self: TouchScreenButton; val: string) =
  if isNil(touchScreenButtonSetActionMethodBind):
    touchScreenButtonSetActionMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"set_action")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  touchScreenButtonSetActionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var touchScreenButtonGetBitmaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc bitmask(self: TouchScreenButton): BitMap =
  if isNil(touchScreenButtonGetBitmaskMethodBind):
    touchScreenButtonGetBitmaskMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"get_bitmask")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  touchScreenButtonGetBitmaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var touchScreenButtonSetBitmaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bitmask=`(self: TouchScreenButton; val: BitMap) =
  if isNil(touchScreenButtonSetBitmaskMethodBind):
    touchScreenButtonSetBitmaskMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"set_bitmask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  touchScreenButtonSetBitmaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc normal(self: TouchScreenButton): Texture =
  if isNil(touchScreenButtonGetTextureMethodBind):
    touchScreenButtonGetTextureMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  touchScreenButtonGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var touchScreenButtonSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normal=`(self: TouchScreenButton; val: Texture) =
  if isNil(touchScreenButtonSetTextureMethodBind):
    touchScreenButtonSetTextureMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  touchScreenButtonSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonIsPassbyPressEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc passbyPress(self: TouchScreenButton): bool =
  if isNil(touchScreenButtonIsPassbyPressEnabledMethodBind):
    touchScreenButtonIsPassbyPressEnabledMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"is_passby_press_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  touchScreenButtonIsPassbyPressEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var touchScreenButtonSetPassbyPressMethodBind {.threadvar.}: ptr GodotMethodBind
proc `passbyPress=`(self: TouchScreenButton; val: bool) =
  if isNil(touchScreenButtonSetPassbyPressMethodBind):
    touchScreenButtonSetPassbyPressMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"set_passby_press")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  touchScreenButtonSetPassbyPressMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonGetTexturePressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressed(self: TouchScreenButton): Texture =
  if isNil(touchScreenButtonGetTexturePressedMethodBind):
    touchScreenButtonGetTexturePressedMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"get_texture_pressed")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  touchScreenButtonGetTexturePressedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var touchScreenButtonSetTexturePressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressed=`(self: TouchScreenButton; val: Texture) =
  if isNil(touchScreenButtonSetTexturePressedMethodBind):
    touchScreenButtonSetTexturePressedMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"set_texture_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  touchScreenButtonSetTexturePressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shape(self: TouchScreenButton): Shape2D =
  if isNil(touchScreenButtonGetShapeMethodBind):
    touchScreenButtonGetShapeMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"get_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  touchScreenButtonGetShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var touchScreenButtonSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shape=`(self: TouchScreenButton; val: Shape2D) =
  if isNil(touchScreenButtonSetShapeMethodBind):
    touchScreenButtonSetShapeMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"set_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  touchScreenButtonSetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonIsShapeCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeCentered(self: TouchScreenButton): bool =
  if isNil(touchScreenButtonIsShapeCenteredMethodBind):
    touchScreenButtonIsShapeCenteredMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"is_shape_centered")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  touchScreenButtonIsShapeCenteredMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var touchScreenButtonSetShapeCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shapeCentered=`(self: TouchScreenButton; val: bool) =
  if isNil(touchScreenButtonSetShapeCenteredMethodBind):
    touchScreenButtonSetShapeCenteredMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"set_shape_centered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  touchScreenButtonSetShapeCenteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonIsShapeVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeVisible(self: TouchScreenButton): bool =
  if isNil(touchScreenButtonIsShapeVisibleMethodBind):
    touchScreenButtonIsShapeVisibleMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"is_shape_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  touchScreenButtonIsShapeVisibleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var touchScreenButtonSetShapeVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shapeVisible=`(self: TouchScreenButton; val: bool) =
  if isNil(touchScreenButtonSetShapeVisibleMethodBind):
    touchScreenButtonSetShapeVisibleMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"set_shape_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  touchScreenButtonSetShapeVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonGetVisibilityModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc visibilityMode(self: TouchScreenButton): int64 =
  if isNil(touchScreenButtonGetVisibilityModeMethodBind):
    touchScreenButtonGetVisibilityModeMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"get_visibility_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  touchScreenButtonGetVisibilityModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var touchScreenButtonSetVisibilityModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visibilityMode=`(self: TouchScreenButton; val: int64) =
  if isNil(touchScreenButtonSetVisibilityModeMethodBind):
    touchScreenButtonSetVisibilityModeMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"set_visibility_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  touchScreenButtonSetVisibilityModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonUnderscoreinputMethodBind {.threadvar.}: ptr GodotMethodBind
method input(self: TouchScreenButton; event: InputEvent) =
  if isNil(touchScreenButtonUnderscoreinputMethodBind):
    touchScreenButtonUnderscoreinputMethodBind = getMethod(
        cstring"TouchScreenButton", cstring"_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  touchScreenButtonUnderscoreinputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var touchScreenButtonIsPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPressed(self: TouchScreenButton): bool =
  if isNil(touchScreenButtonIsPressedMethodBind):
    touchScreenButtonIsPressedMethodBind = getMethod(cstring"TouchScreenButton",
        cstring"is_pressed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  touchScreenButtonIsPressedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
