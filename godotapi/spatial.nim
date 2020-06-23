
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  NOTIFICATION_ENTER_WORLD* = 41'i64
  NOTIFICATION_EXIT_WORLD* = 42'i64
  NOTIFICATION_TRANSFORM_CHANGED* = 2000'i64
  NOTIFICATION_VISIBILITY_CHANGED* = 43'i64
proc gizmo*(self: Spatial): SpatialGizmo {.gcsafe, locks: 0.}
proc `gizmo=`*(self: Spatial; val: SpatialGizmo) {.gcsafe, locks: 0.}
proc globalTransform*(self: Spatial): Transform {.gcsafe, locks: 0.}
proc `globalTransform=`*(self: Spatial; val: Transform) {.gcsafe, locks: 0.}
proc rotation*(self: Spatial): Vector3 {.gcsafe, locks: 0.}
proc `rotation=`*(self: Spatial; val: Vector3) {.gcsafe, locks: 0.}
proc rotationDegrees*(self: Spatial): Vector3 {.gcsafe, locks: 0.}
proc `rotationDegrees=`*(self: Spatial; val: Vector3) {.gcsafe, locks: 0.}
proc scale*(self: Spatial): Vector3 {.gcsafe, locks: 0.}
proc `scale=`*(self: Spatial; val: Vector3) {.gcsafe, locks: 0.}
proc transform*(self: Spatial): Transform {.gcsafe, locks: 0.}
proc `transform=`*(self: Spatial; val: Transform) {.gcsafe, locks: 0.}
proc translation*(self: Spatial): Vector3 {.gcsafe, locks: 0.}
proc `translation=`*(self: Spatial; val: Vector3) {.gcsafe, locks: 0.}
proc visible*(self: Spatial): bool {.gcsafe, locks: 0.}
proc `visible=`*(self: Spatial; val: bool) {.gcsafe, locks: 0.}
method updateGizmo*(self: Spatial) {.gcsafe, locks: 0, base.}
proc forceUpdateTransform*(self: Spatial) {.gcsafe, locks: 0.}
proc getParentSpatial*(self: Spatial): Spatial {.gcsafe, locks: 0.}
proc getWorld*(self: Spatial): World {.gcsafe, locks: 0.}
proc globalRotate*(self: Spatial; axis: Vector3; angle: float64) {.gcsafe, locks: 0.}
proc globalScale*(self: Spatial; scale: Vector3) {.gcsafe, locks: 0.}
proc globalTranslate*(self: Spatial; offset: Vector3) {.gcsafe, locks: 0.}
proc hide*(self: Spatial) {.gcsafe, locks: 0.}
proc isLocalTransformNotificationEnabled*(self: Spatial): bool {.gcsafe, locks: 0.}
proc isScaleDisabled*(self: Spatial): bool {.gcsafe, locks: 0.}
proc isSetAsToplevel*(self: Spatial): bool {.gcsafe, locks: 0.}
proc isTransformNotificationEnabled*(self: Spatial): bool {.gcsafe, locks: 0.}
proc isVisibleInTree*(self: Spatial): bool {.gcsafe, locks: 0.}
proc lookAt*(self: Spatial; target: Vector3; up: Vector3) {.gcsafe, locks: 0.}
proc lookAtFromPosition*(self: Spatial; position: Vector3; target: Vector3; up: Vector3) {.
    gcsafe, locks: 0.}
proc orthonormalize*(self: Spatial) {.gcsafe, locks: 0.}
proc rotate*(self: Spatial; axis: Vector3; angle: float64) {.gcsafe, locks: 0.}
proc rotateObjectLocal*(self: Spatial; axis: Vector3; angle: float64) {.gcsafe, locks: 0.}
proc rotateX*(self: Spatial; angle: float64) {.gcsafe, locks: 0.}
proc rotateY*(self: Spatial; angle: float64) {.gcsafe, locks: 0.}
proc rotateZ*(self: Spatial; angle: float64) {.gcsafe, locks: 0.}
proc scaleObjectLocal*(self: Spatial; scale: Vector3) {.gcsafe, locks: 0.}
proc setAsToplevel*(self: Spatial; enable: bool) {.gcsafe, locks: 0.}
proc setDisableScale*(self: Spatial; disable: bool) {.gcsafe, locks: 0.}
proc setIdentity*(self: Spatial) {.gcsafe, locks: 0.}
proc setIgnoreTransformNotification*(self: Spatial; enabled: bool) {.gcsafe, locks: 0.}
proc setNotifyLocalTransform*(self: Spatial; enable: bool) {.gcsafe, locks: 0.}
proc setNotifyTransform*(self: Spatial; enable: bool) {.gcsafe, locks: 0.}
proc show*(self: Spatial) {.gcsafe, locks: 0.}
proc toGlobal*(self: Spatial; localPoint: Vector3): Vector3 {.gcsafe, locks: 0.}
proc toLocal*(self: Spatial; globalPoint: Vector3): Vector3 {.gcsafe, locks: 0.}
proc translate*(self: Spatial; offset: Vector3) {.gcsafe, locks: 0.}
proc translateObjectLocal*(self: Spatial; offset: Vector3) {.gcsafe, locks: 0.}
proc updateGizmoImpl*(self: Spatial) {.gcsafe, locks: 0.}
var spatialGetGizmoMethodBind {.threadvar.}: ptr GodotMethodBind
proc gizmo(self: Spatial): SpatialGizmo =
  if isNil(spatialGetGizmoMethodBind):
    spatialGetGizmoMethodBind = getMethod(cstring"Spatial", cstring"get_gizmo")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialGetGizmoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spatialSetGizmoMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gizmo=`(self: Spatial; val: SpatialGizmo) =
  if isNil(spatialSetGizmoMethodBind):
    spatialSetGizmoMethodBind = getMethod(cstring"Spatial", cstring"set_gizmo")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  spatialSetGizmoMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var spatialGetGlobalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalTransform(self: Spatial): Transform =
  if isNil(spatialGetGlobalTransformMethodBind):
    spatialGetGlobalTransformMethodBind = getMethod(cstring"Spatial",
        cstring"get_global_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialGetGlobalTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetGlobalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalTransform=`(self: Spatial; val: Transform) =
  if isNil(spatialSetGlobalTransformMethodBind):
    spatialSetGlobalTransformMethodBind = getMethod(cstring"Spatial",
        cstring"set_global_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialSetGlobalTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialGetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotation(self: Spatial): Vector3 =
  if isNil(spatialGetRotationMethodBind):
    spatialGetRotationMethodBind = getMethod(cstring"Spatial",
        cstring"get_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialGetRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotation=`(self: Spatial; val: Vector3) =
  if isNil(spatialSetRotationMethodBind):
    spatialSetRotationMethodBind = getMethod(cstring"Spatial",
        cstring"set_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialSetRotationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var spatialGetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotationDegrees(self: Spatial): Vector3 =
  if isNil(spatialGetRotationDegreesMethodBind):
    spatialGetRotationDegreesMethodBind = getMethod(cstring"Spatial",
        cstring"get_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialGetRotationDegreesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotationDegrees=`(self: Spatial; val: Vector3) =
  if isNil(spatialSetRotationDegreesMethodBind):
    spatialSetRotationDegreesMethodBind = getMethod(cstring"Spatial",
        cstring"set_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialSetRotationDegreesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialGetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc scale(self: Spatial): Vector3 =
  if isNil(spatialGetScaleMethodBind):
    spatialGetScaleMethodBind = getMethod(cstring"Spatial", cstring"get_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialGetScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scale=`(self: Spatial; val: Vector3) =
  if isNil(spatialSetScaleMethodBind):
    spatialSetScaleMethodBind = getMethod(cstring"Spatial", cstring"set_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialSetScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var spatialGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform(self: Spatial): Transform =
  if isNil(spatialGetTransformMethodBind):
    spatialGetTransformMethodBind = getMethod(cstring"Spatial",
        cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialGetTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform=`(self: Spatial; val: Transform) =
  if isNil(spatialSetTransformMethodBind):
    spatialSetTransformMethodBind = getMethod(cstring"Spatial",
        cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialSetTransformMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var spatialGetTranslationMethodBind {.threadvar.}: ptr GodotMethodBind
proc translation(self: Spatial): Vector3 =
  if isNil(spatialGetTranslationMethodBind):
    spatialGetTranslationMethodBind = getMethod(cstring"Spatial",
        cstring"get_translation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialGetTranslationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetTranslationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `translation=`(self: Spatial; val: Vector3) =
  if isNil(spatialSetTranslationMethodBind):
    spatialSetTranslationMethodBind = getMethod(cstring"Spatial",
        cstring"set_translation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialSetTranslationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialIsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc visible(self: Spatial): bool =
  if isNil(spatialIsVisibleMethodBind):
    spatialIsVisibleMethodBind = getMethod(cstring"Spatial", cstring"is_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialIsVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visible=`(self: Spatial; val: bool) =
  if isNil(spatialSetVisibleMethodBind):
    spatialSetVisibleMethodBind = getMethod(cstring"Spatial", cstring"set_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialSetVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var spatialUnderscoreupdateGizmoMethodBind {.threadvar.}: ptr GodotMethodBind
method updateGizmo(self: Spatial) =
  if isNil(spatialUnderscoreupdateGizmoMethodBind):
    spatialUnderscoreupdateGizmoMethodBind = getMethod(cstring"Spatial",
        cstring"_update_gizmo")
  var ptrCallRet: pointer
  spatialUnderscoreupdateGizmoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialForceUpdateTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceUpdateTransform(self: Spatial) =
  if isNil(spatialForceUpdateTransformMethodBind):
    spatialForceUpdateTransformMethodBind = getMethod(cstring"Spatial",
        cstring"force_update_transform")
  var ptrCallRet: pointer
  spatialForceUpdateTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialGetParentSpatialMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParentSpatial(self: Spatial): Spatial =
  if isNil(spatialGetParentSpatialMethodBind):
    spatialGetParentSpatialMethodBind = getMethod(cstring"Spatial",
        cstring"get_parent_spatial")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialGetParentSpatialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spatialGetWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWorld(self: Spatial): World =
  if isNil(spatialGetWorldMethodBind):
    spatialGetWorldMethodBind = getMethod(cstring"Spatial", cstring"get_world")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialGetWorldMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spatialGlobalRotateMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalRotate(self: Spatial; axis: Vector3; angle: float64) =
  if isNil(spatialGlobalRotateMethodBind):
    spatialGlobalRotateMethodBind = getMethod(cstring"Spatial",
        cstring"global_rotate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(axis)
  argsToPassToGodot[][1] = unsafeAddr(angle)
  var ptrCallRet: pointer
  spatialGlobalRotateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var spatialGlobalScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalScale(self: Spatial; scale: Vector3) =
  if isNil(spatialGlobalScaleMethodBind):
    spatialGlobalScaleMethodBind = getMethod(cstring"Spatial",
        cstring"global_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scale)
  var ptrCallRet: pointer
  spatialGlobalScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var spatialGlobalTranslateMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalTranslate(self: Spatial; offset: Vector3) =
  if isNil(spatialGlobalTranslateMethodBind):
    spatialGlobalTranslateMethodBind = getMethod(cstring"Spatial",
        cstring"global_translate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  spatialGlobalTranslateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialHideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hide(self: Spatial) =
  if isNil(spatialHideMethodBind):
    spatialHideMethodBind = getMethod(cstring"Spatial", cstring"hide")
  var ptrCallRet: pointer
  spatialHideMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialIsLocalTransformNotificationEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isLocalTransformNotificationEnabled(self: Spatial): bool =
  if isNil(spatialIsLocalTransformNotificationEnabledMethodBind):
    spatialIsLocalTransformNotificationEnabledMethodBind = getMethod(
        cstring"Spatial", cstring"is_local_transform_notification_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialIsLocalTransformNotificationEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialIsScaleDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isScaleDisabled(self: Spatial): bool =
  if isNil(spatialIsScaleDisabledMethodBind):
    spatialIsScaleDisabledMethodBind = getMethod(cstring"Spatial",
        cstring"is_scale_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialIsScaleDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialIsSetAsToplevelMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSetAsToplevel(self: Spatial): bool =
  if isNil(spatialIsSetAsToplevelMethodBind):
    spatialIsSetAsToplevelMethodBind = getMethod(cstring"Spatial",
        cstring"is_set_as_toplevel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialIsSetAsToplevelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialIsTransformNotificationEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isTransformNotificationEnabled(self: Spatial): bool =
  if isNil(spatialIsTransformNotificationEnabledMethodBind):
    spatialIsTransformNotificationEnabledMethodBind = getMethod(cstring"Spatial",
        cstring"is_transform_notification_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialIsTransformNotificationEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialIsVisibleInTreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isVisibleInTree(self: Spatial): bool =
  if isNil(spatialIsVisibleInTreeMethodBind):
    spatialIsVisibleInTreeMethodBind = getMethod(cstring"Spatial",
        cstring"is_visible_in_tree")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialIsVisibleInTreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialLookAtMethodBind {.threadvar.}: ptr GodotMethodBind
proc lookAt(self: Spatial; target: Vector3; up: Vector3) =
  if isNil(spatialLookAtMethodBind):
    spatialLookAtMethodBind = getMethod(cstring"Spatial", cstring"look_at")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(target)
  argsToPassToGodot[][1] = unsafeAddr(up)
  var ptrCallRet: pointer
  spatialLookAtMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialLookAtFromPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc lookAtFromPosition(self: Spatial; position: Vector3; target: Vector3; up: Vector3) =
  if isNil(spatialLookAtFromPositionMethodBind):
    spatialLookAtFromPositionMethodBind = getMethod(cstring"Spatial",
        cstring"look_at_from_position")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(target)
  argsToPassToGodot[][2] = unsafeAddr(up)
  var ptrCallRet: pointer
  spatialLookAtFromPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialOrthonormalizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc orthonormalize(self: Spatial) =
  if isNil(spatialOrthonormalizeMethodBind):
    spatialOrthonormalizeMethodBind = getMethod(cstring"Spatial",
        cstring"orthonormalize")
  var ptrCallRet: pointer
  spatialOrthonormalizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialRotateMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotate(self: Spatial; axis: Vector3; angle: float64) =
  if isNil(spatialRotateMethodBind):
    spatialRotateMethodBind = getMethod(cstring"Spatial", cstring"rotate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(axis)
  argsToPassToGodot[][1] = unsafeAddr(angle)
  var ptrCallRet: pointer
  spatialRotateMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialRotateObjectLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotateObjectLocal(self: Spatial; axis: Vector3; angle: float64) =
  if isNil(spatialRotateObjectLocalMethodBind):
    spatialRotateObjectLocalMethodBind = getMethod(cstring"Spatial",
        cstring"rotate_object_local")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(axis)
  argsToPassToGodot[][1] = unsafeAddr(angle)
  var ptrCallRet: pointer
  spatialRotateObjectLocalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialRotateXMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotateX(self: Spatial; angle: float64) =
  if isNil(spatialRotateXMethodBind):
    spatialRotateXMethodBind = getMethod(cstring"Spatial", cstring"rotate_x")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(angle)
  var ptrCallRet: pointer
  spatialRotateXMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialRotateYMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotateY(self: Spatial; angle: float64) =
  if isNil(spatialRotateYMethodBind):
    spatialRotateYMethodBind = getMethod(cstring"Spatial", cstring"rotate_y")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(angle)
  var ptrCallRet: pointer
  spatialRotateYMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialRotateZMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotateZ(self: Spatial; angle: float64) =
  if isNil(spatialRotateZMethodBind):
    spatialRotateZMethodBind = getMethod(cstring"Spatial", cstring"rotate_z")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(angle)
  var ptrCallRet: pointer
  spatialRotateZMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialScaleObjectLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc scaleObjectLocal(self: Spatial; scale: Vector3) =
  if isNil(spatialScaleObjectLocalMethodBind):
    spatialScaleObjectLocalMethodBind = getMethod(cstring"Spatial",
        cstring"scale_object_local")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scale)
  var ptrCallRet: pointer
  spatialScaleObjectLocalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialSetAsToplevelMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAsToplevel(self: Spatial; enable: bool) =
  if isNil(spatialSetAsToplevelMethodBind):
    spatialSetAsToplevelMethodBind = getMethod(cstring"Spatial",
        cstring"set_as_toplevel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  spatialSetAsToplevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialSetDisableScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDisableScale(self: Spatial; disable: bool) =
  if isNil(spatialSetDisableScaleMethodBind):
    spatialSetDisableScaleMethodBind = getMethod(cstring"Spatial",
        cstring"set_disable_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(disable)
  var ptrCallRet: pointer
  spatialSetDisableScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialSetIdentityMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIdentity(self: Spatial) =
  if isNil(spatialSetIdentityMethodBind):
    spatialSetIdentityMethodBind = getMethod(cstring"Spatial",
        cstring"set_identity")
  var ptrCallRet: pointer
  spatialSetIdentityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialSetIgnoreTransformNotificationMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIgnoreTransformNotification(self: Spatial; enabled: bool) =
  if isNil(spatialSetIgnoreTransformNotificationMethodBind):
    spatialSetIgnoreTransformNotificationMethodBind = getMethod(cstring"Spatial",
        cstring"set_ignore_transform_notification")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  spatialSetIgnoreTransformNotificationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialSetNotifyLocalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNotifyLocalTransform(self: Spatial; enable: bool) =
  if isNil(spatialSetNotifyLocalTransformMethodBind):
    spatialSetNotifyLocalTransformMethodBind = getMethod(cstring"Spatial",
        cstring"set_notify_local_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  spatialSetNotifyLocalTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialSetNotifyTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNotifyTransform(self: Spatial; enable: bool) =
  if isNil(spatialSetNotifyTransformMethodBind):
    spatialSetNotifyTransformMethodBind = getMethod(cstring"Spatial",
        cstring"set_notify_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  spatialSetNotifyTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialShowMethodBind {.threadvar.}: ptr GodotMethodBind
proc show(self: Spatial) =
  if isNil(spatialShowMethodBind):
    spatialShowMethodBind = getMethod(cstring"Spatial", cstring"show")
  var ptrCallRet: pointer
  spatialShowMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialToGlobalMethodBind {.threadvar.}: ptr GodotMethodBind
proc toGlobal(self: Spatial; localPoint: Vector3): Vector3 =
  if isNil(spatialToGlobalMethodBind):
    spatialToGlobalMethodBind = getMethod(cstring"Spatial", cstring"to_global")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(localPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialToGlobalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var spatialToLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc toLocal(self: Spatial; globalPoint: Vector3): Vector3 =
  if isNil(spatialToLocalMethodBind):
    spatialToLocalMethodBind = getMethod(cstring"Spatial", cstring"to_local")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(globalPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialToLocalMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialTranslateMethodBind {.threadvar.}: ptr GodotMethodBind
proc translate(self: Spatial; offset: Vector3) =
  if isNil(spatialTranslateMethodBind):
    spatialTranslateMethodBind = getMethod(cstring"Spatial", cstring"translate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  spatialTranslateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var spatialTranslateObjectLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc translateObjectLocal(self: Spatial; offset: Vector3) =
  if isNil(spatialTranslateObjectLocalMethodBind):
    spatialTranslateObjectLocalMethodBind = getMethod(cstring"Spatial",
        cstring"translate_object_local")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  spatialTranslateObjectLocalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialUpdateGizmoMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateGizmoImpl(self: Spatial) =
  if isNil(spatialUpdateGizmoMethodBind):
    spatialUpdateGizmoMethodBind = getMethod(cstring"Spatial",
        cstring"update_gizmo")
  var ptrCallRet: pointer
  spatialUpdateGizmoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
