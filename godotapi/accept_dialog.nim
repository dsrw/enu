
import
  godot, godottypes, godotinternal, window_dialog

export
  godottypes, window_dialog

proc dialogAutowrap*(self: AcceptDialog): bool {.gcsafe, locks: 0.}
proc `dialogAutowrap=`*(self: AcceptDialog; val: bool) {.gcsafe, locks: 0.}
proc dialogHideOnOk*(self: AcceptDialog): bool {.gcsafe, locks: 0.}
proc `dialogHideOnOk=`*(self: AcceptDialog; val: bool) {.gcsafe, locks: 0.}
proc dialogText*(self: AcceptDialog): string {.gcsafe, locks: 0.}
proc `dialogText=`*(self: AcceptDialog; val: string) {.gcsafe, locks: 0.}
method builtinTextEntered*(self: AcceptDialog; arg0: string) {.gcsafe, locks: 0, base.}
method customAction*(self: AcceptDialog; arg0: string) {.gcsafe, locks: 0, base.}
method ok*(self: AcceptDialog) {.gcsafe, locks: 0, base.}
proc addButton*(self: AcceptDialog; text: string; right: bool = false;
               action: string = ""): Button {.gcsafe, locks: 0.}
proc addCancel*(self: AcceptDialog; name: string): Button {.gcsafe, locks: 0.}
proc getLabel*(self: AcceptDialog): Label {.gcsafe, locks: 0.}
proc getOk*(self: AcceptDialog): Button {.gcsafe, locks: 0.}
proc registerTextEnter*(self: AcceptDialog; lineEdit: Node) {.gcsafe, locks: 0.}
var acceptDialogHasAutowrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc dialogAutowrap(self: AcceptDialog): bool =
  if isNil(acceptDialogHasAutowrapMethodBind):
    acceptDialogHasAutowrapMethodBind = getMethod(cstring"AcceptDialog",
        cstring"has_autowrap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  acceptDialogHasAutowrapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var acceptDialogSetAutowrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dialogAutowrap=`(self: AcceptDialog; val: bool) =
  if isNil(acceptDialogSetAutowrapMethodBind):
    acceptDialogSetAutowrapMethodBind = getMethod(cstring"AcceptDialog",
        cstring"set_autowrap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  acceptDialogSetAutowrapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var acceptDialogGetHideOnOkMethodBind {.threadvar.}: ptr GodotMethodBind
proc dialogHideOnOk(self: AcceptDialog): bool =
  if isNil(acceptDialogGetHideOnOkMethodBind):
    acceptDialogGetHideOnOkMethodBind = getMethod(cstring"AcceptDialog",
        cstring"get_hide_on_ok")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  acceptDialogGetHideOnOkMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var acceptDialogSetHideOnOkMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dialogHideOnOk=`(self: AcceptDialog; val: bool) =
  if isNil(acceptDialogSetHideOnOkMethodBind):
    acceptDialogSetHideOnOkMethodBind = getMethod(cstring"AcceptDialog",
        cstring"set_hide_on_ok")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  acceptDialogSetHideOnOkMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var acceptDialogGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc dialogText(self: AcceptDialog): string =
  if isNil(acceptDialogGetTextMethodBind):
    acceptDialogGetTextMethodBind = getMethod(cstring"AcceptDialog",
        cstring"get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  acceptDialogGetTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var acceptDialogSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dialogText=`(self: AcceptDialog; val: string) =
  if isNil(acceptDialogSetTextMethodBind):
    acceptDialogSetTextMethodBind = getMethod(cstring"AcceptDialog",
        cstring"set_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  acceptDialogSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var acceptDialogUnderscorebuiltinTextEnteredMethodBind {.threadvar.}: ptr GodotMethodBind
method builtinTextEntered(self: AcceptDialog; arg0: string) =
  if isNil(acceptDialogUnderscorebuiltinTextEnteredMethodBind):
    acceptDialogUnderscorebuiltinTextEnteredMethodBind = getMethod(
        cstring"AcceptDialog", cstring"_builtin_text_entered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  acceptDialogUnderscorebuiltinTextEnteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var acceptDialogUnderscorecustomActionMethodBind {.threadvar.}: ptr GodotMethodBind
method customAction(self: AcceptDialog; arg0: string) =
  if isNil(acceptDialogUnderscorecustomActionMethodBind):
    acceptDialogUnderscorecustomActionMethodBind = getMethod(
        cstring"AcceptDialog", cstring"_custom_action")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  acceptDialogUnderscorecustomActionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var acceptDialogUnderscoreokMethodBind {.threadvar.}: ptr GodotMethodBind
method ok(self: AcceptDialog) =
  if isNil(acceptDialogUnderscoreokMethodBind):
    acceptDialogUnderscoreokMethodBind = getMethod(cstring"AcceptDialog",
        cstring"_ok")
  var ptrCallRet: pointer
  acceptDialogUnderscoreokMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var acceptDialogAddButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc addButton(self: AcceptDialog; text: string; right: bool = false; action: string = ""): Button =
  if isNil(acceptDialogAddButtonMethodBind):
    acceptDialogAddButtonMethodBind = getMethod(cstring"AcceptDialog",
        cstring"add_button")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(right)
  var argToPassToGodot2 = toGodotString(action)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  acceptDialogAddButtonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var acceptDialogAddCancelMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCancel(self: AcceptDialog; name: string): Button =
  if isNil(acceptDialogAddCancelMethodBind):
    acceptDialogAddCancelMethodBind = getMethod(cstring"AcceptDialog",
        cstring"add_cancel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  acceptDialogAddCancelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var acceptDialogGetLabelMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLabel(self: AcceptDialog): Label =
  if isNil(acceptDialogGetLabelMethodBind):
    acceptDialogGetLabelMethodBind = getMethod(cstring"AcceptDialog",
        cstring"get_label")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  acceptDialogGetLabelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var acceptDialogGetOkMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOk(self: AcceptDialog): Button =
  if isNil(acceptDialogGetOkMethodBind):
    acceptDialogGetOkMethodBind = getMethod(cstring"AcceptDialog", cstring"get_ok")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  acceptDialogGetOkMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var acceptDialogRegisterTextEnterMethodBind {.threadvar.}: ptr GodotMethodBind
proc registerTextEnter(self: AcceptDialog; lineEdit: Node) =
  if isNil(acceptDialogRegisterTextEnterMethodBind):
    acceptDialogRegisterTextEnterMethodBind = getMethod(cstring"AcceptDialog",
        cstring"register_text_enter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not lineEdit.isNil:
    lineEdit.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  acceptDialogRegisterTextEnterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
