
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc library*(self: GDNative): GDNativeLibrary {.gcsafe, locks: 0.}
proc `library=`*(self: GDNative; val: GDNativeLibrary) {.gcsafe, locks: 0.}
proc callNative*(self: GDNative; callingType: string; procedureName: string;
                arguments: Array): Variant {.gcsafe, locks: 0.}
proc initialize*(self: GDNative): bool {.gcsafe, locks: 0.}
proc terminate*(self: GDNative): bool {.gcsafe, locks: 0.}
var gDNativeGetLibraryMethodBind {.threadvar.}: ptr GodotMethodBind
proc library(self: GDNative): GDNativeLibrary =
  if isNil(gDNativeGetLibraryMethodBind):
    gDNativeGetLibraryMethodBind = getMethod(cstring"GDNative",
        cstring"get_library")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gDNativeGetLibraryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gDNativeSetLibraryMethodBind {.threadvar.}: ptr GodotMethodBind
proc `library=`(self: GDNative; val: GDNativeLibrary) =
  if isNil(gDNativeSetLibraryMethodBind):
    gDNativeSetLibraryMethodBind = getMethod(cstring"GDNative",
        cstring"set_library")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gDNativeSetLibraryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gDNativeCallNativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc callNative(self: GDNative; callingType: string; procedureName: string;
               arguments: Array): Variant =
  if isNil(gDNativeCallNativeMethodBind):
    gDNativeCallNativeMethodBind = getMethod(cstring"GDNative",
        cstring"call_native")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(callingType)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(procedureName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = arguments.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  gDNativeCallNativeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = newVariant(ptrCallVal)

var gDNativeInitializeMethodBind {.threadvar.}: ptr GodotMethodBind
proc initialize(self: GDNative): bool =
  if isNil(gDNativeInitializeMethodBind):
    gDNativeInitializeMethodBind = getMethod(cstring"GDNative",
        cstring"initialize")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gDNativeInitializeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gDNativeTerminateMethodBind {.threadvar.}: ptr GodotMethodBind
proc terminate(self: GDNative): bool =
  if isNil(gDNativeTerminateMethodBind):
    gDNativeTerminateMethodBind = getMethod(cstring"GDNative", cstring"terminate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gDNativeTerminateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
