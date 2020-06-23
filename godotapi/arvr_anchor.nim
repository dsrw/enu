
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc anchorId*(self: ARVRAnchor): int64 {.gcsafe, locks: 0.}
proc `anchorId=`*(self: ARVRAnchor; val: int64) {.gcsafe, locks: 0.}
proc getAnchorName*(self: ARVRAnchor): string {.gcsafe, locks: 0.}
proc getIsActive*(self: ARVRAnchor): bool {.gcsafe, locks: 0.}
proc getMesh*(self: ARVRAnchor): Mesh {.gcsafe, locks: 0.}
proc getPlane*(self: ARVRAnchor): Plane {.gcsafe, locks: 0.}
proc getSize*(self: ARVRAnchor): Vector3 {.gcsafe, locks: 0.}
var aRVRAnchorGetAnchorIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc anchorId(self: ARVRAnchor): int64 =
  if isNil(aRVRAnchorGetAnchorIdMethodBind):
    aRVRAnchorGetAnchorIdMethodBind = getMethod(cstring"ARVRAnchor",
        cstring"get_anchor_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRAnchorGetAnchorIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRAnchorSetAnchorIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `anchorId=`(self: ARVRAnchor; val: int64) =
  if isNil(aRVRAnchorSetAnchorIdMethodBind):
    aRVRAnchorSetAnchorIdMethodBind = getMethod(cstring"ARVRAnchor",
        cstring"set_anchor_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVRAnchorSetAnchorIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var aRVRAnchorGetAnchorNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnchorName(self: ARVRAnchor): string =
  if isNil(aRVRAnchorGetAnchorNameMethodBind):
    aRVRAnchorGetAnchorNameMethodBind = getMethod(cstring"ARVRAnchor",
        cstring"get_anchor_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  aRVRAnchorGetAnchorNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var aRVRAnchorGetIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIsActive(self: ARVRAnchor): bool =
  if isNil(aRVRAnchorGetIsActiveMethodBind):
    aRVRAnchorGetIsActiveMethodBind = getMethod(cstring"ARVRAnchor",
        cstring"get_is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRAnchorGetIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRAnchorGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMesh(self: ARVRAnchor): Mesh =
  if isNil(aRVRAnchorGetMeshMethodBind):
    aRVRAnchorGetMeshMethodBind = getMethod(cstring"ARVRAnchor", cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  aRVRAnchorGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var aRVRAnchorGetPlaneMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPlane(self: ARVRAnchor): Plane =
  if isNil(aRVRAnchorGetPlaneMethodBind):
    aRVRAnchorGetPlaneMethodBind = getMethod(cstring"ARVRAnchor",
        cstring"get_plane")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRAnchorGetPlaneMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRAnchorGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSize(self: ARVRAnchor): Vector3 =
  if isNil(aRVRAnchorGetSizeMethodBind):
    aRVRAnchorGetSizeMethodBind = getMethod(cstring"ARVRAnchor", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRAnchorGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
