
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

proc initRef*(self: Reference): bool {.gcsafe, locks: 0.}
proc reference*(self: Reference): bool {.gcsafe, locks: 0.}
proc unreference*(self: Reference): bool {.gcsafe, locks: 0.}
var referenceInitRefMethodBind {.threadvar.}: ptr GodotMethodBind
proc initRef(self: Reference): bool =
  if isNil(referenceInitRefMethodBind):
    referenceInitRefMethodBind = getMethod(cstring"Reference", cstring"init_ref")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  referenceInitRefMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var referenceReferenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc reference(self: Reference): bool =
  if isNil(referenceReferenceMethodBind):
    referenceReferenceMethodBind = getMethod(cstring"Reference",
        cstring"reference")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  referenceReferenceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var referenceUnreferenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc unreference(self: Reference): bool =
  if isNil(referenceUnreferenceMethodBind):
    referenceUnreferenceMethodBind = getMethod(cstring"Reference",
        cstring"unreference")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  referenceUnreferenceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
