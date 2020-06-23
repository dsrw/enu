
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

proc color*(self: ColorRect): Color {.gcsafe, locks: 0.}
proc `color=`*(self: ColorRect; val: Color) {.gcsafe, locks: 0.}
var colorRectGetFrameColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: ColorRect): Color =
  if isNil(colorRectGetFrameColorMethodBind):
    colorRectGetFrameColorMethodBind = getMethod(cstring"ColorRect",
        cstring"get_frame_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  colorRectGetFrameColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var colorRectSetFrameColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: ColorRect; val: Color) =
  if isNil(colorRectSetFrameColorMethodBind):
    colorRectSetFrameColorMethodBind = getMethod(cstring"ColorRect",
        cstring"set_frame_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  colorRectSetFrameColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
