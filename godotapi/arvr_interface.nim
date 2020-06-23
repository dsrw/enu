
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  ARVR_AR* = 4'i64
  ARVR_EXCESSIVE_MOTION* = 1'i64
  ARVR_EXTERNAL* = 8'i64
  ARVR_INSUFFICIENT_FEATURES* = 2'i64
  ARVR_MONO* = 1'i64
  ARVR_NONE* = 0'i64
  ARVR_NORMAL_TRACKING* = 0'i64
  ARVR_NOT_TRACKING* = 4'i64
  ARVR_STEREO* = 2'i64
  ARVR_UNKNOWN_TRACKING* = 3'i64
  EYE_LEFT* = 1'i64
  EYE_MONO* = 0'i64
  EYE_RIGHT* = 2'i64
proc arIsAnchorDetectionEnabled*(self: ARVRInterface): bool {.gcsafe, locks: 0.}
proc `arIsAnchorDetectionEnabled=`*(self: ARVRInterface; val: bool) {.gcsafe, locks: 0.}
proc interfaceIsInitialized*(self: ARVRInterface): bool {.gcsafe, locks: 0.}
proc `interfaceIsInitialized=`*(self: ARVRInterface; val: bool) {.gcsafe, locks: 0.}
proc interfaceIsPrimary*(self: ARVRInterface): bool {.gcsafe, locks: 0.}
proc `interfaceIsPrimary=`*(self: ARVRInterface; val: bool) {.gcsafe, locks: 0.}
proc getCameraFeedId*(self: ARVRInterface): int64 {.gcsafe, locks: 0.}
proc getCapabilities*(self: ARVRInterface): int64 {.gcsafe, locks: 0.}
proc getName*(self: ARVRInterface): string {.gcsafe, locks: 0.}
proc getRenderTargetsize*(self: ARVRInterface): Vector2 {.gcsafe, locks: 0.}
proc getTrackingStatus*(self: ARVRInterface): int64 {.gcsafe, locks: 0.}
proc initialize*(self: ARVRInterface): bool {.gcsafe, locks: 0.}
proc isStereo*(self: ARVRInterface): bool {.gcsafe, locks: 0.}
proc uninitialize*(self: ARVRInterface) {.gcsafe, locks: 0.}
var aRVRInterfaceGetAnchorDetectionIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc arIsAnchorDetectionEnabled(self: ARVRInterface): bool =
  if isNil(aRVRInterfaceGetAnchorDetectionIsEnabledMethodBind):
    aRVRInterfaceGetAnchorDetectionIsEnabledMethodBind = getMethod(
        cstring"ARVRInterface", cstring"get_anchor_detection_is_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceGetAnchorDetectionIsEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var aRVRInterfaceSetAnchorDetectionIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `arIsAnchorDetectionEnabled=`(self: ARVRInterface; val: bool) =
  if isNil(aRVRInterfaceSetAnchorDetectionIsEnabledMethodBind):
    aRVRInterfaceSetAnchorDetectionIsEnabledMethodBind = getMethod(
        cstring"ARVRInterface", cstring"set_anchor_detection_is_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVRInterfaceSetAnchorDetectionIsEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRInterfaceIsInitializedMethodBind {.threadvar.}: ptr GodotMethodBind
proc interfaceIsInitialized(self: ARVRInterface): bool =
  if isNil(aRVRInterfaceIsInitializedMethodBind):
    aRVRInterfaceIsInitializedMethodBind = getMethod(cstring"ARVRInterface",
        cstring"is_initialized")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceIsInitializedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRInterfaceSetIsInitializedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interfaceIsInitialized=`(self: ARVRInterface; val: bool) =
  if isNil(aRVRInterfaceSetIsInitializedMethodBind):
    aRVRInterfaceSetIsInitializedMethodBind = getMethod(cstring"ARVRInterface",
        cstring"set_is_initialized")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVRInterfaceSetIsInitializedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRInterfaceIsPrimaryMethodBind {.threadvar.}: ptr GodotMethodBind
proc interfaceIsPrimary(self: ARVRInterface): bool =
  if isNil(aRVRInterfaceIsPrimaryMethodBind):
    aRVRInterfaceIsPrimaryMethodBind = getMethod(cstring"ARVRInterface",
        cstring"is_primary")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceIsPrimaryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRInterfaceSetIsPrimaryMethodBind {.threadvar.}: ptr GodotMethodBind
proc `interfaceIsPrimary=`(self: ARVRInterface; val: bool) =
  if isNil(aRVRInterfaceSetIsPrimaryMethodBind):
    aRVRInterfaceSetIsPrimaryMethodBind = getMethod(cstring"ARVRInterface",
        cstring"set_is_primary")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVRInterfaceSetIsPrimaryMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRInterfaceGetCameraFeedIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCameraFeedId(self: ARVRInterface): int64 =
  if isNil(aRVRInterfaceGetCameraFeedIdMethodBind):
    aRVRInterfaceGetCameraFeedIdMethodBind = getMethod(cstring"ARVRInterface",
        cstring"get_camera_feed_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceGetCameraFeedIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRInterfaceGetCapabilitiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCapabilities(self: ARVRInterface): int64 =
  if isNil(aRVRInterfaceGetCapabilitiesMethodBind):
    aRVRInterfaceGetCapabilitiesMethodBind = getMethod(cstring"ARVRInterface",
        cstring"get_capabilities")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceGetCapabilitiesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRInterfaceGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getName(self: ARVRInterface): string =
  if isNil(aRVRInterfaceGetNameMethodBind):
    aRVRInterfaceGetNameMethodBind = getMethod(cstring"ARVRInterface",
        cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  aRVRInterfaceGetNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var aRVRInterfaceGetRenderTargetsizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRenderTargetsize(self: ARVRInterface): Vector2 =
  if isNil(aRVRInterfaceGetRenderTargetsizeMethodBind):
    aRVRInterfaceGetRenderTargetsizeMethodBind = getMethod(
        cstring"ARVRInterface", cstring"get_render_targetsize")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceGetRenderTargetsizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRInterfaceGetTrackingStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTrackingStatus(self: ARVRInterface): int64 =
  if isNil(aRVRInterfaceGetTrackingStatusMethodBind):
    aRVRInterfaceGetTrackingStatusMethodBind = getMethod(cstring"ARVRInterface",
        cstring"get_tracking_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceGetTrackingStatusMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRInterfaceInitializeMethodBind {.threadvar.}: ptr GodotMethodBind
proc initialize(self: ARVRInterface): bool =
  if isNil(aRVRInterfaceInitializeMethodBind):
    aRVRInterfaceInitializeMethodBind = getMethod(cstring"ARVRInterface",
        cstring"initialize")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceInitializeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRInterfaceIsStereoMethodBind {.threadvar.}: ptr GodotMethodBind
proc isStereo(self: ARVRInterface): bool =
  if isNil(aRVRInterfaceIsStereoMethodBind):
    aRVRInterfaceIsStereoMethodBind = getMethod(cstring"ARVRInterface",
        cstring"is_stereo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRInterfaceIsStereoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRInterfaceUninitializeMethodBind {.threadvar.}: ptr GodotMethodBind
proc uninitialize(self: ARVRInterface) =
  if isNil(aRVRInterfaceUninitializeMethodBind):
    aRVRInterfaceUninitializeMethodBind = getMethod(cstring"ARVRInterface",
        cstring"uninitialize")
  var ptrCallRet: pointer
  aRVRInterfaceUninitializeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
