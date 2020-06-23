
import
  godot, godottypes, godotinternal, physics_body_2d

export
  godottypes, physics_body_2d

proc collisionsafeMargin*(self: KinematicBody2D): float64 {.gcsafe, locks: 0.}
proc `collisionsafeMargin=`*(self: KinematicBody2D; val: float64) {.gcsafe, locks: 0.}
proc motionsyncToPhysics*(self: KinematicBody2D): bool {.gcsafe, locks: 0.}
proc `motionsyncToPhysics=`*(self: KinematicBody2D; val: bool) {.gcsafe, locks: 0.}
method directStateChanged*(self: KinematicBody2D; arg0: Object) {.gcsafe, locks: 0, base.}
proc getFloorNormal*(self: KinematicBody2D): Vector2 {.gcsafe, locks: 0.}
proc getFloorVelocity*(self: KinematicBody2D): Vector2 {.gcsafe, locks: 0.}
proc getSlideCollision*(self: KinematicBody2D; slideIdx: int64): KinematicCollision2D {.
    gcsafe, locks: 0.}
proc getSlideCount*(self: KinematicBody2D): int64 {.gcsafe, locks: 0.}
proc isOnCeiling*(self: KinematicBody2D): bool {.gcsafe, locks: 0.}
proc isOnFloor*(self: KinematicBody2D): bool {.gcsafe, locks: 0.}
proc isOnWall*(self: KinematicBody2D): bool {.gcsafe, locks: 0.}
proc moveAndCollide*(self: KinematicBody2D; relVec: Vector2;
                    infiniteInertia: bool = true; excludeRaycastShapes: bool = true;
                    testOnly: bool = false): KinematicCollision2D {.gcsafe, locks: 0.}
proc moveAndSlide*(self: KinematicBody2D; linearVelocity: Vector2;
                  upDirection: Vector2 = vec2(0.0, 0.0); stopOnSlope: bool = false;
                  maxSlides: int64 = 4'i64; floorMaxAngle: float64 = 0.785398;
                  infiniteInertia: bool = true): Vector2 {.gcsafe, locks: 0.}
proc moveAndSlideWithSnap*(self: KinematicBody2D; linearVelocity: Vector2;
                          snap: Vector2; upDirection: Vector2 = vec2(0.0, 0.0);
                          stopOnSlope: bool = false; maxSlides: int64 = 4'i64;
                          floorMaxAngle: float64 = 0.785398;
                          infiniteInertia: bool = true): Vector2 {.gcsafe, locks: 0.}
proc testMove*(self: KinematicBody2D; fromm: Transform2D; relVec: Vector2;
              infiniteInertia: bool = true): bool {.gcsafe, locks: 0.}
var kinematicBody2DGetSafeMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionsafeMargin(self: KinematicBody2D): float64 =
  if isNil(kinematicBody2DGetSafeMarginMethodBind):
    kinematicBody2DGetSafeMarginMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"get_safe_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DGetSafeMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBody2DSetSafeMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionsafeMargin=`(self: KinematicBody2D; val: float64) =
  if isNil(kinematicBody2DSetSafeMarginMethodBind):
    kinematicBody2DSetSafeMarginMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"set_safe_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicBody2DSetSafeMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var kinematicBody2DIsSyncToPhysicsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc motionsyncToPhysics(self: KinematicBody2D): bool =
  if isNil(kinematicBody2DIsSyncToPhysicsEnabledMethodBind):
    kinematicBody2DIsSyncToPhysicsEnabledMethodBind = getMethod(
        cstring"KinematicBody2D", cstring"is_sync_to_physics_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DIsSyncToPhysicsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var kinematicBody2DSetSyncToPhysicsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `motionsyncToPhysics=`(self: KinematicBody2D; val: bool) =
  if isNil(kinematicBody2DSetSyncToPhysicsMethodBind):
    kinematicBody2DSetSyncToPhysicsMethodBind = getMethod(
        cstring"KinematicBody2D", cstring"set_sync_to_physics")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  kinematicBody2DSetSyncToPhysicsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var kinematicBody2DUnderscoredirectStateChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method directStateChanged(self: KinematicBody2D; arg0: Object) =
  if isNil(kinematicBody2DUnderscoredirectStateChangedMethodBind):
    kinematicBody2DUnderscoredirectStateChangedMethodBind = getMethod(
        cstring"KinematicBody2D", cstring"_direct_state_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  kinematicBody2DUnderscoredirectStateChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var kinematicBody2DGetFloorNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFloorNormal(self: KinematicBody2D): Vector2 =
  if isNil(kinematicBody2DGetFloorNormalMethodBind):
    kinematicBody2DGetFloorNormalMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"get_floor_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DGetFloorNormalMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var kinematicBody2DGetFloorVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFloorVelocity(self: KinematicBody2D): Vector2 =
  if isNil(kinematicBody2DGetFloorVelocityMethodBind):
    kinematicBody2DGetFloorVelocityMethodBind = getMethod(
        cstring"KinematicBody2D", cstring"get_floor_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DGetFloorVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var kinematicBody2DGetSlideCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlideCollision(self: KinematicBody2D; slideIdx: int64): KinematicCollision2D =
  if isNil(kinematicBody2DGetSlideCollisionMethodBind):
    kinematicBody2DGetSlideCollisionMethodBind = getMethod(
        cstring"KinematicBody2D", cstring"get_slide_collision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(slideIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  kinematicBody2DGetSlideCollisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var kinematicBody2DGetSlideCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSlideCount(self: KinematicBody2D): int64 =
  if isNil(kinematicBody2DGetSlideCountMethodBind):
    kinematicBody2DGetSlideCountMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"get_slide_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DGetSlideCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBody2DIsOnCeilingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnCeiling(self: KinematicBody2D): bool =
  if isNil(kinematicBody2DIsOnCeilingMethodBind):
    kinematicBody2DIsOnCeilingMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"is_on_ceiling")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DIsOnCeilingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBody2DIsOnFloorMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnFloor(self: KinematicBody2D): bool =
  if isNil(kinematicBody2DIsOnFloorMethodBind):
    kinematicBody2DIsOnFloorMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"is_on_floor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DIsOnFloorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBody2DIsOnWallMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOnWall(self: KinematicBody2D): bool =
  if isNil(kinematicBody2DIsOnWallMethodBind):
    kinematicBody2DIsOnWallMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"is_on_wall")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DIsOnWallMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var kinematicBody2DMoveAndCollideMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveAndCollide(self: KinematicBody2D; relVec: Vector2;
                   infiniteInertia: bool = true; excludeRaycastShapes: bool = true;
                   testOnly: bool = false): KinematicCollision2D =
  if isNil(kinematicBody2DMoveAndCollideMethodBind):
    kinematicBody2DMoveAndCollideMethodBind = getMethod(cstring"KinematicBody2D",
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
  kinematicBody2DMoveAndCollideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var kinematicBody2DMoveAndSlideMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveAndSlide(self: KinematicBody2D; linearVelocity: Vector2;
                 upDirection: Vector2 = vec2(0.0, 0.0); stopOnSlope: bool = false;
                 maxSlides: int64 = 4'i64; floorMaxAngle: float64 = 0.785398;
                 infiniteInertia: bool = true): Vector2 =
  if isNil(kinematicBody2DMoveAndSlideMethodBind):
    kinematicBody2DMoveAndSlideMethodBind = getMethod(cstring"KinematicBody2D",
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
  kinematicBody2DMoveAndSlideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var kinematicBody2DMoveAndSlideWithSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveAndSlideWithSnap(self: KinematicBody2D; linearVelocity: Vector2;
                         snap: Vector2; upDirection: Vector2 = vec2(0.0, 0.0);
                         stopOnSlope: bool = false; maxSlides: int64 = 4'i64;
                         floorMaxAngle: float64 = 0.785398;
                         infiniteInertia: bool = true): Vector2 =
  if isNil(kinematicBody2DMoveAndSlideWithSnapMethodBind):
    kinematicBody2DMoveAndSlideWithSnapMethodBind = getMethod(
        cstring"KinematicBody2D", cstring"move_and_slide_with_snap")
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
  kinematicBody2DMoveAndSlideWithSnapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var kinematicBody2DTestMoveMethodBind {.threadvar.}: ptr GodotMethodBind
proc testMove(self: KinematicBody2D; fromm: Transform2D; relVec: Vector2;
             infiniteInertia: bool = true): bool =
  if isNil(kinematicBody2DTestMoveMethodBind):
    kinematicBody2DTestMoveMethodBind = getMethod(cstring"KinematicBody2D",
        cstring"test_move")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(relVec)
  argsToPassToGodot[][2] = unsafeAddr(infiniteInertia)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  kinematicBody2DTestMoveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
