
import
  godot, godottypes, godotinternal, accept_dialog

export
  godottypes, accept_dialog

proc getCancel*(self: ConfirmationDialog): Button {.gcsafe, locks: 0.}
var confirmationDialogGetCancelMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCancel(self: ConfirmationDialog): Button =
  if isNil(confirmationDialogGetCancelMethodBind):
    confirmationDialogGetCancelMethodBind = getMethod(
        cstring"ConfirmationDialog", cstring"get_cancel")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  confirmationDialogGetCancelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
