
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc objectId*(self: EncodedObjectAsID): int64 {.gcsafe, locks: 0.}
proc `objectId=`*(self: EncodedObjectAsID; val: int64) {.gcsafe, locks: 0.}
var encodedObjectAsIDGetObjectIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc objectId(self: EncodedObjectAsID): int64 =
  if isNil(encodedObjectAsIDGetObjectIdMethodBind):
    encodedObjectAsIDGetObjectIdMethodBind = getMethod(
        cstring"EncodedObjectAsID", cstring"get_object_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  encodedObjectAsIDGetObjectIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var encodedObjectAsIDSetObjectIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `objectId=`(self: EncodedObjectAsID; val: int64) =
  if isNil(encodedObjectAsIDSetObjectIdMethodBind):
    encodedObjectAsIDSetObjectIdMethodBind = getMethod(
        cstring"EncodedObjectAsID", cstring"set_object_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  encodedObjectAsIDSetObjectIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
