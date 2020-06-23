
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

proc customViewport*(self: CanvasLayer): Node {.gcsafe, locks: 0.}
proc `customViewport=`*(self: CanvasLayer; val: Node) {.gcsafe, locks: 0.}
proc followViewportEnable*(self: CanvasLayer): bool {.gcsafe, locks: 0.}
proc `followViewportEnable=`*(self: CanvasLayer; val: bool) {.gcsafe, locks: 0.}
proc followViewportScale*(self: CanvasLayer): float64 {.gcsafe, locks: 0.}
proc `followViewportScale=`*(self: CanvasLayer; val: float64) {.gcsafe, locks: 0.}
proc layer*(self: CanvasLayer): int64 {.gcsafe, locks: 0.}
proc `layer=`*(self: CanvasLayer; val: int64) {.gcsafe, locks: 0.}
proc offset*(self: CanvasLayer): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: CanvasLayer; val: Vector2) {.gcsafe, locks: 0.}
proc rotation*(self: CanvasLayer): float64 {.gcsafe, locks: 0.}
proc `rotation=`*(self: CanvasLayer; val: float64) {.gcsafe, locks: 0.}
proc rotationDegrees*(self: CanvasLayer): float64 {.gcsafe, locks: 0.}
proc `rotationDegrees=`*(self: CanvasLayer; val: float64) {.gcsafe, locks: 0.}
proc scale*(self: CanvasLayer): Vector2 {.gcsafe, locks: 0.}
proc `scale=`*(self: CanvasLayer; val: Vector2) {.gcsafe, locks: 0.}
proc transform*(self: CanvasLayer): Transform2D {.gcsafe, locks: 0.}
proc `transform=`*(self: CanvasLayer; val: Transform2D) {.gcsafe, locks: 0.}
proc getCanvas*(self: CanvasLayer): RID {.gcsafe, locks: 0.}
var canvasLayerGetCustomViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc customViewport(self: CanvasLayer): Node =
  if isNil(canvasLayerGetCustomViewportMethodBind):
    canvasLayerGetCustomViewportMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_custom_viewport")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  canvasLayerGetCustomViewportMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var canvasLayerSetCustomViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customViewport=`(self: CanvasLayer; val: Node) =
  if isNil(canvasLayerSetCustomViewportMethodBind):
    canvasLayerSetCustomViewportMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_custom_viewport")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  canvasLayerSetCustomViewportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasLayerIsFollowingViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc followViewportEnable(self: CanvasLayer): bool =
  if isNil(canvasLayerIsFollowingViewportMethodBind):
    canvasLayerIsFollowingViewportMethodBind = getMethod(cstring"CanvasLayer",
        cstring"is_following_viewport")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerIsFollowingViewportMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasLayerSetFollowViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc `followViewportEnable=`(self: CanvasLayer; val: bool) =
  if isNil(canvasLayerSetFollowViewportMethodBind):
    canvasLayerSetFollowViewportMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_follow_viewport")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetFollowViewportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasLayerGetFollowViewportScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc followViewportScale(self: CanvasLayer): float64 =
  if isNil(canvasLayerGetFollowViewportScaleMethodBind):
    canvasLayerGetFollowViewportScaleMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_follow_viewport_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetFollowViewportScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasLayerSetFollowViewportScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `followViewportScale=`(self: CanvasLayer; val: float64) =
  if isNil(canvasLayerSetFollowViewportScaleMethodBind):
    canvasLayerSetFollowViewportScaleMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_follow_viewport_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetFollowViewportScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasLayerGetLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc layer(self: CanvasLayer): int64 =
  if isNil(canvasLayerGetLayerMethodBind):
    canvasLayerGetLayerMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasLayerSetLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `layer=`(self: CanvasLayer; val: int64) =
  if isNil(canvasLayerSetLayerMethodBind):
    canvasLayerSetLayerMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetLayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var canvasLayerGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: CanvasLayer): Vector2 =
  if isNil(canvasLayerGetOffsetMethodBind):
    canvasLayerGetOffsetMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasLayerSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: CanvasLayer; val: Vector2) =
  if isNil(canvasLayerSetOffsetMethodBind):
    canvasLayerSetOffsetMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasLayerGetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotation(self: CanvasLayer): float64 =
  if isNil(canvasLayerGetRotationMethodBind):
    canvasLayerGetRotationMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasLayerSetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotation=`(self: CanvasLayer; val: float64) =
  if isNil(canvasLayerSetRotationMethodBind):
    canvasLayerSetRotationMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetRotationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasLayerGetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotationDegrees(self: CanvasLayer): float64 =
  if isNil(canvasLayerGetRotationDegreesMethodBind):
    canvasLayerGetRotationDegreesMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetRotationDegreesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasLayerSetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotationDegrees=`(self: CanvasLayer; val: float64) =
  if isNil(canvasLayerSetRotationDegreesMethodBind):
    canvasLayerSetRotationDegreesMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetRotationDegreesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasLayerGetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc scale(self: CanvasLayer): Vector2 =
  if isNil(canvasLayerGetScaleMethodBind):
    canvasLayerGetScaleMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasLayerSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scale=`(self: CanvasLayer; val: Vector2) =
  if isNil(canvasLayerSetScaleMethodBind):
    canvasLayerSetScaleMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var canvasLayerGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform(self: CanvasLayer): Transform2D =
  if isNil(canvasLayerGetTransformMethodBind):
    canvasLayerGetTransformMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasLayerSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform=`(self: CanvasLayer; val: Transform2D) =
  if isNil(canvasLayerSetTransformMethodBind):
    canvasLayerSetTransformMethodBind = getMethod(cstring"CanvasLayer",
        cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasLayerSetTransformMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasLayerGetCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCanvas(self: CanvasLayer): RID =
  if isNil(canvasLayerGetCanvasMethodBind):
    canvasLayerGetCanvasMethodBind = getMethod(cstring"CanvasLayer",
        cstring"get_canvas")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasLayerGetCanvasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
