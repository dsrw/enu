
import
  godot, godottypes, godotinternal, style_box

export
  godottypes, style_box

proc color*(self: StyleBoxLine): Color {.gcsafe, locks: 0.}
proc `color=`*(self: StyleBoxLine; val: Color) {.gcsafe, locks: 0.}
proc growBegin*(self: StyleBoxLine): float64 {.gcsafe, locks: 0.}
proc `growBegin=`*(self: StyleBoxLine; val: float64) {.gcsafe, locks: 0.}
proc growEnd*(self: StyleBoxLine): float64 {.gcsafe, locks: 0.}
proc `growEnd=`*(self: StyleBoxLine; val: float64) {.gcsafe, locks: 0.}
proc thickness*(self: StyleBoxLine): int64 {.gcsafe, locks: 0.}
proc `thickness=`*(self: StyleBoxLine; val: int64) {.gcsafe, locks: 0.}
proc vertical*(self: StyleBoxLine): bool {.gcsafe, locks: 0.}
proc `vertical=`*(self: StyleBoxLine; val: bool) {.gcsafe, locks: 0.}
var styleBoxLineGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: StyleBoxLine): Color =
  if isNil(styleBoxLineGetColorMethodBind):
    styleBoxLineGetColorMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxLineGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxLineSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: StyleBoxLine; val: Color) =
  if isNil(styleBoxLineSetColorMethodBind):
    styleBoxLineSetColorMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxLineSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxLineGetGrowBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc growBegin(self: StyleBoxLine): float64 =
  if isNil(styleBoxLineGetGrowBeginMethodBind):
    styleBoxLineGetGrowBeginMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"get_grow_begin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxLineGetGrowBeginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxLineSetGrowBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `growBegin=`(self: StyleBoxLine; val: float64) =
  if isNil(styleBoxLineSetGrowBeginMethodBind):
    styleBoxLineSetGrowBeginMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"set_grow_begin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxLineSetGrowBeginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxLineGetGrowEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc growEnd(self: StyleBoxLine): float64 =
  if isNil(styleBoxLineGetGrowEndMethodBind):
    styleBoxLineGetGrowEndMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"get_grow_end")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxLineGetGrowEndMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxLineSetGrowEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc `growEnd=`(self: StyleBoxLine; val: float64) =
  if isNil(styleBoxLineSetGrowEndMethodBind):
    styleBoxLineSetGrowEndMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"set_grow_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxLineSetGrowEndMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxLineGetThicknessMethodBind {.threadvar.}: ptr GodotMethodBind
proc thickness(self: StyleBoxLine): int64 =
  if isNil(styleBoxLineGetThicknessMethodBind):
    styleBoxLineGetThicknessMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"get_thickness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxLineGetThicknessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxLineSetThicknessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `thickness=`(self: StyleBoxLine; val: int64) =
  if isNil(styleBoxLineSetThicknessMethodBind):
    styleBoxLineSetThicknessMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"set_thickness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxLineSetThicknessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var styleBoxLineIsVerticalMethodBind {.threadvar.}: ptr GodotMethodBind
proc vertical(self: StyleBoxLine): bool =
  if isNil(styleBoxLineIsVerticalMethodBind):
    styleBoxLineIsVerticalMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"is_vertical")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  styleBoxLineIsVerticalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var styleBoxLineSetVerticalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vertical=`(self: StyleBoxLine; val: bool) =
  if isNil(styleBoxLineSetVerticalMethodBind):
    styleBoxLineSetVerticalMethodBind = getMethod(cstring"StyleBoxLine",
        cstring"set_vertical")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  styleBoxLineSetVerticalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
