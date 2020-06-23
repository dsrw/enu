
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc remotePath*(self: RemoteTransform2D): NodePath {.gcsafe, locks: 0.}
proc `remotePath=`*(self: RemoteTransform2D; val: NodePath) {.gcsafe, locks: 0.}
proc updatePosition*(self: RemoteTransform2D): bool {.gcsafe, locks: 0.}
proc `updatePosition=`*(self: RemoteTransform2D; val: bool) {.gcsafe, locks: 0.}
proc updateRotation*(self: RemoteTransform2D): bool {.gcsafe, locks: 0.}
proc `updateRotation=`*(self: RemoteTransform2D; val: bool) {.gcsafe, locks: 0.}
proc updateScale*(self: RemoteTransform2D): bool {.gcsafe, locks: 0.}
proc `updateScale=`*(self: RemoteTransform2D; val: bool) {.gcsafe, locks: 0.}
proc useGlobalCoordinates*(self: RemoteTransform2D): bool {.gcsafe, locks: 0.}
proc `useGlobalCoordinates=`*(self: RemoteTransform2D; val: bool) {.gcsafe, locks: 0.}
proc forceUpdateCache*(self: RemoteTransform2D) {.gcsafe, locks: 0.}
var remoteTransform2DGetRemoteNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc remotePath(self: RemoteTransform2D): NodePath =
  if isNil(remoteTransform2DGetRemoteNodeMethodBind):
    remoteTransform2DGetRemoteNodeMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"get_remote_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  remoteTransform2DGetRemoteNodeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var remoteTransform2DSetRemoteNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `remotePath=`(self: RemoteTransform2D; val: NodePath) =
  if isNil(remoteTransform2DSetRemoteNodeMethodBind):
    remoteTransform2DSetRemoteNodeMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"set_remote_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  remoteTransform2DSetRemoteNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransform2DGetUpdatePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc updatePosition(self: RemoteTransform2D): bool =
  if isNil(remoteTransform2DGetUpdatePositionMethodBind):
    remoteTransform2DGetUpdatePositionMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"get_update_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransform2DGetUpdatePositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var remoteTransform2DSetUpdatePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `updatePosition=`(self: RemoteTransform2D; val: bool) =
  if isNil(remoteTransform2DSetUpdatePositionMethodBind):
    remoteTransform2DSetUpdatePositionMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"set_update_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransform2DSetUpdatePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransform2DGetUpdateRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateRotation(self: RemoteTransform2D): bool =
  if isNil(remoteTransform2DGetUpdateRotationMethodBind):
    remoteTransform2DGetUpdateRotationMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"get_update_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransform2DGetUpdateRotationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var remoteTransform2DSetUpdateRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `updateRotation=`(self: RemoteTransform2D; val: bool) =
  if isNil(remoteTransform2DSetUpdateRotationMethodBind):
    remoteTransform2DSetUpdateRotationMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"set_update_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransform2DSetUpdateRotationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransform2DGetUpdateScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateScale(self: RemoteTransform2D): bool =
  if isNil(remoteTransform2DGetUpdateScaleMethodBind):
    remoteTransform2DGetUpdateScaleMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"get_update_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransform2DGetUpdateScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var remoteTransform2DSetUpdateScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `updateScale=`(self: RemoteTransform2D; val: bool) =
  if isNil(remoteTransform2DSetUpdateScaleMethodBind):
    remoteTransform2DSetUpdateScaleMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"set_update_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransform2DSetUpdateScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransform2DGetUseGlobalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc useGlobalCoordinates(self: RemoteTransform2D): bool =
  if isNil(remoteTransform2DGetUseGlobalCoordinatesMethodBind):
    remoteTransform2DGetUseGlobalCoordinatesMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"get_use_global_coordinates")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  remoteTransform2DGetUseGlobalCoordinatesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var remoteTransform2DSetUseGlobalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useGlobalCoordinates=`(self: RemoteTransform2D; val: bool) =
  if isNil(remoteTransform2DSetUseGlobalCoordinatesMethodBind):
    remoteTransform2DSetUseGlobalCoordinatesMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"set_use_global_coordinates")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  remoteTransform2DSetUseGlobalCoordinatesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var remoteTransform2DForceUpdateCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceUpdateCache(self: RemoteTransform2D) =
  if isNil(remoteTransform2DForceUpdateCacheMethodBind):
    remoteTransform2DForceUpdateCacheMethodBind = getMethod(
        cstring"RemoteTransform2D", cstring"force_update_cache")
  var ptrCallRet: pointer
  remoteTransform2DForceUpdateCacheMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
