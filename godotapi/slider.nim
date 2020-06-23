
import
  godot, godottypes, godotinternal, range

export
  godottypes, range

proc editable*(self: Slider): bool {.gcsafe, locks: 0.}
proc `editable=`*(self: Slider; val: bool) {.gcsafe, locks: 0.}
proc scrollable*(self: Slider): bool {.gcsafe, locks: 0.}
proc `scrollable=`*(self: Slider; val: bool) {.gcsafe, locks: 0.}
proc tickCount*(self: Slider): int64 {.gcsafe, locks: 0.}
proc `tickCount=`*(self: Slider; val: int64) {.gcsafe, locks: 0.}
proc ticksOnBorders*(self: Slider): bool {.gcsafe, locks: 0.}
proc `ticksOnBorders=`*(self: Slider; val: bool) {.gcsafe, locks: 0.}
method guiInput*(self: Slider; event: InputEvent) {.gcsafe, locks: 0.}
var sliderIsEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc editable(self: Slider): bool =
  if isNil(sliderIsEditableMethodBind):
    sliderIsEditableMethodBind = getMethod(cstring"Slider", cstring"is_editable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderIsEditableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sliderSetEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editable=`(self: Slider; val: bool) =
  if isNil(sliderSetEditableMethodBind):
    sliderSetEditableMethodBind = getMethod(cstring"Slider", cstring"set_editable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderSetEditableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var sliderIsScrollableMethodBind {.threadvar.}: ptr GodotMethodBind
proc scrollable(self: Slider): bool =
  if isNil(sliderIsScrollableMethodBind):
    sliderIsScrollableMethodBind = getMethod(cstring"Slider",
        cstring"is_scrollable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderIsScrollableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sliderSetScrollableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scrollable=`(self: Slider; val: bool) =
  if isNil(sliderSetScrollableMethodBind):
    sliderSetScrollableMethodBind = getMethod(cstring"Slider",
        cstring"set_scrollable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderSetScrollableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var sliderGetTicksMethodBind {.threadvar.}: ptr GodotMethodBind
proc tickCount(self: Slider): int64 =
  if isNil(sliderGetTicksMethodBind):
    sliderGetTicksMethodBind = getMethod(cstring"Slider", cstring"get_ticks")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderGetTicksMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sliderSetTicksMethodBind {.threadvar.}: ptr GodotMethodBind
proc `tickCount=`(self: Slider; val: int64) =
  if isNil(sliderSetTicksMethodBind):
    sliderSetTicksMethodBind = getMethod(cstring"Slider", cstring"set_ticks")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderSetTicksMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var sliderGetTicksOnBordersMethodBind {.threadvar.}: ptr GodotMethodBind
proc ticksOnBorders(self: Slider): bool =
  if isNil(sliderGetTicksOnBordersMethodBind):
    sliderGetTicksOnBordersMethodBind = getMethod(cstring"Slider",
        cstring"get_ticks_on_borders")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sliderGetTicksOnBordersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sliderSetTicksOnBordersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ticksOnBorders=`(self: Slider; val: bool) =
  if isNil(sliderSetTicksOnBordersMethodBind):
    sliderSetTicksOnBordersMethodBind = getMethod(cstring"Slider",
        cstring"set_ticks_on_borders")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sliderSetTicksOnBordersMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sliderUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: Slider; event: InputEvent) =
  if isNil(sliderUnderscoreguiInputMethodBind):
    sliderUnderscoreguiInputMethodBind = getMethod(cstring"Slider",
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
  sliderUnderscoreguiInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
