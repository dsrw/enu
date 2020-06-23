
import
  godot, godottypes, godotinternal, physics_body

export
  godottypes, physics_body

proc collisionsafeMargin*(self: KinematicBody): float64 {.gcsafe, locks: 0.}
proc `collisionsafeMargin=`*(self: KinematicBody; val: float64) {.gcsafe, locks: 0.}
proc moveLockX*(self: KinematicBody): bool {.gcsafe, locks: 0.}
proc `moveLockX=`*(self: KinematicBody; val: bool) {.gcsafe, locks: 0.}
proc moveLockY*(self: KinematicBody): bool {.gcsafe, locks: 0.}
proc `moveLockY=`*(self: KinematicBody; val: bool) {.gcsafe, locks: 0.}
proc moveLockZ*(self: KinematicBody): bool {.gcsafe, locks: 0.}
proc `moveLockZ=`*(self: KinematicBody; val: bool) {.gcsafe, locks: 0.}
proc getFloorNormal*(self: KinematicBody): Vector3 {.gcsafe, locks: 0.}
proc getFloorVelocity*(self: KinematicBody): Vector3 {.gcsafe, locks: 0.}
proc getSlideCollision*(self: KinematicBody; slideIdx: int64): KinematicCollision {.
    gcsafe, locks: 0.}
proc getSlideCount*(self: KinematicBody): int64 {.gcsafe, locks: 0.}
proc isOnCeiling*(self: KinematicBody): bool {.gcsafe, locks: 0.}
proc isOnFloor*(self: KinematicBody): bool {.gcsafe, locks: 0.}
proc isOnWall*(self: KinematicBody): bool {.gcsafe, locks: 0.}
proc moveAndCollide*(self: KinematicBody; relVec: Vector3;
                    infiniteInertia: bool = true; excludeRaycastShapes: bool = true;
                    testOnly: bool = false): KinematicCollision {.gcsafe, locks: 0.}
proc moveAndSlide*(self: KinematicBody; linearVelocity: Vector3;
                  upDirection: Vector3 = vec3(0.0, 0.0, 0.0);
                  stopOnSlope: bool = false; maxSlides: int64 = 4'i64;
                  floorMaxAngle: float64 = 0.785398; infiniteInertia: bool = true): Vector3 {.
    gcsafe, locks: 0.}
proc moveAndSlideWithSnap*(self: KinematicBody; linearVelocity: Vector3;
                          snap: Vector3;
                          upDirection: Vector3 = vec3(0.0, 0.0, 0.0);
                          stopOnSlope: bool = false; maxSlides: int64 = 4'i64;
                          floorMaxAngle: float64 = 0.785398;
                          infiniteInertia: bool = true): Vector3 {.gcsafe, locks: 0.}
proc testMove*(self: KinematicBody; fromm: Transform; relVec: Vector3;
              infiniteInertia: bool = true): bool {.gcsafe, locks: 0.}
var kinematicBodyGetSafeMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionsafeMargin(self: KinematicBody): float64 =
  if isNil(kinematicBodyGetSafeMarginMethodBind):
    kinematicBodyGetSafeMarginMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_safe_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyGetSafeMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBodySetSafeMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionsafeMargin=`(self: KinematicBody; val: float64) =
  if isNil(kinematicBodySetSafeMarginMethodBind):
    kinematicBodySetSafeMarginMethodBind = getMethod(cstring"KinematicBody",
        cstring"set_safe_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicBodySetSafeMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var kinematicBodyGetAxisLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveLockX(self: KinematicBody): bool =
  if isNil(kinematicBodyGetAxisLockMethodBind):
    kinematicBodyGetAxisLockMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicBodySetAxisLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc `moveLockX=`(self: KinematicBody; val: bool) =
  if isNil(kinematicBodySetAxisLockMethodBind):
    kinematicBodySetAxisLockMethodBind = getMethod(cstring"KinematicBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc moveLockY(self: KinematicBody): bool =
  if isNil(kinematicBodyGetAxisLockMethodBind):
    kinematicBodyGetAxisLockMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `moveLockY=`(self: KinematicBody; val: bool) =
  if isNil(kinematicBodySetAxisLockMethodBind):
    kinematicBodySetAxisLockMethodBind = getMethod(cstring"KinematicBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc moveLockZ(self: KinematicBody): bool =
  if isNil(kinematicBodyGetAxisLockMethodBind):
    kinematicBodyGetAxisLockMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_axis_lock")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyGetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `moveLockZ=`(self: KinematicBody; val: bool) =
  if isNil(kinematicBodySetAxisLockMethodBind):
    kinematicBodySetAxisLockMethodBind = getMethod(cstring"KinematicBody",
        cstring"set_axis_lock")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicBodySetAxisLockMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var kinematicBodyGetFloorNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFloorNormal(self: KinematicBody): Vector3 =
  if isNil(kinematicBodyGetFloorNormalMethodBind):
    kinematicBodyGetFloorNormalMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_floor_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyGetFloorNormalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBodyGetFloorVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFloorVelocity(self: KinematicBody): Vector3 =
  if isNil(kinematicBodyGetFloorVelocityMethodBind):
    kinematicBodyGetFloorVelocityMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_floor_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyGetFloorVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var kinematicBodyGetSlideCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlideCollision(self: KinematicBody; slideIdx: int64): KinematicCollision =
  if isNil(kinematicBodyGetSlideCollisionMethodBind):
    kinematicBodyGetSlideCollisionMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_slide_collision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(slideIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicBodyGetSlideCollisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var kinematicBodyGetSlideCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlideCount(self: KinematicBody): int64 =
  if isNil(kinematicBodyGetSlideCountMethodBind):
    kinematicBodyGetSlideCountMethodBind = getMethod(cstring"KinematicBody",
        cstring"get_slide_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyGetSlideCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBodyIsOnCeilingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnCeiling(self: KinematicBody): bool =
  if isNil(kinematicBodyIsOnCeilingMethodBind):
    kinematicBodyIsOnCeilingMethodBind = getMethod(cstring"KinematicBody",
        cstring"is_on_ceiling")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyIsOnCeilingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBodyIsOnFloorMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnFloor(self: KinematicBody): bool =
  if isNil(kinematicBodyIsOnFloorMethodBind):
    kinematicBodyIsOnFloorMethodBind = getMethod(cstring"KinematicBody",
        cstring"is_on_floor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyIsOnFloorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBodyIsOnWallMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnWall(self: KinematicBody): bool =
  if isNil(kinematicBodyIsOnWallMethodBind):
    kinematicBodyIsOnWallMethodBind = getMethod(cstring"KinematicBody",
        cstring"is_on_wall")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyIsOnWallMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBodyMoveAndCollideMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveAndCollide(self: KinematicBody; relVec: Vector3;
                   infiniteInertia: bool = true; excludeRaycastShapes: bool = true;
                   testOnly: bool = false): KinematicCollision =
  if isNil(kinematicBodyMoveAndCollideMethodBind):
    kinematicBodyMoveAndCollideMethodBind = getMethod(cstring"KinematicBody",
        cstring"move_and_collide")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(relVec)
  argsToPassToGodot[][1] = unsafeAddr(infiniteInertia)
  argsToPassToGodot[][2] = unsafeAddr(excludeRaycastShapes)
  argsToPassToGodot[][3] = unsafeAddr(testOnly)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicBodyMoveAndCollideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var kinematicBodyMoveAndSlideMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveAndSlide(self: KinematicBody; linearVelocity: Vector3;
                 upDirection: Vector3 = vec3(0.0, 0.0, 0.0);
                 stopOnSlope: bool = false; maxSlides: int64 = 4'i64;
                 floorMaxAngle: float64 = 0.785398; infiniteInertia: bool = true): Vector3 =
  if isNil(kinematicBodyMoveAndSlideMethodBind):
    kinematicBodyMoveAndSlideMethodBind = getMethod(cstring"KinematicBody",
        cstring"move_and_slide")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(linearVelocity)
  argsToPassToGodot[][1] = unsafeAddr(upDirection)
  argsToPassToGodot[][2] = unsafeAddr(stopOnSlope)
  argsToPassToGodot[][3] = unsafeAddr(maxSlides)
  argsToPassToGodot[][4] = unsafeAddr(floorMaxAngle)
  argsToPassToGodot[][5] = unsafeAddr(infiniteInertia)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyMoveAndSlideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var kinematicBodyMoveAndSlideWithSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveAndSlideWithSnap(self: KinematicBody; linearVelocity: Vector3;
                         snap: Vector3;
                         upDirection: Vector3 = vec3(0.0, 0.0, 0.0);
                         stopOnSlope: bool = false; maxSlides: int64 = 4'i64;
                         floorMaxAngle: float64 = 0.785398;
                         infiniteInertia: bool = true): Vector3 =
  if isNil(kinematicBodyMoveAndSlideWithSnapMethodBind):
    kinematicBodyMoveAndSlideWithSnapMethodBind = getMethod(
        cstring"KinematicBody", cstring"move_and_slide_with_snap")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(linearVelocity)
  argsToPassToGodot[][1] = unsafeAddr(snap)
  argsToPassToGodot[][2] = unsafeAddr(upDirection)
  argsToPassToGodot[][3] = unsafeAddr(stopOnSlope)
  argsToPassToGodot[][4] = unsafeAddr(maxSlides)
  argsToPassToGodot[][5] = unsafeAddr(floorMaxAngle)
  argsToPassToGodot[][6] = unsafeAddr(infiniteInertia)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyMoveAndSlideWithSnapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var kinematicBodyTestMoveMethodBind {.threadvar.}: ptr GodotMethodBind
proc testMove(self: KinematicBody; fromm: Transform; relVec: Vector3;
             infiniteInertia: bool = true): bool =
  if isNil(kinematicBodyTestMoveMethodBind):
    kinematicBodyTestMoveMethodBind = getMethod(cstring"KinematicBody",
        cstring"test_move")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(relVec)
  argsToPassToGodot[][2] = unsafeAddr(infiniteInertia)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBodyTestMoveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
