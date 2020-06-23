
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc a*(self: SegmentShape2D): Vector2 {.gcsafe, locks: 0.}
proc `a=`*(self: SegmentShape2D; val: Vector2) {.gcsafe, locks: 0.}
proc b*(self: SegmentShape2D): Vector2 {.gcsafe, locks: 0.}
proc `b=`*(self: SegmentShape2D; val: Vector2) {.gcsafe, locks: 0.}
var segmentShape2DGetAMethodBind {.threadvar.}: ptr GodotMethodBind
proc a(self: SegmentShape2D): Vector2 =
  if isNil(segmentShape2DGetAMethodBind):
    segmentShape2DGetAMethodBind = getMethod(cstring"SegmentShape2D",
        cstring"get_a")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  segmentShape2DGetAMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var segmentShape2DSetAMethodBind {.threadvar.}: ptr GodotMethodBind
proc `a=`(self: SegmentShape2D; val: Vector2) =
  if isNil(segmentShape2DSetAMethodBind):
    segmentShape2DSetAMethodBind = getMethod(cstring"SegmentShape2D",
        cstring"set_a")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  segmentShape2DSetAMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var segmentShape2DGetBMethodBind {.threadvar.}: ptr GodotMethodBind
proc b(self: SegmentShape2D): Vector2 =
  if isNil(segmentShape2DGetBMethodBind):
    segmentShape2DGetBMethodBind = getMethod(cstring"SegmentShape2D",
        cstring"get_b")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  segmentShape2DGetBMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var segmentShape2DSetBMethodBind {.threadvar.}: ptr GodotMethodBind
proc `b=`(self: SegmentShape2D; val: Vector2) =
  if isNil(segmentShape2DSetBMethodBind):
    segmentShape2DSetBMethodBind = getMethod(cstring"SegmentShape2D",
        cstring"set_b")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  segmentShape2DSetBMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
