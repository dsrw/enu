
import
  godot, godottypes, godotinternal, shape

export
  godottypes, shape

proc height*(self: CapsuleShape): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: CapsuleShape; val: float64) {.gcsafe, locks: 0.}
proc radius*(self: CapsuleShape): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: CapsuleShape; val: float64) {.gcsafe, locks: 0.}
var capsuleShapeGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: CapsuleShape): float64 =
  if isNil(capsuleShapeGetHeightMethodBind):
    capsuleShapeGetHeightMethodBind = getMethod(cstring"CapsuleShape",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleShapeGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleShapeSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: CapsuleShape; val: float64) =
  if isNil(capsuleShapeSetHeightMethodBind):
    capsuleShapeSetHeightMethodBind = getMethod(cstring"CapsuleShape",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleShapeSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var capsuleShapeGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: CapsuleShape): float64 =
  if isNil(capsuleShapeGetRadiusMethodBind):
    capsuleShapeGetRadiusMethodBind = getMethod(cstring"CapsuleShape",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  capsuleShapeGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var capsuleShapeSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: CapsuleShape; val: float64) =
  if isNil(capsuleShapeSetRadiusMethodBind):
    capsuleShapeSetRadiusMethodBind = getMethod(cstring"CapsuleShape",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  capsuleShapeSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
