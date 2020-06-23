
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

method processCustomFx*(self: RichTextEffect; charFx: CharFXTransform): bool {.gcsafe,
    locks: 0, base.}
var richTextEffectUnderscoreprocessCustomFxMethodBind {.threadvar.}: ptr GodotMethodBind
method processCustomFx(self: RichTextEffect; charFx: CharFXTransform): bool =
  if isNil(richTextEffectUnderscoreprocessCustomFxMethodBind):
    richTextEffectUnderscoreprocessCustomFxMethodBind = getMethod(
        cstring"RichTextEffect", cstring"_process_custom_fx")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not charFx.isNil:
    charFx.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  richTextEffectUnderscoreprocessCustomFxMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
