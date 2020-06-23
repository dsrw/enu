
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc extents*(self: RectangleShape2D): Vector2 {.gcsafe, locks: 0.}
proc `extents=`*(self: RectangleShape2D; val: Vector2) {.gcsafe, locks: 0.}
var rectangleShape2DGetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc extents(self: RectangleShape2D): Vector2 =
  if isNil(rectangleShape2DGetExtentsMethodBind):
    rectangleShape2DGetExtentsMethodBind = getMethod(cstring"RectangleShape2D",
        cstring"get_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rectangleShape2DGetExtentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rectangleShape2DSetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `extents=`(self: RectangleShape2D; val: Vector2) =
  if isNil(rectangleShape2DSetExtentsMethodBind):
    rectangleShape2DSetExtentsMethodBind = getMethod(cstring"RectangleShape2D",
        cstring"set_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rectangleShape2DSetExtentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
