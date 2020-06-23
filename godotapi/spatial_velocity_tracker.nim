
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc trackPhysicsStep*(self: SpatialVelocityTracker): bool {.gcsafe, locks: 0.}
proc `trackPhysicsStep=`*(self: SpatialVelocityTracker; val: bool) {.gcsafe, locks: 0.}
proc getTrackedLinearVelocity*(self: SpatialVelocityTracker): Vector3 {.gcsafe,
    locks: 0.}
proc reset*(self: SpatialVelocityTracker; position: Vector3) {.gcsafe, locks: 0.}
proc updatePosition*(self: SpatialVelocityTracker; position: Vector3) {.gcsafe,
    locks: 0.}
var spatialVelocityTrackerIsTrackingPhysicsStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc trackPhysicsStep(self: SpatialVelocityTracker): bool =
  if isNil(spatialVelocityTrackerIsTrackingPhysicsStepMethodBind):
    spatialVelocityTrackerIsTrackingPhysicsStepMethodBind = getMethod(
        cstring"SpatialVelocityTracker", cstring"is_tracking_physics_step")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialVelocityTrackerIsTrackingPhysicsStepMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialVelocityTrackerSetTrackPhysicsStepMethodBind {.threadvar.}: ptr GodotMethodBind
proc `trackPhysicsStep=`(self: SpatialVelocityTracker; val: bool) =
  if isNil(spatialVelocityTrackerSetTrackPhysicsStepMethodBind):
    spatialVelocityTrackerSetTrackPhysicsStepMethodBind = getMethod(
        cstring"SpatialVelocityTracker", cstring"set_track_physics_step")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialVelocityTrackerSetTrackPhysicsStepMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialVelocityTrackerGetTrackedLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTrackedLinearVelocity(self: SpatialVelocityTracker): Vector3 =
  if isNil(spatialVelocityTrackerGetTrackedLinearVelocityMethodBind):
    spatialVelocityTrackerGetTrackedLinearVelocityMethodBind = getMethod(
        cstring"SpatialVelocityTracker", cstring"get_tracked_linear_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialVelocityTrackerGetTrackedLinearVelocityMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialVelocityTrackerResetMethodBind {.threadvar.}: ptr GodotMethodBind
proc reset(self: SpatialVelocityTracker; position: Vector3) =
  if isNil(spatialVelocityTrackerResetMethodBind):
    spatialVelocityTrackerResetMethodBind = getMethod(
        cstring"SpatialVelocityTracker", cstring"reset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  spatialVelocityTrackerResetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialVelocityTrackerUpdatePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc updatePosition(self: SpatialVelocityTracker; position: Vector3) =
  if isNil(spatialVelocityTrackerUpdatePositionMethodBind):
    spatialVelocityTrackerUpdatePositionMethodBind = getMethod(
        cstring"SpatialVelocityTracker", cstring"update_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  spatialVelocityTrackerUpdatePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
