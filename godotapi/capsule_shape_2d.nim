
import
  godot, godottypes, godotinternal, shape_2d

export
  godottypes, shape_2d

proc height*(self: CapsuleShape2D): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: CapsuleShape2D; val: float64) {.gcsafe, locks: 0.}
proc radius*(self: CapsuleShape2D): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: CapsuleShape2D; val: float64) {.gcsafe, locks: 0.}
var capsuleShape2DGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: CapsuleShape2D): float64 =
  if isNil(capsuleShape2DGetHeightMethodBind):
    capsuleShape2DGetHeightMethodBind = getMethod(cstring"CapsuleShape2D",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleShape2DGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleShape2DSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: CapsuleShape2D; val: float64) =
  if isNil(capsuleShape2DSetHeightMethodBind):
    capsuleShape2DSetHeightMethodBind = getMethod(cstring"CapsuleShape2D",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleShape2DSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var capsuleShape2DGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: CapsuleShape2D): float64 =
  if isNil(capsuleShape2DGetRadiusMethodBind):
    capsuleShape2DGetRadiusMethodBind = getMethod(cstring"CapsuleShape2D",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleShape2DGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleShape2DSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: CapsuleShape2D; val: float64) =
  if isNil(capsuleShape2DSetRadiusMethodBind):
    capsuleShape2DSetRadiusMethodBind = getMethod(cstring"CapsuleShape2D",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleShape2DSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
