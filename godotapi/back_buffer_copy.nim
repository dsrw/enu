
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

const
  COPY_MODE_DISABLED* = 0'i64
  COPY_MODE_RECT* = 1'i64
  COPY_MODE_VIEWPORT* = 2'i64
proc copyMode*(self: BackBufferCopy): int64 {.gcsafe, locks: 0.}
proc `copyMode=`*(self: BackBufferCopy; val: int64) {.gcsafe, locks: 0.}
proc rect*(self: BackBufferCopy): Rect2 {.gcsafe, locks: 0.}
proc `rect=`*(self: BackBufferCopy; val: Rect2) {.gcsafe, locks: 0.}
var backBufferCopyGetCopyModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc copyMode(self: BackBufferCopy): int64 =
  if isNil(backBufferCopyGetCopyModeMethodBind):
    backBufferCopyGetCopyModeMethodBind = getMethod(cstring"BackBufferCopy",
        cstring"get_copy_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  backBufferCopyGetCopyModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var backBufferCopySetCopyModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `copyMode=`(self: BackBufferCopy; val: int64) =
  if isNil(backBufferCopySetCopyModeMethodBind):
    backBufferCopySetCopyModeMethodBind = getMethod(cstring"BackBufferCopy",
        cstring"set_copy_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  backBufferCopySetCopyModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var backBufferCopyGetRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc rect(self: BackBufferCopy): Rect2 =
  if isNil(backBufferCopyGetRectMethodBind):
    backBufferCopyGetRectMethodBind = getMethod(cstring"BackBufferCopy",
        cstring"get_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  backBufferCopyGetRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var backBufferCopySetRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rect=`(self: BackBufferCopy; val: Rect2) =
  if isNil(backBufferCopySetRectMethodBind):
    backBufferCopySetRectMethodBind = getMethod(cstring"BackBufferCopy",
        cstring"set_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  backBufferCopySetRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
