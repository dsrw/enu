
import
  godot, godottypes, godotinternal, script

export
  godottypes, script

proc new*(self: PluginScript; variantArgs: varargs[Variant]): Variant {.gcsafe,
    locks: 0.}
var pluginScriptNewMethodBind {.threadvar.}: ptr GodotMethodBind
proc new(self: PluginScript; variantArgs: varargs[Variant]): Variant =
  if isNil(pluginScriptNewMethodBind):
    pluginScriptNewMethodBind = getMethod(cstring"PluginScript", cstring"new")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(0 + variantArgs.len)))))
  var idx = 0
  while idx < cint(0 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 0].godotVariant
    inc idx
  let callRet {.used.} = pluginScriptNewMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(0 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  