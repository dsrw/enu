
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

proc useTopLeft*(self: CenterContainer): bool {.gcsafe, locks: 0.}
proc `useTopLeft=`*(self: CenterContainer; val: bool) {.gcsafe, locks: 0.}
var centerContainerIsUsingTopLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc useTopLeft(self: CenterContainer): bool =
  if isNil(centerContainerIsUsingTopLeftMethodBind):
    centerContainerIsUsingTopLeftMethodBind = getMethod(cstring"CenterContainer",
        cstring"is_using_top_left")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  centerContainerIsUsingTopLeftMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var centerContainerSetUseTopLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useTopLeft=`(self: CenterContainer; val: bool) =
  if isNil(centerContainerSetUseTopLeftMethodBind):
    centerContainerSetUseTopLeftMethodBind = getMethod(cstring"CenterContainer",
        cstring"set_use_top_left")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  centerContainerSetUseTopLeftMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
