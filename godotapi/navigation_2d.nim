
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc getClosestPoint*(self: Navigation2D; toPoint: Vector2): Vector2 {.gcsafe, locks: 0.}
proc getClosestPointOwner*(self: Navigation2D; toPoint: Vector2): Object {.gcsafe,
    locks: 0.}
proc getSimplePath*(self: Navigation2D; start: Vector2; endd: Vector2;
                   optimize: bool = true): PoolVector2Array {.gcsafe, locks: 0.}
proc navpolyAdd*(self: Navigation2D; mesh: NavigationPolygon; xform: Transform2D;
                owner: Object = nil): int64 {.gcsafe, locks: 0.}
proc navpolyRemove*(self: Navigation2D; id: int64) {.gcsafe, locks: 0.}
proc navpolySetTransform*(self: Navigation2D; id: int64; xform: Transform2D) {.gcsafe,
    locks: 0.}
var navigation2DGetClosestPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPoint(self: Navigation2D; toPoint: Vector2): Vector2 =
  if isNil(navigation2DGetClosestPointMethodBind):
    navigation2DGetClosestPointMethodBind = getMethod(cstring"Navigation2D",
        cstring"get_closest_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  navigation2DGetClosestPointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigation2DGetClosestPointOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClosestPointOwner(self: Navigation2D; toPoint: Vector2): Object =
  if isNil(navigation2DGetClosestPointOwnerMethodBind):
    navigation2DGetClosestPointOwnerMethodBind = getMethod(cstring"Navigation2D",
        cstring"get_closest_point_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPoint)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  navigation2DGetClosestPointOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var navigation2DGetSimplePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSimplePath(self: Navigation2D; start: Vector2; endd: Vector2;
                  optimize: bool = true): PoolVector2Array =
  if isNil(navigation2DGetSimplePathMethodBind):
    navigation2DGetSimplePathMethodBind = getMethod(cstring"Navigation2D",
        cstring"get_simple_path")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(start)
  argsToPassToGodot[][1] = unsafeAddr(endd)
  argsToPassToGodot[][2] = unsafeAddr(optimize)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  navigation2DGetSimplePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var navigation2DNavpolyAddMethodBind {.threadvar.}: ptr GodotMethodBind
proc navpolyAdd(self: Navigation2D; mesh: NavigationPolygon; xform: Transform2D;
               owner: Object = nil): int64 =
  if isNil(navigation2DNavpolyAddMethodBind):
    navigation2DNavpolyAddMethodBind = getMethod(cstring"Navigation2D",
        cstring"navpoly_add")
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
  navigation2DNavpolyAddMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var navigation2DNavpolyRemoveMethodBind {.threadvar.}: ptr GodotMethodBind
proc navpolyRemove(self: Navigation2D; id: int64) =
  if isNil(navigation2DNavpolyRemoveMethodBind):
    navigation2DNavpolyRemoveMethodBind = getMethod(cstring"Navigation2D",
        cstring"navpoly_remove")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  navigation2DNavpolyRemoveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var navigation2DNavpolySetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc navpolySetTransform(self: Navigation2D; id: int64; xform: Transform2D) =
  if isNil(navigation2DNavpolySetTransformMethodBind):
    navigation2DNavpolySetTransformMethodBind = getMethod(cstring"Navigation2D",
        cstring"navpoly_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(xform)
  var ptrCallRet: pointer
  navigation2DNavpolySetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
