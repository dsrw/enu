
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  BLEND_MODE_ADD* = 1'i64
  BLEND_MODE_DISABLED* = 5'i64
  BLEND_MODE_MIX* = 0'i64
  BLEND_MODE_MUL* = 3'i64
  BLEND_MODE_PREMULT_ALPHA* = 4'i64
  BLEND_MODE_SUB* = 2'i64
  NOTIFICATION_DRAW* = 30'i64
  NOTIFICATION_ENTER_CANVAS* = 32'i64
  NOTIFICATION_EXIT_CANVAS* = 33'i64
  NOTIFICATION_TRANSFORM_CHANGED* = 2000'i64
  NOTIFICATION_VISIBILITY_CHANGED* = 31'i64
proc lightMask*(self: CanvasItem): int64 {.gcsafe, locks: 0.}
proc `lightMask=`*(self: CanvasItem; val: int64) {.gcsafe, locks: 0.}
proc material*(self: CanvasItem): Material {.gcsafe, locks: 0.}
proc `material=`*(self: CanvasItem; val: Material) {.gcsafe, locks: 0.}
proc modulate*(self: CanvasItem): Color {.gcsafe, locks: 0.}
proc `modulate=`*(self: CanvasItem; val: Color) {.gcsafe, locks: 0.}
proc selfModulate*(self: CanvasItem): Color {.gcsafe, locks: 0.}
proc `selfModulate=`*(self: CanvasItem; val: Color) {.gcsafe, locks: 0.}
proc showBehindParent*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc `showBehindParent=`*(self: CanvasItem; val: bool) {.gcsafe, locks: 0.}
proc showOnTop*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc `showOnTop=`*(self: CanvasItem; val: bool) {.gcsafe, locks: 0.}
proc useParentMaterial*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc `useParentMaterial=`*(self: CanvasItem; val: bool) {.gcsafe, locks: 0.}
proc visible*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc `visible=`*(self: CanvasItem; val: bool) {.gcsafe, locks: 0.}
method draw*(self: CanvasItem) {.gcsafe, locks: 0, base.}
method editGetPivot*(self: CanvasItem): Vector2 {.gcsafe, locks: 0, base.}
method editGetPosition*(self: CanvasItem): Vector2 {.gcsafe, locks: 0, base.}
method editGetRect*(self: CanvasItem): Rect2 {.gcsafe, locks: 0, base.}
method editGetRotation*(self: CanvasItem): float64 {.gcsafe, locks: 0, base.}
method editGetScale*(self: CanvasItem): Vector2 {.gcsafe, locks: 0, base.}
method editGetState*(self: CanvasItem): Dictionary {.gcsafe, locks: 0, base.}
method editGetTransform*(self: CanvasItem): Transform2D {.gcsafe, locks: 0, base.}
method editSetPivot*(self: CanvasItem; pivot: Vector2) {.gcsafe, locks: 0, base.}
method editSetPosition*(self: CanvasItem; position: Vector2) {.gcsafe, locks: 0, base.}
method editSetRect*(self: CanvasItem; rect: Rect2) {.gcsafe, locks: 0, base.}
method editSetRotation*(self: CanvasItem; degrees: float64) {.gcsafe, locks: 0, base.}
method editSetScale*(self: CanvasItem; scale: Vector2) {.gcsafe, locks: 0, base.}
method editSetState*(self: CanvasItem; state: Dictionary) {.gcsafe, locks: 0, base.}
method editUsePivot*(self: CanvasItem): bool {.gcsafe, locks: 0, base.}
method editUseRect*(self: CanvasItem): bool {.gcsafe, locks: 0, base.}
method editUseRotation*(self: CanvasItem): bool {.gcsafe, locks: 0, base.}
method toplevelRaiseSelf*(self: CanvasItem) {.gcsafe, locks: 0, base.}
method updateCallback*(self: CanvasItem) {.gcsafe, locks: 0, base.}
proc drawArc*(self: CanvasItem; center: Vector2; radius: float64; startAngle: float64;
             endAngle: float64; pointCount: int64; color: Color; width: float64 = 1.0;
             antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawChar*(self: CanvasItem; font: Font; position: Vector2; char: string;
              next: string; modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)): float64 {.
    gcsafe, locks: 0.}
proc drawCircle*(self: CanvasItem; position: Vector2; radius: float64; color: Color) {.
    gcsafe, locks: 0.}
proc drawColoredPolygon*(self: CanvasItem; points: PoolVector2Array; color: Color;
                        uvs: PoolVector2Array = newPoolVector2Array();
                        texture: Texture = nil; normalMap: Texture = nil;
                        antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawLine*(self: CanvasItem; fromm: Vector2; to: Vector2; color: Color;
              width: float64 = 1.0; antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawMesh*(self: CanvasItem; mesh: Mesh; texture: Texture;
              normalMap: Texture = nil; transform: Transform2D = initTransform2D(
    vec2(1.0, 0.0), vec2(0.0, 1.0), vec2(0.0, 0.0));
              modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) {.gcsafe, locks: 0.}
proc drawMultiline*(self: CanvasItem; points: PoolVector2Array; color: Color;
                   width: float64 = 1.0; antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawMultilineColors*(self: CanvasItem; points: PoolVector2Array;
                         colors: PoolColorArray; width: float64 = 1.0;
                         antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawMultimesh*(self: CanvasItem; multimesh: MultiMesh; texture: Texture;
                   normalMap: Texture = nil) {.gcsafe, locks: 0.}
proc drawPolygon*(self: CanvasItem; points: PoolVector2Array; colors: PoolColorArray;
                 uvs: PoolVector2Array = newPoolVector2Array();
                 texture: Texture = nil; normalMap: Texture = nil;
                 antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawPolyline*(self: CanvasItem; points: PoolVector2Array; color: Color;
                  width: float64 = 1.0; antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawPolylineColors*(self: CanvasItem; points: PoolVector2Array;
                        colors: PoolColorArray; width: float64 = 1.0;
                        antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawPrimitive*(self: CanvasItem; points: PoolVector2Array;
                   colors: PoolColorArray; uvs: PoolVector2Array;
                   texture: Texture = nil; width: float64 = 1.0;
                   normalMap: Texture = nil) {.gcsafe, locks: 0.}
proc drawRect*(self: CanvasItem; rect: Rect2; color: Color; filled: bool = true;
              width: float64 = 1.0; antialiased: bool = false) {.gcsafe, locks: 0.}
proc drawSetTransform*(self: CanvasItem; position: Vector2; rotation: float64;
                      scale: Vector2) {.gcsafe, locks: 0.}
proc drawSetTransformMatrix*(self: CanvasItem; xform: Transform2D) {.gcsafe, locks: 0.}
proc drawString*(self: CanvasItem; font: Font; position: Vector2; text: string;
                modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); clipW: int64 = -1'i64) {.
    gcsafe, locks: 0.}
proc drawStyleBox*(self: CanvasItem; styleBox: StyleBox; rect: Rect2) {.gcsafe, locks: 0.}
proc drawTexture*(self: CanvasItem; texture: Texture; position: Vector2;
                 modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                 normalMap: Texture = nil) {.gcsafe, locks: 0.}
proc drawTextureRect*(self: CanvasItem; texture: Texture; rect: Rect2; tile: bool;
                     modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                     transpose: bool = false; normalMap: Texture = nil) {.gcsafe,
    locks: 0.}
proc drawTextureRectRegion*(self: CanvasItem; texture: Texture; rect: Rect2;
                           srcRect: Rect2;
                           modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                           transpose: bool = false; normalMap: Texture = nil;
                           clipUv: bool = true) {.gcsafe, locks: 0.}
proc forceUpdateTransform*(self: CanvasItem) {.gcsafe, locks: 0.}
proc getCanvas*(self: CanvasItem): RID {.gcsafe, locks: 0.}
proc getCanvasItem*(self: CanvasItem): RID {.gcsafe, locks: 0.}
proc getCanvasTransform*(self: CanvasItem): Transform2D {.gcsafe, locks: 0.}
proc getGlobalMousePosition*(self: CanvasItem): Vector2 {.gcsafe, locks: 0.}
proc getGlobalTransform*(self: CanvasItem): Transform2D {.gcsafe, locks: 0.}
proc getGlobalTransformWithCanvas*(self: CanvasItem): Transform2D {.gcsafe, locks: 0.}
proc getLocalMousePosition*(self: CanvasItem): Vector2 {.gcsafe, locks: 0.}
proc getTransform*(self: CanvasItem): Transform2D {.gcsafe, locks: 0.}
proc getViewportRect*(self: CanvasItem): Rect2 {.gcsafe, locks: 0.}
proc getViewportTransform*(self: CanvasItem): Transform2D {.gcsafe, locks: 0.}
proc getWorld2d*(self: CanvasItem): World2D {.gcsafe, locks: 0.}
proc hide*(self: CanvasItem) {.gcsafe, locks: 0.}
proc isLocalTransformNotificationEnabled*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc isSetAsToplevel*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc isTransformNotificationEnabled*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc isVisibleInTree*(self: CanvasItem): bool {.gcsafe, locks: 0.}
proc makeCanvasPositionLocal*(self: CanvasItem; screenPoint: Vector2): Vector2 {.
    gcsafe, locks: 0.}
proc makeInputLocal*(self: CanvasItem; event: InputEvent): InputEvent {.gcsafe,
    locks: 0.}
proc setAsToplevel*(self: CanvasItem; enable: bool) {.gcsafe, locks: 0.}
proc setNotifyLocalTransform*(self: CanvasItem; enable: bool) {.gcsafe, locks: 0.}
proc setNotifyTransform*(self: CanvasItem; enable: bool) {.gcsafe, locks: 0.}
proc show*(self: CanvasItem) {.gcsafe, locks: 0.}
proc update*(self: CanvasItem) {.gcsafe, locks: 0.}
var canvasItemGetLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightMask(self: CanvasItem): int64 =
  if isNil(canvasItemGetLightMaskMethodBind):
    canvasItemGetLightMaskMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_light_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetLightMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemSetLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightMask=`(self: CanvasItem; val: int64) =
  if isNil(canvasItemSetLightMaskMethodBind):
    canvasItemSetLightMaskMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_light_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemSetLightMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: CanvasItem): Material =
  if isNil(canvasItemGetMaterialMethodBind):
    canvasItemGetMaterialMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  canvasItemGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var canvasItemSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: CanvasItem; val: Material) =
  if isNil(canvasItemSetMaterialMethodBind):
    canvasItemSetMaterialMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  canvasItemSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemGetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc modulate(self: CanvasItem): Color =
  if isNil(canvasItemGetModulateMethodBind):
    canvasItemGetModulateMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_modulate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetModulateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemSetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `modulate=`(self: CanvasItem; val: Color) =
  if isNil(canvasItemSetModulateMethodBind):
    canvasItemSetModulateMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_modulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemSetModulateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemGetSelfModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc selfModulate(self: CanvasItem): Color =
  if isNil(canvasItemGetSelfModulateMethodBind):
    canvasItemGetSelfModulateMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_self_modulate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetSelfModulateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemSetSelfModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `selfModulate=`(self: CanvasItem; val: Color) =
  if isNil(canvasItemSetSelfModulateMethodBind):
    canvasItemSetSelfModulateMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_self_modulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemSetSelfModulateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemIsDrawBehindParentEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc showBehindParent(self: CanvasItem): bool =
  if isNil(canvasItemIsDrawBehindParentEnabledMethodBind):
    canvasItemIsDrawBehindParentEnabledMethodBind = getMethod(
        cstring"CanvasItem", cstring"is_draw_behind_parent_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemIsDrawBehindParentEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemSetDrawBehindParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `showBehindParent=`(self: CanvasItem; val: bool) =
  if isNil(canvasItemSetDrawBehindParentMethodBind):
    canvasItemSetDrawBehindParentMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_draw_behind_parent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemSetDrawBehindParentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemUnderscoreisOnTopMethodBind {.threadvar.}: ptr GodotMethodBind
proc showOnTop(self: CanvasItem): bool =
  if isNil(canvasItemUnderscoreisOnTopMethodBind):
    canvasItemUnderscoreisOnTopMethodBind = getMethod(cstring"CanvasItem",
        cstring"_is_on_top")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreisOnTopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemUnderscoresetOnTopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `showOnTop=`(self: CanvasItem; val: bool) =
  if isNil(canvasItemUnderscoresetOnTopMethodBind):
    canvasItemUnderscoresetOnTopMethodBind = getMethod(cstring"CanvasItem",
        cstring"_set_on_top")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemUnderscoresetOnTopMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemGetUseParentMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc useParentMaterial(self: CanvasItem): bool =
  if isNil(canvasItemGetUseParentMaterialMethodBind):
    canvasItemGetUseParentMaterialMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_use_parent_material")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetUseParentMaterialMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemSetUseParentMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useParentMaterial=`(self: CanvasItem; val: bool) =
  if isNil(canvasItemSetUseParentMaterialMethodBind):
    canvasItemSetUseParentMaterialMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_use_parent_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemSetUseParentMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemIsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc visible(self: CanvasItem): bool =
  if isNil(canvasItemIsVisibleMethodBind):
    canvasItemIsVisibleMethodBind = getMethod(cstring"CanvasItem",
        cstring"is_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemIsVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemSetVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visible=`(self: CanvasItem; val: bool) =
  if isNil(canvasItemSetVisibleMethodBind):
    canvasItemSetVisibleMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemSetVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemUnderscoredrawMethodBind {.threadvar.}: ptr GodotMethodBind
method draw(self: CanvasItem) =
  if isNil(canvasItemUnderscoredrawMethodBind):
    canvasItemUnderscoredrawMethodBind = getMethod(cstring"CanvasItem",
        cstring"_draw")
  var ptrCallRet: pointer
  canvasItemUnderscoredrawMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemUnderscoreeditGetPivotMethodBind {.threadvar.}: ptr GodotMethodBind
method editGetPivot(self: CanvasItem): Vector2 =
  if isNil(canvasItemUnderscoreeditGetPivotMethodBind):
    canvasItemUnderscoreeditGetPivotMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_get_pivot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditGetPivotMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
method editGetPosition(self: CanvasItem): Vector2 =
  if isNil(canvasItemUnderscoreeditGetPositionMethodBind):
    canvasItemUnderscoreeditGetPositionMethodBind = getMethod(
        cstring"CanvasItem", cstring"_edit_get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditGetPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditGetRectMethodBind {.threadvar.}: ptr GodotMethodBind
method editGetRect(self: CanvasItem): Rect2 =
  if isNil(canvasItemUnderscoreeditGetRectMethodBind):
    canvasItemUnderscoreeditGetRectMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_get_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditGetRectMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditGetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
method editGetRotation(self: CanvasItem): float64 =
  if isNil(canvasItemUnderscoreeditGetRotationMethodBind):
    canvasItemUnderscoreeditGetRotationMethodBind = getMethod(
        cstring"CanvasItem", cstring"_edit_get_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditGetRotationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditGetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
method editGetScale(self: CanvasItem): Vector2 =
  if isNil(canvasItemUnderscoreeditGetScaleMethodBind):
    canvasItemUnderscoreeditGetScaleMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_get_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditGetScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditGetStateMethodBind {.threadvar.}: ptr GodotMethodBind
method editGetState(self: CanvasItem): Dictionary =
  if isNil(canvasItemUnderscoreeditGetStateMethodBind):
    canvasItemUnderscoreeditGetStateMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_get_state")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  canvasItemUnderscoreeditGetStateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var canvasItemUnderscoreeditGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
method editGetTransform(self: CanvasItem): Transform2D =
  if isNil(canvasItemUnderscoreeditGetTransformMethodBind):
    canvasItemUnderscoreeditGetTransformMethodBind = getMethod(
        cstring"CanvasItem", cstring"_edit_get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditGetTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditSetPivotMethodBind {.threadvar.}: ptr GodotMethodBind
method editSetPivot(self: CanvasItem; pivot: Vector2) =
  if isNil(canvasItemUnderscoreeditSetPivotMethodBind):
    canvasItemUnderscoreeditSetPivotMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_set_pivot")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pivot)
  var ptrCallRet: pointer
  canvasItemUnderscoreeditSetPivotMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemUnderscoreeditSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
method editSetPosition(self: CanvasItem; position: Vector2) =
  if isNil(canvasItemUnderscoreeditSetPositionMethodBind):
    canvasItemUnderscoreeditSetPositionMethodBind = getMethod(
        cstring"CanvasItem", cstring"_edit_set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  canvasItemUnderscoreeditSetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemUnderscoreeditSetRectMethodBind {.threadvar.}: ptr GodotMethodBind
method editSetRect(self: CanvasItem; rect: Rect2) =
  if isNil(canvasItemUnderscoreeditSetRectMethodBind):
    canvasItemUnderscoreeditSetRectMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_set_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rect)
  var ptrCallRet: pointer
  canvasItemUnderscoreeditSetRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemUnderscoreeditSetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
method editSetRotation(self: CanvasItem; degrees: float64) =
  if isNil(canvasItemUnderscoreeditSetRotationMethodBind):
    canvasItemUnderscoreeditSetRotationMethodBind = getMethod(
        cstring"CanvasItem", cstring"_edit_set_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(degrees)
  var ptrCallRet: pointer
  canvasItemUnderscoreeditSetRotationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemUnderscoreeditSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
method editSetScale(self: CanvasItem; scale: Vector2) =
  if isNil(canvasItemUnderscoreeditSetScaleMethodBind):
    canvasItemUnderscoreeditSetScaleMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_set_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scale)
  var ptrCallRet: pointer
  canvasItemUnderscoreeditSetScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemUnderscoreeditSetStateMethodBind {.threadvar.}: ptr GodotMethodBind
method editSetState(self: CanvasItem; state: Dictionary) =
  if isNil(canvasItemUnderscoreeditSetStateMethodBind):
    canvasItemUnderscoreeditSetStateMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_set_state")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = state.godotDictionary
  var ptrCallRet: pointer
  canvasItemUnderscoreeditSetStateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemUnderscoreeditUsePivotMethodBind {.threadvar.}: ptr GodotMethodBind
method editUsePivot(self: CanvasItem): bool =
  if isNil(canvasItemUnderscoreeditUsePivotMethodBind):
    canvasItemUnderscoreeditUsePivotMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_use_pivot")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditUsePivotMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditUseRectMethodBind {.threadvar.}: ptr GodotMethodBind
method editUseRect(self: CanvasItem): bool =
  if isNil(canvasItemUnderscoreeditUseRectMethodBind):
    canvasItemUnderscoreeditUseRectMethodBind = getMethod(cstring"CanvasItem",
        cstring"_edit_use_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditUseRectMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreeditUseRotationMethodBind {.threadvar.}: ptr GodotMethodBind
method editUseRotation(self: CanvasItem): bool =
  if isNil(canvasItemUnderscoreeditUseRotationMethodBind):
    canvasItemUnderscoreeditUseRotationMethodBind = getMethod(
        cstring"CanvasItem", cstring"_edit_use_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemUnderscoreeditUseRotationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoretoplevelRaiseSelfMethodBind {.threadvar.}: ptr GodotMethodBind
method toplevelRaiseSelf(self: CanvasItem) =
  if isNil(canvasItemUnderscoretoplevelRaiseSelfMethodBind):
    canvasItemUnderscoretoplevelRaiseSelfMethodBind = getMethod(
        cstring"CanvasItem", cstring"_toplevel_raise_self")
  var ptrCallRet: pointer
  canvasItemUnderscoretoplevelRaiseSelfMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemUnderscoreupdateCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
method updateCallback(self: CanvasItem) =
  if isNil(canvasItemUnderscoreupdateCallbackMethodBind):
    canvasItemUnderscoreupdateCallbackMethodBind = getMethod(cstring"CanvasItem",
        cstring"_update_callback")
  var ptrCallRet: pointer
  canvasItemUnderscoreupdateCallbackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemDrawArcMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawArc(self: CanvasItem; center: Vector2; radius: float64; startAngle: float64;
            endAngle: float64; pointCount: int64; color: Color; width: float64 = 1.0;
            antialiased: bool = false) =
  if isNil(canvasItemDrawArcMethodBind):
    canvasItemDrawArcMethodBind = getMethod(cstring"CanvasItem", cstring"draw_arc")
  var
    argsStatic: array[8, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(center)
  argsToPassToGodot[][1] = unsafeAddr(radius)
  argsToPassToGodot[][2] = unsafeAddr(startAngle)
  argsToPassToGodot[][3] = unsafeAddr(endAngle)
  argsToPassToGodot[][4] = unsafeAddr(pointCount)
  argsToPassToGodot[][5] = unsafeAddr(color)
  argsToPassToGodot[][6] = unsafeAddr(width)
  argsToPassToGodot[][7] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawArcMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var canvasItemDrawCharMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawChar(self: CanvasItem; font: Font; position: Vector2; char: string;
             next: string; modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)): float64 =
  if isNil(canvasItemDrawCharMethodBind):
    canvasItemDrawCharMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_char")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not font.isNil:
    font.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(position)
  var argToPassToGodot2 = toGodotString(char)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var argToPassToGodot3 = toGodotString(next)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  argsToPassToGodot[][4] = unsafeAddr(modulate)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemDrawCharMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot3)

var canvasItemDrawCircleMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawCircle(self: CanvasItem; position: Vector2; radius: float64; color: Color) =
  if isNil(canvasItemDrawCircleMethodBind):
    canvasItemDrawCircleMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_circle")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(radius)
  argsToPassToGodot[][2] = unsafeAddr(color)
  var ptrCallRet: pointer
  canvasItemDrawCircleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawColoredPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawColoredPolygon(self: CanvasItem; points: PoolVector2Array; color: Color;
                       uvs: PoolVector2Array = newPoolVector2Array();
                       texture: Texture = nil; normalMap: Texture = nil;
                       antialiased: bool = false) =
  if isNil(canvasItemDrawColoredPolygonMethodBind):
    canvasItemDrawColoredPolygonMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_colored_polygon")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = uvs.godotPoolVector2Array
  let argToPassToGodot3 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  let argToPassToGodot4 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][4] = argToPassToGodot4
  argsToPassToGodot[][5] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawColoredPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemDrawLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawLine(self: CanvasItem; fromm: Vector2; to: Vector2; color: Color;
             width: float64 = 1.0; antialiased: bool = false) =
  if isNil(canvasItemDrawLineMethodBind):
    canvasItemDrawLineMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_line")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = unsafeAddr(color)
  argsToPassToGodot[][3] = unsafeAddr(width)
  argsToPassToGodot[][4] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawLineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var canvasItemDrawMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawMesh(self: CanvasItem; mesh: Mesh; texture: Texture; normalMap: Texture = nil;
    transform: Transform2D = initTransform2D(vec2(1.0, 0.0), vec2(0.0, 1.0),
    vec2(0.0, 0.0)); modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) =
  if isNil(canvasItemDrawMeshMethodBind):
    canvasItemDrawMeshMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_mesh")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(transform)
  argsToPassToGodot[][4] = unsafeAddr(modulate)
  var ptrCallRet: pointer
  canvasItemDrawMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var canvasItemDrawMultilineMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawMultiline(self: CanvasItem; points: PoolVector2Array; color: Color;
                  width: float64 = 1.0; antialiased: bool = false) =
  if isNil(canvasItemDrawMultilineMethodBind):
    canvasItemDrawMultilineMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_multiline")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = unsafeAddr(width)
  argsToPassToGodot[][3] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawMultilineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawMultilineColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawMultilineColors(self: CanvasItem; points: PoolVector2Array;
                        colors: PoolColorArray; width: float64 = 1.0;
                        antialiased: bool = false) =
  if isNil(canvasItemDrawMultilineColorsMethodBind):
    canvasItemDrawMultilineColorsMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_multiline_colors")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = colors.godotPoolColorArray
  argsToPassToGodot[][2] = unsafeAddr(width)
  argsToPassToGodot[][3] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawMultilineColorsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemDrawMultimeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawMultimesh(self: CanvasItem; multimesh: MultiMesh; texture: Texture;
                  normalMap: Texture = nil) =
  if isNil(canvasItemDrawMultimeshMethodBind):
    canvasItemDrawMultimeshMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_multimesh")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not multimesh.isNil:
    multimesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  canvasItemDrawMultimeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawPolygon(self: CanvasItem; points: PoolVector2Array; colors: PoolColorArray;
                uvs: PoolVector2Array = newPoolVector2Array();
                texture: Texture = nil; normalMap: Texture = nil;
                antialiased: bool = false) =
  if isNil(canvasItemDrawPolygonMethodBind):
    canvasItemDrawPolygonMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_polygon")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = colors.godotPoolColorArray
  argsToPassToGodot[][2] = uvs.godotPoolVector2Array
  let argToPassToGodot3 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  let argToPassToGodot4 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][4] = argToPassToGodot4
  argsToPassToGodot[][5] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawPolygonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawPolylineMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawPolyline(self: CanvasItem; points: PoolVector2Array; color: Color;
                 width: float64 = 1.0; antialiased: bool = false) =
  if isNil(canvasItemDrawPolylineMethodBind):
    canvasItemDrawPolylineMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_polyline")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = unsafeAddr(width)
  argsToPassToGodot[][3] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawPolylineMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawPolylineColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawPolylineColors(self: CanvasItem; points: PoolVector2Array;
                       colors: PoolColorArray; width: float64 = 1.0;
                       antialiased: bool = false) =
  if isNil(canvasItemDrawPolylineColorsMethodBind):
    canvasItemDrawPolylineColorsMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_polyline_colors")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = colors.godotPoolColorArray
  argsToPassToGodot[][2] = unsafeAddr(width)
  argsToPassToGodot[][3] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawPolylineColorsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemDrawPrimitiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawPrimitive(self: CanvasItem; points: PoolVector2Array;
                  colors: PoolColorArray; uvs: PoolVector2Array;
                  texture: Texture = nil; width: float64 = 1.0; normalMap: Texture = nil) =
  if isNil(canvasItemDrawPrimitiveMethodBind):
    canvasItemDrawPrimitiveMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_primitive")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = points.godotPoolVector2Array
  argsToPassToGodot[][1] = colors.godotPoolColorArray
  argsToPassToGodot[][2] = uvs.godotPoolVector2Array
  let argToPassToGodot3 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  argsToPassToGodot[][4] = unsafeAddr(width)
  let argToPassToGodot5 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][5] = argToPassToGodot5
  var ptrCallRet: pointer
  canvasItemDrawPrimitiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawRect(self: CanvasItem; rect: Rect2; color: Color; filled: bool = true;
             width: float64 = 1.0; antialiased: bool = false) =
  if isNil(canvasItemDrawRectMethodBind):
    canvasItemDrawRectMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_rect")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rect)
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = unsafeAddr(filled)
  argsToPassToGodot[][3] = unsafeAddr(width)
  argsToPassToGodot[][4] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  canvasItemDrawRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var canvasItemDrawSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawSetTransform(self: CanvasItem; position: Vector2; rotation: float64;
                     scale: Vector2) =
  if isNil(canvasItemDrawSetTransformMethodBind):
    canvasItemDrawSetTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_set_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(rotation)
  argsToPassToGodot[][2] = unsafeAddr(scale)
  var ptrCallRet: pointer
  canvasItemDrawSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemDrawSetTransformMatrixMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawSetTransformMatrix(self: CanvasItem; xform: Transform2D) =
  if isNil(canvasItemDrawSetTransformMatrixMethodBind):
    canvasItemDrawSetTransformMatrixMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_set_transform_matrix")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(xform)
  var ptrCallRet: pointer
  canvasItemDrawSetTransformMatrixMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemDrawStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawString(self: CanvasItem; font: Font; position: Vector2; text: string;
               modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); clipW: int64 = -1'i64) =
  if isNil(canvasItemDrawStringMethodBind):
    canvasItemDrawStringMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_string")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not font.isNil:
    font.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(position)
  var argToPassToGodot2 = toGodotString(text)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  argsToPassToGodot[][4] = unsafeAddr(clipW)
  var ptrCallRet: pointer
  canvasItemDrawStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot2)

var canvasItemDrawStyleBoxMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawStyleBox(self: CanvasItem; styleBox: StyleBox; rect: Rect2) =
  if isNil(canvasItemDrawStyleBoxMethodBind):
    canvasItemDrawStyleBoxMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_style_box")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not styleBox.isNil:
    styleBox.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(rect)
  var ptrCallRet: pointer
  canvasItemDrawStyleBoxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawTexture(self: CanvasItem; texture: Texture; position: Vector2;
                modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                normalMap: Texture = nil) =
  if isNil(canvasItemDrawTextureMethodBind):
    canvasItemDrawTextureMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_texture")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(position)
  argsToPassToGodot[][2] = unsafeAddr(modulate)
  let argToPassToGodot3 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var ptrCallRet: pointer
  canvasItemDrawTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemDrawTextureRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawTextureRect(self: CanvasItem; texture: Texture; rect: Rect2; tile: bool;
                    modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                    transpose: bool = false; normalMap: Texture = nil) =
  if isNil(canvasItemDrawTextureRectMethodBind):
    canvasItemDrawTextureRectMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_texture_rect")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(tile)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  argsToPassToGodot[][4] = unsafeAddr(transpose)
  let argToPassToGodot5 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][5] = argToPassToGodot5
  var ptrCallRet: pointer
  canvasItemDrawTextureRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemDrawTextureRectRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawTextureRectRegion(self: CanvasItem; texture: Texture; rect: Rect2;
                          srcRect: Rect2;
                          modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                          transpose: bool = false; normalMap: Texture = nil;
                          clipUv: bool = true) =
  if isNil(canvasItemDrawTextureRectRegionMethodBind):
    canvasItemDrawTextureRectRegionMethodBind = getMethod(cstring"CanvasItem",
        cstring"draw_texture_rect_region")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(srcRect)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  argsToPassToGodot[][4] = unsafeAddr(transpose)
  let argToPassToGodot5 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][5] = argToPassToGodot5
  argsToPassToGodot[][6] = unsafeAddr(clipUv)
  var ptrCallRet: pointer
  canvasItemDrawTextureRectRegionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemForceUpdateTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceUpdateTransform(self: CanvasItem) =
  if isNil(canvasItemForceUpdateTransformMethodBind):
    canvasItemForceUpdateTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"force_update_transform")
  var ptrCallRet: pointer
  canvasItemForceUpdateTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemGetCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCanvas(self: CanvasItem): RID =
  if isNil(canvasItemGetCanvasMethodBind):
    canvasItemGetCanvasMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_canvas")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetCanvasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemGetCanvasItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCanvasItem(self: CanvasItem): RID =
  if isNil(canvasItemGetCanvasItemMethodBind):
    canvasItemGetCanvasItemMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_canvas_item")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetCanvasItemMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemGetCanvasTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCanvasTransform(self: CanvasItem): Transform2D =
  if isNil(canvasItemGetCanvasTransformMethodBind):
    canvasItemGetCanvasTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_canvas_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetCanvasTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemGetGlobalMousePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGlobalMousePosition(self: CanvasItem): Vector2 =
  if isNil(canvasItemGetGlobalMousePositionMethodBind):
    canvasItemGetGlobalMousePositionMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_global_mouse_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetGlobalMousePositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemGetGlobalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGlobalTransform(self: CanvasItem): Transform2D =
  if isNil(canvasItemGetGlobalTransformMethodBind):
    canvasItemGetGlobalTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_global_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetGlobalTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemGetGlobalTransformWithCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGlobalTransformWithCanvas(self: CanvasItem): Transform2D =
  if isNil(canvasItemGetGlobalTransformWithCanvasMethodBind):
    canvasItemGetGlobalTransformWithCanvasMethodBind = getMethod(
        cstring"CanvasItem", cstring"get_global_transform_with_canvas")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetGlobalTransformWithCanvasMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemGetLocalMousePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLocalMousePosition(self: CanvasItem): Vector2 =
  if isNil(canvasItemGetLocalMousePositionMethodBind):
    canvasItemGetLocalMousePositionMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_local_mouse_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetLocalMousePositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransform(self: CanvasItem): Transform2D =
  if isNil(canvasItemGetTransformMethodBind):
    canvasItemGetTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemGetViewportRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getViewportRect(self: CanvasItem): Rect2 =
  if isNil(canvasItemGetViewportRectMethodBind):
    canvasItemGetViewportRectMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_viewport_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetViewportRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemGetViewportTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getViewportTransform(self: CanvasItem): Transform2D =
  if isNil(canvasItemGetViewportTransformMethodBind):
    canvasItemGetViewportTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_viewport_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemGetViewportTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemGetWorld2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWorld2d(self: CanvasItem): World2D =
  if isNil(canvasItemGetWorld2dMethodBind):
    canvasItemGetWorld2dMethodBind = getMethod(cstring"CanvasItem",
        cstring"get_world_2d")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  canvasItemGetWorld2dMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var canvasItemHideMethodBind {.threadvar.}: ptr GodotMethodBind
proc hide(self: CanvasItem) =
  if isNil(canvasItemHideMethodBind):
    canvasItemHideMethodBind = getMethod(cstring"CanvasItem", cstring"hide")
  var ptrCallRet: pointer
  canvasItemHideMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemIsLocalTransformNotificationEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isLocalTransformNotificationEnabled(self: CanvasItem): bool =
  if isNil(canvasItemIsLocalTransformNotificationEnabledMethodBind):
    canvasItemIsLocalTransformNotificationEnabledMethodBind = getMethod(
        cstring"CanvasItem", cstring"is_local_transform_notification_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemIsLocalTransformNotificationEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var canvasItemIsSetAsToplevelMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSetAsToplevel(self: CanvasItem): bool =
  if isNil(canvasItemIsSetAsToplevelMethodBind):
    canvasItemIsSetAsToplevelMethodBind = getMethod(cstring"CanvasItem",
        cstring"is_set_as_toplevel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemIsSetAsToplevelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemIsTransformNotificationEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isTransformNotificationEnabled(self: CanvasItem): bool =
  if isNil(canvasItemIsTransformNotificationEnabledMethodBind):
    canvasItemIsTransformNotificationEnabledMethodBind = getMethod(
        cstring"CanvasItem", cstring"is_transform_notification_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemIsTransformNotificationEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var canvasItemIsVisibleInTreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isVisibleInTree(self: CanvasItem): bool =
  if isNil(canvasItemIsVisibleInTreeMethodBind):
    canvasItemIsVisibleInTreeMethodBind = getMethod(cstring"CanvasItem",
        cstring"is_visible_in_tree")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemIsVisibleInTreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemMakeCanvasPositionLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeCanvasPositionLocal(self: CanvasItem; screenPoint: Vector2): Vector2 =
  if isNil(canvasItemMakeCanvasPositionLocalMethodBind):
    canvasItemMakeCanvasPositionLocalMethodBind = getMethod(cstring"CanvasItem",
        cstring"make_canvas_position_local")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screenPoint)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemMakeCanvasPositionLocalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemMakeInputLocalMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeInputLocal(self: CanvasItem; event: InputEvent): InputEvent =
  if isNil(canvasItemMakeInputLocalMethodBind):
    canvasItemMakeInputLocalMethodBind = getMethod(cstring"CanvasItem",
        cstring"make_input_local")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  canvasItemMakeInputLocalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var canvasItemSetAsToplevelMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAsToplevel(self: CanvasItem; enable: bool) =
  if isNil(canvasItemSetAsToplevelMethodBind):
    canvasItemSetAsToplevelMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_as_toplevel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  canvasItemSetAsToplevelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var canvasItemSetNotifyLocalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNotifyLocalTransform(self: CanvasItem; enable: bool) =
  if isNil(canvasItemSetNotifyLocalTransformMethodBind):
    canvasItemSetNotifyLocalTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_notify_local_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  canvasItemSetNotifyLocalTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemSetNotifyTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNotifyTransform(self: CanvasItem; enable: bool) =
  if isNil(canvasItemSetNotifyTransformMethodBind):
    canvasItemSetNotifyTransformMethodBind = getMethod(cstring"CanvasItem",
        cstring"set_notify_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  canvasItemSetNotifyTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemShowMethodBind {.threadvar.}: ptr GodotMethodBind
proc show(self: CanvasItem) =
  if isNil(canvasItemShowMethodBind):
    canvasItemShowMethodBind = getMethod(cstring"CanvasItem", cstring"show")
  var ptrCallRet: pointer
  canvasItemShowMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var canvasItemUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
proc update(self: CanvasItem) =
  if isNil(canvasItemUpdateMethodBind):
    canvasItemUpdateMethodBind = getMethod(cstring"CanvasItem", cstring"update")
  var ptrCallRet: pointer
  canvasItemUpdateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
