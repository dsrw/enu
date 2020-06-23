
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc canvas*(self: World2D): RID {.gcsafe, locks: 0.}
proc `canvas=`*(self: World2D; val: RID) {.gcsafe, locks: 0.}
proc directSpaceState*(self: World2D): Physics2DDirectSpaceState {.gcsafe, locks: 0.}
proc `directSpaceState=`*(self: World2D; val: Physics2DDirectSpaceState) {.gcsafe,
    locks: 0.}
proc space*(self: World2D): RID {.gcsafe, locks: 0.}
proc `space=`*(self: World2D; val: RID) {.gcsafe, locks: 0.}
var world2DGetCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvas(self: World2D): RID =
  if isNil(world2DGetCanvasMethodBind):
    world2DGetCanvasMethodBind = getMethod(cstring"World2D", cstring"get_canvas")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  world2DGetCanvasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var world2DMethodBind {.threadvar.}: ptr GodotMethodBind
proc `canvas=`(self: World2D; val: RID) =
  if isNil(world2DMethodBind):
    world2DMethodBind = getMethod(cstring"World2D", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  world2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var world2DGetDirectSpaceStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc directSpaceState(self: World2D): Physics2DDirectSpaceState =
  if isNil(world2DGetDirectSpaceStateMethodBind):
    world2DGetDirectSpaceStateMethodBind = getMethod(cstring"World2D",
        cstring"get_direct_space_state")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  world2DGetDirectSpaceStateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `directSpaceState=`(self: World2D; val: Physics2DDirectSpaceState) =
  if isNil(world2DMethodBind):
    world2DMethodBind = getMethod(cstring"World2D", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  world2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var world2DGetSpaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc space(self: World2D): RID =
  if isNil(world2DGetSpaceMethodBind):
    world2DGetSpaceMethodBind = getMethod(cstring"World2D", cstring"get_space")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  world2DGetSpaceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

proc `space=`(self: World2D; val: RID) =
  if isNil(world2DMethodBind):
    world2DMethodBind = getMethod(cstring"World2D", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  world2DMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
