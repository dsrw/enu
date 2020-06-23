
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc getResultCount*(self: Physics2DShapeQueryResult): int64 {.gcsafe, locks: 0.}
proc getResultObject*(self: Physics2DShapeQueryResult; idx: int64): Object {.gcsafe,
    locks: 0.}
proc getResultObjectId*(self: Physics2DShapeQueryResult; idx: int64): int64 {.gcsafe,
    locks: 0.}
proc getResultObjectShape*(self: Physics2DShapeQueryResult; idx: int64): int64 {.
    gcsafe, locks: 0.}
proc getResultRid*(self: Physics2DShapeQueryResult; idx: int64): RID {.gcsafe, locks: 0.}
var physics2DShapeQueryResultGetResultCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultCount(self: Physics2DShapeQueryResult): int64 =
  if isNil(physics2DShapeQueryResultGetResultCountMethodBind):
    physics2DShapeQueryResultGetResultCountMethodBind = getMethod(
        cstring"Physics2DShapeQueryResult", cstring"get_result_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryResultGetResultCountMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DShapeQueryResultGetResultObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultObject(self: Physics2DShapeQueryResult; idx: int64): Object =
  if isNil(physics2DShapeQueryResultGetResultObjectMethodBind):
    physics2DShapeQueryResultGetResultObjectMethodBind = getMethod(
        cstring"Physics2DShapeQueryResult", cstring"get_result_object")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physics2DShapeQueryResultGetResultObjectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physics2DShapeQueryResultGetResultObjectIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultObjectId(self: Physics2DShapeQueryResult; idx: int64): int64 =
  if isNil(physics2DShapeQueryResultGetResultObjectIdMethodBind):
    physics2DShapeQueryResultGetResultObjectIdMethodBind = getMethod(
        cstring"Physics2DShapeQueryResult", cstring"get_result_object_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryResultGetResultObjectIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryResultGetResultObjectShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultObjectShape(self: Physics2DShapeQueryResult; idx: int64): int64 =
  if isNil(physics2DShapeQueryResultGetResultObjectShapeMethodBind):
    physics2DShapeQueryResultGetResultObjectShapeMethodBind = getMethod(
        cstring"Physics2DShapeQueryResult", cstring"get_result_object_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryResultGetResultObjectShapeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryResultGetResultRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResultRid(self: Physics2DShapeQueryResult; idx: int64): RID =
  if isNil(physics2DShapeQueryResultGetResultRidMethodBind):
    physics2DShapeQueryResultGetResultRidMethodBind = getMethod(
        cstring"Physics2DShapeQueryResult", cstring"get_result_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryResultGetResultRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
