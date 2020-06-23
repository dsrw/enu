
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc cameraFeedId*(self: CameraTexture): int64 {.gcsafe, locks: 0.}
proc `cameraFeedId=`*(self: CameraTexture; val: int64) {.gcsafe, locks: 0.}
proc cameraIsActive*(self: CameraTexture): bool {.gcsafe, locks: 0.}
proc `cameraIsActive=`*(self: CameraTexture; val: bool) {.gcsafe, locks: 0.}
proc whichFeed*(self: CameraTexture): int64 {.gcsafe, locks: 0.}
proc `whichFeed=`*(self: CameraTexture; val: int64) {.gcsafe, locks: 0.}
var cameraTextureGetCameraFeedIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraFeedId(self: CameraTexture): int64 =
  if isNil(cameraTextureGetCameraFeedIdMethodBind):
    cameraTextureGetCameraFeedIdMethodBind = getMethod(cstring"CameraTexture",
        cstring"get_camera_feed_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraTextureGetCameraFeedIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraTextureSetCameraFeedIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cameraFeedId=`(self: CameraTexture; val: int64) =
  if isNil(cameraTextureSetCameraFeedIdMethodBind):
    cameraTextureSetCameraFeedIdMethodBind = getMethod(cstring"CameraTexture",
        cstring"set_camera_feed_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraTextureSetCameraFeedIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraTextureGetCameraActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraIsActive(self: CameraTexture): bool =
  if isNil(cameraTextureGetCameraActiveMethodBind):
    cameraTextureGetCameraActiveMethodBind = getMethod(cstring"CameraTexture",
        cstring"get_camera_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraTextureGetCameraActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraTextureSetCameraActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cameraIsActive=`(self: CameraTexture; val: bool) =
  if isNil(cameraTextureSetCameraActiveMethodBind):
    cameraTextureSetCameraActiveMethodBind = getMethod(cstring"CameraTexture",
        cstring"set_camera_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraTextureSetCameraActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraTextureGetWhichFeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc whichFeed(self: CameraTexture): int64 =
  if isNil(cameraTextureGetWhichFeedMethodBind):
    cameraTextureGetWhichFeedMethodBind = getMethod(cstring"CameraTexture",
        cstring"get_which_feed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraTextureGetWhichFeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraTextureSetWhichFeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `whichFeed=`(self: CameraTexture; val: int64) =
  if isNil(cameraTextureSetWhichFeedMethodBind):
    cameraTextureSetWhichFeedMethodBind = getMethod(cstring"CameraTexture",
        cstring"set_which_feed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraTextureSetWhichFeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
