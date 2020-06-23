
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc getButtons*(self: ButtonGroup): Array {.gcsafe, locks: 0.}
proc getPressedButton*(self: ButtonGroup): BaseButton {.gcsafe, locks: 0.}
var buttonGroupGetButtonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getButtons(self: ButtonGroup): Array =
  if isNil(buttonGroupGetButtonsMethodBind):
    buttonGroupGetButtonsMethodBind = getMethod(cstring"ButtonGroup",
        cstring"get_buttons")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  buttonGroupGetButtonsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var buttonGroupGetPressedButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPressedButton(self: ButtonGroup): BaseButton =
  if isNil(buttonGroupGetPressedButtonMethodBind):
    buttonGroupGetPressedButtonMethodBind = getMethod(cstring"ButtonGroup",
        cstring"get_pressed_button")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  buttonGroupGetPressedButtonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
