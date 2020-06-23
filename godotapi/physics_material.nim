
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc absorbent*(self: PhysicsMaterial): bool {.gcsafe, locks: 0.}
proc `absorbent=`*(self: PhysicsMaterial; val: bool) {.gcsafe, locks: 0.}
proc bounce*(self: PhysicsMaterial): float64 {.gcsafe, locks: 0.}
proc `bounce=`*(self: PhysicsMaterial; val: float64) {.gcsafe, locks: 0.}
proc friction*(self: PhysicsMaterial): float64 {.gcsafe, locks: 0.}
proc `friction=`*(self: PhysicsMaterial; val: float64) {.gcsafe, locks: 0.}
proc rough*(self: PhysicsMaterial): bool {.gcsafe, locks: 0.}
proc `rough=`*(self: PhysicsMaterial; val: bool) {.gcsafe, locks: 0.}
var physicsMaterialIsAbsorbentMethodBind {.threadvar.}: ptr GodotMethodBind
proc absorbent(self: PhysicsMaterial): bool =
  if isNil(physicsMaterialIsAbsorbentMethodBind):
    physicsMaterialIsAbsorbentMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"is_absorbent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsMaterialIsAbsorbentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsMaterialSetAbsorbentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `absorbent=`(self: PhysicsMaterial; val: bool) =
  if isNil(physicsMaterialSetAbsorbentMethodBind):
    physicsMaterialSetAbsorbentMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"set_absorbent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsMaterialSetAbsorbentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsMaterialGetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounce(self: PhysicsMaterial): float64 =
  if isNil(physicsMaterialGetBounceMethodBind):
    physicsMaterialGetBounceMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"get_bounce")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsMaterialGetBounceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsMaterialSetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounce=`(self: PhysicsMaterial; val: float64) =
  if isNil(physicsMaterialSetBounceMethodBind):
    physicsMaterialSetBounceMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"set_bounce")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsMaterialSetBounceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsMaterialGetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc friction(self: PhysicsMaterial): float64 =
  if isNil(physicsMaterialGetFrictionMethodBind):
    physicsMaterialGetFrictionMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"get_friction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsMaterialGetFrictionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsMaterialSetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `friction=`(self: PhysicsMaterial; val: float64) =
  if isNil(physicsMaterialSetFrictionMethodBind):
    physicsMaterialSetFrictionMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"set_friction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsMaterialSetFrictionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsMaterialIsRoughMethodBind {.threadvar.}: ptr GodotMethodBind
proc rough(self: PhysicsMaterial): bool =
  if isNil(physicsMaterialIsRoughMethodBind):
    physicsMaterialIsRoughMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"is_rough")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsMaterialIsRoughMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsMaterialSetRoughMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rough=`(self: PhysicsMaterial; val: bool) =
  if isNil(physicsMaterialSetRoughMethodBind):
    physicsMaterialSetRoughMethodBind = getMethod(cstring"PhysicsMaterial",
        cstring"set_rough")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsMaterialSetRoughMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
