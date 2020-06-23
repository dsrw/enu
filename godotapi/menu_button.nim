
import
  godot, godottypes, godotinternal, button

export
  godottypes, button

proc items*(self: MenuButton): Array {.gcsafe, locks: 0.}
proc `items=`*(self: MenuButton; val: Array) {.gcsafe, locks: 0.}
proc switchOnHover*(self: MenuButton): bool {.gcsafe, locks: 0.}
proc `switchOnHover=`*(self: MenuButton; val: bool) {.gcsafe, locks: 0.}
method unhandledKeyInput*(self: MenuButton; event: InputEventKey) {.gcsafe, locks: 0.}
proc getPopup*(self: MenuButton): PopupMenu {.gcsafe, locks: 0.}
proc setDisableShortcuts*(self: MenuButton; disabled: bool) {.gcsafe, locks: 0.}
var menuButtonUnderscoregetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc items(self: MenuButton): Array =
  if isNil(menuButtonUnderscoregetItemsMethodBind):
    menuButtonUnderscoregetItemsMethodBind = getMethod(cstring"MenuButton",
        cstring"_get_items")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  menuButtonUnderscoregetItemsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var menuButtonUnderscoresetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `items=`(self: MenuButton; val: Array) =
  if isNil(menuButtonUnderscoresetItemsMethodBind):
    menuButtonUnderscoresetItemsMethodBind = getMethod(cstring"MenuButton",
        cstring"_set_items")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  menuButtonUnderscoresetItemsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var menuButtonIsSwitchOnHoverMethodBind {.threadvar.}: ptr GodotMethodBind
proc switchOnHover(self: MenuButton): bool =
  if isNil(menuButtonIsSwitchOnHoverMethodBind):
    menuButtonIsSwitchOnHoverMethodBind = getMethod(cstring"MenuButton",
        cstring"is_switch_on_hover")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  menuButtonIsSwitchOnHoverMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var menuButtonSetSwitchOnHoverMethodBind {.threadvar.}: ptr GodotMethodBind
proc `switchOnHover=`(self: MenuButton; val: bool) =
  if isNil(menuButtonSetSwitchOnHoverMethodBind):
    menuButtonSetSwitchOnHoverMethodBind = getMethod(cstring"MenuButton",
        cstring"set_switch_on_hover")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  menuButtonSetSwitchOnHoverMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var menuButtonUnderscoreunhandledKeyInputMethodBind {.threadvar.}: ptr GodotMethodBind
method unhandledKeyInput(self: MenuButton; event: InputEventKey) =
  if isNil(menuButtonUnderscoreunhandledKeyInputMethodBind):
    menuButtonUnderscoreunhandledKeyInputMethodBind = getMethod(
        cstring"MenuButton", cstring"_unhandled_key_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  menuButtonUnderscoreunhandledKeyInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var menuButtonGetPopupMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPopup(self: MenuButton): PopupMenu =
  if isNil(menuButtonGetPopupMethodBind):
    menuButtonGetPopupMethodBind = getMethod(cstring"MenuButton",
        cstring"get_popup")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  menuButtonGetPopupMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var menuButtonSetDisableShortcutsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDisableShortcuts(self: MenuButton; disabled: bool) =
  if isNil(menuButtonSetDisableShortcutsMethodBind):
    menuButtonSetDisableShortcutsMethodBind = getMethod(cstring"MenuButton",
        cstring"set_disable_shortcuts")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  menuButtonSetDisableShortcutsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
