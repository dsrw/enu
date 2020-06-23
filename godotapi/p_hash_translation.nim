
import
  godot, godottypes, godotinternal, translation

export
  godottypes, translation

proc generate*(self: PHashTranslation; fromm: Translation) {.gcsafe, locks: 0.}
var pHashTranslationGenerateMethodBind {.threadvar.}: ptr GodotMethodBind
proc generate(self: PHashTranslation; fromm: Translation) =
  if isNil(pHashTranslationGenerateMethodBind):
    pHashTranslationGenerateMethodBind = getMethod(cstring"PHashTranslation",
        cstring"generate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  pHashTranslationGenerateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
