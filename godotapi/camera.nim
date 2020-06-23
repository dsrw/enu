
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  DOPPLER_TRACKING_DISABLED* = 0'i64
  DOPPLER_TRACKING_IDLE_STEP* = 1'i64
  DOPPLER_TRACKING_PHYSICS_STEP* = 2'i64
  KEEP_HEIGHT* = 1'i64
  KEEP_WIDTH* = 0'i64
  PROJECTION_FRUSTUM* = 2'i64
  PROJECTION_ORTHOGONAL* = 1'i64
  PROJECTION_PERSPECTIVE* = 0'i64
proc cullMask*(self: Camera): int64 {.gcsafe, locks: 0.}
proc `cullMask=`*(self: Camera; val: int64) {.gcsafe, locks: 0.}
proc current*(self: Camera): bool {.gcsafe, locks: 0.}
proc `current=`*(self: Camera; val: bool) {.gcsafe, locks: 0.}
proc dopplerTracking*(self: Camera): int64 {.gcsafe, locks: 0.}
proc `dopplerTracking=`*(self: Camera; val: int64) {.gcsafe, locks: 0.}
proc environment*(self: Camera): Environment {.gcsafe, locks: 0.}
proc `environment=`*(self: Camera; val: Environment) {.gcsafe, locks: 0.}
proc far*(self: Camera): float64 {.gcsafe, locks: 0.}
proc `far=`*(self: Camera; val: float64) {.gcsafe, locks: 0.}
proc fov*(self: Camera): float64 {.gcsafe, locks: 0.}
proc `fov=`*(self: Camera; val: float64) {.gcsafe, locks: 0.}
proc frustumOffset*(self: Camera): Vector2 {.gcsafe, locks: 0.}
proc `frustumOffset=`*(self: Camera; val: Vector2) {.gcsafe, locks: 0.}
proc hOffset*(self: Camera): float64 {.gcsafe, locks: 0.}
proc `hOffset=`*(self: Camera; val: float64) {.gcsafe, locks: 0.}
proc keepAspect*(self: Camera): int64 {.gcsafe, locks: 0.}
proc `keepAspect=`*(self: Camera; val: int64) {.gcsafe, locks: 0.}
proc near*(self: Camera): float64 {.gcsafe, locks: 0.}
proc `near=`*(self: Camera; val: float64) {.gcsafe, locks: 0.}
proc projection*(self: Camera): int64 {.gcsafe, locks: 0.}
proc `projection=`*(self: Camera; val: int64) {.gcsafe, locks: 0.}
proc size*(self: Camera): float64 {.gcsafe, locks: 0.}
proc `size=`*(self: Camera; val: float64) {.gcsafe, locks: 0.}
proc vOffset*(self: Camera): float64 {.gcsafe, locks: 0.}
proc `vOffset=`*(self: Camera; val: float64) {.gcsafe, locks: 0.}
proc clearCurrent*(self: Camera; enableNext: bool = true) {.gcsafe, locks: 0.}
proc getCameraRid*(self: Camera): RID {.gcsafe, locks: 0.}
proc getCameraTransform*(self: Camera): Transform {.gcsafe, locks: 0.}
proc getCullMaskBit*(self: Camera; layer: int64): bool {.gcsafe, locks: 0.}
proc getFrustum*(self: Camera): Array {.gcsafe, locks: 0.}
proc isPositionBehind*(self: Camera; worldPoint: Vector3): bool {.gcsafe, locks: 0.}
proc makeCurrent*(self: Camera) {.gcsafe, locks: 0.}
proc projectLocalRayNormal*(self: Camera; screenPoint: Vector2): Vector3 {.gcsafe,
    locks: 0.}
proc projectPosition*(self: Camera; screenPoint: Vector2; zDepth: float64): Vector3 {.
    gcsafe, locks: 0.}
proc projectRayNormal*(self: Camera; screenPoint: Vector2): Vector3 {.gcsafe, locks: 0.}
proc projectRayOrigin*(self: Camera; screenPoint: Vector2): Vector3 {.gcsafe, locks: 0.}
proc setCullMaskBit*(self: Camera; layer: int64; enable: bool) {.gcsafe, locks: 0.}
proc setFrustum*(self: Camera; size: float64; offset: Vector2; zNear: float64;
                zFar: float64) {.gcsafe, locks: 0.}
proc setOrthogonal*(self: Camera; size: float64; zNear: float64; zFar: float64) {.gcsafe,
    locks: 0.}
proc setPerspective*(self: Camera; fov: float64; zNear: float64; zFar: float64) {.gcsafe,
    locks: 0.}
proc unprojectPosition*(self: Camera; worldPoint: Vector3): Vector2 {.gcsafe, locks: 0.}
var cameraGetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc cullMask(self: Camera): int64 =
  if isNil(cameraGetCullMaskMethodBind):
    cameraGetCullMaskMethodBind = getMethod(cstring"Camera",
        cstring"get_cull_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetCullMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cullMask=`(self: Camera; val: int64) =
  if isNil(cameraSetCullMaskMethodBind):
    cameraSetCullMaskMethodBind = getMethod(cstring"Camera",
        cstring"set_cull_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetCullMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var cameraIsCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc current(self: Camera): bool =
  if isNil(cameraIsCurrentMethodBind):
    cameraIsCurrentMethodBind = getMethod(cstring"Camera", cstring"is_current")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraIsCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `current=`(self: Camera; val: bool) =
  if isNil(cameraSetCurrentMethodBind):
    cameraSetCurrentMethodBind = getMethod(cstring"Camera", cstring"set_current")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetCurrentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var cameraGetDopplerTrackingMethodBind {.threadvar.}: ptr GodotMethodBind
proc dopplerTracking(self: Camera): int64 =
  if isNil(cameraGetDopplerTrackingMethodBind):
    cameraGetDopplerTrackingMethodBind = getMethod(cstring"Camera",
        cstring"get_doppler_tracking")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetDopplerTrackingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetDopplerTrackingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dopplerTracking=`(self: Camera; val: int64) =
  if isNil(cameraSetDopplerTrackingMethodBind):
    cameraSetDopplerTrackingMethodBind = getMethod(cstring"Camera",
        cstring"set_doppler_tracking")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetDopplerTrackingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraGetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc environment(self: Camera): Environment =
  if isNil(cameraGetEnvironmentMethodBind):
    cameraGetEnvironmentMethodBind = getMethod(cstring"Camera",
        cstring"get_environment")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cameraGetEnvironmentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cameraSetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environment=`(self: Camera; val: Environment) =
  if isNil(cameraSetEnvironmentMethodBind):
    cameraSetEnvironmentMethodBind = getMethod(cstring"Camera",
        cstring"set_environment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cameraSetEnvironmentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraGetZfarMethodBind {.threadvar.}: ptr GodotMethodBind
proc far(self: Camera): float64 =
  if isNil(cameraGetZfarMethodBind):
    cameraGetZfarMethodBind = getMethod(cstring"Camera", cstring"get_zfar")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetZfarMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetZfarMethodBind {.threadvar.}: ptr GodotMethodBind
proc `far=`(self: Camera; val: float64) =
  if isNil(cameraSetZfarMethodBind):
    cameraSetZfarMethodBind = getMethod(cstring"Camera", cstring"set_zfar")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetZfarMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var cameraGetFovMethodBind {.threadvar.}: ptr GodotMethodBind
proc fov(self: Camera): float64 =
  if isNil(cameraGetFovMethodBind):
    cameraGetFovMethodBind = getMethod(cstring"Camera", cstring"get_fov")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetFovMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetFovMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fov=`(self: Camera; val: float64) =
  if isNil(cameraSetFovMethodBind):
    cameraSetFovMethodBind = getMethod(cstring"Camera", cstring"set_fov")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetFovMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var cameraGetFrustumOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc frustumOffset(self: Camera): Vector2 =
  if isNil(cameraGetFrustumOffsetMethodBind):
    cameraGetFrustumOffsetMethodBind = getMethod(cstring"Camera",
        cstring"get_frustum_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetFrustumOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetFrustumOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frustumOffset=`(self: Camera; val: Vector2) =
  if isNil(cameraSetFrustumOffsetMethodBind):
    cameraSetFrustumOffsetMethodBind = getMethod(cstring"Camera",
        cstring"set_frustum_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetFrustumOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraGetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc hOffset(self: Camera): float64 =
  if isNil(cameraGetHOffsetMethodBind):
    cameraGetHOffsetMethodBind = getMethod(cstring"Camera", cstring"get_h_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetHOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetHOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hOffset=`(self: Camera; val: float64) =
  if isNil(cameraSetHOffsetMethodBind):
    cameraSetHOffsetMethodBind = getMethod(cstring"Camera", cstring"set_h_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetHOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var cameraGetKeepAspectModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc keepAspect(self: Camera): int64 =
  if isNil(cameraGetKeepAspectModeMethodBind):
    cameraGetKeepAspectModeMethodBind = getMethod(cstring"Camera",
        cstring"get_keep_aspect_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetKeepAspectModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetKeepAspectModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `keepAspect=`(self: Camera; val: int64) =
  if isNil(cameraSetKeepAspectModeMethodBind):
    cameraSetKeepAspectModeMethodBind = getMethod(cstring"Camera",
        cstring"set_keep_aspect_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetKeepAspectModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraGetZnearMethodBind {.threadvar.}: ptr GodotMethodBind
proc near(self: Camera): float64 =
  if isNil(cameraGetZnearMethodBind):
    cameraGetZnearMethodBind = getMethod(cstring"Camera", cstring"get_znear")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetZnearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetZnearMethodBind {.threadvar.}: ptr GodotMethodBind
proc `near=`(self: Camera; val: float64) =
  if isNil(cameraSetZnearMethodBind):
    cameraSetZnearMethodBind = getMethod(cstring"Camera", cstring"set_znear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetZnearMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var cameraGetProjectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc projection(self: Camera): int64 =
  if isNil(cameraGetProjectionMethodBind):
    cameraGetProjectionMethodBind = getMethod(cstring"Camera",
        cstring"get_projection")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetProjectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetProjectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `projection=`(self: Camera; val: int64) =
  if isNil(cameraSetProjectionMethodBind):
    cameraSetProjectionMethodBind = getMethod(cstring"Camera",
        cstring"set_projection")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetProjectionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var cameraGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: Camera): float64 =
  if isNil(cameraGetSizeMethodBind):
    cameraGetSizeMethodBind = getMethod(cstring"Camera", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: Camera; val: float64) =
  if isNil(cameraSetSizeMethodBind):
    cameraSetSizeMethodBind = getMethod(cstring"Camera", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var cameraGetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc vOffset(self: Camera): float64 =
  if isNil(cameraGetVOffsetMethodBind):
    cameraGetVOffsetMethodBind = getMethod(cstring"Camera", cstring"get_v_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetVOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraSetVOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vOffset=`(self: Camera; val: float64) =
  if isNil(cameraSetVOffsetMethodBind):
    cameraSetVOffsetMethodBind = getMethod(cstring"Camera", cstring"set_v_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cameraSetVOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var cameraClearCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCurrent(self: Camera; enableNext: bool = true) =
  if isNil(cameraClearCurrentMethodBind):
    cameraClearCurrentMethodBind = getMethod(cstring"Camera",
        cstring"clear_current")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enableNext)
  var ptrCallRet: pointer
  cameraClearCurrentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var cameraGetCameraRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCameraRid(self: Camera): RID =
  if isNil(cameraGetCameraRidMethodBind):
    cameraGetCameraRidMethodBind = getMethod(cstring"Camera",
        cstring"get_camera_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetCameraRidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraGetCameraTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCameraTransform(self: Camera): Transform =
  if isNil(cameraGetCameraTransformMethodBind):
    cameraGetCameraTransformMethodBind = getMethod(cstring"Camera",
        cstring"get_camera_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetCameraTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraGetCullMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCullMaskBit(self: Camera; layer: int64): bool =
  if isNil(cameraGetCullMaskBitMethodBind):
    cameraGetCullMaskBitMethodBind = getMethod(cstring"Camera",
        cstring"get_cull_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(layer)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraGetCullMaskBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraGetFrustumMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFrustum(self: Camera): Array =
  if isNil(cameraGetFrustumMethodBind):
    cameraGetFrustumMethodBind = getMethod(cstring"Camera", cstring"get_frustum")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  cameraGetFrustumMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var cameraIsPositionBehindMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPositionBehind(self: Camera; worldPoint: Vector3): bool =
  if isNil(cameraIsPositionBehindMethodBind):
    cameraIsPositionBehindMethodBind = getMethod(cstring"Camera",
        cstring"is_position_behind")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(worldPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraIsPositionBehindMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraMakeCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeCurrent(self: Camera) =
  if isNil(cameraMakeCurrentMethodBind):
    cameraMakeCurrentMethodBind = getMethod(cstring"Camera", cstring"make_current")
  var ptrCallRet: pointer
  cameraMakeCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cameraProjectLocalRayNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc projectLocalRayNormal(self: Camera; screenPoint: Vector2): Vector3 =
  if isNil(cameraProjectLocalRayNormalMethodBind):
    cameraProjectLocalRayNormalMethodBind = getMethod(cstring"Camera",
        cstring"project_local_ray_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screenPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraProjectLocalRayNormalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cameraProjectPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc projectPosition(self: Camera; screenPoint: Vector2; zDepth: float64): Vector3 =
  if isNil(cameraProjectPositionMethodBind):
    cameraProjectPositionMethodBind = getMethod(cstring"Camera",
        cstring"project_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screenPoint)
  argsToPassToGodot[][1] = unsafeAddr(zDepth)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraProjectPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraProjectRayNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc projectRayNormal(self: Camera; screenPoint: Vector2): Vector3 =
  if isNil(cameraProjectRayNormalMethodBind):
    cameraProjectRayNormalMethodBind = getMethod(cstring"Camera",
        cstring"project_ray_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screenPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraProjectRayNormalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraProjectRayOriginMethodBind {.threadvar.}: ptr GodotMethodBind
proc projectRayOrigin(self: Camera; screenPoint: Vector2): Vector3 =
  if isNil(cameraProjectRayOriginMethodBind):
    cameraProjectRayOriginMethodBind = getMethod(cstring"Camera",
        cstring"project_ray_origin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screenPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraProjectRayOriginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraSetCullMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCullMaskBit(self: Camera; layer: int64; enable: bool) =
  if isNil(cameraSetCullMaskBitMethodBind):
    cameraSetCullMaskBitMethodBind = getMethod(cstring"Camera",
        cstring"set_cull_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(layer)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  cameraSetCullMaskBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraSetFrustumMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFrustum(self: Camera; size: float64; offset: Vector2; zNear: float64;
               zFar: float64) =
  if isNil(cameraSetFrustumMethodBind):
    cameraSetFrustumMethodBind = getMethod(cstring"Camera", cstring"set_frustum")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  argsToPassToGodot[][2] = unsafeAddr(zNear)
  argsToPassToGodot[][3] = unsafeAddr(zFar)
  var ptrCallRet: pointer
  cameraSetFrustumMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var cameraSetOrthogonalMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOrthogonal(self: Camera; size: float64; zNear: float64; zFar: float64) =
  if isNil(cameraSetOrthogonalMethodBind):
    cameraSetOrthogonalMethodBind = getMethod(cstring"Camera",
        cstring"set_orthogonal")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  argsToPassToGodot[][1] = unsafeAddr(zNear)
  argsToPassToGodot[][2] = unsafeAddr(zFar)
  var ptrCallRet: pointer
  cameraSetOrthogonalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var cameraSetPerspectiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPerspective(self: Camera; fov: float64; zNear: float64; zFar: float64) =
  if isNil(cameraSetPerspectiveMethodBind):
    cameraSetPerspectiveMethodBind = getMethod(cstring"Camera",
        cstring"set_perspective")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fov)
  argsToPassToGodot[][1] = unsafeAddr(zNear)
  argsToPassToGodot[][2] = unsafeAddr(zFar)
  var ptrCallRet: pointer
  cameraSetPerspectiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cameraUnprojectPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc unprojectPosition(self: Camera; worldPoint: Vector3): Vector2 =
  if isNil(cameraUnprojectPositionMethodBind):
    cameraUnprojectPositionMethodBind = getMethod(cstring"Camera",
        cstring"unproject_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(worldPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cameraUnprojectPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
