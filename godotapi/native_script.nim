
import
  godot, godottypes, godotinternal, script

export
  godottypes, script

proc className*(self: NativeScript): string {.gcsafe, locks: 0.}
proc `className=`*(self: NativeScript; val: string) {.gcsafe, locks: 0.}
proc library*(self: NativeScript): GDNativeLibrary {.gcsafe, locks: 0.}
proc `library=`*(self: NativeScript; val: GDNativeLibrary) {.gcsafe, locks: 0.}
proc scriptClassIconPath*(self: NativeScript): string {.gcsafe, locks: 0.}
proc `scriptClassIconPath=`*(self: NativeScript; val: string) {.gcsafe, locks: 0.}
proc scriptClassName*(self: NativeScript): string {.gcsafe, locks: 0.}
proc `scriptClassName=`*(self: NativeScript; val: string) {.gcsafe, locks: 0.}
proc getClassDocumentation*(self: NativeScript): string {.gcsafe, locks: 0.}
proc getMethodDocumentation*(self: NativeScript; methodd: string): string {.gcsafe,
    locks: 0.}
proc getPropertyDocumentation*(self: NativeScript; path: string): string {.gcsafe,
    locks: 0.}
proc getSignalDocumentation*(self: NativeScript; signalName: string): string {.gcsafe,
    locks: 0.}
proc new*(self: NativeScript; variantArgs: varargs[Variant]): Variant {.gcsafe,
    locks: 0.}
var nativeScriptGetClassNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc className(self: NativeScript): string =
  if isNil(nativeScriptGetClassNameMethodBind):
    nativeScriptGetClassNameMethodBind = getMethod(cstring"NativeScript",
        cstring"get_class_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetClassNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nativeScriptSetClassNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `className=`(self: NativeScript; val: string) =
  if isNil(nativeScriptSetClassNameMethodBind):
    nativeScriptSetClassNameMethodBind = getMethod(cstring"NativeScript",
        cstring"set_class_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  nativeScriptSetClassNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var nativeScriptGetLibraryMethodBind {.threadvar.}: ptr GodotMethodBind
proc library(self: NativeScript): GDNativeLibrary =
  if isNil(nativeScriptGetLibraryMethodBind):
    nativeScriptGetLibraryMethodBind = getMethod(cstring"NativeScript",
        cstring"get_library")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetLibraryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var nativeScriptSetLibraryMethodBind {.threadvar.}: ptr GodotMethodBind
proc `library=`(self: NativeScript; val: GDNativeLibrary) =
  if isNil(nativeScriptSetLibraryMethodBind):
    nativeScriptSetLibraryMethodBind = getMethod(cstring"NativeScript",
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
  nativeScriptSetLibraryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var nativeScriptGetScriptClassIconPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc scriptClassIconPath(self: NativeScript): string =
  if isNil(nativeScriptGetScriptClassIconPathMethodBind):
    nativeScriptGetScriptClassIconPathMethodBind = getMethod(
        cstring"NativeScript", cstring"get_script_class_icon_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetScriptClassIconPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nativeScriptSetScriptClassIconPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scriptClassIconPath=`(self: NativeScript; val: string) =
  if isNil(nativeScriptSetScriptClassIconPathMethodBind):
    nativeScriptSetScriptClassIconPathMethodBind = getMethod(
        cstring"NativeScript", cstring"set_script_class_icon_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  nativeScriptSetScriptClassIconPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nativeScriptGetScriptClassNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc scriptClassName(self: NativeScript): string =
  if isNil(nativeScriptGetScriptClassNameMethodBind):
    nativeScriptGetScriptClassNameMethodBind = getMethod(cstring"NativeScript",
        cstring"get_script_class_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetScriptClassNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nativeScriptSetScriptClassNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scriptClassName=`(self: NativeScript; val: string) =
  if isNil(nativeScriptSetScriptClassNameMethodBind):
    nativeScriptSetScriptClassNameMethodBind = getMethod(cstring"NativeScript",
        cstring"set_script_class_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  nativeScriptSetScriptClassNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var nativeScriptGetClassDocumentationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClassDocumentation(self: NativeScript): string =
  if isNil(nativeScriptGetClassDocumentationMethodBind):
    nativeScriptGetClassDocumentationMethodBind = getMethod(
        cstring"NativeScript", cstring"get_class_documentation")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetClassDocumentationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nativeScriptGetMethodDocumentationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMethodDocumentation(self: NativeScript; methodd: string): string =
  if isNil(nativeScriptGetMethodDocumentationMethodBind):
    nativeScriptGetMethodDocumentationMethodBind = getMethod(
        cstring"NativeScript", cstring"get_method_documentation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(methodd)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetMethodDocumentationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nativeScriptGetPropertyDocumentationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPropertyDocumentation(self: NativeScript; path: string): string =
  if isNil(nativeScriptGetPropertyDocumentationMethodBind):
    nativeScriptGetPropertyDocumentationMethodBind = getMethod(
        cstring"NativeScript", cstring"get_property_documentation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetPropertyDocumentationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nativeScriptGetSignalDocumentationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSignalDocumentation(self: NativeScript; signalName: string): string =
  if isNil(nativeScriptGetSignalDocumentationMethodBind):
    nativeScriptGetSignalDocumentationMethodBind = getMethod(
        cstring"NativeScript", cstring"get_signal_documentation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signalName)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  nativeScriptGetSignalDocumentationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var nativeScriptNewMethodBind {.threadvar.}: ptr GodotMethodBind
proc new(self: NativeScript; variantArgs: varargs[Variant]): Variant =
  if isNil(nativeScriptNewMethodBind):
    nativeScriptNewMethodBind = getMethod(cstring"NativeScript", cstring"new")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(0 + variantArgs.len)))))
  var idx = 0
  while idx < cint(0 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 0].godotVariant
    inc idx
  let callRet {.used.} = nativeScriptNewMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(0 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  