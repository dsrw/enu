
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method signalCallback*(self: GDScriptFunctionState; variantArgs: varargs[Variant]): Variant {.
    gcsafe, locks: 0, base.}
proc isValid*(self: GDScriptFunctionState; extendedCheck: bool = false): bool {.gcsafe,
    locks: 0.}
proc resume*(self: GDScriptFunctionState; arg: Variant = newVariant()): Variant {.
    gcsafe, locks: 0.}
var gDScriptFunctionStateUnderscoresignalCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
method signalCallback(self: GDScriptFunctionState; variantArgs: varargs[Variant]): Variant =
  if isNil(gDScriptFunctionStateUnderscoresignalCallbackMethodBind):
    gDScriptFunctionStateUnderscoresignalCallbackMethodBind = getMethod(
        cstring"GDScriptFunctionState", cstring"_signal_callback")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(0 + variantArgs.len)))))
  var idx = 0
  while idx < cint(0 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 0].godotVariant
    inc idx
  let callRet {.used.} = gDScriptFunctionStateUnderscoresignalCallbackMethodBind.call(
      self.godotObject, argsToPassToGodot, cint(0 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var gDScriptFunctionStateIsValidMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValid(self: GDScriptFunctionState; extendedCheck: bool = false): bool =
  if isNil(gDScriptFunctionStateIsValidMethodBind):
    gDScriptFunctionStateIsValidMethodBind = getMethod(
        cstring"GDScriptFunctionState", cstring"is_valid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(extendedCheck)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gDScriptFunctionStateIsValidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gDScriptFunctionStateResumeMethodBind {.threadvar.}: ptr GodotMethodBind
proc resume(self: GDScriptFunctionState; arg: Variant = newVariant()): Variant =
  if isNil(gDScriptFunctionStateResumeMethodBind):
    gDScriptFunctionStateResumeMethodBind = getMethod(
        cstring"GDScriptFunctionState", cstring"resume")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  gDScriptFunctionStateResumeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)
