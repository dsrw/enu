
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

const
  CLEAR_MODE_ALWAYS* = 0'i64
  CLEAR_MODE_NEVER* = 1'i64
  CLEAR_MODE_ONLY_NEXT_FRAME* = 2'i64
  DEBUG_DRAW_DISABLED* = 0'i64
  DEBUG_DRAW_OVERDRAW* = 2'i64
  DEBUG_DRAW_UNSHADED* = 1'i64
  DEBUG_DRAW_WIREFRAME* = 3'i64
  MSAA_16X* = 4'i64
  MSAA_2X* = 1'i64
  MSAA_4X* = 2'i64
  MSAA_8X* = 3'i64
  MSAA_DISABLED* = 0'i64
  RENDER_INFO_2D_DRAW_CALLS_IN_FRAME* = 7'i64
  RENDER_INFO_2D_ITEMS_IN_FRAME* = 6'i64
  RENDER_INFO_DRAW_CALLS_IN_FRAME* = 5'i64
  RENDER_INFO_MATERIAL_CHANGES_IN_FRAME* = 2'i64
  RENDER_INFO_MAX* = 8'i64
  RENDER_INFO_OBJECTS_IN_FRAME* = 0'i64
  RENDER_INFO_SHADER_CHANGES_IN_FRAME* = 3'i64
  RENDER_INFO_SURFACE_CHANGES_IN_FRAME* = 4'i64
  RENDER_INFO_VERTICES_IN_FRAME* = 1'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_1* = 1'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_1024* = 6'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_16* = 3'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_256* = 5'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_4* = 2'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_64* = 4'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_DISABLED* = 0'i64
  SHADOW_ATLAS_QUADRANT_SUBDIV_MAX* = 7'i64
  UPDATE_ALWAYS* = 3'i64
  UPDATE_DISABLED* = 0'i64
  UPDATE_ONCE* = 1'i64
  UPDATE_WHEN_VISIBLE* = 2'i64
  USAGE_2D* = 0'i64
  USAGE_2D_NO_SAMPLING* = 1'i64
  USAGE_3D* = 2'i64
  USAGE_3D_NO_EFFECTS* = 3'i64
proc arvr*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `arvr=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc audioListenerEnable2d*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `audioListenerEnable2d=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc audioListenerEnable3d*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `audioListenerEnable3d=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc canvasTransform*(self: Viewport): Transform2D {.gcsafe, locks: 0.}
proc `canvasTransform=`*(self: Viewport; val: Transform2D) {.gcsafe, locks: 0.}
proc debugDraw*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `debugDraw=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc disable3d*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `disable3d=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc globalCanvasTransform*(self: Viewport): Transform2D {.gcsafe, locks: 0.}
proc `globalCanvasTransform=`*(self: Viewport; val: Transform2D) {.gcsafe, locks: 0.}
proc guiDisableInput*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `guiDisableInput=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc guiSnapControlsToPixels*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `guiSnapControlsToPixels=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc handleInputLocally*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `handleInputLocally=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc hdr*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `hdr=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc keep3dLinear*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `keep3dLinear=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc msaa*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `msaa=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc ownWorld*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `ownWorld=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc physicsObjectPicking*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `physicsObjectPicking=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc renderDirectToScreen*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `renderDirectToScreen=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc renderTargetClearMode*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `renderTargetClearMode=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc renderTargetUpdateMode*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `renderTargetUpdateMode=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc renderTargetVFlip*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `renderTargetVFlip=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc shadowAtlasQuad0*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `shadowAtlasQuad0=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc shadowAtlasQuad1*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `shadowAtlasQuad1=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc shadowAtlasQuad2*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `shadowAtlasQuad2=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc shadowAtlasQuad3*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `shadowAtlasQuad3=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc shadowAtlasSize*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `shadowAtlasSize=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc size*(self: Viewport): Vector2 {.gcsafe, locks: 0.}
proc `size=`*(self: Viewport; val: Vector2) {.gcsafe, locks: 0.}
proc sizeOverrideStretch*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `sizeOverrideStretch=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc transparentBg*(self: Viewport): bool {.gcsafe, locks: 0.}
proc `transparentBg=`*(self: Viewport; val: bool) {.gcsafe, locks: 0.}
proc usage*(self: Viewport): int64 {.gcsafe, locks: 0.}
proc `usage=`*(self: Viewport; val: int64) {.gcsafe, locks: 0.}
proc world*(self: Viewport): World {.gcsafe, locks: 0.}
proc `world=`*(self: Viewport; val: World) {.gcsafe, locks: 0.}
proc world2d*(self: Viewport): World2D {.gcsafe, locks: 0.}
proc `world2d=`*(self: Viewport; val: World2D) {.gcsafe, locks: 0.}
method guiRemoveFocus*(self: Viewport) {.gcsafe, locks: 0, base.}
method guiShowTooltip*(self: Viewport) {.gcsafe, locks: 0, base.}
method ownWorldChanged*(self: Viewport) {.gcsafe, locks: 0, base.}
method postGuiGrabClickFocus*(self: Viewport) {.gcsafe, locks: 0, base.}
method subwindowVisibilityChanged*(self: Viewport) {.gcsafe, locks: 0, base.}
method vpInput*(self: Viewport; arg0: InputEvent) {.gcsafe, locks: 0, base.}
method vpInputText*(self: Viewport; text: string) {.gcsafe, locks: 0, base.}
method vpUnhandledInput*(self: Viewport; arg0: InputEvent) {.gcsafe, locks: 0, base.}
proc findWorld*(self: Viewport): World {.gcsafe, locks: 0.}
proc findWorld2d*(self: Viewport): World2D {.gcsafe, locks: 0.}
proc getCamera*(self: Viewport): Camera {.gcsafe, locks: 0.}
proc getFinalTransform*(self: Viewport): Transform2D {.gcsafe, locks: 0.}
proc getModalStackTop*(self: Viewport): Control {.gcsafe, locks: 0.}
proc getMousePosition*(self: Viewport): Vector2 {.gcsafe, locks: 0.}
proc getRenderInfo*(self: Viewport; info: int64): int64 {.gcsafe, locks: 0.}
proc getSizeOverride*(self: Viewport): Vector2 {.gcsafe, locks: 0.}
proc getTexture*(self: Viewport): ViewportTexture {.gcsafe, locks: 0.}
proc getViewportRid*(self: Viewport): RID {.gcsafe, locks: 0.}
proc getVisibleRect*(self: Viewport): Rect2 {.gcsafe, locks: 0.}
proc guiGetDragData*(self: Viewport): Variant {.gcsafe, locks: 0.}
proc guiHasModalStack*(self: Viewport): bool {.gcsafe, locks: 0.}
proc guiIsDragging*(self: Viewport): bool {.gcsafe, locks: 0.}
proc input*(self: Viewport; localEvent: InputEvent) {.gcsafe, locks: 0.}
proc isInputHandled*(self: Viewport): bool {.gcsafe, locks: 0.}
proc isSizeOverrideEnabled*(self: Viewport): bool {.gcsafe, locks: 0.}
proc setAttachToScreenRect*(self: Viewport; rect: Rect2) {.gcsafe, locks: 0.}
proc setInputAsHandled*(self: Viewport) {.gcsafe, locks: 0.}
proc setSizeOverride*(self: Viewport; enable: bool; size: Vector2 = vec2(-1.0, -1.0);
                     margin: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc unhandledInput*(self: Viewport; localEvent: InputEvent) {.gcsafe, locks: 0.}
proc updateWorlds*(self: Viewport) {.gcsafe, locks: 0.}
proc warpMouse*(self: Viewport; toPosition: Vector2) {.gcsafe, locks: 0.}
var viewportUseArvrMethodBind {.threadvar.}: ptr GodotMethodBind
proc arvr(self: Viewport): bool =
  if isNil(viewportUseArvrMethodBind):
    viewportUseArvrMethodBind = getMethod(cstring"Viewport", cstring"use_arvr")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportUseArvrMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetUseArvrMethodBind {.threadvar.}: ptr GodotMethodBind
proc `arvr=`(self: Viewport; val: bool) =
  if isNil(viewportSetUseArvrMethodBind):
    viewportSetUseArvrMethodBind = getMethod(cstring"Viewport",
        cstring"set_use_arvr")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetUseArvrMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var viewportIsAudioListener2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioListenerEnable2d(self: Viewport): bool =
  if isNil(viewportIsAudioListener2dMethodBind):
    viewportIsAudioListener2dMethodBind = getMethod(cstring"Viewport",
        cstring"is_audio_listener_2d")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsAudioListener2dMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetAsAudioListener2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioListenerEnable2d=`(self: Viewport; val: bool) =
  if isNil(viewportSetAsAudioListener2dMethodBind):
    viewportSetAsAudioListener2dMethodBind = getMethod(cstring"Viewport",
        cstring"set_as_audio_listener_2d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetAsAudioListener2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportIsAudioListenerMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioListenerEnable3d(self: Viewport): bool =
  if isNil(viewportIsAudioListenerMethodBind):
    viewportIsAudioListenerMethodBind = getMethod(cstring"Viewport",
        cstring"is_audio_listener")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsAudioListenerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetAsAudioListenerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioListenerEnable3d=`(self: Viewport; val: bool) =
  if isNil(viewportSetAsAudioListenerMethodBind):
    viewportSetAsAudioListenerMethodBind = getMethod(cstring"Viewport",
        cstring"set_as_audio_listener")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetAsAudioListenerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportGetCanvasTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasTransform(self: Viewport): Transform2D =
  if isNil(viewportGetCanvasTransformMethodBind):
    viewportGetCanvasTransformMethodBind = getMethod(cstring"Viewport",
        cstring"get_canvas_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetCanvasTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetCanvasTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `canvasTransform=`(self: Viewport; val: Transform2D) =
  if isNil(viewportSetCanvasTransformMethodBind):
    viewportSetCanvasTransformMethodBind = getMethod(cstring"Viewport",
        cstring"set_canvas_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetCanvasTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportGetDebugDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc debugDraw(self: Viewport): int64 =
  if isNil(viewportGetDebugDrawMethodBind):
    viewportGetDebugDrawMethodBind = getMethod(cstring"Viewport",
        cstring"get_debug_draw")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetDebugDrawMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetDebugDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc `debugDraw=`(self: Viewport; val: int64) =
  if isNil(viewportSetDebugDrawMethodBind):
    viewportSetDebugDrawMethodBind = getMethod(cstring"Viewport",
        cstring"set_debug_draw")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetDebugDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportIs3dDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disable3d(self: Viewport): bool =
  if isNil(viewportIs3dDisabledMethodBind):
    viewportIs3dDisabledMethodBind = getMethod(cstring"Viewport",
        cstring"is_3d_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIs3dDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetDisable3dMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disable3d=`(self: Viewport; val: bool) =
  if isNil(viewportSetDisable3dMethodBind):
    viewportSetDisable3dMethodBind = getMethod(cstring"Viewport",
        cstring"set_disable_3d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetDisable3dMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportGetGlobalCanvasTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalCanvasTransform(self: Viewport): Transform2D =
  if isNil(viewportGetGlobalCanvasTransformMethodBind):
    viewportGetGlobalCanvasTransformMethodBind = getMethod(cstring"Viewport",
        cstring"get_global_canvas_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetGlobalCanvasTransformMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetGlobalCanvasTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `globalCanvasTransform=`(self: Viewport; val: Transform2D) =
  if isNil(viewportSetGlobalCanvasTransformMethodBind):
    viewportSetGlobalCanvasTransformMethodBind = getMethod(cstring"Viewport",
        cstring"set_global_canvas_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetGlobalCanvasTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportIsInputDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc guiDisableInput(self: Viewport): bool =
  if isNil(viewportIsInputDisabledMethodBind):
    viewportIsInputDisabledMethodBind = getMethod(cstring"Viewport",
        cstring"is_input_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsInputDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetDisableInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc `guiDisableInput=`(self: Viewport; val: bool) =
  if isNil(viewportSetDisableInputMethodBind):
    viewportSetDisableInputMethodBind = getMethod(cstring"Viewport",
        cstring"set_disable_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetDisableInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportIsSnapControlsToPixelsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc guiSnapControlsToPixels(self: Viewport): bool =
  if isNil(viewportIsSnapControlsToPixelsEnabledMethodBind):
    viewportIsSnapControlsToPixelsEnabledMethodBind = getMethod(
        cstring"Viewport", cstring"is_snap_controls_to_pixels_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsSnapControlsToPixelsEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetSnapControlsToPixelsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `guiSnapControlsToPixels=`(self: Viewport; val: bool) =
  if isNil(viewportSetSnapControlsToPixelsMethodBind):
    viewportSetSnapControlsToPixelsMethodBind = getMethod(cstring"Viewport",
        cstring"set_snap_controls_to_pixels")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetSnapControlsToPixelsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportIsHandlingInputLocallyMethodBind {.threadvar.}: ptr GodotMethodBind
proc handleInputLocally(self: Viewport): bool =
  if isNil(viewportIsHandlingInputLocallyMethodBind):
    viewportIsHandlingInputLocallyMethodBind = getMethod(cstring"Viewport",
        cstring"is_handling_input_locally")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsHandlingInputLocallyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetHandleInputLocallyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `handleInputLocally=`(self: Viewport; val: bool) =
  if isNil(viewportSetHandleInputLocallyMethodBind):
    viewportSetHandleInputLocallyMethodBind = getMethod(cstring"Viewport",
        cstring"set_handle_input_locally")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetHandleInputLocallyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportGetHdrMethodBind {.threadvar.}: ptr GodotMethodBind
proc hdr(self: Viewport): bool =
  if isNil(viewportGetHdrMethodBind):
    viewportGetHdrMethodBind = getMethod(cstring"Viewport", cstring"get_hdr")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetHdrMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetHdrMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hdr=`(self: Viewport; val: bool) =
  if isNil(viewportSetHdrMethodBind):
    viewportSetHdrMethodBind = getMethod(cstring"Viewport", cstring"set_hdr")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetHdrMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var viewportGetKeep3dLinearMethodBind {.threadvar.}: ptr GodotMethodBind
proc keep3dLinear(self: Viewport): bool =
  if isNil(viewportGetKeep3dLinearMethodBind):
    viewportGetKeep3dLinearMethodBind = getMethod(cstring"Viewport",
        cstring"get_keep_3d_linear")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetKeep3dLinearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetKeep3dLinearMethodBind {.threadvar.}: ptr GodotMethodBind
proc `keep3dLinear=`(self: Viewport; val: bool) =
  if isNil(viewportSetKeep3dLinearMethodBind):
    viewportSetKeep3dLinearMethodBind = getMethod(cstring"Viewport",
        cstring"set_keep_3d_linear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetKeep3dLinearMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportGetMsaaMethodBind {.threadvar.}: ptr GodotMethodBind
proc msaa(self: Viewport): int64 =
  if isNil(viewportGetMsaaMethodBind):
    viewportGetMsaaMethodBind = getMethod(cstring"Viewport", cstring"get_msaa")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetMsaaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetMsaaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `msaa=`(self: Viewport; val: int64) =
  if isNil(viewportSetMsaaMethodBind):
    viewportSetMsaaMethodBind = getMethod(cstring"Viewport", cstring"set_msaa")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetMsaaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var viewportIsUsingOwnWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc ownWorld(self: Viewport): bool =
  if isNil(viewportIsUsingOwnWorldMethodBind):
    viewportIsUsingOwnWorldMethodBind = getMethod(cstring"Viewport",
        cstring"is_using_own_world")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsUsingOwnWorldMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetUseOwnWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ownWorld=`(self: Viewport; val: bool) =
  if isNil(viewportSetUseOwnWorldMethodBind):
    viewportSetUseOwnWorldMethodBind = getMethod(cstring"Viewport",
        cstring"set_use_own_world")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetUseOwnWorldMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportGetPhysicsObjectPickingMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicsObjectPicking(self: Viewport): bool =
  if isNil(viewportGetPhysicsObjectPickingMethodBind):
    viewportGetPhysicsObjectPickingMethodBind = getMethod(cstring"Viewport",
        cstring"get_physics_object_picking")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetPhysicsObjectPickingMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetPhysicsObjectPickingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `physicsObjectPicking=`(self: Viewport; val: bool) =
  if isNil(viewportSetPhysicsObjectPickingMethodBind):
    viewportSetPhysicsObjectPickingMethodBind = getMethod(cstring"Viewport",
        cstring"set_physics_object_picking")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetPhysicsObjectPickingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportIsUsingRenderDirectToScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc renderDirectToScreen(self: Viewport): bool =
  if isNil(viewportIsUsingRenderDirectToScreenMethodBind):
    viewportIsUsingRenderDirectToScreenMethodBind = getMethod(cstring"Viewport",
        cstring"is_using_render_direct_to_screen")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsUsingRenderDirectToScreenMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetUseRenderDirectToScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc `renderDirectToScreen=`(self: Viewport; val: bool) =
  if isNil(viewportSetUseRenderDirectToScreenMethodBind):
    viewportSetUseRenderDirectToScreenMethodBind = getMethod(cstring"Viewport",
        cstring"set_use_render_direct_to_screen")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetUseRenderDirectToScreenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportGetClearModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc renderTargetClearMode(self: Viewport): int64 =
  if isNil(viewportGetClearModeMethodBind):
    viewportGetClearModeMethodBind = getMethod(cstring"Viewport",
        cstring"get_clear_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetClearModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetClearModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `renderTargetClearMode=`(self: Viewport; val: int64) =
  if isNil(viewportSetClearModeMethodBind):
    viewportSetClearModeMethodBind = getMethod(cstring"Viewport",
        cstring"set_clear_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetClearModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportGetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc renderTargetUpdateMode(self: Viewport): int64 =
  if isNil(viewportGetUpdateModeMethodBind):
    viewportGetUpdateModeMethodBind = getMethod(cstring"Viewport",
        cstring"get_update_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetUpdateModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `renderTargetUpdateMode=`(self: Viewport; val: int64) =
  if isNil(viewportSetUpdateModeMethodBind):
    viewportSetUpdateModeMethodBind = getMethod(cstring"Viewport",
        cstring"set_update_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetUpdateModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportGetVflipMethodBind {.threadvar.}: ptr GodotMethodBind
proc renderTargetVFlip(self: Viewport): bool =
  if isNil(viewportGetVflipMethodBind):
    viewportGetVflipMethodBind = getMethod(cstring"Viewport", cstring"get_vflip")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetVflipMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetVflipMethodBind {.threadvar.}: ptr GodotMethodBind
proc `renderTargetVFlip=`(self: Viewport; val: bool) =
  if isNil(viewportSetVflipMethodBind):
    viewportSetVflipMethodBind = getMethod(cstring"Viewport", cstring"set_vflip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetVflipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var viewportGetShadowAtlasQuadrantSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowAtlasQuad0(self: Viewport): int64 =
  if isNil(viewportGetShadowAtlasQuadrantSubdivMethodBind):
    viewportGetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"get_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportSetShadowAtlasQuadrantSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowAtlasQuad0=`(self: Viewport; val: int64) =
  if isNil(viewportSetShadowAtlasQuadrantSubdivMethodBind):
    viewportSetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"set_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc shadowAtlasQuad1(self: Viewport): int64 =
  if isNil(viewportGetShadowAtlasQuadrantSubdivMethodBind):
    viewportGetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"get_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `shadowAtlasQuad1=`(self: Viewport; val: int64) =
  if isNil(viewportSetShadowAtlasQuadrantSubdivMethodBind):
    viewportSetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"set_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc shadowAtlasQuad2(self: Viewport): int64 =
  if isNil(viewportGetShadowAtlasQuadrantSubdivMethodBind):
    viewportGetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"get_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `shadowAtlasQuad2=`(self: Viewport; val: int64) =
  if isNil(viewportSetShadowAtlasQuadrantSubdivMethodBind):
    viewportSetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"set_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc shadowAtlasQuad3(self: Viewport): int64 =
  if isNil(viewportGetShadowAtlasQuadrantSubdivMethodBind):
    viewportGetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"get_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `shadowAtlasQuad3=`(self: Viewport; val: int64) =
  if isNil(viewportSetShadowAtlasQuadrantSubdivMethodBind):
    viewportSetShadowAtlasQuadrantSubdivMethodBind = getMethod(cstring"Viewport",
        cstring"set_shadow_atlas_quadrant_subdiv")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetShadowAtlasQuadrantSubdivMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportGetShadowAtlasSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shadowAtlasSize(self: Viewport): int64 =
  if isNil(viewportGetShadowAtlasSizeMethodBind):
    viewportGetShadowAtlasSizeMethodBind = getMethod(cstring"Viewport",
        cstring"get_shadow_atlas_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetShadowAtlasSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetShadowAtlasSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shadowAtlasSize=`(self: Viewport; val: int64) =
  if isNil(viewportSetShadowAtlasSizeMethodBind):
    viewportSetShadowAtlasSizeMethodBind = getMethod(cstring"Viewport",
        cstring"set_shadow_atlas_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetShadowAtlasSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: Viewport): Vector2 =
  if isNil(viewportGetSizeMethodBind):
    viewportGetSizeMethodBind = getMethod(cstring"Viewport", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: Viewport; val: Vector2) =
  if isNil(viewportSetSizeMethodBind):
    viewportSetSizeMethodBind = getMethod(cstring"Viewport", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var viewportIsSizeOverrideStretchEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc sizeOverrideStretch(self: Viewport): bool =
  if isNil(viewportIsSizeOverrideStretchEnabledMethodBind):
    viewportIsSizeOverrideStretchEnabledMethodBind = getMethod(cstring"Viewport",
        cstring"is_size_override_stretch_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsSizeOverrideStretchEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetSizeOverrideStretchMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sizeOverrideStretch=`(self: Viewport; val: bool) =
  if isNil(viewportSetSizeOverrideStretchMethodBind):
    viewportSetSizeOverrideStretchMethodBind = getMethod(cstring"Viewport",
        cstring"set_size_override_stretch")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetSizeOverrideStretchMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportHasTransparentBackgroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc transparentBg(self: Viewport): bool =
  if isNil(viewportHasTransparentBackgroundMethodBind):
    viewportHasTransparentBackgroundMethodBind = getMethod(cstring"Viewport",
        cstring"has_transparent_background")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportHasTransparentBackgroundMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetTransparentBackgroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transparentBg=`(self: Viewport; val: bool) =
  if isNil(viewportSetTransparentBackgroundMethodBind):
    viewportSetTransparentBackgroundMethodBind = getMethod(cstring"Viewport",
        cstring"set_transparent_background")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetTransparentBackgroundMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportGetUsageMethodBind {.threadvar.}: ptr GodotMethodBind
proc usage(self: Viewport): int64 =
  if isNil(viewportGetUsageMethodBind):
    viewportGetUsageMethodBind = getMethod(cstring"Viewport", cstring"get_usage")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetUsageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetUsageMethodBind {.threadvar.}: ptr GodotMethodBind
proc `usage=`(self: Viewport; val: int64) =
  if isNil(viewportSetUsageMethodBind):
    viewportSetUsageMethodBind = getMethod(cstring"Viewport", cstring"set_usage")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  viewportSetUsageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var viewportGetWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc world(self: Viewport): World =
  if isNil(viewportGetWorldMethodBind):
    viewportGetWorldMethodBind = getMethod(cstring"Viewport", cstring"get_world")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  viewportGetWorldMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var viewportSetWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc `world=`(self: Viewport; val: World) =
  if isNil(viewportSetWorldMethodBind):
    viewportSetWorldMethodBind = getMethod(cstring"Viewport", cstring"set_world")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportSetWorldMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var viewportGetWorld2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc world2d(self: Viewport): World2D =
  if isNil(viewportGetWorld2dMethodBind):
    viewportGetWorld2dMethodBind = getMethod(cstring"Viewport",
        cstring"get_world_2d")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  viewportGetWorld2dMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var viewportSetWorld2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc `world2d=`(self: Viewport; val: World2D) =
  if isNil(viewportSetWorld2dMethodBind):
    viewportSetWorld2dMethodBind = getMethod(cstring"Viewport",
        cstring"set_world_2d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportSetWorld2dMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var viewportUnderscoreguiRemoveFocusMethodBind {.threadvar.}: ptr GodotMethodBind
method guiRemoveFocus(self: Viewport) =
  if isNil(viewportUnderscoreguiRemoveFocusMethodBind):
    viewportUnderscoreguiRemoveFocusMethodBind = getMethod(cstring"Viewport",
        cstring"_gui_remove_focus")
  var ptrCallRet: pointer
  viewportUnderscoreguiRemoveFocusMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportUnderscoreguiShowTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
method guiShowTooltip(self: Viewport) =
  if isNil(viewportUnderscoreguiShowTooltipMethodBind):
    viewportUnderscoreguiShowTooltipMethodBind = getMethod(cstring"Viewport",
        cstring"_gui_show_tooltip")
  var ptrCallRet: pointer
  viewportUnderscoreguiShowTooltipMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportUnderscoreownWorldChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method ownWorldChanged(self: Viewport) =
  if isNil(viewportUnderscoreownWorldChangedMethodBind):
    viewportUnderscoreownWorldChangedMethodBind = getMethod(cstring"Viewport",
        cstring"_own_world_changed")
  var ptrCallRet: pointer
  viewportUnderscoreownWorldChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportUnderscorepostGuiGrabClickFocusMethodBind {.threadvar.}: ptr GodotMethodBind
method postGuiGrabClickFocus(self: Viewport) =
  if isNil(viewportUnderscorepostGuiGrabClickFocusMethodBind):
    viewportUnderscorepostGuiGrabClickFocusMethodBind = getMethod(
        cstring"Viewport", cstring"_post_gui_grab_click_focus")
  var ptrCallRet: pointer
  viewportUnderscorepostGuiGrabClickFocusMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var viewportUnderscoresubwindowVisibilityChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method subwindowVisibilityChanged(self: Viewport) =
  if isNil(viewportUnderscoresubwindowVisibilityChangedMethodBind):
    viewportUnderscoresubwindowVisibilityChangedMethodBind = getMethod(
        cstring"Viewport", cstring"_subwindow_visibility_changed")
  var ptrCallRet: pointer
  viewportUnderscoresubwindowVisibilityChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var viewportUnderscorevpInputMethodBind {.threadvar.}: ptr GodotMethodBind
method vpInput(self: Viewport; arg0: InputEvent) =
  if isNil(viewportUnderscorevpInputMethodBind):
    viewportUnderscorevpInputMethodBind = getMethod(cstring"Viewport",
        cstring"_vp_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportUnderscorevpInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportUnderscorevpInputTextMethodBind {.threadvar.}: ptr GodotMethodBind
method vpInputText(self: Viewport; text: string) =
  if isNil(viewportUnderscorevpInputTextMethodBind):
    viewportUnderscorevpInputTextMethodBind = getMethod(cstring"Viewport",
        cstring"_vp_input_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  viewportUnderscorevpInputTextMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var viewportUnderscorevpUnhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
method vpUnhandledInput(self: Viewport; arg0: InputEvent) =
  if isNil(viewportUnderscorevpUnhandledInputMethodBind):
    viewportUnderscorevpUnhandledInputMethodBind = getMethod(cstring"Viewport",
        cstring"_vp_unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportUnderscorevpUnhandledInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportFindWorldMethodBind {.threadvar.}: ptr GodotMethodBind
proc findWorld(self: Viewport): World =
  if isNil(viewportFindWorldMethodBind):
    viewportFindWorldMethodBind = getMethod(cstring"Viewport", cstring"find_world")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  viewportFindWorldMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var viewportFindWorld2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc findWorld2d(self: Viewport): World2D =
  if isNil(viewportFindWorld2dMethodBind):
    viewportFindWorld2dMethodBind = getMethod(cstring"Viewport",
        cstring"find_world_2d")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  viewportFindWorld2dMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var viewportGetCameraMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCamera(self: Viewport): Camera =
  if isNil(viewportGetCameraMethodBind):
    viewportGetCameraMethodBind = getMethod(cstring"Viewport", cstring"get_camera")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  viewportGetCameraMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var viewportGetFinalTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFinalTransform(self: Viewport): Transform2D =
  if isNil(viewportGetFinalTransformMethodBind):
    viewportGetFinalTransformMethodBind = getMethod(cstring"Viewport",
        cstring"get_final_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetFinalTransformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportGetModalStackTopMethodBind {.threadvar.}: ptr GodotMethodBind
proc getModalStackTop(self: Viewport): Control =
  if isNil(viewportGetModalStackTopMethodBind):
    viewportGetModalStackTopMethodBind = getMethod(cstring"Viewport",
        cstring"get_modal_stack_top")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  viewportGetModalStackTopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var viewportGetMousePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMousePosition(self: Viewport): Vector2 =
  if isNil(viewportGetMousePositionMethodBind):
    viewportGetMousePositionMethodBind = getMethod(cstring"Viewport",
        cstring"get_mouse_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetMousePositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportGetRenderInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRenderInfo(self: Viewport; info: int64): int64 =
  if isNil(viewportGetRenderInfoMethodBind):
    viewportGetRenderInfoMethodBind = getMethod(cstring"Viewport",
        cstring"get_render_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(info)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetRenderInfoMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportGetSizeOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSizeOverride(self: Viewport): Vector2 =
  if isNil(viewportGetSizeOverrideMethodBind):
    viewportGetSizeOverrideMethodBind = getMethod(cstring"Viewport",
        cstring"get_size_override")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetSizeOverrideMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTexture(self: Viewport): ViewportTexture =
  if isNil(viewportGetTextureMethodBind):
    viewportGetTextureMethodBind = getMethod(cstring"Viewport",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  viewportGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var viewportGetViewportRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getViewportRid(self: Viewport): RID =
  if isNil(viewportGetViewportRidMethodBind):
    viewportGetViewportRidMethodBind = getMethod(cstring"Viewport",
        cstring"get_viewport_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetViewportRidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportGetVisibleRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVisibleRect(self: Viewport): Rect2 =
  if isNil(viewportGetVisibleRectMethodBind):
    viewportGetVisibleRectMethodBind = getMethod(cstring"Viewport",
        cstring"get_visible_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGetVisibleRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportGuiGetDragDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc guiGetDragData(self: Viewport): Variant =
  if isNil(viewportGuiGetDragDataMethodBind):
    viewportGuiGetDragDataMethodBind = getMethod(cstring"Viewport",
        cstring"gui_get_drag_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  viewportGuiGetDragDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newVariant(ptrCallVal)

var viewportGuiHasModalStackMethodBind {.threadvar.}: ptr GodotMethodBind
proc guiHasModalStack(self: Viewport): bool =
  if isNil(viewportGuiHasModalStackMethodBind):
    viewportGuiHasModalStackMethodBind = getMethod(cstring"Viewport",
        cstring"gui_has_modal_stack")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGuiHasModalStackMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportGuiIsDraggingMethodBind {.threadvar.}: ptr GodotMethodBind
proc guiIsDragging(self: Viewport): bool =
  if isNil(viewportGuiIsDraggingMethodBind):
    viewportGuiIsDraggingMethodBind = getMethod(cstring"Viewport",
        cstring"gui_is_dragging")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportGuiIsDraggingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc input(self: Viewport; localEvent: InputEvent) =
  if isNil(viewportInputMethodBind):
    viewportInputMethodBind = getMethod(cstring"Viewport", cstring"input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not localEvent.isNil:
    localEvent.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var viewportIsInputHandledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInputHandled(self: Viewport): bool =
  if isNil(viewportIsInputHandledMethodBind):
    viewportIsInputHandledMethodBind = getMethod(cstring"Viewport",
        cstring"is_input_handled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsInputHandledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportIsSizeOverrideEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSizeOverrideEnabled(self: Viewport): bool =
  if isNil(viewportIsSizeOverrideEnabledMethodBind):
    viewportIsSizeOverrideEnabledMethodBind = getMethod(cstring"Viewport",
        cstring"is_size_override_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  viewportIsSizeOverrideEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var viewportSetAttachToScreenRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc setAttachToScreenRect(self: Viewport; rect: Rect2) =
  if isNil(viewportSetAttachToScreenRectMethodBind):
    viewportSetAttachToScreenRectMethodBind = getMethod(cstring"Viewport",
        cstring"set_attach_to_screen_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rect)
  var ptrCallRet: pointer
  viewportSetAttachToScreenRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var viewportSetInputAsHandledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputAsHandled(self: Viewport) =
  if isNil(viewportSetInputAsHandledMethodBind):
    viewportSetInputAsHandledMethodBind = getMethod(cstring"Viewport",
        cstring"set_input_as_handled")
  var ptrCallRet: pointer
  viewportSetInputAsHandledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportSetSizeOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSizeOverride(self: Viewport; enable: bool; size: Vector2 = vec2(-1.0, -1.0);
                    margin: Vector2 = vec2(0.0, 0.0)) =
  if isNil(viewportSetSizeOverrideMethodBind):
    viewportSetSizeOverrideMethodBind = getMethod(cstring"Viewport",
        cstring"set_size_override")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  argsToPassToGodot[][1] = unsafeAddr(size)
  argsToPassToGodot[][2] = unsafeAddr(margin)
  var ptrCallRet: pointer
  viewportSetSizeOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportUnhandledInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc unhandledInput(self: Viewport; localEvent: InputEvent) =
  if isNil(viewportUnhandledInputMethodBind):
    viewportUnhandledInputMethodBind = getMethod(cstring"Viewport",
        cstring"unhandled_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not localEvent.isNil:
    localEvent.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  viewportUnhandledInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var viewportUpdateWorldsMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateWorlds(self: Viewport) =
  if isNil(viewportUpdateWorldsMethodBind):
    viewportUpdateWorldsMethodBind = getMethod(cstring"Viewport",
        cstring"update_worlds")
  var ptrCallRet: pointer
  viewportUpdateWorldsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var viewportWarpMouseMethodBind {.threadvar.}: ptr GodotMethodBind
proc warpMouse(self: Viewport; toPosition: Vector2) =
  if isNil(viewportWarpMouseMethodBind):
    viewportWarpMouseMethodBind = getMethod(cstring"Viewport", cstring"warp_mouse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(toPosition)
  var ptrCallRet: pointer
  viewportWarpMouseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
