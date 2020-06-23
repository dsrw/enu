
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc getRef*(self: WeakRef): Variant {.gcsafe, locks: 0.}
var weakRefGetRefMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRef(self: WeakRef): Variant =
  if isNil(weakRefGetRefMethodBind):
    weakRefGetRefMethodBind = getMethod(cstring"WeakRef", cstring"get_ref")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  weakRefGetRefMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newVariant(ptrCallVal)
