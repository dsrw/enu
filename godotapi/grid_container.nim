
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

proc columns*(self: GridContainer): int64 {.gcsafe, locks: 0.}
proc `columns=`*(self: GridContainer; val: int64) {.gcsafe, locks: 0.}
var gridContainerGetColumnsMethodBind {.threadvar.}: ptr GodotMethodBind
proc columns(self: GridContainer): int64 =
  if isNil(gridContainerGetColumnsMethodBind):
    gridContainerGetColumnsMethodBind = getMethod(cstring"GridContainer",
        cstring"get_columns")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gridContainerGetColumnsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gridContainerSetColumnsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `columns=`(self: GridContainer; val: int64) =
  if isNil(gridContainerSetColumnsMethodBind):
    gridContainerSetColumnsMethodBind = getMethod(cstring"GridContainer",
        cstring"set_columns")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gridContainerSetColumnsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
