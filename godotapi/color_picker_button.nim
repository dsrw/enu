
import
  godot, godottypes, godotinternal, button

export
  godottypes, button

proc color*(self: ColorPickerButton): Color {.gcsafe, locks: 0.}
proc `color=`*(self: ColorPickerButton; val: Color) {.gcsafe, locks: 0.}
proc editAlpha*(self: ColorPickerButton): bool {.gcsafe, locks: 0.}
proc `editAlpha=`*(self: ColorPickerButton; val: bool) {.gcsafe, locks: 0.}
method colorChanged*(self: ColorPickerButton; arg0: Color) {.gcsafe, locks: 0, base.}
method modalClosed*(self: ColorPickerButton) {.gcsafe, locks: 0, base.}
proc getPicker*(self: ColorPickerButton): ColorPicker {.gcsafe, locks: 0.}
proc getPopup*(self: ColorPickerButton): PopupPanel {.gcsafe, locks: 0.}
var colorPickerButtonGetPickColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: ColorPickerButton): Color =
  if isNil(colorPickerButtonGetPickColorMethodBind):
    colorPickerButtonGetPickColorMethodBind = getMethod(
        cstring"ColorPickerButton", cstring"get_pick_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerButtonGetPickColorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerButtonSetPickColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: ColorPickerButton; val: Color) =
  if isNil(colorPickerButtonSetPickColorMethodBind):
    colorPickerButtonSetPickColorMethodBind = getMethod(
        cstring"ColorPickerButton", cstring"set_pick_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerButtonSetPickColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerButtonIsEditingAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc editAlpha(self: ColorPickerButton): bool =
  if isNil(colorPickerButtonIsEditingAlphaMethodBind):
    colorPickerButtonIsEditingAlphaMethodBind = getMethod(
        cstring"ColorPickerButton", cstring"is_editing_alpha")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorPickerButtonIsEditingAlphaMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerButtonSetEditAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editAlpha=`(self: ColorPickerButton; val: bool) =
  if isNil(colorPickerButtonSetEditAlphaMethodBind):
    colorPickerButtonSetEditAlphaMethodBind = getMethod(
        cstring"ColorPickerButton", cstring"set_edit_alpha")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorPickerButtonSetEditAlphaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerButtonUnderscorecolorChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method colorChanged(self: ColorPickerButton; arg0: Color) =
  if isNil(colorPickerButtonUnderscorecolorChangedMethodBind):
    colorPickerButtonUnderscorecolorChangedMethodBind = getMethod(
        cstring"ColorPickerButton", cstring"_color_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  colorPickerButtonUnderscorecolorChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var colorPickerButtonUnderscoremodalClosedMethodBind {.threadvar.}: ptr GodotMethodBind
method modalClosed(self: ColorPickerButton) =
  if isNil(colorPickerButtonUnderscoremodalClosedMethodBind):
    colorPickerButtonUnderscoremodalClosedMethodBind = getMethod(
        cstring"ColorPickerButton", cstring"_modal_closed")
  var ptrCallRet: pointer
  colorPickerButtonUnderscoremodalClosedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var colorPickerButtonGetPickerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPicker(self: ColorPickerButton): ColorPicker =
  if isNil(colorPickerButtonGetPickerMethodBind):
    colorPickerButtonGetPickerMethodBind = getMethod(cstring"ColorPickerButton",
        cstring"get_picker")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  colorPickerButtonGetPickerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var colorPickerButtonGetPopupMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPopup(self: ColorPickerButton): PopupPanel =
  if isNil(colorPickerButtonGetPopupMethodBind):
    colorPickerButtonGetPopupMethodBind = getMethod(cstring"ColorPickerButton",
        cstring"get_popup")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  colorPickerButtonGetPopupMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
