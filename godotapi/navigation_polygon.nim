
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc outlines*(self: NavigationPolygon): Array {.gcsafe, locks: 0.}
proc `outlines=`*(self: NavigationPolygon; val: Array) {.gcsafe, locks: 0.}
proc polygons*(self: NavigationPolygon): Array {.gcsafe, locks: 0.}
proc `polygons=`*(self: NavigationPolygon; val: Array) {.gcsafe, locks: 0.}
proc vertices*(self: NavigationPolygon): PoolVector2Array {.gcsafe, locks: 0.}
proc `vertices=`*(self: NavigationPolygon; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc addOutline*(self: NavigationPolygon; outline: PoolVector2Array) {.gcsafe,
    locks: 0.}
proc addOutlineAtIndex*(self: NavigationPolygon; outline: PoolVector2Array;
                       index: int64) {.gcsafe, locks: 0.}
proc addPolygon*(self: NavigationPolygon; polygon: PoolIntArray) {.gcsafe, locks: 0.}
proc clearOutlines*(self: NavigationPolygon) {.gcsafe, locks: 0.}
proc clearPolygons*(self: NavigationPolygon) {.gcsafe, locks: 0.}
proc getOutline*(self: NavigationPolygon; idx: int64): PoolVector2Array {.gcsafe,
    locks: 0.}
proc getOutlineCount*(self: NavigationPolygon): int64 {.gcsafe, locks: 0.}
proc getPolygon*(self: NavigationPolygon; idx: int64): PoolIntArray {.gcsafe, locks: 0.}
proc getPolygonCount*(self: NavigationPolygon): int64 {.gcsafe, locks: 0.}
proc makePolygonsFromOutlines*(self: NavigationPolygon) {.gcsafe, locks: 0.}
proc removeOutline*(self: NavigationPolygon; idx: int64) {.gcsafe, locks: 0.}
proc setOutline*(self: NavigationPolygon; idx: int64; outline: PoolVector2Array) {.
    gcsafe, locks: 0.}
var navigationPolygonUnderscoregetOutlinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc outlines(self: NavigationPolygon): Array =
  if isNil(navigationPolygonUnderscoregetOutlinesMethodBind):
    navigationPolygonUnderscoregetOutlinesMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"_get_outlines")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  navigationPolygonUnderscoregetOutlinesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var navigationPolygonUnderscoresetOutlinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outlines=`(self: NavigationPolygon; val: Array) =
  if isNil(navigationPolygonUnderscoresetOutlinesMethodBind):
    navigationPolygonUnderscoresetOutlinesMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"_set_outlines")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  navigationPolygonUnderscoresetOutlinesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonUnderscoregetPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygons(self: NavigationPolygon): Array =
  if isNil(navigationPolygonUnderscoregetPolygonsMethodBind):
    navigationPolygonUnderscoregetPolygonsMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"_get_polygons")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  navigationPolygonUnderscoregetPolygonsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var navigationPolygonUnderscoresetPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygons=`(self: NavigationPolygon; val: Array) =
  if isNil(navigationPolygonUnderscoresetPolygonsMethodBind):
    navigationPolygonUnderscoresetPolygonsMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"_set_polygons")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  navigationPolygonUnderscoresetPolygonsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonGetVerticesMethodBind {.threadvar.}: ptr GodotMethodBind
proc vertices(self: NavigationPolygon): PoolVector2Array =
  if isNil(navigationPolygonGetVerticesMethodBind):
    navigationPolygonGetVerticesMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"get_vertices")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  navigationPolygonGetVerticesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var navigationPolygonSetVerticesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vertices=`(self: NavigationPolygon; val: PoolVector2Array) =
  if isNil(navigationPolygonSetVerticesMethodBind):
    navigationPolygonSetVerticesMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"set_vertices")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  navigationPolygonSetVerticesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonAddOutlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc addOutline(self: NavigationPolygon; outline: PoolVector2Array) =
  if isNil(navigationPolygonAddOutlineMethodBind):
    navigationPolygonAddOutlineMethodBind = getMethod(cstring"NavigationPolygon",
        cstring"add_outline")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = outline.godotPoolVector2Array
  var ptrCallRet: pointer
  navigationPolygonAddOutlineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonAddOutlineAtIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc addOutlineAtIndex(self: NavigationPolygon; outline: PoolVector2Array;
                      index: int64) =
  if isNil(navigationPolygonAddOutlineAtIndexMethodBind):
    navigationPolygonAddOutlineAtIndexMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"add_outline_at_index")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = outline.godotPoolVector2Array
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  navigationPolygonAddOutlineAtIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonAddPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPolygon(self: NavigationPolygon; polygon: PoolIntArray) =
  if isNil(navigationPolygonAddPolygonMethodBind):
    navigationPolygonAddPolygonMethodBind = getMethod(cstring"NavigationPolygon",
        cstring"add_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = polygon.godotPoolIntArray
  var ptrCallRet: pointer
  navigationPolygonAddPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonClearOutlinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearOutlines(self: NavigationPolygon) =
  if isNil(navigationPolygonClearOutlinesMethodBind):
    navigationPolygonClearOutlinesMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"clear_outlines")
  var ptrCallRet: pointer
  navigationPolygonClearOutlinesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationPolygonClearPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearPolygons(self: NavigationPolygon) =
  if isNil(navigationPolygonClearPolygonsMethodBind):
    navigationPolygonClearPolygonsMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"clear_polygons")
  var ptrCallRet: pointer
  navigationPolygonClearPolygonsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationPolygonGetOutlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOutline(self: NavigationPolygon; idx: int64): PoolVector2Array =
  if isNil(navigationPolygonGetOutlineMethodBind):
    navigationPolygonGetOutlineMethodBind = getMethod(cstring"NavigationPolygon",
        cstring"get_outline")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  navigationPolygonGetOutlineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var navigationPolygonGetOutlineCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOutlineCount(self: NavigationPolygon): int64 =
  if isNil(navigationPolygonGetOutlineCountMethodBind):
    navigationPolygonGetOutlineCountMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"get_outline_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationPolygonGetOutlineCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationPolygonGetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPolygon(self: NavigationPolygon; idx: int64): PoolIntArray =
  if isNil(navigationPolygonGetPolygonMethodBind):
    navigationPolygonGetPolygonMethodBind = getMethod(cstring"NavigationPolygon",
        cstring"get_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  navigationPolygonGetPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var navigationPolygonGetPolygonCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPolygonCount(self: NavigationPolygon): int64 =
  if isNil(navigationPolygonGetPolygonCountMethodBind):
    navigationPolygonGetPolygonCountMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"get_polygon_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigationPolygonGetPolygonCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var navigationPolygonMakePolygonsFromOutlinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc makePolygonsFromOutlines(self: NavigationPolygon) =
  if isNil(navigationPolygonMakePolygonsFromOutlinesMethodBind):
    navigationPolygonMakePolygonsFromOutlinesMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"make_polygons_from_outlines")
  var ptrCallRet: pointer
  navigationPolygonMakePolygonsFromOutlinesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var navigationPolygonRemoveOutlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeOutline(self: NavigationPolygon; idx: int64) =
  if isNil(navigationPolygonRemoveOutlineMethodBind):
    navigationPolygonRemoveOutlineMethodBind = getMethod(
        cstring"NavigationPolygon", cstring"remove_outline")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  navigationPolygonRemoveOutlineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigationPolygonSetOutlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOutline(self: NavigationPolygon; idx: int64; outline: PoolVector2Array) =
  if isNil(navigationPolygonSetOutlineMethodBind):
    navigationPolygonSetOutlineMethodBind = getMethod(cstring"NavigationPolygon",
        cstring"set_outline")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = outline.godotPoolVector2Array
  var ptrCallRet: pointer
  navigationPolygonSetOutlineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
