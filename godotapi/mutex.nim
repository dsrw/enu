
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc lock*(self: Mutex) {.gcsafe, locks: 0.}
proc tryLock*(self: Mutex): Error {.gcsafe, locks: 0.}
proc unlock*(self: Mutex) {.gcsafe, locks: 0.}
var mutexLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc lock(self: Mutex) =
  if isNil(mutexLockMethodBind):
    mutexLockMethodBind = getMethod(cstring"_Mutex", cstring"lock")
  var ptrCallRet: pointer
  mutexLockMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mutexTryLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc tryLock(self: Mutex): Error =
  if isNil(mutexTryLockMethodBind):
    mutexTryLockMethodBind = getMethod(cstring"_Mutex", cstring"try_lock")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  mutexTryLockMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var mutexUnlockMethodBind {.threadvar.}: ptr GodotMethodBind
proc unlock(self: Mutex) =
  if isNil(mutexUnlockMethodBind):
    mutexUnlockMethodBind = getMethod(cstring"_Mutex", cstring"unlock")
  var ptrCallRet: pointer
  mutexUnlockMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
