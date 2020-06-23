
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc motionMirroring*(self: ParallaxLayer): Vector2 {.gcsafe, locks: 0.}
proc `motionMirroring=`*(self: ParallaxLayer; val: Vector2) {.gcsafe, locks: 0.}
proc motionOffset*(self: ParallaxLayer): Vector2 {.gcsafe, locks: 0.}
proc `motionOffset=`*(self: ParallaxLayer; val: Vector2) {.gcsafe, locks: 0.}
proc motionScale*(self: ParallaxLayer): Vector2 {.gcsafe, locks: 0.}
proc `motionScale=`*(self: ParallaxLayer; val: Vector2) {.gcsafe, locks: 0.}
var parallaxLayerGetMirroringMethodBind {.threadvar.}: ptr GodotMethodBind
proc motionMirroring(self: ParallaxLayer): Vector2 =
  if isNil(parallaxLayerGetMirroringMethodBind):
    parallaxLayerGetMirroringMethodBind = getMethod(cstring"ParallaxLayer",
        cstring"get_mirroring")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxLayerGetMirroringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var parallaxLayerSetMirroringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `motionMirroring=`(self: ParallaxLayer; val: Vector2) =
  if isNil(parallaxLayerSetMirroringMethodBind):
    parallaxLayerSetMirroringMethodBind = getMethod(cstring"ParallaxLayer",
        cstring"set_mirroring")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxLayerSetMirroringMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxLayerGetMotionOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc motionOffset(self: ParallaxLayer): Vector2 =
  if isNil(parallaxLayerGetMotionOffsetMethodBind):
    parallaxLayerGetMotionOffsetMethodBind = getMethod(cstring"ParallaxLayer",
        cstring"get_motion_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxLayerGetMotionOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var parallaxLayerSetMotionOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `motionOffset=`(self: ParallaxLayer; val: Vector2) =
  if isNil(parallaxLayerSetMotionOffsetMethodBind):
    parallaxLayerSetMotionOffsetMethodBind = getMethod(cstring"ParallaxLayer",
        cstring"set_motion_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxLayerSetMotionOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var parallaxLayerGetMotionScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc motionScale(self: ParallaxLayer): Vector2 =
  if isNil(parallaxLayerGetMotionScaleMethodBind):
    parallaxLayerGetMotionScaleMethodBind = getMethod(cstring"ParallaxLayer",
        cstring"get_motion_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  parallaxLayerGetMotionScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var parallaxLayerSetMotionScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `motionScale=`(self: ParallaxLayer; val: Vector2) =
  if isNil(parallaxLayerSetMotionScaleMethodBind):
    parallaxLayerSetMotionScaleMethodBind = getMethod(cstring"ParallaxLayer",
        cstring"set_motion_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  parallaxLayerSetMotionScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
