
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  HASH_MD5* = 0'i64
  HASH_SHA1* = 1'i64
  HASH_SHA256* = 2'i64
proc finish*(self: HashingContext): PoolByteArray {.gcsafe, locks: 0.}
proc start*(self: HashingContext; typee: int64): Error {.gcsafe, locks: 0.}
proc update*(self: HashingContext; chunk: PoolByteArray): Error {.gcsafe, locks: 0.}
var hashingContextFinishMethodBind {.threadvar.}: ptr GodotMethodBind
proc finish(self: HashingContext): PoolByteArray =
  if isNil(hashingContextFinishMethodBind):
    hashingContextFinishMethodBind = getMethod(cstring"HashingContext",
        cstring"finish")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  hashingContextFinishMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var hashingContextStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: HashingContext; typee: int64): Error =
  if isNil(hashingContextStartMethodBind):
    hashingContextStartMethodBind = getMethod(cstring"HashingContext",
        cstring"start")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hashingContextStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = Error(ptrCallVal)

var hashingContextUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
proc update(self: HashingContext; chunk: PoolByteArray): Error =
  if isNil(hashingContextUpdateMethodBind):
    hashingContextUpdateMethodBind = getMethod(cstring"HashingContext",
        cstring"update")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = chunk.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hashingContextUpdateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)
