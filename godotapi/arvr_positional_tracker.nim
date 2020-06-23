
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  TRACKER_HAND_UNKNOWN* = 0'i64
  TRACKER_LEFT_HAND* = 1'i64
  TRACKER_RIGHT_HAND* = 2'i64
proc rumble*(self: ARVRPositionalTracker): float64 {.gcsafe, locks: 0.}
proc `rumble=`*(self: ARVRPositionalTracker; val: float64) {.gcsafe, locks: 0.}
method setJoyId*(self: ARVRPositionalTracker; joyId: int64) {.gcsafe, locks: 0, base.}
method setMesh*(self: ARVRPositionalTracker; mesh: Mesh) {.gcsafe, locks: 0, base.}
method setName*(self: ARVRPositionalTracker; name: string) {.gcsafe, locks: 0, base.}
method setOrientation*(self: ARVRPositionalTracker; orientation: Basis) {.gcsafe,
    locks: 0, base.}
method setRwPosition*(self: ARVRPositionalTracker; rwPosition: Vector3) {.gcsafe,
    locks: 0, base.}
method setType*(self: ARVRPositionalTracker; typee: int64) {.gcsafe, locks: 0, base.}
proc getHand*(self: ARVRPositionalTracker): int64 {.gcsafe, locks: 0.}
proc getJoyId*(self: ARVRPositionalTracker): int64 {.gcsafe, locks: 0.}
proc getMesh*(self: ARVRPositionalTracker): Mesh {.gcsafe, locks: 0.}
proc getName*(self: ARVRPositionalTracker): string {.gcsafe, locks: 0.}
proc getOrientation*(self: ARVRPositionalTracker): Basis {.gcsafe, locks: 0.}
proc getPosition*(self: ARVRPositionalTracker): Vector3 {.gcsafe, locks: 0.}
proc getTrackerId*(self: ARVRPositionalTracker): int64 {.gcsafe, locks: 0.}
proc getTracksOrientation*(self: ARVRPositionalTracker): bool {.gcsafe, locks: 0.}
proc getTracksPosition*(self: ARVRPositionalTracker): bool {.gcsafe, locks: 0.}
proc getTransform*(self: ARVRPositionalTracker; adjustByReferenceFrame: bool): Transform {.
    gcsafe, locks: 0.}
proc getType*(self: ARVRPositionalTracker): int64 {.gcsafe, locks: 0.}
var aRVRPositionalTrackerGetRumbleMethodBind {.threadvar.}: ptr GodotMethodBind
proc rumble(self: ARVRPositionalTracker): float64 =
  if isNil(aRVRPositionalTrackerGetRumbleMethodBind):
    aRVRPositionalTrackerGetRumbleMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_rumble")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetRumbleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRPositionalTrackerSetRumbleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rumble=`(self: ARVRPositionalTracker; val: float64) =
  if isNil(aRVRPositionalTrackerSetRumbleMethodBind):
    aRVRPositionalTrackerSetRumbleMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"set_rumble")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aRVRPositionalTrackerSetRumbleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRPositionalTrackerUnderscoresetJoyIdMethodBind {.threadvar.}: ptr GodotMethodBind
method setJoyId(self: ARVRPositionalTracker; joyId: int64) =
  if isNil(aRVRPositionalTrackerUnderscoresetJoyIdMethodBind):
    aRVRPositionalTrackerUnderscoresetJoyIdMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"_set_joy_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(joyId)
  var ptrCallRet: pointer
  aRVRPositionalTrackerUnderscoresetJoyIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRPositionalTrackerUnderscoresetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
method setMesh(self: ARVRPositionalTracker; mesh: Mesh) =
  if isNil(aRVRPositionalTrackerUnderscoresetMeshMethodBind):
    aRVRPositionalTrackerUnderscoresetMeshMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"_set_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  aRVRPositionalTrackerUnderscoresetMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRPositionalTrackerUnderscoresetNameMethodBind {.threadvar.}: ptr GodotMethodBind
method setName(self: ARVRPositionalTracker; name: string) =
  if isNil(aRVRPositionalTrackerUnderscoresetNameMethodBind):
    aRVRPositionalTrackerUnderscoresetNameMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"_set_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  aRVRPositionalTrackerUnderscoresetNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var aRVRPositionalTrackerUnderscoresetOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
method setOrientation(self: ARVRPositionalTracker; orientation: Basis) =
  if isNil(aRVRPositionalTrackerUnderscoresetOrientationMethodBind):
    aRVRPositionalTrackerUnderscoresetOrientationMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"_set_orientation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(orientation)
  var ptrCallRet: pointer
  aRVRPositionalTrackerUnderscoresetOrientationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var aRVRPositionalTrackerUnderscoresetRwPositionMethodBind {.threadvar.}: ptr GodotMethodBind
method setRwPosition(self: ARVRPositionalTracker; rwPosition: Vector3) =
  if isNil(aRVRPositionalTrackerUnderscoresetRwPositionMethodBind):
    aRVRPositionalTrackerUnderscoresetRwPositionMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"_set_rw_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rwPosition)
  var ptrCallRet: pointer
  aRVRPositionalTrackerUnderscoresetRwPositionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var aRVRPositionalTrackerUnderscoresetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method setType(self: ARVRPositionalTracker; typee: int64) =
  if isNil(aRVRPositionalTrackerUnderscoresetTypeMethodBind):
    aRVRPositionalTrackerUnderscoresetTypeMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"_set_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var ptrCallRet: pointer
  aRVRPositionalTrackerUnderscoresetTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRPositionalTrackerGetHandMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHand(self: ARVRPositionalTracker): int64 =
  if isNil(aRVRPositionalTrackerGetHandMethodBind):
    aRVRPositionalTrackerGetHandMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_hand")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetHandMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aRVRPositionalTrackerGetJoyIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyId(self: ARVRPositionalTracker): int64 =
  if isNil(aRVRPositionalTrackerGetJoyIdMethodBind):
    aRVRPositionalTrackerGetJoyIdMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_joy_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetJoyIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRPositionalTrackerGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMesh(self: ARVRPositionalTracker): Mesh =
  if isNil(aRVRPositionalTrackerGetMeshMethodBind):
    aRVRPositionalTrackerGetMeshMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  aRVRPositionalTrackerGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var aRVRPositionalTrackerGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getName(self: ARVRPositionalTracker): string =
  if isNil(aRVRPositionalTrackerGetNameMethodBind):
    aRVRPositionalTrackerGetNameMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  aRVRPositionalTrackerGetNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var aRVRPositionalTrackerGetOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOrientation(self: ARVRPositionalTracker): Basis =
  if isNil(aRVRPositionalTrackerGetOrientationMethodBind):
    aRVRPositionalTrackerGetOrientationMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_orientation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetOrientationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRPositionalTrackerGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPosition(self: ARVRPositionalTracker): Vector3 =
  if isNil(aRVRPositionalTrackerGetPositionMethodBind):
    aRVRPositionalTrackerGetPositionMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRPositionalTrackerGetTrackerIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTrackerId(self: ARVRPositionalTracker): int64 =
  if isNil(aRVRPositionalTrackerGetTrackerIdMethodBind):
    aRVRPositionalTrackerGetTrackerIdMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_tracker_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetTrackerIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRPositionalTrackerGetTracksOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTracksOrientation(self: ARVRPositionalTracker): bool =
  if isNil(aRVRPositionalTrackerGetTracksOrientationMethodBind):
    aRVRPositionalTrackerGetTracksOrientationMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_tracks_orientation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetTracksOrientationMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var aRVRPositionalTrackerGetTracksPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTracksPosition(self: ARVRPositionalTracker): bool =
  if isNil(aRVRPositionalTrackerGetTracksPositionMethodBind):
    aRVRPositionalTrackerGetTracksPositionMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_tracks_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetTracksPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aRVRPositionalTrackerGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransform(self: ARVRPositionalTracker; adjustByReferenceFrame: bool): Transform =
  if isNil(aRVRPositionalTrackerGetTransformMethodBind):
    aRVRPositionalTrackerGetTransformMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(adjustByReferenceFrame)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aRVRPositionalTrackerGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getType(self: ARVRPositionalTracker): int64 =
  if isNil(aRVRPositionalTrackerGetTypeMethodBind):
    aRVRPositionalTrackerGetTypeMethodBind = getMethod(
        cstring"ARVRPositionalTracker", cstring"get_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aRVRPositionalTrackerGetTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
