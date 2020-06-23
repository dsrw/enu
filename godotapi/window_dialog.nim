
import
  godot, godottypes, godotinternal, popup

export
  godottypes, popup

proc resizable*(self: WindowDialog): bool {.gcsafe, locks: 0.}
proc `resizable=`*(self: WindowDialog; val: bool) {.gcsafe, locks: 0.}
proc windowTitle*(self: WindowDialog): string {.gcsafe, locks: 0.}
proc `windowTitle=`*(self: WindowDialog; val: string) {.gcsafe, locks: 0.}
method closed*(self: WindowDialog) {.gcsafe, locks: 0, base.}
method guiInput*(self: WindowDialog; event: InputEvent) {.gcsafe, locks: 0.}
proc getCloseButton*(self: WindowDialog): TextureButton {.gcsafe, locks: 0.}
var windowDialogGetResizableMethodBind {.threadvar.}: ptr GodotMethodBind
proc resizable(self: WindowDialog): bool =
  if isNil(windowDialogGetResizableMethodBind):
    windowDialogGetResizableMethodBind = getMethod(cstring"WindowDialog",
        cstring"get_resizable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  windowDialogGetResizableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var windowDialogSetResizableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `resizable=`(self: WindowDialog; val: bool) =
  if isNil(windowDialogSetResizableMethodBind):
    windowDialogSetResizableMethodBind = getMethod(cstring"WindowDialog",
        cstring"set_resizable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  windowDialogSetResizableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var windowDialogGetTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc windowTitle(self: WindowDialog): string =
  if isNil(windowDialogGetTitleMethodBind):
    windowDialogGetTitleMethodBind = getMethod(cstring"WindowDialog",
        cstring"get_title")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  windowDialogGetTitleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var windowDialogSetTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `windowTitle=`(self: WindowDialog; val: string) =
  if isNil(windowDialogSetTitleMethodBind):
    windowDialogSetTitleMethodBind = getMethod(cstring"WindowDialog",
        cstring"set_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  windowDialogSetTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var windowDialogUnderscoreclosedMethodBind {.threadvar.}: ptr GodotMethodBind
method closed(self: WindowDialog) =
  if isNil(windowDialogUnderscoreclosedMethodBind):
    windowDialogUnderscoreclosedMethodBind = getMethod(cstring"WindowDialog",
        cstring"_closed")
  var ptrCallRet: pointer
  windowDialogUnderscoreclosedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var windowDialogUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: WindowDialog; event: InputEvent) =
  if isNil(windowDialogUnderscoreguiInputMethodBind):
    windowDialogUnderscoreguiInputMethodBind = getMethod(cstring"WindowDialog",
        cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  windowDialogUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var windowDialogGetCloseButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCloseButton(self: WindowDialog): TextureButton =
  if isNil(windowDialogGetCloseButtonMethodBind):
    windowDialogGetCloseButtonMethodBind = getMethod(cstring"WindowDialog",
        cstring"get_close_button")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  windowDialogGetCloseButtonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
