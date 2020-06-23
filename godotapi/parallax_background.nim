
import
  godot, godottypes, godotinternal, canvas_layer

export
  godottypes, canvas_layer

proc scrollBaseOffset*(self: ParallaxBackground): Vector2 {.gcsafe, locks: 0.}
proc `scrollBaseOffset=`*(self: ParallaxBackground; val: Vector2) {.gcsafe, locks: 0.}
proc scrollBaseScale*(self: ParallaxBackground): Vector2 {.gcsafe, locks: 0.}
proc `scrollBaseScale=`*(self: ParallaxBackground; val: Vector2) {.gcsafe, locks: 0.}
proc scrollIgnoreCameraZoom*(self: ParallaxBackground): bool {.gcsafe, locks: 0.}
proc `scrollIgnoreCameraZoom=`*(self: ParallaxBackground; val: bool) {.gcsafe,
    locks: 0.}
proc scrollLimitBegin*(self: ParallaxBackground): Vector2 {.gcsafe, locks: 0.}
proc `scrollLimitBegin=`*(self: ParallaxBackground; val: Vector2) {.gcsafe, locks: 0.}
proc scrollLimitEnd*(self: ParallaxBackground): Vector2 {.gcsafe, locks: 0.}
proc `scrollLimitEnd=`*(self: ParallaxBackground; val: Vector2) {.gcsafe, locks: 0.}
proc scrollOffset*(self: ParallaxBackground): Vector2 {.gcsafe, locks: 0.}
proc `scrollOffset=`*(self: ParallaxBackground; val: Vector2) {.gcsafe, locks: 0.}
method cameraMoved*(self: ParallaxBackground; arg0: Transform2D; arg1: Vector2) {.
    gcsafe, locks: 0, base.}
var parallaxBackgroundGetScrollBaseOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollBaseOffset(self: ParallaxBackground): Vector2 =
  if isNil(parallaxBackgroundGetScrollBaseOffsetMethodBind):
    parallaxBackgroundGetScrollBaseOffsetMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"get_scroll_base_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxBackgroundGetScrollBaseOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var parallaxBackgroundSetScrollBaseOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollBaseOffset=`(self: ParallaxBackground; val: Vector2) =
  if isNil(parallaxBackgroundSetScrollBaseOffsetMethodBind):
    parallaxBackgroundSetScrollBaseOffsetMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"set_scroll_base_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxBackgroundSetScrollBaseOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxBackgroundGetScrollBaseScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollBaseScale(self: ParallaxBackground): Vector2 =
  if isNil(parallaxBackgroundGetScrollBaseScaleMethodBind):
    parallaxBackgroundGetScrollBaseScaleMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"get_scroll_base_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxBackgroundGetScrollBaseScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var parallaxBackgroundSetScrollBaseScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollBaseScale=`(self: ParallaxBackground; val: Vector2) =
  if isNil(parallaxBackgroundSetScrollBaseScaleMethodBind):
    parallaxBackgroundSetScrollBaseScaleMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"set_scroll_base_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxBackgroundSetScrollBaseScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxBackgroundIsIgnoreCameraZoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollIgnoreCameraZoom(self: ParallaxBackground): bool =
  if isNil(parallaxBackgroundIsIgnoreCameraZoomMethodBind):
    parallaxBackgroundIsIgnoreCameraZoomMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"is_ignore_camera_zoom")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxBackgroundIsIgnoreCameraZoomMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var parallaxBackgroundSetIgnoreCameraZoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollIgnoreCameraZoom=`(self: ParallaxBackground; val: bool) =
  if isNil(parallaxBackgroundSetIgnoreCameraZoomMethodBind):
    parallaxBackgroundSetIgnoreCameraZoomMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"set_ignore_camera_zoom")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxBackgroundSetIgnoreCameraZoomMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxBackgroundGetLimitBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollLimitBegin(self: ParallaxBackground): Vector2 =
  if isNil(parallaxBackgroundGetLimitBeginMethodBind):
    parallaxBackgroundGetLimitBeginMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"get_limit_begin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxBackgroundGetLimitBeginMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var parallaxBackgroundSetLimitBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollLimitBegin=`(self: ParallaxBackground; val: Vector2) =
  if isNil(parallaxBackgroundSetLimitBeginMethodBind):
    parallaxBackgroundSetLimitBeginMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"set_limit_begin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxBackgroundSetLimitBeginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxBackgroundGetLimitEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollLimitEnd(self: ParallaxBackground): Vector2 =
  if isNil(parallaxBackgroundGetLimitEndMethodBind):
    parallaxBackgroundGetLimitEndMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"get_limit_end")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxBackgroundGetLimitEndMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var parallaxBackgroundSetLimitEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollLimitEnd=`(self: ParallaxBackground; val: Vector2) =
  if isNil(parallaxBackgroundSetLimitEndMethodBind):
    parallaxBackgroundSetLimitEndMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"set_limit_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxBackgroundSetLimitEndMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxBackgroundGetScrollOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollOffset(self: ParallaxBackground): Vector2 =
  if isNil(parallaxBackgroundGetScrollOffsetMethodBind):
    parallaxBackgroundGetScrollOffsetMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"get_scroll_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxBackgroundGetScrollOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var parallaxBackgroundSetScrollOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollOffset=`(self: ParallaxBackground; val: Vector2) =
  if isNil(parallaxBackgroundSetScrollOffsetMethodBind):
    parallaxBackgroundSetScrollOffsetMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"set_scroll_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxBackgroundSetScrollOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxBackgroundUnderscorecameraMovedMethodBind {.threadvar.}: ptr GodotMethodBind
method cameraMoved(self: ParallaxBackground; arg0: Transform2D; arg1: Vector2) =
  if isNil(parallaxBackgroundUnderscorecameraMovedMethodBind):
    parallaxBackgroundUnderscorecameraMovedMethodBind = getMethod(
        cstring"ParallaxBackground", cstring"_camera_moved")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  parallaxBackgroundUnderscorecameraMovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
