
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method signalCallback*(self: VisualScriptFunctionState;
                      variantArgs: varargs[Variant]): Variant {.gcsafe, locks: 0, base.}
proc connectToSignal*(self: VisualScriptFunctionState; obj: Object; signals: string;
                     args: Array) {.gcsafe, locks: 0.}
proc isValid*(self: VisualScriptFunctionState): bool {.gcsafe, locks: 0.}
proc resume*(self: VisualScriptFunctionState; args: Array = nil): Variant {.gcsafe,
    locks: 0.}
var visualScriptFunctionStateUnderscoresignalCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
method signalCallback(self: VisualScriptFunctionState;
                     variantArgs: varargs[Variant]): Variant =
  if isNil(visualScriptFunctionStateUnderscoresignalCallbackMethodBind):
    visualScriptFunctionStateUnderscoresignalCallbackMethodBind = getMethod(
        cstring"VisualScriptFunctionState", cstring"_signal_callback")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(0 + variantArgs.len)))))
  var idx = 0
  while idx < cint(0 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 0].godotVariant
    inc idx
  let callRet {.used.} = visualScriptFunctionStateUnderscoresignalCallbackMethodBind.call(
      self.godotObject, argsToPassToGodot, cint(0 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var visualScriptFunctionStateConnectToSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc connectToSignal(self: VisualScriptFunctionState; obj: Object; signals: string;
                    args: Array) =
  if isNil(visualScriptFunctionStateConnectToSignalMethodBind):
    visualScriptFunctionStateConnectToSignalMethodBind = getMethod(
        cstring"VisualScriptFunctionState", cstring"connect_to_signal")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not obj.isNil:
    obj.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(signals)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = args.godotArray
  var ptrCallRet: pointer
  visualScriptFunctionStateConnectToSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualScriptFunctionStateIsValidMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValid(self: VisualScriptFunctionState): bool =
  if isNil(visualScriptFunctionStateIsValidMethodBind):
    visualScriptFunctionStateIsValidMethodBind = getMethod(
        cstring"VisualScriptFunctionState", cstring"is_valid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptFunctionStateIsValidMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptFunctionStateResumeMethodBind {.threadvar.}: ptr GodotMethodBind
proc resume(self: VisualScriptFunctionState; args: Array = nil): Variant =
  if isNil(visualScriptFunctionStateResumeMethodBind):
    visualScriptFunctionStateResumeMethodBind = getMethod(
        cstring"VisualScriptFunctionState", cstring"resume")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = args.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualScriptFunctionStateResumeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)
