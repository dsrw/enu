
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc post*(self: Semaphore): Error {.gcsafe, locks: 0.}
proc wait*(self: Semaphore): Error {.gcsafe, locks: 0.}
var semaphorePostMethodBind {.threadvar.}: ptr GodotMethodBind
proc post(self: Semaphore): Error =
  if isNil(semaphorePostMethodBind):
    semaphorePostMethodBind = getMethod(cstring"_Semaphore", cstring"post")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  semaphorePostMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var semaphoreWaitMethodBind {.threadvar.}: ptr GodotMethodBind
proc wait(self: Semaphore): Error =
  if isNil(semaphoreWaitMethodBind):
    semaphoreWaitMethodBind = getMethod(cstring"_Semaphore", cstring"wait")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  semaphoreWaitMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)
