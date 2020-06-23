
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc d*(self: LineShape2D): float64 {.gcsafe, locks: 0.}
proc `d=`*(self: LineShape2D; val: float64) {.gcsafe, locks: 0.}
proc normal*(self: LineShape2D): Vector2 {.gcsafe, locks: 0.}
proc `normal=`*(self: LineShape2D; val: Vector2) {.gcsafe, locks: 0.}
var lineShape2DGetDMethodBind {.threadvar.}: ptr GodotMethodBind
proc d(self: LineShape2D): float64 =
  if isNil(lineShape2DGetDMethodBind):
    lineShape2DGetDMethodBind = getMethod(cstring"LineShape2D", cstring"get_d")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineShape2DGetDMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineShape2DSetDMethodBind {.threadvar.}: ptr GodotMethodBind
proc `d=`(self: LineShape2D; val: float64) =
  if isNil(lineShape2DSetDMethodBind):
    lineShape2DSetDMethodBind = getMethod(cstring"LineShape2D", cstring"set_d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineShape2DSetDMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var lineShape2DGetNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc normal(self: LineShape2D): Vector2 =
  if isNil(lineShape2DGetNormalMethodBind):
    lineShape2DGetNormalMethodBind = getMethod(cstring"LineShape2D",
        cstring"get_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lineShape2DGetNormalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var lineShape2DSetNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normal=`(self: LineShape2D; val: Vector2) =
  if isNil(lineShape2DSetNormalMethodBind):
    lineShape2DSetNormalMethodBind = getMethod(cstring"LineShape2D",
        cstring"set_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lineShape2DSetNormalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
