
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  COLOR_8BIT* = 1'i64
  COLOR_FLOAT* = 2'i64
  COLOR_NONE* = 0'i64
  CUSTOM_DATA_8BIT* = 1'i64
  CUSTOM_DATA_FLOAT* = 2'i64
  CUSTOM_DATA_NONE* = 0'i64
  TRANSFORM_2D* = 0'i64
  TRANSFORM_3D* = 1'i64
proc colorArray*(self: MultiMesh): PoolColorArray {.gcsafe, locks: 0.}
proc `colorArray=`*(self: MultiMesh; val: PoolColorArray) {.gcsafe, locks: 0.}
proc colorFormat*(self: MultiMesh): int64 {.gcsafe, locks: 0.}
proc `colorFormat=`*(self: MultiMesh; val: int64) {.gcsafe, locks: 0.}
proc customDataArray*(self: MultiMesh): PoolColorArray {.gcsafe, locks: 0.}
proc `customDataArray=`*(self: MultiMesh; val: PoolColorArray) {.gcsafe, locks: 0.}
proc customDataFormat*(self: MultiMesh): int64 {.gcsafe, locks: 0.}
proc `customDataFormat=`*(self: MultiMesh; val: int64) {.gcsafe, locks: 0.}
proc instanceCount*(self: MultiMesh): int64 {.gcsafe, locks: 0.}
proc `instanceCount=`*(self: MultiMesh; val: int64) {.gcsafe, locks: 0.}
proc mesh*(self: MultiMesh): Mesh {.gcsafe, locks: 0.}
proc `mesh=`*(self: MultiMesh; val: Mesh) {.gcsafe, locks: 0.}
proc transform2dArray*(self: MultiMesh): PoolVector2Array {.gcsafe, locks: 0.}
proc `transform2dArray=`*(self: MultiMesh; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc transformArray*(self: MultiMesh): PoolVector3Array {.gcsafe, locks: 0.}
proc `transformArray=`*(self: MultiMesh; val: PoolVector3Array) {.gcsafe, locks: 0.}
proc transformFormat*(self: MultiMesh): int64 {.gcsafe, locks: 0.}
proc `transformFormat=`*(self: MultiMesh; val: int64) {.gcsafe, locks: 0.}
proc visibleInstanceCount*(self: MultiMesh): int64 {.gcsafe, locks: 0.}
proc `visibleInstanceCount=`*(self: MultiMesh; val: int64) {.gcsafe, locks: 0.}
proc getAabb*(self: MultiMesh): AABB {.gcsafe, locks: 0.}
proc getInstanceColor*(self: MultiMesh; instance: int64): Color {.gcsafe, locks: 0.}
proc getInstanceCustomData*(self: MultiMesh; instance: int64): Color {.gcsafe, locks: 0.}
proc getInstanceTransform*(self: MultiMesh; instance: int64): Transform {.gcsafe,
    locks: 0.}
proc getInstanceTransform2d*(self: MultiMesh; instance: int64): Transform2D {.gcsafe,
    locks: 0.}
proc setAsBulkArray*(self: MultiMesh; array: PoolRealArray) {.gcsafe, locks: 0.}
proc setInstanceColor*(self: MultiMesh; instance: int64; color: Color) {.gcsafe,
    locks: 0.}
proc setInstanceCustomData*(self: MultiMesh; instance: int64; customData: Color) {.
    gcsafe, locks: 0.}
proc setInstanceTransform*(self: MultiMesh; instance: int64; transform: Transform) {.
    gcsafe, locks: 0.}
proc setInstanceTransform2d*(self: MultiMesh; instance: int64; transform: Transform2D) {.
    gcsafe, locks: 0.}
var multiMeshUnderscoregetColorArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc colorArray(self: MultiMesh): PoolColorArray =
  if isNil(multiMeshUnderscoregetColorArrayMethodBind):
    multiMeshUnderscoregetColorArrayMethodBind = getMethod(cstring"MultiMesh",
        cstring"_get_color_array")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolColorArray
  ptrCallRet = addr(ptrCallVal)
  multiMeshUnderscoregetColorArrayMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolColorArray(ptrCallVal)

var multiMeshUnderscoresetColorArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `colorArray=`(self: MultiMesh; val: PoolColorArray) =
  if isNil(multiMeshUnderscoresetColorArrayMethodBind):
    multiMeshUnderscoresetColorArrayMethodBind = getMethod(cstring"MultiMesh",
        cstring"_set_color_array")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolColorArray
  var ptrCallRet: pointer
  multiMeshUnderscoresetColorArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetColorFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc colorFormat(self: MultiMesh): int64 =
  if isNil(multiMeshGetColorFormatMethodBind):
    multiMeshGetColorFormatMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_color_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetColorFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiMeshSetColorFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `colorFormat=`(self: MultiMesh; val: int64) =
  if isNil(multiMeshSetColorFormatMethodBind):
    multiMeshSetColorFormatMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_color_format")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  multiMeshSetColorFormatMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var multiMeshUnderscoregetCustomDataArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc customDataArray(self: MultiMesh): PoolColorArray =
  if isNil(multiMeshUnderscoregetCustomDataArrayMethodBind):
    multiMeshUnderscoregetCustomDataArrayMethodBind = getMethod(
        cstring"MultiMesh", cstring"_get_custom_data_array")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolColorArray
  ptrCallRet = addr(ptrCallVal)
  multiMeshUnderscoregetCustomDataArrayMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolColorArray(ptrCallVal)

var multiMeshUnderscoresetCustomDataArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customDataArray=`(self: MultiMesh; val: PoolColorArray) =
  if isNil(multiMeshUnderscoresetCustomDataArrayMethodBind):
    multiMeshUnderscoresetCustomDataArrayMethodBind = getMethod(
        cstring"MultiMesh", cstring"_set_custom_data_array")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolColorArray
  var ptrCallRet: pointer
  multiMeshUnderscoresetCustomDataArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetCustomDataFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc customDataFormat(self: MultiMesh): int64 =
  if isNil(multiMeshGetCustomDataFormatMethodBind):
    multiMeshGetCustomDataFormatMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_custom_data_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetCustomDataFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiMeshSetCustomDataFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customDataFormat=`(self: MultiMesh; val: int64) =
  if isNil(multiMeshSetCustomDataFormatMethodBind):
    multiMeshSetCustomDataFormatMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_custom_data_format")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  multiMeshSetCustomDataFormatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetInstanceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceCount(self: MultiMesh): int64 =
  if isNil(multiMeshGetInstanceCountMethodBind):
    multiMeshGetInstanceCountMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_instance_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetInstanceCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiMeshSetInstanceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `instanceCount=`(self: MultiMesh; val: int64) =
  if isNil(multiMeshSetInstanceCountMethodBind):
    multiMeshSetInstanceCountMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_instance_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  multiMeshSetInstanceCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: MultiMesh): Mesh =
  if isNil(multiMeshGetMeshMethodBind):
    multiMeshGetMeshMethodBind = getMethod(cstring"MultiMesh", cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  multiMeshGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var multiMeshSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: MultiMesh; val: Mesh) =
  if isNil(multiMeshSetMeshMethodBind):
    multiMeshSetMeshMethodBind = getMethod(cstring"MultiMesh", cstring"set_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  multiMeshSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var multiMeshUnderscoregetTransform2dArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform2dArray(self: MultiMesh): PoolVector2Array =
  if isNil(multiMeshUnderscoregetTransform2dArrayMethodBind):
    multiMeshUnderscoregetTransform2dArrayMethodBind = getMethod(
        cstring"MultiMesh", cstring"_get_transform_2d_array")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  multiMeshUnderscoregetTransform2dArrayMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var multiMeshUnderscoresetTransform2dArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform2dArray=`(self: MultiMesh; val: PoolVector2Array) =
  if isNil(multiMeshUnderscoresetTransform2dArrayMethodBind):
    multiMeshUnderscoresetTransform2dArrayMethodBind = getMethod(
        cstring"MultiMesh", cstring"_set_transform_2d_array")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  multiMeshUnderscoresetTransform2dArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshUnderscoregetTransformArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc transformArray(self: MultiMesh): PoolVector3Array =
  if isNil(multiMeshUnderscoregetTransformArrayMethodBind):
    multiMeshUnderscoregetTransformArrayMethodBind = getMethod(
        cstring"MultiMesh", cstring"_get_transform_array")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  ptrCallRet = addr(ptrCallVal)
  multiMeshUnderscoregetTransformArrayMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var multiMeshUnderscoresetTransformArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transformArray=`(self: MultiMesh; val: PoolVector3Array) =
  if isNil(multiMeshUnderscoresetTransformArrayMethodBind):
    multiMeshUnderscoresetTransformArrayMethodBind = getMethod(
        cstring"MultiMesh", cstring"_set_transform_array")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  multiMeshUnderscoresetTransformArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetTransformFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc transformFormat(self: MultiMesh): int64 =
  if isNil(multiMeshGetTransformFormatMethodBind):
    multiMeshGetTransformFormatMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_transform_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetTransformFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiMeshSetTransformFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transformFormat=`(self: MultiMesh; val: int64) =
  if isNil(multiMeshSetTransformFormatMethodBind):
    multiMeshSetTransformFormatMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_transform_format")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  multiMeshSetTransformFormatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetVisibleInstanceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc visibleInstanceCount(self: MultiMesh): int64 =
  if isNil(multiMeshGetVisibleInstanceCountMethodBind):
    multiMeshGetVisibleInstanceCountMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_visible_instance_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetVisibleInstanceCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var multiMeshSetVisibleInstanceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visibleInstanceCount=`(self: MultiMesh; val: int64) =
  if isNil(multiMeshSetVisibleInstanceCountMethodBind):
    multiMeshSetVisibleInstanceCountMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_visible_instance_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  multiMeshSetVisibleInstanceCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAabb(self: MultiMesh): AABB =
  if isNil(multiMeshGetAabbMethodBind):
    multiMeshGetAabbMethodBind = getMethod(cstring"MultiMesh", cstring"get_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var multiMeshGetInstanceColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstanceColor(self: MultiMesh; instance: int64): Color =
  if isNil(multiMeshGetInstanceColorMethodBind):
    multiMeshGetInstanceColorMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_instance_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetInstanceColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetInstanceCustomDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstanceCustomData(self: MultiMesh; instance: int64): Color =
  if isNil(multiMeshGetInstanceCustomDataMethodBind):
    multiMeshGetInstanceCustomDataMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_instance_custom_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetInstanceCustomDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetInstanceTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstanceTransform(self: MultiMesh; instance: int64): Transform =
  if isNil(multiMeshGetInstanceTransformMethodBind):
    multiMeshGetInstanceTransformMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_instance_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetInstanceTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshGetInstanceTransform2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstanceTransform2d(self: MultiMesh; instance: int64): Transform2D =
  if isNil(multiMeshGetInstanceTransform2dMethodBind):
    multiMeshGetInstanceTransform2dMethodBind = getMethod(cstring"MultiMesh",
        cstring"get_instance_transform_2d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  multiMeshGetInstanceTransform2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshSetAsBulkArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAsBulkArray(self: MultiMesh; array: PoolRealArray) =
  if isNil(multiMeshSetAsBulkArrayMethodBind):
    multiMeshSetAsBulkArrayMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_as_bulk_array")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = array.godotPoolRealArray
  var ptrCallRet: pointer
  multiMeshSetAsBulkArrayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var multiMeshSetInstanceColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInstanceColor(self: MultiMesh; instance: int64; color: Color) =
  if isNil(multiMeshSetInstanceColorMethodBind):
    multiMeshSetInstanceColorMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_instance_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  multiMeshSetInstanceColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshSetInstanceCustomDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInstanceCustomData(self: MultiMesh; instance: int64; customData: Color) =
  if isNil(multiMeshSetInstanceCustomDataMethodBind):
    multiMeshSetInstanceCustomDataMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_instance_custom_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(customData)
  var ptrCallRet: pointer
  multiMeshSetInstanceCustomDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshSetInstanceTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInstanceTransform(self: MultiMesh; instance: int64; transform: Transform) =
  if isNil(multiMeshSetInstanceTransformMethodBind):
    multiMeshSetInstanceTransformMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_instance_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  multiMeshSetInstanceTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshSetInstanceTransform2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInstanceTransform2d(self: MultiMesh; instance: int64; transform: Transform2D) =
  if isNil(multiMeshSetInstanceTransform2dMethodBind):
    multiMeshSetInstanceTransform2dMethodBind = getMethod(cstring"MultiMesh",
        cstring"set_instance_transform_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  multiMeshSetInstanceTransform2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
