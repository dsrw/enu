
import
  godot, godottypes, godotinternal, script

export
  godottypes, script

proc getAsByteCode*(self: GDScript): PoolByteArray {.gcsafe, locks: 0.}
proc new*(self: GDScript; variantArgs: varargs[Variant]): Variant {.gcsafe, locks: 0.}
var gDScriptGetAsByteCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAsByteCode(self: GDScript): PoolByteArray =
  if isNil(gDScriptGetAsByteCodeMethodBind):
    gDScriptGetAsByteCodeMethodBind = getMethod(cstring"GDScript",
        cstring"get_as_byte_code")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  gDScriptGetAsByteCodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var gDScriptNewMethodBind {.threadvar.}: ptr GodotMethodBind
proc new(self: GDScript; variantArgs: varargs[Variant]): Variant =
  if isNil(gDScriptNewMethodBind):
    gDScriptNewMethodBind = getMethod(cstring"GDScript", cstring"new")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(0 + variantArgs.len)))))
  var idx = 0
  while idx < cint(0 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 0].godotVariant
    inc idx
  let callRet {.used.} = gDScriptNewMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(0 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  