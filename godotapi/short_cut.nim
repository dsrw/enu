
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc shortcut*(self: ShortCut): InputEvent {.gcsafe, locks: 0.}
proc `shortcut=`*(self: ShortCut; val: InputEvent) {.gcsafe, locks: 0.}
proc getAsText*(self: ShortCut): string {.gcsafe, locks: 0.}
proc isShortcut*(self: ShortCut; event: InputEvent): bool {.gcsafe, locks: 0.}
proc isValid*(self: ShortCut): bool {.gcsafe, locks: 0.}
var shortCutGetShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc shortcut(self: ShortCut): InputEvent =
  if isNil(shortCutGetShortcutMethodBind):
    shortCutGetShortcutMethodBind = getMethod(cstring"ShortCut",
        cstring"get_shortcut")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  shortCutGetShortcutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var shortCutSetShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shortcut=`(self: ShortCut; val: InputEvent) =
  if isNil(shortCutSetShortcutMethodBind):
    shortCutSetShortcutMethodBind = getMethod(cstring"ShortCut",
        cstring"set_shortcut")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  shortCutSetShortcutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var shortCutGetAsTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAsText(self: ShortCut): string =
  if isNil(shortCutGetAsTextMethodBind):
    shortCutGetAsTextMethodBind = getMethod(cstring"ShortCut",
        cstring"get_as_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  shortCutGetAsTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var shortCutIsShortcutMethodBind {.threadvar.}: ptr GodotMethodBind
proc isShortcut(self: ShortCut; event: InputEvent): bool =
  if isNil(shortCutIsShortcutMethodBind):
    shortCutIsShortcutMethodBind = getMethod(cstring"ShortCut",
        cstring"is_shortcut")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shortCutIsShortcutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var shortCutIsValidMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValid(self: ShortCut): bool =
  if isNil(shortCutIsValidMethodBind):
    shortCutIsValidMethodBind = getMethod(cstring"ShortCut", cstring"is_valid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shortCutIsValidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
