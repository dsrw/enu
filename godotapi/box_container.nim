
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

const
  ALIGN_BEGIN* = 0'i64
  ALIGN_CENTER* = 1'i64
  ALIGN_END* = 2'i64
proc alignment*(self: BoxContainer): int64 {.gcsafe, locks: 0.}
proc `alignment=`*(self: BoxContainer; val: int64) {.gcsafe, locks: 0.}
proc addSpacer*(self: BoxContainer; begin: bool) {.gcsafe, locks: 0.}
var boxContainerGetAlignmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc alignment(self: BoxContainer): int64 =
  if isNil(boxContainerGetAlignmentMethodBind):
    boxContainerGetAlignmentMethodBind = getMethod(cstring"BoxContainer",
        cstring"get_alignment")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  boxContainerGetAlignmentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var boxContainerSetAlignmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `alignment=`(self: BoxContainer; val: int64) =
  if isNil(boxContainerSetAlignmentMethodBind):
    boxContainerSetAlignmentMethodBind = getMethod(cstring"BoxContainer",
        cstring"set_alignment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  boxContainerSetAlignmentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var boxContainerAddSpacerMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSpacer(self: BoxContainer; begin: bool) =
  if isNil(boxContainerAddSpacerMethodBind):
    boxContainerAddSpacerMethodBind = getMethod(cstring"BoxContainer",
        cstring"add_spacer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(begin)
  var ptrCallRet: pointer
  boxContainerAddSpacerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
