
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc upVector*(self: Navigation): Vector3 {.gcsafe, locks: 0.}
proc `upVector=`*(self: Navigation; val: Vector3) {.gcsafe, locks: 0.}
proc getClosestPoint*(self: Navigation; toPoint: Vector3): Vector3 {.gcsafe, locks: 0.}
proc getClosestPointNormal*(self: Navigation; toPoint: Vector3): Vector3 {.gcsafe,
    locks: 0.}
proc getClosestPointOwner*(self: Navigation; toPoint: Vector3): Object {.gcsafe,
    locks: 0.}
proc getClosestPointToSegment*(self: Navigation; start: Vector3; endd: Vector3;
                              useCollision: bool = false): Vector3 {.gcsafe, locks: 0.}
proc getSimplePath*(self: Navigation; start: Vector3; endd: Vector3;
                   optimize: bool = true): PoolVector3Array {.gcsafe, locks: 0.}
proc navmeshAdd*(self: Navigation; mesh: NavigationMesh; xform: Transform;
                owner: Object = nil): int64 {.gcsafe, locks: 0.}
proc navmeshRemove*(self: Navigation; id: int64) {.gcsafe, locks: 0.}
proc navmeshSetTransform*(self: Navigation; id: int64; xform: Transform) {.gcsafe,
    locks: 0.}
var navigationGetUpVectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc upVector(self: Navigation): Vector3 =
  if isNil(navigationGetUpVectorMethodBind):
    navigationGetUpVectorMethodBind = getMethod(cstring"Navigation",
        cstring"get_up_vector")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationGetUpVectorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var navigationSetUpVectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `upVector=`(self: Navigation; val: Vector3) =
  if isNil(navigationSetUpVectorMethodBind):
    navigationSetUpVectorMethodBind = getMethod(cstring"Navigation",
        cstring"set_up_vector")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  navigationSetUpVectorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var navigationGetClosestPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPoint(self: Navigation; toPoint: Vector3): Vector3 =
  if isNil(navigationGetClosestPointMethodBind):
    navigationGetClosestPointMethodBind = getMethod(cstring"Navigation",
        cstring"get_closest_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationGetClosestPointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationGetClosestPointNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointNormal(self: Navigation; toPoint: Vector3): Vector3 =
  if isNil(navigationGetClosestPointNormalMethodBind):
    navigationGetClosestPointNormalMethodBind = getMethod(cstring"Navigation",
        cstring"get_closest_point_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationGetClosestPointNormalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationGetClosestPointOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointOwner(self: Navigation; toPoint: Vector3): Object =
  if isNil(navigationGetClosestPointOwnerMethodBind):
    navigationGetClosestPointOwnerMethodBind = getMethod(cstring"Navigation",
        cstring"get_closest_point_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  navigationGetClosestPointOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var navigationGetClosestPointToSegmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointToSegment(self: Navigation; start: Vector3; endd: Vector3;
                             useCollision: bool = false): Vector3 =
  if isNil(navigationGetClosestPointToSegmentMethodBind):
    navigationGetClosestPointToSegmentMethodBind = getMethod(cstring"Navigation",
        cstring"get_closest_point_to_segment")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(start)
  argsToPassToGodot[][1] = unsafeAddr(endd)
  argsToPassToGodot[][2] = unsafeAddr(useCollision)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationGetClosestPointToSegmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationGetSimplePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSimplePath(self: Navigation; start: Vector3; endd: Vector3;
                  optimize: bool = true): PoolVector3Array =
  if isNil(navigationGetSimplePathMethodBind):
    navigationGetSimplePathMethodBind = getMethod(cstring"Navigation",
        cstring"get_simple_path")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(start)
  argsToPassToGodot[][1] = unsafeAddr(endd)
  argsToPassToGodot[][2] = unsafeAddr(optimize)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  navigationGetSimplePathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var navigationNavmeshAddMethodBind {.threadvar.}: ptr GodotMethodBind
proc navmeshAdd(self: Navigation; mesh: NavigationMesh; xform: Transform;
               owner: Object = nil): int64 =
  if isNil(navigationNavmeshAddMethodBind):
    navigationNavmeshAddMethodBind = getMethod(cstring"Navigation",
        cstring"navmesh_add")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(xform)
  let argToPassToGodot2 = if not owner.isNil:
    owner.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationNavmeshAddMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var navigationNavmeshRemoveMethodBind {.threadvar.}: ptr GodotMethodBind
proc navmeshRemove(self: Navigation; id: int64) =
  if isNil(navigationNavmeshRemoveMethodBind):
    navigationNavmeshRemoveMethodBind = getMethod(cstring"Navigation",
        cstring"navmesh_remove")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  navigationNavmeshRemoveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var navigationNavmeshSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc navmeshSetTransform(self: Navigation; id: int64; xform: Transform) =
  if isNil(navigationNavmeshSetTransformMethodBind):
    navigationNavmeshSetTransformMethodBind = getMethod(cstring"Navigation",
        cstring"navmesh_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(xform)
  var ptrCallRet: pointer
  navigationNavmeshSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
