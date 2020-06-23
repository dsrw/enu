
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc addFile*(self: PCKPacker; pckPath: string; sourcePath: string): Error {.gcsafe,
    locks: 0.}
proc flush*(self: PCKPacker; verbose: bool = false): Error {.gcsafe, locks: 0.}
proc pckStart*(self: PCKPacker; pckName: string; alignment: int64 = 0'i64): Error {.
    gcsafe, locks: 0.}
var pCKPackerAddFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFile(self: PCKPacker; pckPath: string; sourcePath: string): Error =
  if isNil(pCKPackerAddFileMethodBind):
    pCKPackerAddFileMethodBind = getMethod(cstring"PCKPacker", cstring"add_file")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(pckPath)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(sourcePath)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  pCKPackerAddFileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var pCKPackerFlushMethodBind {.threadvar.}: ptr GodotMethodBind
proc flush(self: PCKPacker; verbose: bool = false): Error =
  if isNil(pCKPackerFlushMethodBind):
    pCKPackerFlushMethodBind = getMethod(cstring"PCKPacker", cstring"flush")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(verbose)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  pCKPackerFlushMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var pCKPackerPckStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc pckStart(self: PCKPacker; pckName: string; alignment: int64 = 0'i64): Error =
  if isNil(pCKPackerPckStartMethodBind):
    pCKPackerPckStartMethodBind = getMethod(cstring"PCKPacker", cstring"pck_start")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(pckName)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(alignment)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  pCKPackerPckStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)
