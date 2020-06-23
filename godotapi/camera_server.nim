
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  FEED_CBCR_IMAGE* = 1'i64
  FEED_RGBA_IMAGE* = 0'i64
  FEED_YCBCR_IMAGE* = 0'i64
  FEED_Y_IMAGE* = 0'i64
type
  CameraServer = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(CameraServer, "CameraServer", true)
var singletonCameraServer {.threadvar.}: CameraServer
proc addFeed*(feed: CameraFeed) {.gcsafe, locks: 0.}
proc feeds*(): Array {.gcsafe, locks: 0.}
proc getFeed*(index: int64): CameraFeed {.gcsafe, locks: 0.}
proc getFeedCount*(): int64 {.gcsafe, locks: 0.}
proc removeFeed*(feed: CameraFeed) {.gcsafe, locks: 0.}
var cameraServerAddFeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFeed(feed: CameraFeed) =
  if isNil(singletonCameraServer):
    singletonCameraServer = getSingleton[CameraServer]()
  let self = singletonCameraServer
  if isNil(cameraServerAddFeedMethodBind):
    cameraServerAddFeedMethodBind = getMethod(cstring"CameraServer",
        cstring"add_feed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not feed.isNil:
    feed.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cameraServerAddFeedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var cameraServerFeedsMethodBind {.threadvar.}: ptr GodotMethodBind
proc feeds(): Array =
  if isNil(singletonCameraServer):
    singletonCameraServer = getSingleton[CameraServer]()
  let self = singletonCameraServer
  if isNil(cameraServerFeedsMethodBind):
    cameraServerFeedsMethodBind = getMethod(cstring"CameraServer", cstring"feeds")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  cameraServerFeedsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var cameraServerGetFeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFeed(index: int64): CameraFeed =
  if isNil(singletonCameraServer):
    singletonCameraServer = getSingleton[CameraServer]()
  let self = singletonCameraServer
  if isNil(cameraServerGetFeedMethodBind):
    cameraServerGetFeedMethodBind = getMethod(cstring"CameraServer",
        cstring"get_feed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cameraServerGetFeedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cameraServerGetFeedCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFeedCount(): int64 =
  if isNil(singletonCameraServer):
    singletonCameraServer = getSingleton[CameraServer]()
  let self = singletonCameraServer
  if isNil(cameraServerGetFeedCountMethodBind):
    cameraServerGetFeedCountMethodBind = getMethod(cstring"CameraServer",
        cstring"get_feed_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraServerGetFeedCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraServerRemoveFeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeFeed(feed: CameraFeed) =
  if isNil(singletonCameraServer):
    singletonCameraServer = getSingleton[CameraServer]()
  let self = singletonCameraServer
  if isNil(cameraServerRemoveFeedMethodBind):
    cameraServerRemoveFeedMethodBind = getMethod(cstring"CameraServer",
        cstring"remove_feed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not feed.isNil:
    feed.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cameraServerRemoveFeedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
