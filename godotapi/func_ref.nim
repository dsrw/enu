
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc callFunc*(self: FuncRef; variantArgs: varargs[Variant]): Variant {.gcsafe,
    locks: 0.}
proc callFuncv*(self: FuncRef; argArray: Array): Variant {.gcsafe, locks: 0.}
proc isValid*(self: FuncRef): bool {.gcsafe, locks: 0.}
proc setFunction*(self: FuncRef; name: string) {.gcsafe, locks: 0.}
proc setInstance*(self: FuncRef; instance: Object) {.gcsafe, locks: 0.}
var funcRefCallFuncMethodBind {.threadvar.}: ptr GodotMethodBind
proc callFunc(self: FuncRef; variantArgs: varargs[Variant]): Variant =
  if isNil(funcRefCallFuncMethodBind):
    funcRefCallFuncMethodBind = getMethod(cstring"FuncRef", cstring"call_func")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(0 + variantArgs.len)))))
  var idx = 0
  while idx < cint(0 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 0].godotVariant
    inc idx
  let callRet {.used.} = funcRefCallFuncMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(0 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var funcRefCallFuncvMethodBind {.threadvar.}: ptr GodotMethodBind
proc callFuncv(self: FuncRef; argArray: Array): Variant =
  if isNil(funcRefCallFuncvMethodBind):
    funcRefCallFuncvMethodBind = getMethod(cstring"FuncRef", cstring"call_funcv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = argArray.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  funcRefCallFuncvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = newVariant(ptrCallVal)

var funcRefIsValidMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValid(self: FuncRef): bool =
  if isNil(funcRefIsValidMethodBind):
    funcRefIsValidMethodBind = getMethod(cstring"FuncRef", cstring"is_valid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  funcRefIsValidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var funcRefSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFunction(self: FuncRef; name: string) =
  if isNil(funcRefSetFunctionMethodBind):
    funcRefSetFunctionMethodBind = getMethod(cstring"FuncRef",
        cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  funcRefSetFunctionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var funcRefSetInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInstance(self: FuncRef; instance: Object) =
  if isNil(funcRefSetInstanceMethodBind):
    funcRefSetInstanceMethodBind = getMethod(cstring"FuncRef",
        cstring"set_instance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not instance.isNil:
    instance.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  funcRefSetInstanceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
