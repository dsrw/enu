
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc getResource*(self: ResourceInteractiveLoader): Resource {.gcsafe, locks: 0.}
proc getStage*(self: ResourceInteractiveLoader): int64 {.gcsafe, locks: 0.}
proc getStageCount*(self: ResourceInteractiveLoader): int64 {.gcsafe, locks: 0.}
proc poll*(self: ResourceInteractiveLoader): Error {.gcsafe, locks: 0.}
proc wait*(self: ResourceInteractiveLoader): Error {.gcsafe, locks: 0.}
var resourceInteractiveLoaderGetResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResource(self: ResourceInteractiveLoader): Resource =
  if isNil(resourceInteractiveLoaderGetResourceMethodBind):
    resourceInteractiveLoaderGetResourceMethodBind = getMethod(
        cstring"ResourceInteractiveLoader", cstring"get_resource")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  resourceInteractiveLoaderGetResourceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var resourceInteractiveLoaderGetStageMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStage(self: ResourceInteractiveLoader): int64 =
  if isNil(resourceInteractiveLoaderGetStageMethodBind):
    resourceInteractiveLoaderGetStageMethodBind = getMethod(
        cstring"ResourceInteractiveLoader", cstring"get_stage")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceInteractiveLoaderGetStageMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var resourceInteractiveLoaderGetStageCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStageCount(self: ResourceInteractiveLoader): int64 =
  if isNil(resourceInteractiveLoaderGetStageCountMethodBind):
    resourceInteractiveLoaderGetStageCountMethodBind = getMethod(
        cstring"ResourceInteractiveLoader", cstring"get_stage_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  resourceInteractiveLoaderGetStageCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var resourceInteractiveLoaderPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: ResourceInteractiveLoader): Error =
  if isNil(resourceInteractiveLoaderPollMethodBind):
    resourceInteractiveLoaderPollMethodBind = getMethod(
        cstring"ResourceInteractiveLoader", cstring"poll")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  resourceInteractiveLoaderPollMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = Error(ptrCallVal)

var resourceInteractiveLoaderWaitMethodBind {.threadvar.}: ptr GodotMethodBind
proc wait(self: ResourceInteractiveLoader): Error =
  if isNil(resourceInteractiveLoaderWaitMethodBind):
    resourceInteractiveLoaderWaitMethodBind = getMethod(
        cstring"ResourceInteractiveLoader", cstring"wait")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  resourceInteractiveLoaderWaitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = Error(ptrCallVal)
