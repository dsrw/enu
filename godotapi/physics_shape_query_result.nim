
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc getResultCount*(self: PhysicsShapeQueryResult): int64 {.gcsafe, locks: 0.}
proc getResultObject*(self: PhysicsShapeQueryResult; idx: int64): Object {.gcsafe,
    locks: 0.}
proc getResultObjectId*(self: PhysicsShapeQueryResult; idx: int64): int64 {.gcsafe,
    locks: 0.}
proc getResultObjectShape*(self: PhysicsShapeQueryResult; idx: int64): int64 {.gcsafe,
    locks: 0.}
proc getResultRid*(self: PhysicsShapeQueryResult; idx: int64): RID {.gcsafe, locks: 0.}
var physicsShapeQueryResultGetResultCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultCount(self: PhysicsShapeQueryResult): int64 =
  if isNil(physicsShapeQueryResultGetResultCountMethodBind):
    physicsShapeQueryResultGetResultCountMethodBind = getMethod(
        cstring"PhysicsShapeQueryResult", cstring"get_result_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryResultGetResultCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsShapeQueryResultGetResultObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultObject(self: PhysicsShapeQueryResult; idx: int64): Object =
  if isNil(physicsShapeQueryResultGetResultObjectMethodBind):
    physicsShapeQueryResultGetResultObjectMethodBind = getMethod(
        cstring"PhysicsShapeQueryResult", cstring"get_result_object")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physicsShapeQueryResultGetResultObjectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physicsShapeQueryResultGetResultObjectIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultObjectId(self: PhysicsShapeQueryResult; idx: int64): int64 =
  if isNil(physicsShapeQueryResultGetResultObjectIdMethodBind):
    physicsShapeQueryResultGetResultObjectIdMethodBind = getMethod(
        cstring"PhysicsShapeQueryResult", cstring"get_result_object_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryResultGetResultObjectIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsShapeQueryResultGetResultObjectShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultObjectShape(self: PhysicsShapeQueryResult; idx: int64): int64 =
  if isNil(physicsShapeQueryResultGetResultObjectShapeMethodBind):
    physicsShapeQueryResultGetResultObjectShapeMethodBind = getMethod(
        cstring"PhysicsShapeQueryResult", cstring"get_result_object_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryResultGetResultObjectShapeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsShapeQueryResultGetResultRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultRid(self: PhysicsShapeQueryResult; idx: int64): RID =
  if isNil(physicsShapeQueryResultGetResultRidMethodBind):
    physicsShapeQueryResultGetResultRidMethodBind = getMethod(
        cstring"PhysicsShapeQueryResult", cstring"get_result_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryResultGetResultRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
