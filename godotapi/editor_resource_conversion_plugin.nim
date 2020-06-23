
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method convert*(self: EditorResourceConversionPlugin; resource: Resource): Resource {.
    gcsafe, locks: 0, base.}
method convertsTo*(self: EditorResourceConversionPlugin): string {.gcsafe, locks: 0,
    base.}
var editorResourceConversionPluginUnderscoreconvertMethodBind {.threadvar.}: ptr GodotMethodBind
method convert(self: EditorResourceConversionPlugin; resource: Resource): Resource =
  if isNil(editorResourceConversionPluginUnderscoreconvertMethodBind):
    editorResourceConversionPluginUnderscoreconvertMethodBind = getMethod(
        cstring"EditorResourceConversionPlugin", cstring"_convert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorResourceConversionPluginUnderscoreconvertMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorResourceConversionPluginUnderscoreconvertsToMethodBind {.threadvar.}: ptr GodotMethodBind
method convertsTo(self: EditorResourceConversionPlugin): string =
  if isNil(editorResourceConversionPluginUnderscoreconvertsToMethodBind):
    editorResourceConversionPluginUnderscoreconvertsToMethodBind = getMethod(
        cstring"EditorResourceConversionPlugin", cstring"_converts_to")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorResourceConversionPluginUnderscoreconvertsToMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
