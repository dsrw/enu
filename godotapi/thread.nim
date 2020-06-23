
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  PRIORITY_HIGH* = 2'i64
  PRIORITY_LOW* = 0'i64
  PRIORITY_NORMAL* = 1'i64
proc getId*(self: Thread): string {.gcsafe, locks: 0.}
proc isActive*(self: Thread): bool {.gcsafe, locks: 0.}
proc start*(self: Thread; instance: Object; methodd: string;
           userdata: Variant = newVariant(); priority: int64 = 1'i64): Error {.gcsafe,
    locks: 0.}
proc waitToFinish*(self: Thread): Variant {.gcsafe, locks: 0.}
var threadGetIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getId(self: Thread): string =
  if isNil(threadGetIdMethodBind):
    threadGetIdMethodBind = getMethod(cstring"_Thread", cstring"get_id")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  threadGetIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var threadIsActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActive(self: Thread): bool =
  if isNil(threadIsActiveMethodBind):
    threadIsActiveMethodBind = getMethod(cstring"_Thread", cstring"is_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  threadIsActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var threadStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: Thread; instance: Object; methodd: string;
          userdata: Variant = newVariant(); priority: int64 = 1'i64): Error =
  if isNil(threadStartMethodBind):
    threadStartMethodBind = getMethod(cstring"_Thread", cstring"start")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not instance.isNil:
    instance.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(methodd)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = userdata.godotVariant
  argsToPassToGodot[][3] = unsafeAddr(priority)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  threadStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var threadWaitToFinishMethodBind {.threadvar.}: ptr GodotMethodBind
proc waitToFinish(self: Thread): Variant =
  if isNil(threadWaitToFinishMethodBind):
    threadWaitToFinishMethodBind = getMethod(cstring"_Thread",
        cstring"wait_to_finish")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  threadWaitToFinishMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newVariant(ptrCallVal)
