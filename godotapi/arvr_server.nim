
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  DONT_RESET_ROTATION* = 2'i64
  RESET_BUT_KEEP_TILT* = 1'i64
  RESET_FULL_ROTATION* = 0'i64
  TRACKER_ANCHOR* = 4'i64
  TRACKER_ANY* = 255'i64
  TRACKER_ANY_KNOWN* = 127'i64
  TRACKER_BASESTATION* = 2'i64
  TRACKER_CONTROLLER* = 1'i64
  TRACKER_UNKNOWN* = 128'i64
type
  ARVRServer = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(ARVRServer, "ARVRServer", true)
var singletonARVRServer {.threadvar.}: ARVRServer
proc centerOnHmd*(rotationMode: int64; keepHeight: bool) {.gcsafe, locks: 0.}
proc findInterface*(name: string): ARVRInterface {.gcsafe, locks: 0.}
proc getHmdTransform*(): Transform {.gcsafe, locks: 0.}
proc getInterface*(idx: int64): ARVRInterface {.gcsafe, locks: 0.}
proc getInterfaceCount*(): int64 {.gcsafe, locks: 0.}
proc getInterfaces*(): Array {.gcsafe, locks: 0.}
proc getLastCommitUsec*(): int64 {.gcsafe, locks: 0.}
proc getLastFrameUsec*(): int64 {.gcsafe, locks: 0.}
proc getLastProcessUsec*(): int64 {.gcsafe, locks: 0.}
proc getPrimaryInterface*(): ARVRInterface {.gcsafe, locks: 0.}
proc getReferenceFrame*(): Transform {.gcsafe, locks: 0.}
proc getTracker*(idx: int64): ARVRPositionalTracker {.gcsafe, locks: 0.}
proc getTrackerCount*(): int64 {.gcsafe, locks: 0.}
proc getWorldScale*(): float64 {.gcsafe, locks: 0.}
proc setPrimaryInterface*(interfacee: ARVRInterface) {.gcsafe, locks: 0.}
proc setWorldScale*(arg0: float64) {.gcsafe, locks: 0.}
var aRVRServerCenterOnHmdMethodBind {.threadvar.}: ptr GodotMethodBind
proc centerOnHmd(rotationMode: int64; keepHeight: bool) =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerCenterOnHmdMethodBind):
    aRVRServerCenterOnHmdMethodBind = getMethod(cstring"ARVRServer",
        cstring"center_on_hmd")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rotationMode)
  argsToPassToGodot[][1] = unsafeAddr(keepHeight)
  var ptrCallRet: pointer
  aRVRServerCenterOnHmdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aRVRServerFindInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc findInterface(name: string): ARVRInterface =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerFindInterfaceMethodBind):
    aRVRServerFindInterfaceMethodBind = getMethod(cstring"ARVRServer",
        cstring"find_interface")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  aRVRServerFindInterfaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var aRVRServerGetHmdTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHmdTransform(): Transform =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetHmdTransformMethodBind):
    aRVRServerGetHmdTransformMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_hmd_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetHmdTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerGetInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInterface(idx: int64): ARVRInterface =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetInterfaceMethodBind):
    aRVRServerGetInterfaceMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_interface")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  aRVRServerGetInterfaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var aRVRServerGetInterfaceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInterfaceCount(): int64 =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetInterfaceCountMethodBind):
    aRVRServerGetInterfaceCountMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_interface_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetInterfaceCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerGetInterfacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInterfaces(): Array =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetInterfacesMethodBind):
    aRVRServerGetInterfacesMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_interfaces")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  aRVRServerGetInterfacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var aRVRServerGetLastCommitUsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLastCommitUsec(): int64 =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetLastCommitUsecMethodBind):
    aRVRServerGetLastCommitUsecMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_last_commit_usec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetLastCommitUsecMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerGetLastFrameUsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLastFrameUsec(): int64 =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetLastFrameUsecMethodBind):
    aRVRServerGetLastFrameUsecMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_last_frame_usec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetLastFrameUsecMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerGetLastProcessUsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLastProcessUsec(): int64 =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetLastProcessUsecMethodBind):
    aRVRServerGetLastProcessUsecMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_last_process_usec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetLastProcessUsecMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerGetPrimaryInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPrimaryInterface(): ARVRInterface =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetPrimaryInterfaceMethodBind):
    aRVRServerGetPrimaryInterfaceMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_primary_interface")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  aRVRServerGetPrimaryInterfaceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var aRVRServerGetReferenceFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getReferenceFrame(): Transform =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetReferenceFrameMethodBind):
    aRVRServerGetReferenceFrameMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_reference_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetReferenceFrameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerGetTrackerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTracker(idx: int64): ARVRPositionalTracker =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetTrackerMethodBind):
    aRVRServerGetTrackerMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_tracker")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  aRVRServerGetTrackerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var aRVRServerGetTrackerCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTrackerCount(): int64 =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetTrackerCountMethodBind):
    aRVRServerGetTrackerCountMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_tracker_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetTrackerCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerGetWorldScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWorldScale(): float64 =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerGetWorldScaleMethodBind):
    aRVRServerGetWorldScaleMethodBind = getMethod(cstring"ARVRServer",
        cstring"get_world_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRServerGetWorldScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRServerSetPrimaryInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPrimaryInterface(interfacee: ARVRInterface) =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerSetPrimaryInterfaceMethodBind):
    aRVRServerSetPrimaryInterfaceMethodBind = getMethod(cstring"ARVRServer",
        cstring"set_primary_interface")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not interfacee.isNil:
    interfacee.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  aRVRServerSetPrimaryInterfaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRServerSetWorldScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWorldScale(arg0: float64) =
  if isNil(singletonARVRServer):
    singletonARVRServer = getSingleton[ARVRServer]()
  let self = singletonARVRServer
  if isNil(aRVRServerSetWorldScaleMethodBind):
    aRVRServerSetWorldScaleMethodBind = getMethod(cstring"ARVRServer",
        cstring"set_world_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  aRVRServerSetWorldScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
