
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc color*(self: CanvasModulate): Color {.gcsafe, locks: 0.}
proc `color=`*(self: CanvasModulate; val: Color) {.gcsafe, locks: 0.}
var canvasModulateGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: CanvasModulate): Color =
  if isNil(canvasModulateGetColorMethodBind):
    canvasModulateGetColorMethodBind = getMethod(cstring"CanvasModulate",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasModulateGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasModulateSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: CanvasModulate; val: Color) =
  if isNil(canvasModulateSetColorMethodBind):
    canvasModulateSetColorMethodBind = getMethod(cstring"CanvasModulate",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasModulateSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
