
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  FEED_BACK* = 2'i64
  FEED_FRONT* = 1'i64
  FEED_NOIMAGE* = 0'i64
  FEED_RGB* = 1'i64
  FEED_UNSPECIFIED* = 0'i64
  FEED_YCBCR* = 2'i64
  FEED_YCBCR_SEP* = 3'i64
proc feedIsActive*(self: CameraFeed): bool {.gcsafe, locks: 0.}
proc `feedIsActive=`*(self: CameraFeed; val: bool) {.gcsafe, locks: 0.}
proc feedTransform*(self: CameraFeed): Transform2D {.gcsafe, locks: 0.}
proc `feedTransform=`*(self: CameraFeed; val: Transform2D) {.gcsafe, locks: 0.}
method allocateTexture*(self: CameraFeed; width: int64; height: int64; format: int64;
                       textureType: int64; dataType: int64) {.gcsafe, locks: 0, base.}
method setRGBImg*(self: CameraFeed; rgbImg: Image) {.gcsafe, locks: 0, base.}
method setYCbCrImg*(self: CameraFeed; ycbcrImg: Image) {.gcsafe, locks: 0, base.}
method setYCbCrImgs*(self: CameraFeed; yImg: Image; cbcrImg: Image) {.gcsafe, locks: 0,
    base.}
method setName*(self: CameraFeed; name: string) {.gcsafe, locks: 0, base.}
method setPosition*(self: CameraFeed; position: int64) {.gcsafe, locks: 0, base.}
proc getId*(self: CameraFeed): int64 {.gcsafe, locks: 0.}
proc getName*(self: CameraFeed): string {.gcsafe, locks: 0.}
proc getPosition*(self: CameraFeed): int64 {.gcsafe, locks: 0.}
var cameraFeedIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc feedIsActive(self: CameraFeed): bool =
  if isNil(cameraFeedIsActiveMethodBind):
    cameraFeedIsActiveMethodBind = getMethod(cstring"CameraFeed",
        cstring"is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraFeedIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraFeedSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `feedIsActive=`(self: CameraFeed; val: bool) =
  if isNil(cameraFeedSetActiveMethodBind):
    cameraFeedSetActiveMethodBind = getMethod(cstring"CameraFeed",
        cstring"set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraFeedSetActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var cameraFeedGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc feedTransform(self: CameraFeed): Transform2D =
  if isNil(cameraFeedGetTransformMethodBind):
    cameraFeedGetTransformMethodBind = getMethod(cstring"CameraFeed",
        cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraFeedGetTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraFeedSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `feedTransform=`(self: CameraFeed; val: Transform2D) =
  if isNil(cameraFeedSetTransformMethodBind):
    cameraFeedSetTransformMethodBind = getMethod(cstring"CameraFeed",
        cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraFeedSetTransformMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraFeedUnderscoreallocateTextureMethodBind {.threadvar.}: ptr GodotMethodBind
method allocateTexture(self: CameraFeed; width: int64; height: int64; format: int64;
                      textureType: int64; dataType: int64) =
  if isNil(cameraFeedUnderscoreallocateTextureMethodBind):
    cameraFeedUnderscoreallocateTextureMethodBind = getMethod(
        cstring"CameraFeed", cstring"_allocate_texture")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(format)
  argsToPassToGodot[][3] = unsafeAddr(textureType)
  argsToPassToGodot[][4] = unsafeAddr(dataType)
  var ptrCallRet: pointer
  cameraFeedUnderscoreallocateTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraFeedUnderscoresetRGBImgMethodBind {.threadvar.}: ptr GodotMethodBind
method setRGBImg(self: CameraFeed; rgbImg: Image) =
  if isNil(cameraFeedUnderscoresetRGBImgMethodBind):
    cameraFeedUnderscoresetRGBImgMethodBind = getMethod(cstring"CameraFeed",
        cstring"_set_RGB_img")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not rgbImg.isNil:
    rgbImg.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cameraFeedUnderscoresetRGBImgMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraFeedUnderscoresetYCbCrImgMethodBind {.threadvar.}: ptr GodotMethodBind
method setYCbCrImg(self: CameraFeed; ycbcrImg: Image) =
  if isNil(cameraFeedUnderscoresetYCbCrImgMethodBind):
    cameraFeedUnderscoresetYCbCrImgMethodBind = getMethod(cstring"CameraFeed",
        cstring"_set_YCbCr_img")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not ycbcrImg.isNil:
    ycbcrImg.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cameraFeedUnderscoresetYCbCrImgMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraFeedUnderscoresetYCbCrImgsMethodBind {.threadvar.}: ptr GodotMethodBind
method setYCbCrImgs(self: CameraFeed; yImg: Image; cbcrImg: Image) =
  if isNil(cameraFeedUnderscoresetYCbCrImgsMethodBind):
    cameraFeedUnderscoresetYCbCrImgsMethodBind = getMethod(cstring"CameraFeed",
        cstring"_set_YCbCr_imgs")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not yImg.isNil:
    yImg.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not cbcrImg.isNil:
    cbcrImg.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cameraFeedUnderscoresetYCbCrImgsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraFeedUnderscoresetNameMethodBind {.threadvar.}: ptr GodotMethodBind
method setName(self: CameraFeed; name: string) =
  if isNil(cameraFeedUnderscoresetNameMethodBind):
    cameraFeedUnderscoresetNameMethodBind = getMethod(cstring"CameraFeed",
        cstring"_set_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  cameraFeedUnderscoresetNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var cameraFeedUnderscoresetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
method setPosition(self: CameraFeed; position: int64) =
  if isNil(cameraFeedUnderscoresetPositionMethodBind):
    cameraFeedUnderscoresetPositionMethodBind = getMethod(cstring"CameraFeed",
        cstring"_set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  cameraFeedUnderscoresetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraFeedGetIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getId(self: CameraFeed): int64 =
  if isNil(cameraFeedGetIdMethodBind):
    cameraFeedGetIdMethodBind = getMethod(cstring"CameraFeed", cstring"get_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraFeedGetIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraFeedGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getName(self: CameraFeed): string =
  if isNil(cameraFeedGetNameMethodBind):
    cameraFeedGetNameMethodBind = getMethod(cstring"CameraFeed", cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  cameraFeedGetNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var cameraFeedGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPosition(self: CameraFeed): int64 =
  if isNil(cameraFeedGetPositionMethodBind):
    cameraFeedGetPositionMethodBind = getMethod(cstring"CameraFeed",
        cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraFeedGetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
