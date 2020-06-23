
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc mapData*(self: HeightMapShape): PoolRealArray {.gcsafe, locks: 0.}
proc `mapData=`*(self: HeightMapShape; val: PoolRealArray) {.gcsafe, locks: 0.}
proc mapDepth*(self: HeightMapShape): int64 {.gcsafe, locks: 0.}
proc `mapDepth=`*(self: HeightMapShape; val: int64) {.gcsafe, locks: 0.}
proc mapWidth*(self: HeightMapShape): int64 {.gcsafe, locks: 0.}
proc `mapWidth=`*(self: HeightMapShape; val: int64) {.gcsafe, locks: 0.}
var heightMapShapeGetMapDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc mapData(self: HeightMapShape): PoolRealArray =
  if isNil(heightMapShapeGetMapDataMethodBind):
    heightMapShapeGetMapDataMethodBind = getMethod(cstring"HeightMapShape",
        cstring"get_map_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  ptrCallRet = addr(ptrCallVal)
  heightMapShapeGetMapDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var heightMapShapeSetMapDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mapData=`(self: HeightMapShape; val: PoolRealArray) =
  if isNil(heightMapShapeSetMapDataMethodBind):
    heightMapShapeSetMapDataMethodBind = getMethod(cstring"HeightMapShape",
        cstring"set_map_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolRealArray
  var ptrCallRet: pointer
  heightMapShapeSetMapDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var heightMapShapeGetMapDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc mapDepth(self: HeightMapShape): int64 =
  if isNil(heightMapShapeGetMapDepthMethodBind):
    heightMapShapeGetMapDepthMethodBind = getMethod(cstring"HeightMapShape",
        cstring"get_map_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  heightMapShapeGetMapDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var heightMapShapeSetMapDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mapDepth=`(self: HeightMapShape; val: int64) =
  if isNil(heightMapShapeSetMapDepthMethodBind):
    heightMapShapeSetMapDepthMethodBind = getMethod(cstring"HeightMapShape",
        cstring"set_map_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  heightMapShapeSetMapDepthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var heightMapShapeGetMapWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc mapWidth(self: HeightMapShape): int64 =
  if isNil(heightMapShapeGetMapWidthMethodBind):
    heightMapShapeGetMapWidthMethodBind = getMethod(cstring"HeightMapShape",
        cstring"get_map_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  heightMapShapeGetMapWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var heightMapShapeSetMapWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mapWidth=`(self: HeightMapShape; val: int64) =
  if isNil(heightMapShapeSetMapWidthMethodBind):
    heightMapShapeSetMapWidthMethodBind = getMethod(cstring"HeightMapShape",
        cstring"set_map_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  heightMapShapeSetMapWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
