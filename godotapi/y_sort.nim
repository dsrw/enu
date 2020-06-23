
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc sortEnabled*(self: YSort): bool {.gcsafe, locks: 0.}
proc `sortEnabled=`*(self: YSort; val: bool) {.gcsafe, locks: 0.}
var ySortIsSortEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc sortEnabled(self: YSort): bool =
  if isNil(ySortIsSortEnabledMethodBind):
    ySortIsSortEnabledMethodBind = getMethod(cstring"YSort",
        cstring"is_sort_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ySortIsSortEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var ySortSetSortEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sortEnabled=`(self: YSort; val: bool) =
  if isNil(ySortSetSortEnabledMethodBind):
    ySortSetSortEnabledMethodBind = getMethod(cstring"YSort",
        cstring"set_sort_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  ySortSetSortEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
