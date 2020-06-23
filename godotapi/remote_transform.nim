
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc remotePath*(self: RemoteTransform): NodePath {.gcsafe, locks: 0.}
proc `remotePath=`*(self: RemoteTransform; val: NodePath) {.gcsafe, locks: 0.}
proc updatePosition*(self: RemoteTransform): bool {.gcsafe, locks: 0.}
proc `updatePosition=`*(self: RemoteTransform; val: bool) {.gcsafe, locks: 0.}
proc updateRotation*(self: RemoteTransform): bool {.gcsafe, locks: 0.}
proc `updateRotation=`*(self: RemoteTransform; val: bool) {.gcsafe, locks: 0.}
proc updateScale*(self: RemoteTransform): bool {.gcsafe, locks: 0.}
proc `updateScale=`*(self: RemoteTransform; val: bool) {.gcsafe, locks: 0.}
proc useGlobalCoordinates*(self: RemoteTransform): bool {.gcsafe, locks: 0.}
proc `useGlobalCoordinates=`*(self: RemoteTransform; val: bool) {.gcsafe, locks: 0.}
proc forceUpdateCache*(self: RemoteTransform) {.gcsafe, locks: 0.}
var remoteTransformGetRemoteNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc remotePath(self: RemoteTransform): NodePath =
  if isNil(remoteTransformGetRemoteNodeMethodBind):
    remoteTransformGetRemoteNodeMethodBind = getMethod(cstring"RemoteTransform",
        cstring"get_remote_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  remoteTransformGetRemoteNodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var remoteTransformSetRemoteNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `remotePath=`(self: RemoteTransform; val: NodePath) =
  if isNil(remoteTransformSetRemoteNodeMethodBind):
    remoteTransformSetRemoteNodeMethodBind = getMethod(cstring"RemoteTransform",
        cstring"set_remote_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  remoteTransformSetRemoteNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransformGetUpdatePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc updatePosition(self: RemoteTransform): bool =
  if isNil(remoteTransformGetUpdatePositionMethodBind):
    remoteTransformGetUpdatePositionMethodBind = getMethod(
        cstring"RemoteTransform", cstring"get_update_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransformGetUpdatePositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var remoteTransformSetUpdatePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `updatePosition=`(self: RemoteTransform; val: bool) =
  if isNil(remoteTransformSetUpdatePositionMethodBind):
    remoteTransformSetUpdatePositionMethodBind = getMethod(
        cstring"RemoteTransform", cstring"set_update_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransformSetUpdatePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransformGetUpdateRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateRotation(self: RemoteTransform): bool =
  if isNil(remoteTransformGetUpdateRotationMethodBind):
    remoteTransformGetUpdateRotationMethodBind = getMethod(
        cstring"RemoteTransform", cstring"get_update_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransformGetUpdateRotationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var remoteTransformSetUpdateRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `updateRotation=`(self: RemoteTransform; val: bool) =
  if isNil(remoteTransformSetUpdateRotationMethodBind):
    remoteTransformSetUpdateRotationMethodBind = getMethod(
        cstring"RemoteTransform", cstring"set_update_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransformSetUpdateRotationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransformGetUpdateScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateScale(self: RemoteTransform): bool =
  if isNil(remoteTransformGetUpdateScaleMethodBind):
    remoteTransformGetUpdateScaleMethodBind = getMethod(cstring"RemoteTransform",
        cstring"get_update_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransformGetUpdateScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var remoteTransformSetUpdateScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `updateScale=`(self: RemoteTransform; val: bool) =
  if isNil(remoteTransformSetUpdateScaleMethodBind):
    remoteTransformSetUpdateScaleMethodBind = getMethod(cstring"RemoteTransform",
        cstring"set_update_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransformSetUpdateScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransformGetUseGlobalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc useGlobalCoordinates(self: RemoteTransform): bool =
  if isNil(remoteTransformGetUseGlobalCoordinatesMethodBind):
    remoteTransformGetUseGlobalCoordinatesMethodBind = getMethod(
        cstring"RemoteTransform", cstring"get_use_global_coordinates")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransformGetUseGlobalCoordinatesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var remoteTransformSetUseGlobalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useGlobalCoordinates=`(self: RemoteTransform; val: bool) =
  if isNil(remoteTransformSetUseGlobalCoordinatesMethodBind):
    remoteTransformSetUseGlobalCoordinatesMethodBind = getMethod(
        cstring"RemoteTransform", cstring"set_use_global_coordinates")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransformSetUseGlobalCoordinatesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransformForceUpdateCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceUpdateCache(self: RemoteTransform) =
  if isNil(remoteTransformForceUpdateCacheMethodBind):
    remoteTransformForceUpdateCacheMethodBind = getMethod(
        cstring"RemoteTransform", cstring"force_update_cache")
  var ptrCallRet: pointer
  remoteTransformForceUpdateCacheMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
