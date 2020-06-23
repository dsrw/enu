
import
  godot, godottypes, godotinternal, mesh_instance

export
  godottypes, mesh_instance

proc areaAngularStiffness*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `areaAngularStiffness=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
proc collisionLayer*(self: SoftBody): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: SoftBody; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: SoftBody): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: SoftBody; val: int64) {.gcsafe, locks: 0.}
proc dampingCoefficient*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `dampingCoefficient=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
proc dragCoefficient*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `dragCoefficient=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
proc linearStiffness*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `linearStiffness=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
proc parentCollisionIgnore*(self: SoftBody): NodePath {.gcsafe, locks: 0.}
proc `parentCollisionIgnore=`*(self: SoftBody; val: NodePath) {.gcsafe, locks: 0.}
proc poseMatchingCoefficient*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `poseMatchingCoefficient=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
proc pressureCoefficient*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `pressureCoefficient=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
proc rayPickable*(self: SoftBody): bool {.gcsafe, locks: 0.}
proc `rayPickable=`*(self: SoftBody; val: bool) {.gcsafe, locks: 0.}
proc simulationPrecision*(self: SoftBody): int64 {.gcsafe, locks: 0.}
proc `simulationPrecision=`*(self: SoftBody; val: int64) {.gcsafe, locks: 0.}
proc totalMass*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `totalMass=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
proc volumeStiffness*(self: SoftBody): float64 {.gcsafe, locks: 0.}
proc `volumeStiffness=`*(self: SoftBody; val: float64) {.gcsafe, locks: 0.}
method drawSoftMesh*(self: SoftBody) {.gcsafe, locks: 0, base.}
proc addCollisionExceptionWith*(self: SoftBody; body: Node) {.gcsafe, locks: 0.}
proc getCollisionExceptions*(self: SoftBody): Array {.gcsafe, locks: 0.}
proc getCollisionLayerBit*(self: SoftBody; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: SoftBody; bit: int64): bool {.gcsafe, locks: 0.}
proc removeCollisionExceptionWith*(self: SoftBody; body: Node) {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: SoftBody; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: SoftBody; bit: int64; value: bool) {.gcsafe, locks: 0.}
var softBodyGetAreaAngularStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc areaAngularStiffness(self: SoftBody): float64 =
  if isNil(softBodyGetAreaAngularStiffnessMethodBind):
    softBodyGetAreaAngularStiffnessMethodBind = getMethod(cstring"SoftBody",
        cstring"get_areaAngular_stiffness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetAreaAngularStiffnessMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var softBodySetAreaAngularStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `areaAngularStiffness=`(self: SoftBody; val: float64) =
  if isNil(softBodySetAreaAngularStiffnessMethodBind):
    softBodySetAreaAngularStiffnessMethodBind = getMethod(cstring"SoftBody",
        cstring"set_areaAngular_stiffness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetAreaAngularStiffnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: SoftBody): int64 =
  if isNil(softBodyGetCollisionLayerMethodBind):
    softBodyGetCollisionLayerMethodBind = getMethod(cstring"SoftBody",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var softBodySetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: SoftBody; val: int64) =
  if isNil(softBodySetCollisionLayerMethodBind):
    softBodySetCollisionLayerMethodBind = getMethod(cstring"SoftBody",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: SoftBody): int64 =
  if isNil(softBodyGetCollisionMaskMethodBind):
    softBodyGetCollisionMaskMethodBind = getMethod(cstring"SoftBody",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var softBodySetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: SoftBody; val: int64) =
  if isNil(softBodySetCollisionMaskMethodBind):
    softBodySetCollisionMaskMethodBind = getMethod(cstring"SoftBody",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetCollisionMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var softBodyGetDampingCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc dampingCoefficient(self: SoftBody): float64 =
  if isNil(softBodyGetDampingCoefficientMethodBind):
    softBodyGetDampingCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"get_damping_coefficient")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetDampingCoefficientMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var softBodySetDampingCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dampingCoefficient=`(self: SoftBody; val: float64) =
  if isNil(softBodySetDampingCoefficientMethodBind):
    softBodySetDampingCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"set_damping_coefficient")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetDampingCoefficientMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetDragCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc dragCoefficient(self: SoftBody): float64 =
  if isNil(softBodyGetDragCoefficientMethodBind):
    softBodyGetDragCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"get_drag_coefficient")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetDragCoefficientMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var softBodySetDragCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dragCoefficient=`(self: SoftBody; val: float64) =
  if isNil(softBodySetDragCoefficientMethodBind):
    softBodySetDragCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"set_drag_coefficient")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetDragCoefficientMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetLinearStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearStiffness(self: SoftBody): float64 =
  if isNil(softBodyGetLinearStiffnessMethodBind):
    softBodyGetLinearStiffnessMethodBind = getMethod(cstring"SoftBody",
        cstring"get_linear_stiffness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetLinearStiffnessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var softBodySetLinearStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearStiffness=`(self: SoftBody; val: float64) =
  if isNil(softBodySetLinearStiffnessMethodBind):
    softBodySetLinearStiffnessMethodBind = getMethod(cstring"SoftBody",
        cstring"set_linear_stiffness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetLinearStiffnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetParentCollisionIgnoreMethodBind {.threadvar.}: ptr GodotMethodBind
proc parentCollisionIgnore(self: SoftBody): NodePath =
  if isNil(softBodyGetParentCollisionIgnoreMethodBind):
    softBodyGetParentCollisionIgnoreMethodBind = getMethod(cstring"SoftBody",
        cstring"get_parent_collision_ignore")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  softBodyGetParentCollisionIgnoreMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var softBodySetParentCollisionIgnoreMethodBind {.threadvar.}: ptr GodotMethodBind
proc `parentCollisionIgnore=`(self: SoftBody; val: NodePath) =
  if isNil(softBodySetParentCollisionIgnoreMethodBind):
    softBodySetParentCollisionIgnoreMethodBind = getMethod(cstring"SoftBody",
        cstring"set_parent_collision_ignore")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  softBodySetParentCollisionIgnoreMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetPoseMatchingCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc poseMatchingCoefficient(self: SoftBody): float64 =
  if isNil(softBodyGetPoseMatchingCoefficientMethodBind):
    softBodyGetPoseMatchingCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"get_pose_matching_coefficient")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetPoseMatchingCoefficientMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var softBodySetPoseMatchingCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc `poseMatchingCoefficient=`(self: SoftBody; val: float64) =
  if isNil(softBodySetPoseMatchingCoefficientMethodBind):
    softBodySetPoseMatchingCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"set_pose_matching_coefficient")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetPoseMatchingCoefficientMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetPressureCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressureCoefficient(self: SoftBody): float64 =
  if isNil(softBodyGetPressureCoefficientMethodBind):
    softBodyGetPressureCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"get_pressure_coefficient")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetPressureCoefficientMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var softBodySetPressureCoefficientMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressureCoefficient=`(self: SoftBody; val: float64) =
  if isNil(softBodySetPressureCoefficientMethodBind):
    softBodySetPressureCoefficientMethodBind = getMethod(cstring"SoftBody",
        cstring"set_pressure_coefficient")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetPressureCoefficientMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyIsRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc rayPickable(self: SoftBody): bool =
  if isNil(softBodyIsRayPickableMethodBind):
    softBodyIsRayPickableMethodBind = getMethod(cstring"SoftBody",
        cstring"is_ray_pickable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyIsRayPickableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var softBodySetRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rayPickable=`(self: SoftBody; val: bool) =
  if isNil(softBodySetRayPickableMethodBind):
    softBodySetRayPickableMethodBind = getMethod(cstring"SoftBody",
        cstring"set_ray_pickable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetRayPickableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var softBodyGetSimulationPrecisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc simulationPrecision(self: SoftBody): int64 =
  if isNil(softBodyGetSimulationPrecisionMethodBind):
    softBodyGetSimulationPrecisionMethodBind = getMethod(cstring"SoftBody",
        cstring"get_simulation_precision")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetSimulationPrecisionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var softBodySetSimulationPrecisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `simulationPrecision=`(self: SoftBody; val: int64) =
  if isNil(softBodySetSimulationPrecisionMethodBind):
    softBodySetSimulationPrecisionMethodBind = getMethod(cstring"SoftBody",
        cstring"set_simulation_precision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetSimulationPrecisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetTotalMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc totalMass(self: SoftBody): float64 =
  if isNil(softBodyGetTotalMassMethodBind):
    softBodyGetTotalMassMethodBind = getMethod(cstring"SoftBody",
        cstring"get_total_mass")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetTotalMassMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var softBodySetTotalMassMethodBind {.threadvar.}: ptr GodotMethodBind
proc `totalMass=`(self: SoftBody; val: float64) =
  if isNil(softBodySetTotalMassMethodBind):
    softBodySetTotalMassMethodBind = getMethod(cstring"SoftBody",
        cstring"set_total_mass")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetTotalMassMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var softBodyGetVolumeStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc volumeStiffness(self: SoftBody): float64 =
  if isNil(softBodyGetVolumeStiffnessMethodBind):
    softBodyGetVolumeStiffnessMethodBind = getMethod(cstring"SoftBody",
        cstring"get_volume_stiffness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetVolumeStiffnessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var softBodySetVolumeStiffnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `volumeStiffness=`(self: SoftBody; val: float64) =
  if isNil(softBodySetVolumeStiffnessMethodBind):
    softBodySetVolumeStiffnessMethodBind = getMethod(cstring"SoftBody",
        cstring"set_volume_stiffness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  softBodySetVolumeStiffnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyUnderscoredrawSoftMeshMethodBind {.threadvar.}: ptr GodotMethodBind
method drawSoftMesh(self: SoftBody) =
  if isNil(softBodyUnderscoredrawSoftMeshMethodBind):
    softBodyUnderscoredrawSoftMeshMethodBind = getMethod(cstring"SoftBody",
        cstring"_draw_soft_mesh")
  var ptrCallRet: pointer
  softBodyUnderscoredrawSoftMeshMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var softBodyAddCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCollisionExceptionWith(self: SoftBody; body: Node) =
  if isNil(softBodyAddCollisionExceptionWithMethodBind):
    softBodyAddCollisionExceptionWithMethodBind = getMethod(cstring"SoftBody",
        cstring"add_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  softBodyAddCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetCollisionExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionExceptions(self: SoftBody): Array =
  if isNil(softBodyGetCollisionExceptionsMethodBind):
    softBodyGetCollisionExceptionsMethodBind = getMethod(cstring"SoftBody",
        cstring"get_collision_exceptions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  softBodyGetCollisionExceptionsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var softBodyGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: SoftBody; bit: int64): bool =
  if isNil(softBodyGetCollisionLayerBitMethodBind):
    softBodyGetCollisionLayerBitMethodBind = getMethod(cstring"SoftBody",
        cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: SoftBody; bit: int64): bool =
  if isNil(softBodyGetCollisionMaskBitMethodBind):
    softBodyGetCollisionMaskBitMethodBind = getMethod(cstring"SoftBody",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  softBodyGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodyRemoveCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCollisionExceptionWith(self: SoftBody; body: Node) =
  if isNil(softBodyRemoveCollisionExceptionWithMethodBind):
    softBodyRemoveCollisionExceptionWithMethodBind = getMethod(cstring"SoftBody",
        cstring"remove_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  softBodyRemoveCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodySetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: SoftBody; bit: int64; value: bool) =
  if isNil(softBodySetCollisionLayerBitMethodBind):
    softBodySetCollisionLayerBitMethodBind = getMethod(cstring"SoftBody",
        cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  softBodySetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var softBodySetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: SoftBody; bit: int64; value: bool) =
  if isNil(softBodySetCollisionMaskBitMethodBind):
    softBodySetCollisionMaskBitMethodBind = getMethod(cstring"SoftBody",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  softBodySetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
