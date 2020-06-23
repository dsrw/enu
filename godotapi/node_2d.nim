
import
  godot, godottypes, godotinternal, canvas_item

export
  godottypes, canvas_item

proc globalPosition*(self: Node2D): Vector2 {.gcsafe, locks: 0.}
proc `globalPosition=`*(self: Node2D; val: Vector2) {.gcsafe, locks: 0.}
proc globalRotation*(self: Node2D): float64 {.gcsafe, locks: 0.}
proc `globalRotation=`*(self: Node2D; val: float64) {.gcsafe, locks: 0.}
proc globalRotationDegrees*(self: Node2D): float64 {.gcsafe, locks: 0.}
proc `globalRotationDegrees=`*(self: Node2D; val: float64) {.gcsafe, locks: 0.}
proc globalScale*(self: Node2D): Vector2 {.gcsafe, locks: 0.}
proc `globalScale=`*(self: Node2D; val: Vector2) {.gcsafe, locks: 0.}
proc globalTransform*(self: Node2D): Transform2D {.gcsafe, locks: 0.}
proc `globalTransform=`*(self: Node2D; val: Transform2D) {.gcsafe, locks: 0.}
proc position*(self: Node2D): Vector2 {.gcsafe, locks: 0.}
proc `position=`*(self: Node2D; val: Vector2) {.gcsafe, locks: 0.}
proc rotation*(self: Node2D): float64 {.gcsafe, locks: 0.}
proc `rotation=`*(self: Node2D; val: float64) {.gcsafe, locks: 0.}
proc rotationDegrees*(self: Node2D): float64 {.gcsafe, locks: 0.}
proc `rotationDegrees=`*(self: Node2D; val: float64) {.gcsafe, locks: 0.}
proc scale*(self: Node2D): Vector2 {.gcsafe, locks: 0.}
proc `scale=`*(self: Node2D; val: Vector2) {.gcsafe, locks: 0.}
proc transform*(self: Node2D): Transform2D {.gcsafe, locks: 0.}
proc `transform=`*(self: Node2D; val: Transform2D) {.gcsafe, locks: 0.}
proc zAsRelative*(self: Node2D): bool {.gcsafe, locks: 0.}
proc `zAsRelative=`*(self: Node2D; val: bool) {.gcsafe, locks: 0.}
proc zIndex*(self: Node2D): int64 {.gcsafe, locks: 0.}
proc `zIndex=`*(self: Node2D; val: int64) {.gcsafe, locks: 0.}
proc applyScale*(self: Node2D; ratio: Vector2) {.gcsafe, locks: 0.}
proc getAngleTo*(self: Node2D; point: Vector2): float64 {.gcsafe, locks: 0.}
proc getRelativeTransformToParent*(self: Node2D; parent: Node): Transform2D {.gcsafe,
    locks: 0.}
proc globalTranslate*(self: Node2D; offset: Vector2) {.gcsafe, locks: 0.}
proc lookAt*(self: Node2D; point: Vector2) {.gcsafe, locks: 0.}
proc moveLocalX*(self: Node2D; delta: float64; scaled: bool = false) {.gcsafe, locks: 0.}
proc moveLocalY*(self: Node2D; delta: float64; scaled: bool = false) {.gcsafe, locks: 0.}
proc rotate*(self: Node2D; radians: float64) {.gcsafe, locks: 0.}
proc toGlobal*(self: Node2D; localPoint: Vector2): Vector2 {.gcsafe, locks: 0.}
proc toLocal*(self: Node2D; globalPoint: Vector2): Vector2 {.gcsafe, locks: 0.}
proc translate*(self: Node2D; offset: Vector2) {.gcsafe, locks: 0.}
var node2DGetGlobalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalPosition(self: Node2D): Vector2 =
  if isNil(node2DGetGlobalPositionMethodBind):
    node2DGetGlobalPositionMethodBind = getMethod(cstring"Node2D",
        cstring"get_global_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetGlobalPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetGlobalPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalPosition=`(self: Node2D; val: Vector2) =
  if isNil(node2DSetGlobalPositionMethodBind):
    node2DSetGlobalPositionMethodBind = getMethod(cstring"Node2D",
        cstring"set_global_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetGlobalPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var node2DGetGlobalRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalRotation(self: Node2D): float64 =
  if isNil(node2DGetGlobalRotationMethodBind):
    node2DGetGlobalRotationMethodBind = getMethod(cstring"Node2D",
        cstring"get_global_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetGlobalRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetGlobalRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalRotation=`(self: Node2D; val: float64) =
  if isNil(node2DSetGlobalRotationMethodBind):
    node2DSetGlobalRotationMethodBind = getMethod(cstring"Node2D",
        cstring"set_global_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetGlobalRotationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var node2DGetGlobalRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalRotationDegrees(self: Node2D): float64 =
  if isNil(node2DGetGlobalRotationDegreesMethodBind):
    node2DGetGlobalRotationDegreesMethodBind = getMethod(cstring"Node2D",
        cstring"get_global_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetGlobalRotationDegreesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var node2DSetGlobalRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalRotationDegrees=`(self: Node2D; val: float64) =
  if isNil(node2DSetGlobalRotationDegreesMethodBind):
    node2DSetGlobalRotationDegreesMethodBind = getMethod(cstring"Node2D",
        cstring"set_global_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetGlobalRotationDegreesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var node2DGetGlobalScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalScale(self: Node2D): Vector2 =
  if isNil(node2DGetGlobalScaleMethodBind):
    node2DGetGlobalScaleMethodBind = getMethod(cstring"Node2D",
        cstring"get_global_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetGlobalScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetGlobalScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalScale=`(self: Node2D; val: Vector2) =
  if isNil(node2DSetGlobalScaleMethodBind):
    node2DSetGlobalScaleMethodBind = getMethod(cstring"Node2D",
        cstring"set_global_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetGlobalScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var node2DGetGlobalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalTransform(self: Node2D): Transform2D =
  if isNil(node2DGetGlobalTransformMethodBind):
    node2DGetGlobalTransformMethodBind = getMethod(cstring"Node2D",
        cstring"get_global_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetGlobalTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetGlobalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalTransform=`(self: Node2D; val: Transform2D) =
  if isNil(node2DSetGlobalTransformMethodBind):
    node2DSetGlobalTransformMethodBind = getMethod(cstring"Node2D",
        cstring"set_global_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetGlobalTransformMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var node2DGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc position(self: Node2D): Vector2 =
  if isNil(node2DGetPositionMethodBind):
    node2DGetPositionMethodBind = getMethod(cstring"Node2D", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `position=`(self: Node2D; val: Vector2) =
  if isNil(node2DSetPositionMethodBind):
    node2DSetPositionMethodBind = getMethod(cstring"Node2D", cstring"set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var node2DGetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotation(self: Node2D): float64 =
  if isNil(node2DGetRotationMethodBind):
    node2DGetRotationMethodBind = getMethod(cstring"Node2D", cstring"get_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotation=`(self: Node2D; val: float64) =
  if isNil(node2DSetRotationMethodBind):
    node2DSetRotationMethodBind = getMethod(cstring"Node2D", cstring"set_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetRotationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var node2DGetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotationDegrees(self: Node2D): float64 =
  if isNil(node2DGetRotationDegreesMethodBind):
    node2DGetRotationDegreesMethodBind = getMethod(cstring"Node2D",
        cstring"get_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetRotationDegreesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotationDegrees=`(self: Node2D; val: float64) =
  if isNil(node2DSetRotationDegreesMethodBind):
    node2DSetRotationDegreesMethodBind = getMethod(cstring"Node2D",
        cstring"set_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetRotationDegreesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var node2DGetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc scale(self: Node2D): Vector2 =
  if isNil(node2DGetScaleMethodBind):
    node2DGetScaleMethodBind = getMethod(cstring"Node2D", cstring"get_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scale=`(self: Node2D; val: Vector2) =
  if isNil(node2DSetScaleMethodBind):
    node2DSetScaleMethodBind = getMethod(cstring"Node2D", cstring"set_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var node2DGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform(self: Node2D): Transform2D =
  if isNil(node2DGetTransformMethodBind):
    node2DGetTransformMethodBind = getMethod(cstring"Node2D",
        cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform=`(self: Node2D; val: Transform2D) =
  if isNil(node2DSetTransformMethodBind):
    node2DSetTransformMethodBind = getMethod(cstring"Node2D",
        cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetTransformMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var node2DIsZRelativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc zAsRelative(self: Node2D): bool =
  if isNil(node2DIsZRelativeMethodBind):
    node2DIsZRelativeMethodBind = getMethod(cstring"Node2D",
        cstring"is_z_relative")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DIsZRelativeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetZAsRelativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `zAsRelative=`(self: Node2D; val: bool) =
  if isNil(node2DSetZAsRelativeMethodBind):
    node2DSetZAsRelativeMethodBind = getMethod(cstring"Node2D",
        cstring"set_z_as_relative")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetZAsRelativeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var node2DGetZIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc zIndex(self: Node2D): int64 =
  if isNil(node2DGetZIndexMethodBind):
    node2DGetZIndexMethodBind = getMethod(cstring"Node2D", cstring"get_z_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetZIndexMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var node2DSetZIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `zIndex=`(self: Node2D; val: int64) =
  if isNil(node2DSetZIndexMethodBind):
    node2DSetZIndexMethodBind = getMethod(cstring"Node2D", cstring"set_z_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  node2DSetZIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var node2DApplyScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc applyScale(self: Node2D; ratio: Vector2) =
  if isNil(node2DApplyScaleMethodBind):
    node2DApplyScaleMethodBind = getMethod(cstring"Node2D", cstring"apply_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ratio)
  var ptrCallRet: pointer
  node2DApplyScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var node2DGetAngleToMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAngleTo(self: Node2D; point: Vector2): float64 =
  if isNil(node2DGetAngleToMethodBind):
    node2DGetAngleToMethodBind = getMethod(cstring"Node2D", cstring"get_angle_to")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetAngleToMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var node2DGetRelativeTransformToParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRelativeTransformToParent(self: Node2D; parent: Node): Transform2D =
  if isNil(node2DGetRelativeTransformToParentMethodBind):
    node2DGetRelativeTransformToParentMethodBind = getMethod(cstring"Node2D",
        cstring"get_relative_transform_to_parent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not parent.isNil:
    parent.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DGetRelativeTransformToParentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var node2DGlobalTranslateMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalTranslate(self: Node2D; offset: Vector2) =
  if isNil(node2DGlobalTranslateMethodBind):
    node2DGlobalTranslateMethodBind = getMethod(cstring"Node2D",
        cstring"global_translate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  node2DGlobalTranslateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var node2DLookAtMethodBind {.threadvar.}: ptr GodotMethodBind
proc lookAt(self: Node2D; point: Vector2) =
  if isNil(node2DLookAtMethodBind):
    node2DLookAtMethodBind = getMethod(cstring"Node2D", cstring"look_at")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  node2DLookAtMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var node2DMoveLocalXMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveLocalX(self: Node2D; delta: float64; scaled: bool = false) =
  if isNil(node2DMoveLocalXMethodBind):
    node2DMoveLocalXMethodBind = getMethod(cstring"Node2D", cstring"move_local_x")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  argsToPassToGodot[][1] = unsafeAddr(scaled)
  var ptrCallRet: pointer
  node2DMoveLocalXMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var node2DMoveLocalYMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveLocalY(self: Node2D; delta: float64; scaled: bool = false) =
  if isNil(node2DMoveLocalYMethodBind):
    node2DMoveLocalYMethodBind = getMethod(cstring"Node2D", cstring"move_local_y")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  argsToPassToGodot[][1] = unsafeAddr(scaled)
  var ptrCallRet: pointer
  node2DMoveLocalYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var node2DRotateMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotate(self: Node2D; radians: float64) =
  if isNil(node2DRotateMethodBind):
    node2DRotateMethodBind = getMethod(cstring"Node2D", cstring"rotate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(radians)
  var ptrCallRet: pointer
  node2DRotateMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var node2DToGlobalMethodBind {.threadvar.}: ptr GodotMethodBind
proc toGlobal(self: Node2D; localPoint: Vector2): Vector2 =
  if isNil(node2DToGlobalMethodBind):
    node2DToGlobalMethodBind = getMethod(cstring"Node2D", cstring"to_global")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(localPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DToGlobalMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var node2DToLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc toLocal(self: Node2D; globalPoint: Vector2): Vector2 =
  if isNil(node2DToLocalMethodBind):
    node2DToLocalMethodBind = getMethod(cstring"Node2D", cstring"to_local")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(globalPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  node2DToLocalMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var node2DTranslateMethodBind {.threadvar.}: ptr GodotMethodBind
proc translate(self: Node2D; offset: Vector2) =
  if isNil(node2DTranslateMethodBind):
    node2DTranslateMethodBind = getMethod(cstring"Node2D", cstring"translate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  node2DTranslateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
