
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

proc castMotion*(self: Physics2DDirectSpaceState;
                shape: Physics2DShapeQueryParameters): Array {.gcsafe, locks: 0.}
proc collideShape*(self: Physics2DDirectSpaceState;
                  shape: Physics2DShapeQueryParameters; maxResults: int64 = 32'i64): Array {.
    gcsafe, locks: 0.}
proc getRestInfo*(self: Physics2DDirectSpaceState;
                 shape: Physics2DShapeQueryParameters): Dictionary {.gcsafe,
    locks: 0.}
proc intersectPoint*(self: Physics2DDirectSpaceState; point: Vector2;
                    maxResults: int64 = 32'i64; exclude: Array = newArray();
                    collisionLayer: int64 = 2147483647'i64;
                    collideWithBodies: bool = true; collideWithAreas: bool = false): Array {.
    gcsafe, locks: 0.}
proc intersectPointOnCanvas*(self: Physics2DDirectSpaceState; point: Vector2;
                            canvasInstanceId: int64; maxResults: int64 = 32'i64;
                            exclude: Array = newArray();
                            collisionLayer: int64 = 2147483647'i64;
                            collideWithBodies: bool = true;
                            collideWithAreas: bool = false): Array {.gcsafe, locks: 0.}
proc intersectRay*(self: Physics2DDirectSpaceState; fromm: Vector2; to: Vector2;
                  exclude: Array = newArray();
                  collisionLayer: int64 = 2147483647'i64;
                  collideWithBodies: bool = true; collideWithAreas: bool = false): Dictionary {.
    gcsafe, locks: 0.}
proc intersectShape*(self: Physics2DDirectSpaceState;
                    shape: Physics2DShapeQueryParameters;
                    maxResults: int64 = 32'i64): Array {.gcsafe, locks: 0.}
var physics2DDirectSpaceStateCastMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc castMotion(self: Physics2DDirectSpaceState;
               shape: Physics2DShapeQueryParameters): Array =
  if isNil(physics2DDirectSpaceStateCastMotionMethodBind):
    physics2DDirectSpaceStateCastMotionMethodBind = getMethod(
        cstring"Physics2DDirectSpaceState", cstring"cast_motion")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectSpaceStateCastMotionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var physics2DDirectSpaceStateCollideShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideShape(self: Physics2DDirectSpaceState;
                 shape: Physics2DShapeQueryParameters; maxResults: int64 = 32'i64): Array =
  if isNil(physics2DDirectSpaceStateCollideShapeMethodBind):
    physics2DDirectSpaceStateCollideShapeMethodBind = getMethod(
        cstring"Physics2DDirectSpaceState", cstring"collide_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(maxResults)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectSpaceStateCollideShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var physics2DDirectSpaceStateGetRestInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRestInfo(self: Physics2DDirectSpaceState;
                shape: Physics2DShapeQueryParameters): Dictionary =
  if isNil(physics2DDirectSpaceStateGetRestInfoMethodBind):
    physics2DDirectSpaceStateGetRestInfoMethodBind = getMethod(
        cstring"Physics2DDirectSpaceState", cstring"get_rest_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectSpaceStateGetRestInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var physics2DDirectSpaceStateIntersectPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectPoint(self: Physics2DDirectSpaceState; point: Vector2;
                   maxResults: int64 = 32'i64; exclude: Array = newArray();
                   collisionLayer: int64 = 2147483647'i64;
                   collideWithBodies: bool = true; collideWithAreas: bool = false): Array =
  if isNil(physics2DDirectSpaceStateIntersectPointMethodBind):
    physics2DDirectSpaceStateIntersectPointMethodBind = getMethod(
        cstring"Physics2DDirectSpaceState", cstring"intersect_point")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(maxResults)
  argsToPassToGodot[][2] = exclude.godotArray
  argsToPassToGodot[][3] = unsafeAddr(collisionLayer)
  argsToPassToGodot[][4] = unsafeAddr(collideWithBodies)
  argsToPassToGodot[][5] = unsafeAddr(collideWithAreas)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectSpaceStateIntersectPointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var physics2DDirectSpaceStateIntersectPointOnCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectPointOnCanvas(self: Physics2DDirectSpaceState; point: Vector2;
                           canvasInstanceId: int64; maxResults: int64 = 32'i64;
                           exclude: Array = newArray();
                           collisionLayer: int64 = 2147483647'i64;
                           collideWithBodies: bool = true;
                           collideWithAreas: bool = false): Array =
  if isNil(physics2DDirectSpaceStateIntersectPointOnCanvasMethodBind):
    physics2DDirectSpaceStateIntersectPointOnCanvasMethodBind = getMethod(
        cstring"Physics2DDirectSpaceState", cstring"intersect_point_on_canvas")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(canvasInstanceId)
  argsToPassToGodot[][2] = unsafeAddr(maxResults)
  argsToPassToGodot[][3] = exclude.godotArray
  argsToPassToGodot[][4] = unsafeAddr(collisionLayer)
  argsToPassToGodot[][5] = unsafeAddr(collideWithBodies)
  argsToPassToGodot[][6] = unsafeAddr(collideWithAreas)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectSpaceStateIntersectPointOnCanvasMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var physics2DDirectSpaceStateIntersectRayMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectRay(self: Physics2DDirectSpaceState; fromm: Vector2; to: Vector2;
                 exclude: Array = newArray();
                 collisionLayer: int64 = 2147483647'i64;
                 collideWithBodies: bool = true; collideWithAreas: bool = false): Dictionary =
  if isNil(physics2DDirectSpaceStateIntersectRayMethodBind):
    physics2DDirectSpaceStateIntersectRayMethodBind = getMethod(
        cstring"Physics2DDirectSpaceState", cstring"intersect_ray")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = exclude.godotArray
  argsToPassToGodot[][3] = unsafeAddr(collisionLayer)
  argsToPassToGodot[][4] = unsafeAddr(collideWithBodies)
  argsToPassToGodot[][5] = unsafeAddr(collideWithAreas)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectSpaceStateIntersectRayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var physics2DDirectSpaceStateIntersectShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectShape(self: Physics2DDirectSpaceState;
                   shape: Physics2DShapeQueryParameters;
                   maxResults: int64 = 32'i64): Array =
  if isNil(physics2DDirectSpaceStateIntersectShapeMethodBind):
    physics2DDirectSpaceStateIntersectShapeMethodBind = getMethod(
        cstring"Physics2DDirectSpaceState", cstring"intersect_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(maxResults)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physics2DDirectSpaceStateIntersectShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)
