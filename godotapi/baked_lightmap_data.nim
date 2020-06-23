
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc bounds*(self: BakedLightmapData): AABB {.gcsafe, locks: 0.}
proc `bounds=`*(self: BakedLightmapData; val: AABB) {.gcsafe, locks: 0.}
proc cellSpaceTransform*(self: BakedLightmapData): Transform {.gcsafe, locks: 0.}
proc `cellSpaceTransform=`*(self: BakedLightmapData; val: Transform) {.gcsafe,
    locks: 0.}
proc cellSubdiv*(self: BakedLightmapData): int64 {.gcsafe, locks: 0.}
proc `cellSubdiv=`*(self: BakedLightmapData; val: int64) {.gcsafe, locks: 0.}
proc energy*(self: BakedLightmapData): float64 {.gcsafe, locks: 0.}
proc `energy=`*(self: BakedLightmapData; val: float64) {.gcsafe, locks: 0.}
proc octree*(self: BakedLightmapData): PoolByteArray {.gcsafe, locks: 0.}
proc `octree=`*(self: BakedLightmapData; val: PoolByteArray) {.gcsafe, locks: 0.}
proc userData*(self: BakedLightmapData): Array {.gcsafe, locks: 0.}
proc `userData=`*(self: BakedLightmapData; val: Array) {.gcsafe, locks: 0.}
proc addUser*(self: BakedLightmapData; path: NodePath; lightmap: Texture;
             instance: int64) {.gcsafe, locks: 0.}
proc clearUsers*(self: BakedLightmapData) {.gcsafe, locks: 0.}
proc getUserCount*(self: BakedLightmapData): int64 {.gcsafe, locks: 0.}
proc getUserLightmap*(self: BakedLightmapData; userIdx: int64): Texture {.gcsafe,
    locks: 0.}
proc getUserPath*(self: BakedLightmapData; userIdx: int64): NodePath {.gcsafe, locks: 0.}
var bakedLightmapDataGetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounds(self: BakedLightmapData): AABB =
  if isNil(bakedLightmapDataGetBoundsMethodBind):
    bakedLightmapDataGetBoundsMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"get_bounds")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapDataGetBoundsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapDataSetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounds=`(self: BakedLightmapData; val: AABB) =
  if isNil(bakedLightmapDataSetBoundsMethodBind):
    bakedLightmapDataSetBoundsMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"set_bounds")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapDataSetBoundsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapDataGetCellSpaceTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellSpaceTransform(self: BakedLightmapData): Transform =
  if isNil(bakedLightmapDataGetCellSpaceTransformMethodBind):
    bakedLightmapDataGetCellSpaceTransformMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"get_cell_space_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapDataGetCellSpaceTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapDataSetCellSpaceTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellSpaceTransform=`(self: BakedLightmapData; val: Transform) =
  if isNil(bakedLightmapDataSetCellSpaceTransformMethodBind):
    bakedLightmapDataSetCellSpaceTransformMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"set_cell_space_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapDataSetCellSpaceTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapDataGetCellSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellSubdiv(self: BakedLightmapData): int64 =
  if isNil(bakedLightmapDataGetCellSubdivMethodBind):
    bakedLightmapDataGetCellSubdivMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"get_cell_subdiv")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapDataGetCellSubdivMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapDataSetCellSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellSubdiv=`(self: BakedLightmapData; val: int64) =
  if isNil(bakedLightmapDataSetCellSubdivMethodBind):
    bakedLightmapDataSetCellSubdivMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"set_cell_subdiv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapDataSetCellSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapDataGetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc energy(self: BakedLightmapData): float64 =
  if isNil(bakedLightmapDataGetEnergyMethodBind):
    bakedLightmapDataGetEnergyMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"get_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapDataGetEnergyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapDataSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `energy=`(self: BakedLightmapData; val: float64) =
  if isNil(bakedLightmapDataSetEnergyMethodBind):
    bakedLightmapDataSetEnergyMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"set_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapDataSetEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapDataGetOctreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc octree(self: BakedLightmapData): PoolByteArray =
  if isNil(bakedLightmapDataGetOctreeMethodBind):
    bakedLightmapDataGetOctreeMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"get_octree")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapDataGetOctreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var bakedLightmapDataSetOctreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `octree=`(self: BakedLightmapData; val: PoolByteArray) =
  if isNil(bakedLightmapDataSetOctreeMethodBind):
    bakedLightmapDataSetOctreeMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"set_octree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolByteArray
  var ptrCallRet: pointer
  bakedLightmapDataSetOctreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapDataUnderscoregetUserDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc userData(self: BakedLightmapData): Array =
  if isNil(bakedLightmapDataUnderscoregetUserDataMethodBind):
    bakedLightmapDataUnderscoregetUserDataMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"_get_user_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapDataUnderscoregetUserDataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var bakedLightmapDataUnderscoresetUserDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `userData=`(self: BakedLightmapData; val: Array) =
  if isNil(bakedLightmapDataUnderscoresetUserDataMethodBind):
    bakedLightmapDataUnderscoresetUserDataMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"_set_user_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  bakedLightmapDataUnderscoresetUserDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapDataAddUserMethodBind {.threadvar.}: ptr GodotMethodBind
proc addUser(self: BakedLightmapData; path: NodePath; lightmap: Texture;
            instance: int64) =
  if isNil(bakedLightmapDataAddUserMethodBind):
    bakedLightmapDataAddUserMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"add_user")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  let argToPassToGodot1 = if not lightmap.isNil:
    lightmap.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(instance)
  var ptrCallRet: pointer
  bakedLightmapDataAddUserMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapDataClearUsersMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearUsers(self: BakedLightmapData) =
  if isNil(bakedLightmapDataClearUsersMethodBind):
    bakedLightmapDataClearUsersMethodBind = getMethod(cstring"BakedLightmapData",
        cstring"clear_users")
  var ptrCallRet: pointer
  bakedLightmapDataClearUsersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapDataGetUserCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUserCount(self: BakedLightmapData): int64 =
  if isNil(bakedLightmapDataGetUserCountMethodBind):
    bakedLightmapDataGetUserCountMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"get_user_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapDataGetUserCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapDataGetUserLightmapMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUserLightmap(self: BakedLightmapData; userIdx: int64): Texture =
  if isNil(bakedLightmapDataGetUserLightmapMethodBind):
    bakedLightmapDataGetUserLightmapMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"get_user_lightmap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(userIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapDataGetUserLightmapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var bakedLightmapDataGetUserPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUserPath(self: BakedLightmapData; userIdx: int64): NodePath =
  if isNil(bakedLightmapDataGetUserPathMethodBind):
    bakedLightmapDataGetUserPathMethodBind = getMethod(
        cstring"BakedLightmapData", cstring"get_user_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(userIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapDataGetUserPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newNodePath(ptrCallVal)
