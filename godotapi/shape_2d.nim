
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc customSolverBias*(self: Shape2D): float64 {.gcsafe, locks: 0.}
proc `customSolverBias=`*(self: Shape2D; val: float64) {.gcsafe, locks: 0.}
proc collide*(self: Shape2D; localXform: Transform2D; withShape: Shape2D;
             shapeXform: Transform2D): bool {.gcsafe, locks: 0.}
proc collideAndGetContacts*(self: Shape2D; localXform: Transform2D;
                           withShape: Shape2D; shapeXform: Transform2D): Array {.
    gcsafe, locks: 0.}
proc collideWithMotion*(self: Shape2D; localXform: Transform2D; localMotion: Vector2;
                       withShape: Shape2D; shapeXform: Transform2D;
                       shapeMotion: Vector2): bool {.gcsafe, locks: 0.}
proc collideWithMotionAndGetContacts*(self: Shape2D; localXform: Transform2D;
                                     localMotion: Vector2; withShape: Shape2D;
                                     shapeXform: Transform2D; shapeMotion: Vector2): Array {.
    gcsafe, locks: 0.}
proc draw*(self: Shape2D; canvasItem: RID; color: Color) {.gcsafe, locks: 0.}
var shape2DGetCustomSolverBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSolverBias(self: Shape2D): float64 =
  if isNil(shape2DGetCustomSolverBiasMethodBind):
    shape2DGetCustomSolverBiasMethodBind = getMethod(cstring"Shape2D",
        cstring"get_custom_solver_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shape2DGetCustomSolverBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var shape2DSetCustomSolverBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customSolverBias=`(self: Shape2D; val: float64) =
  if isNil(shape2DSetCustomSolverBiasMethodBind):
    shape2DSetCustomSolverBiasMethodBind = getMethod(cstring"Shape2D",
        cstring"set_custom_solver_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  shape2DSetCustomSolverBiasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var shape2DCollideMethodBind {.threadvar.}: ptr GodotMethodBind
proc collide(self: Shape2D; localXform: Transform2D; withShape: Shape2D;
            shapeXform: Transform2D): bool =
  if isNil(shape2DCollideMethodBind):
    shape2DCollideMethodBind = getMethod(cstring"Shape2D", cstring"collide")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(localXform)
  let argToPassToGodot1 = if not withShape.isNil:
    withShape.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(shapeXform)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shape2DCollideMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var shape2DCollideAndGetContactsMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideAndGetContacts(self: Shape2D; localXform: Transform2D;
                          withShape: Shape2D; shapeXform: Transform2D): Array =
  if isNil(shape2DCollideAndGetContactsMethodBind):
    shape2DCollideAndGetContactsMethodBind = getMethod(cstring"Shape2D",
        cstring"collide_and_get_contacts")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(localXform)
  let argToPassToGodot1 = if not withShape.isNil:
    withShape.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(shapeXform)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  shape2DCollideAndGetContactsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var shape2DCollideWithMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithMotion(self: Shape2D; localXform: Transform2D; localMotion: Vector2;
                      withShape: Shape2D; shapeXform: Transform2D;
                      shapeMotion: Vector2): bool =
  if isNil(shape2DCollideWithMotionMethodBind):
    shape2DCollideWithMotionMethodBind = getMethod(cstring"Shape2D",
        cstring"collide_with_motion")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(localXform)
  argsToPassToGodot[][1] = unsafeAddr(localMotion)
  let argToPassToGodot2 = if not withShape.isNil:
    withShape.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(shapeXform)
  argsToPassToGodot[][4] = unsafeAddr(shapeMotion)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  shape2DCollideWithMotionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var shape2DCollideWithMotionAndGetContactsMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithMotionAndGetContacts(self: Shape2D; localXform: Transform2D;
                                    localMotion: Vector2; withShape: Shape2D;
                                    shapeXform: Transform2D; shapeMotion: Vector2): Array =
  if isNil(shape2DCollideWithMotionAndGetContactsMethodBind):
    shape2DCollideWithMotionAndGetContactsMethodBind = getMethod(
        cstring"Shape2D", cstring"collide_with_motion_and_get_contacts")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(localXform)
  argsToPassToGodot[][1] = unsafeAddr(localMotion)
  let argToPassToGodot2 = if not withShape.isNil:
    withShape.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(shapeXform)
  argsToPassToGodot[][4] = unsafeAddr(shapeMotion)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  shape2DCollideWithMotionAndGetContactsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var shape2DDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc draw(self: Shape2D; canvasItem: RID; color: Color) =
  if isNil(shape2DDrawMethodBind):
    shape2DDrawMethodBind = getMethod(cstring"Shape2D", cstring"draw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvasItem)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  shape2DDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
