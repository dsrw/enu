
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  ARRAY_BONES* = 6'i64
  ARRAY_COLOR* = 3'i64
  ARRAY_COMPRESS_BONES* = 32768'i64
  ARRAY_COMPRESS_COLOR* = 4096'i64
  ARRAY_COMPRESS_DEFAULT* = 97280'i64
  ARRAY_COMPRESS_INDEX* = 131072'i64
  ARRAY_COMPRESS_NORMAL* = 1024'i64
  ARRAY_COMPRESS_TANGENT* = 2048'i64
  ARRAY_COMPRESS_TEX_UV* = 8192'i64
  ARRAY_COMPRESS_TEX_UV2* = 16384'i64
  ARRAY_COMPRESS_VERTEX* = 512'i64
  ARRAY_COMPRESS_WEIGHTS* = 65536'i64
  ARRAY_FLAG_USE_16_BIT_BONES* = 524288'i64
  ARRAY_FLAG_USE_2D_VERTICES* = 262144'i64
  ARRAY_FORMAT_BONES* = 64'i64
  ARRAY_FORMAT_COLOR* = 8'i64
  ARRAY_FORMAT_INDEX* = 256'i64
  ARRAY_FORMAT_NORMAL* = 2'i64
  ARRAY_FORMAT_TANGENT* = 4'i64
  ARRAY_FORMAT_TEX_UV* = 16'i64
  ARRAY_FORMAT_TEX_UV2* = 32'i64
  ARRAY_FORMAT_VERTEX* = 1'i64
  ARRAY_FORMAT_WEIGHTS* = 128'i64
  ARRAY_INDEX* = 8'i64
  ARRAY_MAX* = 9'i64
  ARRAY_NORMAL* = 1'i64
  ARRAY_TANGENT* = 2'i64
  ARRAY_TEX_UV* = 4'i64
  ARRAY_TEX_UV2* = 5'i64
  ARRAY_VERTEX* = 0'i64
  ARRAY_WEIGHTS* = 7'i64
  ARRAY_WEIGHTS_SIZE* = 4'i64
  BLEND_SHAPE_MODE_NORMALIZED* = 0'i64
  BLEND_SHAPE_MODE_RELATIVE* = 1'i64
  CANVAS_ITEM_Z_MAX* = 4096'i64
  CANVAS_ITEM_Z_MIN* = -4096'i64
  CANVAS_LIGHT_FILTER_NONE* = 0'i64
  CANVAS_LIGHT_FILTER_PCF13* = 5'i64
  CANVAS_LIGHT_FILTER_PCF3* = 1'i64
  CANVAS_LIGHT_FILTER_PCF5* = 2'i64
  CANVAS_LIGHT_FILTER_PCF7* = 3'i64
  CANVAS_LIGHT_FILTER_PCF9* = 4'i64
  CANVAS_LIGHT_MODE_ADD* = 0'i64
  CANVAS_LIGHT_MODE_MASK* = 3'i64
  CANVAS_LIGHT_MODE_MIX* = 2'i64
  CANVAS_LIGHT_MODE_SUB* = 1'i64
  CANVAS_OCCLUDER_POLYGON_CULL_CLOCKWISE* = 1'i64
  CANVAS_OCCLUDER_POLYGON_CULL_COUNTER_CLOCKWISE* = 2'i64
  CANVAS_OCCLUDER_POLYGON_CULL_DISABLED* = 0'i64
  CUBEMAP_BACK* = 5'i64
  CUBEMAP_BOTTOM* = 2'i64
  CUBEMAP_FRONT* = 4'i64
  CUBEMAP_LEFT* = 0'i64
  CUBEMAP_RIGHT* = 1'i64
  CUBEMAP_TOP* = 3'i64
  ENV_BG_CANVAS* = 4'i64
  ENV_BG_CLEAR_COLOR* = 0'i64
  ENV_BG_COLOR* = 1'i64
  ENV_BG_COLOR_SKY* = 3'i64
  ENV_BG_KEEP* = 5'i64
  ENV_BG_MAX* = 7'i64
  ENV_BG_SKY* = 2'i64
  ENV_DOF_BLUR_QUALITY_HIGH* = 2'i64
  ENV_DOF_BLUR_QUALITY_LOW* = 0'i64
  ENV_DOF_BLUR_QUALITY_MEDIUM* = 1'i64
  ENV_SSAO_BLUR_1x1* = 1'i64
  ENV_SSAO_BLUR_2x2* = 2'i64
  ENV_SSAO_BLUR_3x3* = 3'i64
  ENV_SSAO_BLUR_DISABLED* = 0'i64
  ENV_SSAO_QUALITY_HIGH* = 2'i64
  ENV_SSAO_QUALITY_LOW* = 0'i64
  ENV_SSAO_QUALITY_MEDIUM* = 1'i64
  ENV_TONE_MAPPER_ACES* = 3'i64
  ENV_TONE_MAPPER_FILMIC* = 2'i64
  ENV_TONE_MAPPER_LINEAR* = 0'i64
  ENV_TONE_MAPPER_REINHARD* = 1'i64
  FEATURE_MULTITHREADED* = 1'i64
  FEATURE_SHADERS* = 0'i64
  GLOW_BLEND_MODE_ADDITIVE* = 0'i64
  GLOW_BLEND_MODE_REPLACE* = 3'i64
  GLOW_BLEND_MODE_SCREEN* = 1'i64
  GLOW_BLEND_MODE_SOFTLIGHT* = 2'i64
  INFO_2D_DRAW_CALLS_IN_FRAME* = 7'i64
  INFO_2D_ITEMS_IN_FRAME* = 6'i64
  INFO_DRAW_CALLS_IN_FRAME* = 5'i64
  INFO_MATERIAL_CHANGES_IN_FRAME* = 2'i64
  INFO_OBJECTS_IN_FRAME* = 0'i64
  INFO_SHADER_CHANGES_IN_FRAME* = 3'i64
  INFO_SURFACE_CHANGES_IN_FRAME* = 4'i64
  INFO_TEXTURE_MEM_USED* = 10'i64
  INFO_USAGE_VIDEO_MEM_TOTAL* = 8'i64
  INFO_VERTEX_MEM_USED* = 11'i64
  INFO_VERTICES_IN_FRAME* = 1'i64
  INFO_VIDEO_MEM_USED* = 9'i64
  INSTANCE_FLAG_DRAW_NEXT_FRAME_IF_VISIBLE* = 1'i64
  INSTANCE_FLAG_MAX* = 2'i64
  INSTANCE_FLAG_USE_BAKED_LIGHT* = 0'i64
  INSTANCE_GEOMETRY_MASK* = 30'i64
  INSTANCE_GI_PROBE* = 7'i64
  INSTANCE_IMMEDIATE* = 3'i64
  INSTANCE_LIGHT* = 5'i64
  INSTANCE_LIGHTMAP_CAPTURE* = 8'i64
  INSTANCE_MAX* = 9'i64
  INSTANCE_MESH* = 1'i64
  INSTANCE_MULTIMESH* = 2'i64
  INSTANCE_NONE* = 0'i64
  INSTANCE_PARTICLES* = 4'i64
  INSTANCE_REFLECTION_PROBE* = 6'i64
  LIGHT_DIRECTIONAL* = 0'i64
  LIGHT_DIRECTIONAL_SHADOW_DEPTH_RANGE_OPTIMIZED* = 1'i64
  LIGHT_DIRECTIONAL_SHADOW_DEPTH_RANGE_STABLE* = 0'i64
  LIGHT_DIRECTIONAL_SHADOW_ORTHOGONAL* = 0'i64
  LIGHT_DIRECTIONAL_SHADOW_PARALLEL_2_SPLITS* = 1'i64
  LIGHT_DIRECTIONAL_SHADOW_PARALLEL_4_SPLITS* = 2'i64
  LIGHT_OMNI* = 1'i64
  LIGHT_OMNI_SHADOW_CUBE* = 1'i64
  LIGHT_OMNI_SHADOW_DETAIL_HORIZONTAL* = 1'i64
  LIGHT_OMNI_SHADOW_DETAIL_VERTICAL* = 0'i64
  LIGHT_OMNI_SHADOW_DUAL_PARABOLOID* = 0'i64
  LIGHT_PARAM_ATTENUATION* = 4'i64
  LIGHT_PARAM_CONTACT_SHADOW_SIZE* = 7'i64
  LIGHT_PARAM_ENERGY* = 0'i64
  LIGHT_PARAM_MAX* = 15'i64
  LIGHT_PARAM_RANGE* = 3'i64
  LIGHT_PARAM_SHADOW_BIAS* = 13'i64
  LIGHT_PARAM_SHADOW_BIAS_SPLIT_SCALE* = 14'i64
  LIGHT_PARAM_SHADOW_MAX_DISTANCE* = 8'i64
  LIGHT_PARAM_SHADOW_NORMAL_BIAS* = 12'i64
  LIGHT_PARAM_SHADOW_SPLIT_1_OFFSET* = 9'i64
  LIGHT_PARAM_SHADOW_SPLIT_2_OFFSET* = 10'i64
  LIGHT_PARAM_SHADOW_SPLIT_3_OFFSET* = 11'i64
  LIGHT_PARAM_SPECULAR* = 2'i64
  LIGHT_PARAM_SPOT_ANGLE* = 5'i64
  LIGHT_PARAM_SPOT_ATTENUATION* = 6'i64
  LIGHT_SPOT* = 2'i64
  MATERIAL_RENDER_PRIORITY_MAX* = 127'i64
  MATERIAL_RENDER_PRIORITY_MIN* = -128'i64
  MAX_CURSORS* = 8'i64
  MAX_GLOW_LEVELS* = 7'i64
  MULTIMESH_COLOR_8BIT* = 1'i64
  MULTIMESH_COLOR_FLOAT* = 2'i64
  MULTIMESH_COLOR_NONE* = 0'i64
  MULTIMESH_CUSTOM_DATA_8BIT* = 1'i64
  MULTIMESH_CUSTOM_DATA_FLOAT* = 2'i64
  MULTIMESH_CUSTOM_DATA_NONE* = 0'i64
  MULTIMESH_TRANSFORM_2D* = 0'i64
  MULTIMESH_TRANSFORM_3D* = 1'i64
  NINE_PATCH_STRETCH* = 0'i64
  NINE_PATCH_TILE* = 1'i64
  NINE_PATCH_TILE_FIT* = 2'i64
  NO_INDEX_ARRAY* = -1'i64
  PARTICLES_DRAW_ORDER_INDEX* = 0'i64
  PARTICLES_DRAW_ORDER_LIFETIME* = 1'i64
  PARTICLES_DRAW_ORDER_VIEW_DEPTH* = 2'i64
  PRIMITIVE_LINES* = 1'i64
  PRIMITIVE_LINE_LOOP* = 3'i64
  PRIMITIVE_LINE_STRIP* = 2'i64
  PRIMITIVE_MAX* = 7'i64
  PRIMITIVE_POINTS* = 0'i64
  PRIMITIVE_TRIANGLES* = 4'i64
  PRIMITIVE_TRIANGLE_FAN* = 6'i64
  PRIMITIVE_TRIANGLE_STRIP* = 5'i64
  REFLECTION_PROBE_UPDATE_ALWAYS* = 1'i64
  REFLECTION_PROBE_UPDATE_ONCE* = 0'i64
  SCENARIO_DEBUG_DISABLED* = 0'i64
  SCENARIO_DEBUG_OVERDRAW* = 2'i64
  SCENARIO_DEBUG_SHADELESS* = 3'i64
  SCENARIO_DEBUG_WIREFRAME* = 1'i64
  SHADER_CANVAS_ITEM* = 1'i64
  SHADER_MAX* = 3'i64
  SHADER_PARTICLES* = 2'i64
  SHADER_SPATIAL* = 0'i64
  SHADOW_CASTING_SETTING_DOUBLE_SIDED* = 2'i64
  SHADOW_CASTING_SETTING_OFF* = 0'i64
  SHADOW_CASTING_SETTING_ON* = 1'i64
  SHADOW_CASTING_SETTING_SHADOWS_ONLY* = 3'i64
  TEXTURE_FLAGS_DEFAULT* = 7'i64
  TEXTURE_FLAG_ANISOTROPIC_FILTER* = 8'i64
  TEXTURE_FLAG_CONVERT_TO_LINEAR* = 16'i64
  TEXTURE_FLAG_FILTER* = 4'i64
  TEXTURE_FLAG_MIPMAPS* = 1'i64
  TEXTURE_FLAG_MIRRORED_REPEAT* = 32'i64
  TEXTURE_FLAG_REPEAT* = 2'i64
  TEXTURE_FLAG_USED_FOR_STREAMING* = 2048'i64
  TEXTURE_TYPE_2D* = 0'i64
  TEXTURE_TYPE_2D_ARRAY* = 3'i64
  TEXTURE_TYPE_3D* = 4'i64
  TEXTURE_TYPE_CUBEMAP* = 2'i64
  VIEWPORT_CLEAR_ALWAYS* = 0'i64
  VIEWPORT_CLEAR_NEVER* = 1'i64
  VIEWPORT_CLEAR_ONLY_NEXT_FRAME* = 2'i64
  VIEWPORT_DEBUG_DRAW_DISABLED* = 0'i64
  VIEWPORT_DEBUG_DRAW_OVERDRAW* = 2'i64
  VIEWPORT_DEBUG_DRAW_UNSHADED* = 1'i64
  VIEWPORT_DEBUG_DRAW_WIREFRAME* = 3'i64
  VIEWPORT_MSAA_16X* = 4'i64
  VIEWPORT_MSAA_2X* = 1'i64
  VIEWPORT_MSAA_4X* = 2'i64
  VIEWPORT_MSAA_8X* = 3'i64
  VIEWPORT_MSAA_DISABLED* = 0'i64
  VIEWPORT_MSAA_EXT_2X* = 5'i64
  VIEWPORT_MSAA_EXT_4X* = 6'i64
  VIEWPORT_RENDER_INFO_2D_DRAW_CALLS_IN_FRAME* = 7'i64
  VIEWPORT_RENDER_INFO_2D_ITEMS_IN_FRAME* = 6'i64
  VIEWPORT_RENDER_INFO_DRAW_CALLS_IN_FRAME* = 5'i64
  VIEWPORT_RENDER_INFO_MATERIAL_CHANGES_IN_FRAME* = 2'i64
  VIEWPORT_RENDER_INFO_MAX* = 8'i64
  VIEWPORT_RENDER_INFO_OBJECTS_IN_FRAME* = 0'i64
  VIEWPORT_RENDER_INFO_SHADER_CHANGES_IN_FRAME* = 3'i64
  VIEWPORT_RENDER_INFO_SURFACE_CHANGES_IN_FRAME* = 4'i64
  VIEWPORT_RENDER_INFO_VERTICES_IN_FRAME* = 1'i64
  VIEWPORT_UPDATE_ALWAYS* = 3'i64
  VIEWPORT_UPDATE_DISABLED* = 0'i64
  VIEWPORT_UPDATE_ONCE* = 1'i64
  VIEWPORT_UPDATE_WHEN_VISIBLE* = 2'i64
  VIEWPORT_USAGE_2D* = 0'i64
  VIEWPORT_USAGE_2D_NO_SAMPLING* = 1'i64
  VIEWPORT_USAGE_3D* = 2'i64
  VIEWPORT_USAGE_3D_NO_EFFECTS* = 3'i64
type
  VisualServer = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(VisualServer, "VisualServer", true)
var singletonVisualServer {.threadvar.}: VisualServer
proc blackBarsSetImages*(left: RID; top: RID; right: RID; bottom: RID) {.gcsafe, locks: 0.}
proc blackBarsSetMargins*(left: int64; top: int64; right: int64; bottom: int64) {.gcsafe,
    locks: 0.}
proc cameraCreate*(): RID {.gcsafe, locks: 0.}
proc cameraSetCullMask*(camera: RID; layers: int64) {.gcsafe, locks: 0.}
proc cameraSetEnvironment*(camera: RID; env: RID) {.gcsafe, locks: 0.}
proc cameraSetFrustum*(camera: RID; size: float64; offset: Vector2; zNear: float64;
                      zFar: float64) {.gcsafe, locks: 0.}
proc cameraSetOrthogonal*(camera: RID; size: float64; zNear: float64; zFar: float64) {.
    gcsafe, locks: 0.}
proc cameraSetPerspective*(camera: RID; fovyDegrees: float64; zNear: float64;
                          zFar: float64) {.gcsafe, locks: 0.}
proc cameraSetTransform*(camera: RID; transform: Transform) {.gcsafe, locks: 0.}
proc cameraSetUseVerticalAspect*(camera: RID; enable: bool) {.gcsafe, locks: 0.}
proc canvasCreate*(): RID {.gcsafe, locks: 0.}
proc canvasItemAddCircle*(item: RID; pos: Vector2; radius: float64; color: Color) {.
    gcsafe, locks: 0.}
proc canvasItemAddClipIgnore*(item: RID; ignore: bool) {.gcsafe, locks: 0.}
proc canvasItemAddLine*(item: RID; fromm: Vector2; to: Vector2; color: Color;
                       width: float64 = 1.0; antialiased: bool = false) {.gcsafe,
    locks: 0.}
proc canvasItemAddMesh*(item: RID; mesh: RID; transform: Transform2D = initTransform2D(
    vec2(1.0, 0.0), vec2(0.0, 1.0), vec2(0.0, 0.0));
                       modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                       texture: RID = initRID(); normalMap: RID = initRID()) {.gcsafe,
    locks: 0.}
proc canvasItemAddMultimesh*(item: RID; mesh: RID; texture: RID;
                            normalMap: RID = initRID()) {.gcsafe, locks: 0.}
proc canvasItemAddNinePatch*(item: RID; rect: Rect2; source: Rect2; texture: RID;
                            topleft: Vector2; bottomright: Vector2;
                            xAxisMode: int64 = 0'i64; yAxisMode: int64 = 0'i64;
                            drawCenter: bool = true;
                            modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                            normalMap: RID = initRID()) {.gcsafe, locks: 0.}
proc canvasItemAddParticles*(item: RID; particles: RID; texture: RID; normalMap: RID) {.
    gcsafe, locks: 0.}
proc canvasItemAddPolygon*(item: RID; points: PoolVector2Array;
                          colors: PoolColorArray;
                          uvs: PoolVector2Array = newPoolVector2Array();
                          texture: RID = initRID(); normalMap: RID = initRID();
                          antialiased: bool = false) {.gcsafe, locks: 0.}
proc canvasItemAddPolyline*(item: RID; points: PoolVector2Array;
                           colors: PoolColorArray; width: float64 = 1.0;
                           antialiased: bool = false) {.gcsafe, locks: 0.}
proc canvasItemAddPrimitive*(item: RID; points: PoolVector2Array;
                            colors: PoolColorArray; uvs: PoolVector2Array;
                            texture: RID; width: float64 = 1.0;
                            normalMap: RID = initRID()) {.gcsafe, locks: 0.}
proc canvasItemAddRect*(item: RID; rect: Rect2; color: Color) {.gcsafe, locks: 0.}
proc canvasItemAddSetTransform*(item: RID; transform: Transform2D) {.gcsafe, locks: 0.}
proc canvasItemAddTextureRect*(item: RID; rect: Rect2; texture: RID;
                              tile: bool = false;
                              modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                              transpose: bool = false; normalMap: RID = initRID()) {.
    gcsafe, locks: 0.}
proc canvasItemAddTextureRectRegion*(item: RID; rect: Rect2; texture: RID;
                                    srcRect: Rect2; modulate: Color = initColor(1.0,
    1.0, 1.0, 1.0); transpose: bool = false; normalMap: RID = initRID();
                                    clipUv: bool = true) {.gcsafe, locks: 0.}
proc canvasItemAddTriangleArray*(item: RID; indices: PoolIntArray;
                                points: PoolVector2Array; colors: PoolColorArray;
                                uvs: PoolVector2Array = newPoolVector2Array();
                                bones: PoolIntArray = newPoolIntArray();
                                weights: PoolRealArray = newPoolRealArray();
                                texture: RID = initRID(); count: int64 = -1'i64;
                                normalMap: RID = initRID();
                                antialiased: bool = false;
                                antialiasingUseIndices: bool = false) {.gcsafe,
    locks: 0.}
proc canvasItemClear*(item: RID) {.gcsafe, locks: 0.}
proc canvasItemCreate*(): RID {.gcsafe, locks: 0.}
proc canvasItemSetClip*(item: RID; clip: bool) {.gcsafe, locks: 0.}
proc canvasItemSetCopyToBackbuffer*(item: RID; enabled: bool; rect: Rect2) {.gcsafe,
    locks: 0.}
proc canvasItemSetCustomRect*(item: RID; useCustomRect: bool;
                             rect: Rect2 = initRect2(0.0, 0.0, 0.0, 0.0)) {.gcsafe,
    locks: 0.}
proc canvasItemSetDistanceFieldMode*(item: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasItemSetDrawBehindParent*(item: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasItemSetDrawIndex*(item: RID; index: int64) {.gcsafe, locks: 0.}
proc canvasItemSetLightMask*(item: RID; mask: int64) {.gcsafe, locks: 0.}
proc canvasItemSetMaterial*(item: RID; material: RID) {.gcsafe, locks: 0.}
proc canvasItemSetModulate*(item: RID; color: Color) {.gcsafe, locks: 0.}
proc canvasItemSetParent*(item: RID; parent: RID) {.gcsafe, locks: 0.}
proc canvasItemSetSelfModulate*(item: RID; color: Color) {.gcsafe, locks: 0.}
proc canvasItemSetSortChildrenByY*(item: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasItemSetTransform*(item: RID; transform: Transform2D) {.gcsafe, locks: 0.}
proc canvasItemSetUseParentMaterial*(item: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasItemSetVisible*(item: RID; visible: bool) {.gcsafe, locks: 0.}
proc canvasItemSetZAsRelativeToParent*(item: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasItemSetZIndex*(item: RID; zIndex: int64) {.gcsafe, locks: 0.}
proc canvasLightAttachToCanvas*(light: RID; canvas: RID) {.gcsafe, locks: 0.}
proc canvasLightCreate*(): RID {.gcsafe, locks: 0.}
proc canvasLightOccluderAttachToCanvas*(occluder: RID; canvas: RID) {.gcsafe, locks: 0.}
proc canvasLightOccluderCreate*(): RID {.gcsafe, locks: 0.}
proc canvasLightOccluderSetEnabled*(occluder: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasLightOccluderSetLightMask*(occluder: RID; mask: int64) {.gcsafe, locks: 0.}
proc canvasLightOccluderSetPolygon*(occluder: RID; polygon: RID) {.gcsafe, locks: 0.}
proc canvasLightOccluderSetTransform*(occluder: RID; transform: Transform2D) {.
    gcsafe, locks: 0.}
proc canvasLightSetColor*(light: RID; color: Color) {.gcsafe, locks: 0.}
proc canvasLightSetEnabled*(light: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasLightSetEnergy*(light: RID; energy: float64) {.gcsafe, locks: 0.}
proc canvasLightSetHeight*(light: RID; height: float64) {.gcsafe, locks: 0.}
proc canvasLightSetItemCullMask*(light: RID; mask: int64) {.gcsafe, locks: 0.}
proc canvasLightSetItemShadowCullMask*(light: RID; mask: int64) {.gcsafe, locks: 0.}
proc canvasLightSetLayerRange*(light: RID; minLayer: int64; maxLayer: int64) {.gcsafe,
    locks: 0.}
proc canvasLightSetMode*(light: RID; mode: int64) {.gcsafe, locks: 0.}
proc canvasLightSetScale*(light: RID; scale: float64) {.gcsafe, locks: 0.}
proc canvasLightSetShadowBufferSize*(light: RID; size: int64) {.gcsafe, locks: 0.}
proc canvasLightSetShadowColor*(light: RID; color: Color) {.gcsafe, locks: 0.}
proc canvasLightSetShadowEnabled*(light: RID; enabled: bool) {.gcsafe, locks: 0.}
proc canvasLightSetShadowFilter*(light: RID; filter: int64) {.gcsafe, locks: 0.}
proc canvasLightSetShadowGradientLength*(light: RID; length: float64) {.gcsafe,
    locks: 0.}
proc canvasLightSetShadowSmooth*(light: RID; smooth: float64) {.gcsafe, locks: 0.}
proc canvasLightSetTexture*(light: RID; texture: RID) {.gcsafe, locks: 0.}
proc canvasLightSetTextureOffset*(light: RID; offset: Vector2) {.gcsafe, locks: 0.}
proc canvasLightSetTransform*(light: RID; transform: Transform2D) {.gcsafe, locks: 0.}
proc canvasLightSetZRange*(light: RID; minZ: int64; maxZ: int64) {.gcsafe, locks: 0.}
proc canvasOccluderPolygonCreate*(): RID {.gcsafe, locks: 0.}
proc canvasOccluderPolygonSetCullMode*(occluderPolygon: RID; mode: int64) {.gcsafe,
    locks: 0.}
proc canvasOccluderPolygonSetShape*(occluderPolygon: RID; shape: PoolVector2Array;
                                   closed: bool) {.gcsafe, locks: 0.}
proc canvasOccluderPolygonSetShapeAsLines*(occluderPolygon: RID;
    shape: PoolVector2Array) {.gcsafe, locks: 0.}
proc canvasSetItemMirroring*(canvas: RID; item: RID; mirroring: Vector2) {.gcsafe,
    locks: 0.}
proc canvasSetModulate*(canvas: RID; color: Color) {.gcsafe, locks: 0.}
proc directionalLightCreate*(): RID {.gcsafe, locks: 0.}
proc draw*(swapBuffers: bool = true; frameStep: float64 = 0.0) {.gcsafe, locks: 0.}
proc environmentCreate*(): RID {.gcsafe, locks: 0.}
proc environmentSetAdjustment*(env: RID; enable: bool; brightness: float64;
                              contrast: float64; saturation: float64; ramp: RID) {.
    gcsafe, locks: 0.}
proc environmentSetAmbientLight*(env: RID; color: Color; energy: float64 = 1.0;
                                skyContibution: float64 = 0.0) {.gcsafe, locks: 0.}
proc environmentSetBackground*(env: RID; bg: int64) {.gcsafe, locks: 0.}
proc environmentSetBgColor*(env: RID; color: Color) {.gcsafe, locks: 0.}
proc environmentSetBgEnergy*(env: RID; energy: float64) {.gcsafe, locks: 0.}
proc environmentSetCanvasMaxLayer*(env: RID; maxLayer: int64) {.gcsafe, locks: 0.}
proc environmentSetDofBlurFar*(env: RID; enable: bool; distance: float64;
                              transition: float64; farAmount: float64;
                              quality: int64) {.gcsafe, locks: 0.}
proc environmentSetDofBlurNear*(env: RID; enable: bool; distance: float64;
                               transition: float64; farAmount: float64;
                               quality: int64) {.gcsafe, locks: 0.}
proc environmentSetFog*(env: RID; enable: bool; color: Color; sunColor: Color;
                       sunAmount: float64) {.gcsafe, locks: 0.}
proc environmentSetFogDepth*(env: RID; enable: bool; depthBegin: float64;
                            depthEnd: float64; depthCurve: float64; transmit: bool;
                            transmitCurve: float64) {.gcsafe, locks: 0.}
proc environmentSetFogHeight*(env: RID; enable: bool; minHeight: float64;
                             maxHeight: float64; heightCurve: float64) {.gcsafe,
    locks: 0.}
proc environmentSetGlow*(env: RID; enable: bool; levelFlags: int64; intensity: float64;
                        strength: float64; bloomThreshold: float64;
                        blendMode: int64; hdrBleedThreshold: float64;
                        hdrBleedScale: float64; hdrLuminanceCap: float64;
                        bicubicUpscale: bool) {.gcsafe, locks: 0.}
proc environmentSetSky*(env: RID; sky: RID) {.gcsafe, locks: 0.}
proc environmentSetSkyCustomFov*(env: RID; scale: float64) {.gcsafe, locks: 0.}
proc environmentSetSkyOrientation*(env: RID; orientation: Basis) {.gcsafe, locks: 0.}
proc environmentSetSsao*(env: RID; enable: bool; radius: float64; intensity: float64;
                        radius2: float64; intensity2: float64; bias: float64;
                        lightAffect: float64; aoChannelAffect: float64;
                        color: Color; quality: int64; blur: int64;
                        bilateralSharpness: float64) {.gcsafe, locks: 0.}
proc environmentSetSsr*(env: RID; enable: bool; maxSteps: int64; fadeIn: float64;
                       fadeOut: float64; depthTolerance: float64; roughness: bool) {.
    gcsafe, locks: 0.}
proc environmentSetTonemap*(env: RID; toneMapper: int64; exposure: float64;
                           white: float64; autoExposure: bool;
                           minLuminance: float64; maxLuminance: float64;
                           autoExpSpeed: float64; autoExpGrey: float64) {.gcsafe,
    locks: 0.}
proc finish*() {.gcsafe, locks: 0.}
proc forceDraw*(swapBuffers: bool = true; frameStep: float64 = 0.0) {.gcsafe, locks: 0.}
proc forceSync*() {.gcsafe, locks: 0.}
proc freeRid*(rid: RID) {.gcsafe, locks: 0.}
proc getRenderInfo*(info: int64): int64 {.gcsafe, locks: 0.}
proc getTestCube*(): RID {.gcsafe, locks: 0.}
proc getTestTexture*(): RID {.gcsafe, locks: 0.}
proc getVideoAdapterName*(): string {.gcsafe, locks: 0.}
proc getVideoAdapterVendor*(): string {.gcsafe, locks: 0.}
proc getWhiteTexture*(): RID {.gcsafe, locks: 0.}
proc giProbeCreate*(): RID {.gcsafe, locks: 0.}
proc giProbeGetBias*(probe: RID): float64 {.gcsafe, locks: 0.}
proc giProbeGetBounds*(probe: RID): AABB {.gcsafe, locks: 0.}
proc giProbeGetCellSize*(probe: RID): float64 {.gcsafe, locks: 0.}
proc giProbeGetDynamicData*(probe: RID): PoolIntArray {.gcsafe, locks: 0.}
proc giProbeGetDynamicRange*(probe: RID): int64 {.gcsafe, locks: 0.}
proc giProbeGetEnergy*(probe: RID): float64 {.gcsafe, locks: 0.}
proc giProbeGetNormalBias*(probe: RID): float64 {.gcsafe, locks: 0.}
proc giProbeGetPropagation*(probe: RID): float64 {.gcsafe, locks: 0.}
proc giProbeGetToCellXform*(probe: RID): Transform {.gcsafe, locks: 0.}
proc giProbeIsCompressed*(probe: RID): bool {.gcsafe, locks: 0.}
proc giProbeIsInterior*(probe: RID): bool {.gcsafe, locks: 0.}
proc giProbeSetBias*(probe: RID; bias: float64) {.gcsafe, locks: 0.}
proc giProbeSetBounds*(probe: RID; bounds: AABB) {.gcsafe, locks: 0.}
proc giProbeSetCellSize*(probe: RID; range: float64) {.gcsafe, locks: 0.}
proc giProbeSetCompress*(probe: RID; enable: bool) {.gcsafe, locks: 0.}
proc giProbeSetDynamicData*(probe: RID; data: PoolIntArray) {.gcsafe, locks: 0.}
proc giProbeSetDynamicRange*(probe: RID; range: int64) {.gcsafe, locks: 0.}
proc giProbeSetEnergy*(probe: RID; energy: float64) {.gcsafe, locks: 0.}
proc giProbeSetInterior*(probe: RID; enable: bool) {.gcsafe, locks: 0.}
proc giProbeSetNormalBias*(probe: RID; bias: float64) {.gcsafe, locks: 0.}
proc giProbeSetPropagation*(probe: RID; propagation: float64) {.gcsafe, locks: 0.}
proc giProbeSetToCellXform*(probe: RID; xform: Transform) {.gcsafe, locks: 0.}
proc hasChanged*(): bool {.gcsafe, locks: 0.}
proc hasFeature*(feature: int64): bool {.gcsafe, locks: 0.}
proc hasOsFeature*(feature: string): bool {.gcsafe, locks: 0.}
proc immediateBegin*(immediate: RID; primitive: int64; texture: RID = initRID()) {.
    gcsafe, locks: 0.}
proc immediateClear*(immediate: RID) {.gcsafe, locks: 0.}
proc immediateColor*(immediate: RID; color: Color) {.gcsafe, locks: 0.}
proc immediateCreate*(): RID {.gcsafe, locks: 0.}
proc immediateEnd*(immediate: RID) {.gcsafe, locks: 0.}
proc immediateGetMaterial*(immediate: RID): RID {.gcsafe, locks: 0.}
proc immediateNormal*(immediate: RID; normal: Vector3) {.gcsafe, locks: 0.}
proc immediateSetMaterial*(immediate: RID; material: RID) {.gcsafe, locks: 0.}
proc immediateTangent*(immediate: RID; tangent: Plane) {.gcsafe, locks: 0.}
proc immediateUv*(immediate: RID; texUv: Vector2) {.gcsafe, locks: 0.}
proc immediateUv2*(immediate: RID; texUv: Vector2) {.gcsafe, locks: 0.}
proc immediateVertex*(immediate: RID; vertex: Vector3) {.gcsafe, locks: 0.}
proc immediateVertex2d*(immediate: RID; vertex: Vector2) {.gcsafe, locks: 0.}
proc init*() {.gcsafe, locks: 0.}
proc instanceAttachObjectInstanceId*(instance: RID; id: int64) {.gcsafe, locks: 0.}
proc instanceAttachSkeleton*(instance: RID; skeleton: RID) {.gcsafe, locks: 0.}
proc instanceCreate*(): RID {.gcsafe, locks: 0.}
proc instanceCreate2*(base: RID; scenario: RID): RID {.gcsafe, locks: 0.}
proc instanceGeometrySetAsInstanceLod*(instance: RID; asLodOfInstance: RID) {.gcsafe,
    locks: 0.}
proc instanceGeometrySetCastShadowsSetting*(instance: RID;
    shadowCastingSetting: int64) {.gcsafe, locks: 0.}
proc instanceGeometrySetDrawRange*(instance: RID; min: float64; max: float64;
                                  minMargin: float64; maxMargin: float64) {.gcsafe,
    locks: 0.}
proc instanceGeometrySetFlag*(instance: RID; flag: int64; enabled: bool) {.gcsafe,
    locks: 0.}
proc instanceGeometrySetMaterialOverride*(instance: RID; material: RID) {.gcsafe,
    locks: 0.}
proc instanceSetBase*(instance: RID; base: RID) {.gcsafe, locks: 0.}
proc instanceSetBlendShapeWeight*(instance: RID; shape: int64; weight: float64) {.
    gcsafe, locks: 0.}
proc instanceSetCustomAabb*(instance: RID; aabb: AABB) {.gcsafe, locks: 0.}
proc instanceSetExterior*(instance: RID; enabled: bool) {.gcsafe, locks: 0.}
proc instanceSetExtraVisibilityMargin*(instance: RID; margin: float64) {.gcsafe,
    locks: 0.}
proc instanceSetLayerMask*(instance: RID; mask: int64) {.gcsafe, locks: 0.}
proc instanceSetScenario*(instance: RID; scenario: RID) {.gcsafe, locks: 0.}
proc instanceSetSurfaceMaterial*(instance: RID; surface: int64; material: RID) {.
    gcsafe, locks: 0.}
proc instanceSetTransform*(instance: RID; transform: Transform) {.gcsafe, locks: 0.}
proc instanceSetUseLightmap*(instance: RID; lightmapInstance: RID; lightmap: RID) {.
    gcsafe, locks: 0.}
proc instanceSetVisible*(instance: RID; visible: bool) {.gcsafe, locks: 0.}
proc instancesCullAabb*(aabb: AABB; scenario: RID = initRID()): Array {.gcsafe, locks: 0.}
proc instancesCullConvex*(convex: Array; scenario: RID = initRID()): Array {.gcsafe,
    locks: 0.}
proc instancesCullRay*(fromm: Vector3; to: Vector3; scenario: RID = initRID()): Array {.
    gcsafe, locks: 0.}
proc isRenderLoopEnabled*(): bool {.gcsafe, locks: 0.}
proc lightDirectionalSetBlendSplits*(light: RID; enable: bool) {.gcsafe, locks: 0.}
proc lightDirectionalSetShadowDepthRangeMode*(light: RID; rangeMode: int64) {.gcsafe,
    locks: 0.}
proc lightDirectionalSetShadowMode*(light: RID; mode: int64) {.gcsafe, locks: 0.}
proc lightOmniSetShadowDetail*(light: RID; detail: int64) {.gcsafe, locks: 0.}
proc lightOmniSetShadowMode*(light: RID; mode: int64) {.gcsafe, locks: 0.}
proc lightSetColor*(light: RID; color: Color) {.gcsafe, locks: 0.}
proc lightSetCullMask*(light: RID; mask: int64) {.gcsafe, locks: 0.}
proc lightSetNegative*(light: RID; enable: bool) {.gcsafe, locks: 0.}
proc lightSetParam*(light: RID; param: int64; value: float64) {.gcsafe, locks: 0.}
proc lightSetProjector*(light: RID; texture: RID) {.gcsafe, locks: 0.}
proc lightSetReverseCullFaceMode*(light: RID; enabled: bool) {.gcsafe, locks: 0.}
proc lightSetShadow*(light: RID; enabled: bool) {.gcsafe, locks: 0.}
proc lightSetShadowColor*(light: RID; color: Color) {.gcsafe, locks: 0.}
proc lightSetUseGi*(light: RID; enabled: bool) {.gcsafe, locks: 0.}
proc lightmapCaptureCreate*(): RID {.gcsafe, locks: 0.}
proc lightmapCaptureGetBounds*(capture: RID): AABB {.gcsafe, locks: 0.}
proc lightmapCaptureGetEnergy*(capture: RID): float64 {.gcsafe, locks: 0.}
proc lightmapCaptureGetOctree*(capture: RID): PoolByteArray {.gcsafe, locks: 0.}
proc lightmapCaptureGetOctreeCellSubdiv*(capture: RID): int64 {.gcsafe, locks: 0.}
proc lightmapCaptureGetOctreeCellTransform*(capture: RID): Transform {.gcsafe,
    locks: 0.}
proc lightmapCaptureSetBounds*(capture: RID; bounds: AABB) {.gcsafe, locks: 0.}
proc lightmapCaptureSetEnergy*(capture: RID; energy: float64) {.gcsafe, locks: 0.}
proc lightmapCaptureSetOctree*(capture: RID; octree: PoolByteArray) {.gcsafe, locks: 0.}
proc lightmapCaptureSetOctreeCellSubdiv*(capture: RID; subdiv: int64) {.gcsafe,
    locks: 0.}
proc lightmapCaptureSetOctreeCellTransform*(capture: RID; xform: Transform) {.gcsafe,
    locks: 0.}
proc makeSphereMesh*(latitudes: int64; longitudes: int64; radius: float64): RID {.
    gcsafe, locks: 0.}
proc materialCreate*(): RID {.gcsafe, locks: 0.}
proc materialGetParam*(material: RID; parameter: string): Variant {.gcsafe, locks: 0.}
proc materialGetParamDefault*(material: RID; parameter: string): Variant {.gcsafe,
    locks: 0.}
proc materialGetShader*(shaderMaterial: RID): RID {.gcsafe, locks: 0.}
proc materialSetLineWidth*(material: RID; width: float64) {.gcsafe, locks: 0.}
proc materialSetNextPass*(material: RID; nextMaterial: RID) {.gcsafe, locks: 0.}
proc materialSetParam*(material: RID; parameter: string; value: Variant) {.gcsafe,
    locks: 0.}
proc materialSetRenderPriority*(material: RID; priority: int64) {.gcsafe, locks: 0.}
proc materialSetShader*(shaderMaterial: RID; shader: RID) {.gcsafe, locks: 0.}
proc meshAddSurfaceFromArrays*(mesh: RID; primitive: int64; arrays: Array;
                              blendShapes: Array = newArray();
                              compressFormat: int64 = 97280'i64) {.gcsafe, locks: 0.}
proc meshClear*(mesh: RID) {.gcsafe, locks: 0.}
proc meshCreate*(): RID {.gcsafe, locks: 0.}
proc meshGetBlendShapeCount*(mesh: RID): int64 {.gcsafe, locks: 0.}
proc meshGetBlendShapeMode*(mesh: RID): int64 {.gcsafe, locks: 0.}
proc meshGetCustomAabb*(mesh: RID): AABB {.gcsafe, locks: 0.}
proc meshGetSurfaceCount*(mesh: RID): int64 {.gcsafe, locks: 0.}
proc meshRemoveSurface*(mesh: RID; index: int64) {.gcsafe, locks: 0.}
proc meshSetBlendShapeCount*(mesh: RID; amount: int64) {.gcsafe, locks: 0.}
proc meshSetBlendShapeMode*(mesh: RID; mode: int64) {.gcsafe, locks: 0.}
proc meshSetCustomAabb*(mesh: RID; aabb: AABB) {.gcsafe, locks: 0.}
proc meshSurfaceGetAabb*(mesh: RID; surface: int64): AABB {.gcsafe, locks: 0.}
proc meshSurfaceGetArray*(mesh: RID; surface: int64): PoolByteArray {.gcsafe, locks: 0.}
proc meshSurfaceGetArrayIndexLen*(mesh: RID; surface: int64): int64 {.gcsafe, locks: 0.}
proc meshSurfaceGetArrayLen*(mesh: RID; surface: int64): int64 {.gcsafe, locks: 0.}
proc meshSurfaceGetArrays*(mesh: RID; surface: int64): Array {.gcsafe, locks: 0.}
proc meshSurfaceGetBlendShapeArrays*(mesh: RID; surface: int64): Array {.gcsafe,
    locks: 0.}
proc meshSurfaceGetFormat*(mesh: RID; surface: int64): int64 {.gcsafe, locks: 0.}
proc meshSurfaceGetFormatOffset*(format: int64; vertexLen: int64; indexLen: int64;
                                arrayIndex: int64): int64 {.gcsafe, locks: 0.}
proc meshSurfaceGetFormatStride*(format: int64; vertexLen: int64; indexLen: int64): int64 {.
    gcsafe, locks: 0.}
proc meshSurfaceGetIndexArray*(mesh: RID; surface: int64): PoolByteArray {.gcsafe,
    locks: 0.}
proc meshSurfaceGetMaterial*(mesh: RID; surface: int64): RID {.gcsafe, locks: 0.}
proc meshSurfaceGetPrimitiveType*(mesh: RID; surface: int64): int64 {.gcsafe, locks: 0.}
proc meshSurfaceGetSkeletonAabb*(mesh: RID; surface: int64): Array {.gcsafe, locks: 0.}
proc meshSurfaceSetMaterial*(mesh: RID; surface: int64; material: RID) {.gcsafe,
    locks: 0.}
proc meshSurfaceUpdateRegion*(mesh: RID; surface: int64; offset: int64;
                             data: PoolByteArray) {.gcsafe, locks: 0.}
proc multimeshAllocate*(multimesh: RID; instances: int64; transformFormat: int64;
                       colorFormat: int64; customDataFormat: int64 = 0'i64) {.gcsafe,
    locks: 0.}
proc multimeshCreate*(): RID {.gcsafe, locks: 0.}
proc multimeshGetAabb*(multimesh: RID): AABB {.gcsafe, locks: 0.}
proc multimeshGetInstanceCount*(multimesh: RID): int64 {.gcsafe, locks: 0.}
proc multimeshGetMesh*(multimesh: RID): RID {.gcsafe, locks: 0.}
proc multimeshGetVisibleInstances*(multimesh: RID): int64 {.gcsafe, locks: 0.}
proc multimeshInstanceGetColor*(multimesh: RID; index: int64): Color {.gcsafe, locks: 0.}
proc multimeshInstanceGetCustomData*(multimesh: RID; index: int64): Color {.gcsafe,
    locks: 0.}
proc multimeshInstanceGetTransform*(multimesh: RID; index: int64): Transform {.gcsafe,
    locks: 0.}
proc multimeshInstanceGetTransform2d*(multimesh: RID; index: int64): Transform2D {.
    gcsafe, locks: 0.}
proc multimeshInstanceSetColor*(multimesh: RID; index: int64; color: Color) {.gcsafe,
    locks: 0.}
proc multimeshInstanceSetCustomData*(multimesh: RID; index: int64; customData: Color) {.
    gcsafe, locks: 0.}
proc multimeshInstanceSetTransform*(multimesh: RID; index: int64;
                                   transform: Transform) {.gcsafe, locks: 0.}
proc multimeshInstanceSetTransform2d*(multimesh: RID; index: int64;
                                     transform: Transform2D) {.gcsafe, locks: 0.}
proc multimeshSetAsBulkArray*(multimesh: RID; array: PoolRealArray) {.gcsafe, locks: 0.}
proc multimeshSetMesh*(multimesh: RID; mesh: RID) {.gcsafe, locks: 0.}
proc multimeshSetVisibleInstances*(multimesh: RID; visible: int64) {.gcsafe, locks: 0.}
proc omniLightCreate*(): RID {.gcsafe, locks: 0.}
proc particlesCreate*(): RID {.gcsafe, locks: 0.}
proc particlesGetCurrentAabb*(particles: RID): AABB {.gcsafe, locks: 0.}
proc particlesGetEmitting*(particles: RID): bool {.gcsafe, locks: 0.}
proc particlesIsInactive*(particles: RID): bool {.gcsafe, locks: 0.}
proc particlesRequestProcess*(particles: RID) {.gcsafe, locks: 0.}
proc particlesRestart*(particles: RID) {.gcsafe, locks: 0.}
proc particlesSetAmount*(particles: RID; amount: int64) {.gcsafe, locks: 0.}
proc particlesSetCustomAabb*(particles: RID; aabb: AABB) {.gcsafe, locks: 0.}
proc particlesSetDrawOrder*(particles: RID; order: int64) {.gcsafe, locks: 0.}
proc particlesSetDrawPassMesh*(particles: RID; pass: int64; mesh: RID) {.gcsafe,
    locks: 0.}
proc particlesSetDrawPasses*(particles: RID; count: int64) {.gcsafe, locks: 0.}
proc particlesSetEmissionTransform*(particles: RID; transform: Transform) {.gcsafe,
    locks: 0.}
proc particlesSetEmitting*(particles: RID; emitting: bool) {.gcsafe, locks: 0.}
proc particlesSetExplosivenessRatio*(particles: RID; ratio: float64) {.gcsafe,
    locks: 0.}
proc particlesSetFixedFps*(particles: RID; fps: int64) {.gcsafe, locks: 0.}
proc particlesSetFractionalDelta*(particles: RID; enable: bool) {.gcsafe, locks: 0.}
proc particlesSetLifetime*(particles: RID; lifetime: float64) {.gcsafe, locks: 0.}
proc particlesSetOneShot*(particles: RID; oneShot: bool) {.gcsafe, locks: 0.}
proc particlesSetPreProcessTime*(particles: RID; time: float64) {.gcsafe, locks: 0.}
proc particlesSetProcessMaterial*(particles: RID; material: RID) {.gcsafe, locks: 0.}
proc particlesSetRandomnessRatio*(particles: RID; ratio: float64) {.gcsafe, locks: 0.}
proc particlesSetSpeedScale*(particles: RID; scale: float64) {.gcsafe, locks: 0.}
proc particlesSetUseLocalCoordinates*(particles: RID; enable: bool) {.gcsafe, locks: 0.}
proc reflectionProbeCreate*(): RID {.gcsafe, locks: 0.}
proc reflectionProbeSetAsInterior*(probe: RID; enable: bool) {.gcsafe, locks: 0.}
proc reflectionProbeSetCullMask*(probe: RID; layers: int64) {.gcsafe, locks: 0.}
proc reflectionProbeSetEnableBoxProjection*(probe: RID; enable: bool) {.gcsafe,
    locks: 0.}
proc reflectionProbeSetEnableShadows*(probe: RID; enable: bool) {.gcsafe, locks: 0.}
proc reflectionProbeSetExtents*(probe: RID; extents: Vector3) {.gcsafe, locks: 0.}
proc reflectionProbeSetIntensity*(probe: RID; intensity: float64) {.gcsafe, locks: 0.}
proc reflectionProbeSetInteriorAmbient*(probe: RID; color: Color) {.gcsafe, locks: 0.}
proc reflectionProbeSetInteriorAmbientEnergy*(probe: RID; energy: float64) {.gcsafe,
    locks: 0.}
proc reflectionProbeSetInteriorAmbientProbeContribution*(probe: RID;
    contrib: float64) {.gcsafe, locks: 0.}
proc reflectionProbeSetMaxDistance*(probe: RID; distance: float64) {.gcsafe, locks: 0.}
proc reflectionProbeSetOriginOffset*(probe: RID; offset: Vector3) {.gcsafe, locks: 0.}
proc reflectionProbeSetUpdateMode*(probe: RID; mode: int64) {.gcsafe, locks: 0.}
proc requestFrameDrawnCallback*(where: Object; methodd: string; userdata: Variant) {.
    gcsafe, locks: 0.}
proc scenarioCreate*(): RID {.gcsafe, locks: 0.}
proc scenarioSetDebug*(scenario: RID; debugMode: int64) {.gcsafe, locks: 0.}
proc scenarioSetEnvironment*(scenario: RID; environment: RID) {.gcsafe, locks: 0.}
proc scenarioSetFallbackEnvironment*(scenario: RID; environment: RID) {.gcsafe,
    locks: 0.}
proc scenarioSetReflectionAtlasSize*(scenario: RID; size: int64; subdiv: int64) {.
    gcsafe, locks: 0.}
proc setBootImage*(image: Image; color: Color; scale: bool; useFilter: bool = true) {.
    gcsafe, locks: 0.}
proc setDebugGenerateWireframes*(generate: bool) {.gcsafe, locks: 0.}
proc setDefaultClearColor*(color: Color) {.gcsafe, locks: 0.}
proc setRenderLoopEnabled*(enabled: bool) {.gcsafe, locks: 0.}
proc setShaderTimeScale*(scale: float64) {.gcsafe, locks: 0.}
proc shaderCreate*(): RID {.gcsafe, locks: 0.}
proc shaderGetCode*(shader: RID): string {.gcsafe, locks: 0.}
proc shaderGetDefaultTextureParam*(shader: RID; name: string): RID {.gcsafe, locks: 0.}
proc shaderGetParamList*(shader: RID): Array {.gcsafe, locks: 0.}
proc shaderSetCode*(shader: RID; code: string) {.gcsafe, locks: 0.}
proc shaderSetDefaultTextureParam*(shader: RID; name: string; texture: RID) {.gcsafe,
    locks: 0.}
proc skeletonAllocate*(skeleton: RID; bones: int64; is2dSkeleton: bool = false) {.gcsafe,
    locks: 0.}
proc skeletonBoneGetTransform*(skeleton: RID; bone: int64): Transform {.gcsafe,
    locks: 0.}
proc skeletonBoneGetTransform2d*(skeleton: RID; bone: int64): Transform2D {.gcsafe,
    locks: 0.}
proc skeletonBoneSetTransform*(skeleton: RID; bone: int64; transform: Transform) {.
    gcsafe, locks: 0.}
proc skeletonBoneSetTransform2d*(skeleton: RID; bone: int64; transform: Transform2D) {.
    gcsafe, locks: 0.}
proc skeletonCreate*(): RID {.gcsafe, locks: 0.}
proc skeletonGetBoneCount*(skeleton: RID): int64 {.gcsafe, locks: 0.}
proc skyCreate*(): RID {.gcsafe, locks: 0.}
proc skySetTexture*(sky: RID; cubeMap: RID; radianceSize: int64) {.gcsafe, locks: 0.}
proc spotLightCreate*(): RID {.gcsafe, locks: 0.}
proc sync*() {.gcsafe, locks: 0.}
proc textureAllocate*(texture: RID; width: int64; height: int64; depth3d: int64;
                     format: int64; typee: int64; flags: int64 = 7'i64) {.gcsafe,
    locks: 0.}
proc textureBind*(texture: RID; number: int64) {.gcsafe, locks: 0.}
proc textureCreate*(): RID {.gcsafe, locks: 0.}
proc textureCreateFromImage*(image: Image; flags: int64 = 7'i64): RID {.gcsafe, locks: 0.}
proc textureDebugUsage*(): Array {.gcsafe, locks: 0.}
proc textureGetData*(texture: RID; cubeSide: int64 = 0'i64): Image {.gcsafe, locks: 0.}
proc textureGetDepth*(texture: RID): int64 {.gcsafe, locks: 0.}
proc textureGetFlags*(texture: RID): int64 {.gcsafe, locks: 0.}
proc textureGetFormat*(texture: RID): int64 {.gcsafe, locks: 0.}
proc textureGetHeight*(texture: RID): int64 {.gcsafe, locks: 0.}
proc textureGetPath*(texture: RID): string {.gcsafe, locks: 0.}
proc textureGetTexid*(texture: RID): int64 {.gcsafe, locks: 0.}
proc textureGetType*(texture: RID): int64 {.gcsafe, locks: 0.}
proc textureGetWidth*(texture: RID): int64 {.gcsafe, locks: 0.}
proc textureSetData*(texture: RID; image: Image; layer: int64 = 0'i64) {.gcsafe, locks: 0.}
proc textureSetDataPartial*(texture: RID; image: Image; srcX: int64; srcY: int64;
                           srcW: int64; srcH: int64; dstX: int64; dstY: int64;
                           dstMip: int64; layer: int64 = 0'i64) {.gcsafe, locks: 0.}
proc textureSetFlags*(texture: RID; flags: int64) {.gcsafe, locks: 0.}
proc textureSetPath*(texture: RID; path: string) {.gcsafe, locks: 0.}
proc textureSetShrinkAllX2OnSetData*(shrink: bool) {.gcsafe, locks: 0.}
proc textureSetSizeOverride*(texture: RID; width: int64; height: int64; depth: int64) {.
    gcsafe, locks: 0.}
proc texturesKeepOriginal*(enable: bool) {.gcsafe, locks: 0.}
proc viewportAttachCamera*(viewport: RID; camera: RID) {.gcsafe, locks: 0.}
proc viewportAttachCanvas*(viewport: RID; canvas: RID) {.gcsafe, locks: 0.}
proc viewportAttachToScreen*(viewport: RID;
                            rect: Rect2 = initRect2(0.0, 0.0, 0.0, 0.0);
                            screen: int64 = 0'i64) {.gcsafe, locks: 0.}
proc viewportCreate*(): RID {.gcsafe, locks: 0.}
proc viewportDetach*(viewport: RID) {.gcsafe, locks: 0.}
proc viewportGetRenderInfo*(viewport: RID; info: int64): int64 {.gcsafe, locks: 0.}
proc viewportGetTexture*(viewport: RID): RID {.gcsafe, locks: 0.}
proc viewportRemoveCanvas*(viewport: RID; canvas: RID) {.gcsafe, locks: 0.}
proc viewportSetActive*(viewport: RID; active: bool) {.gcsafe, locks: 0.}
proc viewportSetCanvasStacking*(viewport: RID; canvas: RID; layer: int64;
                               sublayer: int64) {.gcsafe, locks: 0.}
proc viewportSetCanvasTransform*(viewport: RID; canvas: RID; offset: Transform2D) {.
    gcsafe, locks: 0.}
proc viewportSetClearMode*(viewport: RID; clearMode: int64) {.gcsafe, locks: 0.}
proc viewportSetDebugDraw*(viewport: RID; draw: int64) {.gcsafe, locks: 0.}
proc viewportSetDisable3d*(viewport: RID; disabled: bool) {.gcsafe, locks: 0.}
proc viewportSetDisableEnvironment*(viewport: RID; disabled: bool) {.gcsafe, locks: 0.}
proc viewportSetGlobalCanvasTransform*(viewport: RID; transform: Transform2D) {.
    gcsafe, locks: 0.}
proc viewportSetHdr*(viewport: RID; enabled: bool) {.gcsafe, locks: 0.}
proc viewportSetHideCanvas*(viewport: RID; hidden: bool) {.gcsafe, locks: 0.}
proc viewportSetHideScenario*(viewport: RID; hidden: bool) {.gcsafe, locks: 0.}
proc viewportSetMsaa*(viewport: RID; msaa: int64) {.gcsafe, locks: 0.}
proc viewportSetParentViewport*(viewport: RID; parentViewport: RID) {.gcsafe, locks: 0.}
proc viewportSetRenderDirectToScreen*(viewport: RID; enabled: bool) {.gcsafe, locks: 0.}
proc viewportSetScenario*(viewport: RID; scenario: RID) {.gcsafe, locks: 0.}
proc viewportSetShadowAtlasQuadrantSubdivision*(viewport: RID; quadrant: int64;
    subdivision: int64) {.gcsafe, locks: 0.}
proc viewportSetShadowAtlasSize*(viewport: RID; size: int64) {.gcsafe, locks: 0.}
proc viewportSetSize*(viewport: RID; width: int64; height: int64) {.gcsafe, locks: 0.}
proc viewportSetTransparentBackground*(viewport: RID; enabled: bool) {.gcsafe,
    locks: 0.}
proc viewportSetUpdateMode*(viewport: RID; updateMode: int64) {.gcsafe, locks: 0.}
proc viewportSetUsage*(viewport: RID; usage: int64) {.gcsafe, locks: 0.}
proc viewportSetUseArvr*(viewport: RID; useArvr: bool) {.gcsafe, locks: 0.}
proc viewportSetVflip*(viewport: RID; enabled: bool) {.gcsafe, locks: 0.}
var visualServerBlackBarsSetImagesMethodBind {.threadvar.}: ptr GodotMethodBind
proc blackBarsSetImages(left: RID; top: RID; right: RID; bottom: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerBlackBarsSetImagesMethodBind):
    visualServerBlackBarsSetImagesMethodBind = getMethod(cstring"VisualServer",
        cstring"black_bars_set_images")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(left)
  argsToPassToGodot[][1] = unsafeAddr(top)
  argsToPassToGodot[][2] = unsafeAddr(right)
  argsToPassToGodot[][3] = unsafeAddr(bottom)
  var ptrCallRet: pointer
  visualServerBlackBarsSetImagesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerBlackBarsSetMarginsMethodBind {.threadvar.}: ptr GodotMethodBind
proc blackBarsSetMargins(left: int64; top: int64; right: int64; bottom: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerBlackBarsSetMarginsMethodBind):
    visualServerBlackBarsSetMarginsMethodBind = getMethod(cstring"VisualServer",
        cstring"black_bars_set_margins")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(left)
  argsToPassToGodot[][1] = unsafeAddr(top)
  argsToPassToGodot[][2] = unsafeAddr(right)
  argsToPassToGodot[][3] = unsafeAddr(bottom)
  var ptrCallRet: pointer
  visualServerBlackBarsSetMarginsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCameraCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraCreateMethodBind):
    visualServerCameraCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"camera_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerCameraCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerCameraSetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraSetCullMask(camera: RID; layers: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraSetCullMaskMethodBind):
    visualServerCameraSetCullMaskMethodBind = getMethod(cstring"VisualServer",
        cstring"camera_set_cull_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(camera)
  argsToPassToGodot[][1] = unsafeAddr(layers)
  var ptrCallRet: pointer
  visualServerCameraSetCullMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCameraSetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraSetEnvironment(camera: RID; env: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraSetEnvironmentMethodBind):
    visualServerCameraSetEnvironmentMethodBind = getMethod(cstring"VisualServer",
        cstring"camera_set_environment")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(camera)
  argsToPassToGodot[][1] = unsafeAddr(env)
  var ptrCallRet: pointer
  visualServerCameraSetEnvironmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCameraSetFrustumMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraSetFrustum(camera: RID; size: float64; offset: Vector2; zNear: float64;
                     zFar: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraSetFrustumMethodBind):
    visualServerCameraSetFrustumMethodBind = getMethod(cstring"VisualServer",
        cstring"camera_set_frustum")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(camera)
  argsToPassToGodot[][1] = unsafeAddr(size)
  argsToPassToGodot[][2] = unsafeAddr(offset)
  argsToPassToGodot[][3] = unsafeAddr(zNear)
  argsToPassToGodot[][4] = unsafeAddr(zFar)
  var ptrCallRet: pointer
  visualServerCameraSetFrustumMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCameraSetOrthogonalMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraSetOrthogonal(camera: RID; size: float64; zNear: float64; zFar: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraSetOrthogonalMethodBind):
    visualServerCameraSetOrthogonalMethodBind = getMethod(cstring"VisualServer",
        cstring"camera_set_orthogonal")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(camera)
  argsToPassToGodot[][1] = unsafeAddr(size)
  argsToPassToGodot[][2] = unsafeAddr(zNear)
  argsToPassToGodot[][3] = unsafeAddr(zFar)
  var ptrCallRet: pointer
  visualServerCameraSetOrthogonalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCameraSetPerspectiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraSetPerspective(camera: RID; fovyDegrees: float64; zNear: float64;
                         zFar: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraSetPerspectiveMethodBind):
    visualServerCameraSetPerspectiveMethodBind = getMethod(cstring"VisualServer",
        cstring"camera_set_perspective")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(camera)
  argsToPassToGodot[][1] = unsafeAddr(fovyDegrees)
  argsToPassToGodot[][2] = unsafeAddr(zNear)
  argsToPassToGodot[][3] = unsafeAddr(zFar)
  var ptrCallRet: pointer
  visualServerCameraSetPerspectiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCameraSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraSetTransform(camera: RID; transform: Transform) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraSetTransformMethodBind):
    visualServerCameraSetTransformMethodBind = getMethod(cstring"VisualServer",
        cstring"camera_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(camera)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerCameraSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCameraSetUseVerticalAspectMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameraSetUseVerticalAspect(camera: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCameraSetUseVerticalAspectMethodBind):
    visualServerCameraSetUseVerticalAspectMethodBind = getMethod(
        cstring"VisualServer", cstring"camera_set_use_vertical_aspect")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(camera)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerCameraSetUseVerticalAspectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasCreateMethodBind):
    visualServerCanvasCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerCanvasCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerCanvasItemAddCircleMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddCircle(item: RID; pos: Vector2; radius: float64; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddCircleMethodBind):
    visualServerCanvasItemAddCircleMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_add_circle")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(pos)
  argsToPassToGodot[][2] = unsafeAddr(radius)
  argsToPassToGodot[][3] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerCanvasItemAddCircleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddClipIgnoreMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddClipIgnore(item: RID; ignore: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddClipIgnoreMethodBind):
    visualServerCanvasItemAddClipIgnoreMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_clip_ignore")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(ignore)
  var ptrCallRet: pointer
  visualServerCanvasItemAddClipIgnoreMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddLine(item: RID; fromm: Vector2; to: Vector2; color: Color;
                      width: float64 = 1.0; antialiased: bool = false) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddLineMethodBind):
    visualServerCanvasItemAddLineMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_add_line")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(fromm)
  argsToPassToGodot[][2] = unsafeAddr(to)
  argsToPassToGodot[][3] = unsafeAddr(color)
  argsToPassToGodot[][4] = unsafeAddr(width)
  argsToPassToGodot[][5] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  visualServerCanvasItemAddLineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddMesh(item: RID; mesh: RID; transform: Transform2D = initTransform2D(
    vec2(1.0, 0.0), vec2(0.0, 1.0), vec2(0.0, 0.0));
                      modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                      texture: RID = initRID(); normalMap: RID = initRID()) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddMeshMethodBind):
    visualServerCanvasItemAddMeshMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_add_mesh")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(mesh)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  argsToPassToGodot[][4] = unsafeAddr(texture)
  argsToPassToGodot[][5] = unsafeAddr(normalMap)
  var ptrCallRet: pointer
  visualServerCanvasItemAddMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddMultimeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddMultimesh(item: RID; mesh: RID; texture: RID;
                           normalMap: RID = initRID()) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddMultimeshMethodBind):
    visualServerCanvasItemAddMultimeshMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_multimesh")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(mesh)
  argsToPassToGodot[][2] = unsafeAddr(texture)
  argsToPassToGodot[][3] = unsafeAddr(normalMap)
  var ptrCallRet: pointer
  visualServerCanvasItemAddMultimeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddNinePatchMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddNinePatch(item: RID; rect: Rect2; source: Rect2; texture: RID;
                           topleft: Vector2; bottomright: Vector2;
                           xAxisMode: int64 = 0'i64; yAxisMode: int64 = 0'i64;
                           drawCenter: bool = true;
                           modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                           normalMap: RID = initRID()) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddNinePatchMethodBind):
    visualServerCanvasItemAddNinePatchMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_nine_patch")
  var
    argsStatic: array[11, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(source)
  argsToPassToGodot[][3] = unsafeAddr(texture)
  argsToPassToGodot[][4] = unsafeAddr(topleft)
  argsToPassToGodot[][5] = unsafeAddr(bottomright)
  argsToPassToGodot[][6] = unsafeAddr(xAxisMode)
  argsToPassToGodot[][7] = unsafeAddr(yAxisMode)
  argsToPassToGodot[][8] = unsafeAddr(drawCenter)
  argsToPassToGodot[][9] = unsafeAddr(modulate)
  argsToPassToGodot[][10] = unsafeAddr(normalMap)
  var ptrCallRet: pointer
  visualServerCanvasItemAddNinePatchMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddParticlesMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddParticles(item: RID; particles: RID; texture: RID; normalMap: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddParticlesMethodBind):
    visualServerCanvasItemAddParticlesMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_particles")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(particles)
  argsToPassToGodot[][2] = unsafeAddr(texture)
  argsToPassToGodot[][3] = unsafeAddr(normalMap)
  var ptrCallRet: pointer
  visualServerCanvasItemAddParticlesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddPolygon(item: RID; points: PoolVector2Array;
                         colors: PoolColorArray;
                         uvs: PoolVector2Array = newPoolVector2Array();
                         texture: RID = initRID(); normalMap: RID = initRID();
                         antialiased: bool = false) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddPolygonMethodBind):
    visualServerCanvasItemAddPolygonMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_add_polygon")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = points.godotPoolVector2Array
  argsToPassToGodot[][2] = colors.godotPoolColorArray
  argsToPassToGodot[][3] = uvs.godotPoolVector2Array
  argsToPassToGodot[][4] = unsafeAddr(texture)
  argsToPassToGodot[][5] = unsafeAddr(normalMap)
  argsToPassToGodot[][6] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  visualServerCanvasItemAddPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddPolylineMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddPolyline(item: RID; points: PoolVector2Array;
                          colors: PoolColorArray; width: float64 = 1.0;
                          antialiased: bool = false) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddPolylineMethodBind):
    visualServerCanvasItemAddPolylineMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_polyline")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = points.godotPoolVector2Array
  argsToPassToGodot[][2] = colors.godotPoolColorArray
  argsToPassToGodot[][3] = unsafeAddr(width)
  argsToPassToGodot[][4] = unsafeAddr(antialiased)
  var ptrCallRet: pointer
  visualServerCanvasItemAddPolylineMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddPrimitiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddPrimitive(item: RID; points: PoolVector2Array;
                           colors: PoolColorArray; uvs: PoolVector2Array;
                           texture: RID; width: float64 = 1.0;
                           normalMap: RID = initRID()) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddPrimitiveMethodBind):
    visualServerCanvasItemAddPrimitiveMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_primitive")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = points.godotPoolVector2Array
  argsToPassToGodot[][2] = colors.godotPoolColorArray
  argsToPassToGodot[][3] = uvs.godotPoolVector2Array
  argsToPassToGodot[][4] = unsafeAddr(texture)
  argsToPassToGodot[][5] = unsafeAddr(width)
  argsToPassToGodot[][6] = unsafeAddr(normalMap)
  var ptrCallRet: pointer
  visualServerCanvasItemAddPrimitiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddRect(item: RID; rect: Rect2; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddRectMethodBind):
    visualServerCanvasItemAddRectMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_add_rect")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerCanvasItemAddRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddSetTransform(item: RID; transform: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddSetTransformMethodBind):
    visualServerCanvasItemAddSetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerCanvasItemAddSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddTextureRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddTextureRect(item: RID; rect: Rect2; texture: RID; tile: bool = false;
                             modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                             transpose: bool = false; normalMap: RID = initRID()) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddTextureRectMethodBind):
    visualServerCanvasItemAddTextureRectMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_texture_rect")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(texture)
  argsToPassToGodot[][3] = unsafeAddr(tile)
  argsToPassToGodot[][4] = unsafeAddr(modulate)
  argsToPassToGodot[][5] = unsafeAddr(transpose)
  argsToPassToGodot[][6] = unsafeAddr(normalMap)
  var ptrCallRet: pointer
  visualServerCanvasItemAddTextureRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddTextureRectRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddTextureRectRegion(item: RID; rect: Rect2; texture: RID;
                                   srcRect: Rect2; modulate: Color = initColor(1.0,
    1.0, 1.0, 1.0); transpose: bool = false; normalMap: RID = initRID();
                                   clipUv: bool = true) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddTextureRectRegionMethodBind):
    visualServerCanvasItemAddTextureRectRegionMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_texture_rect_region")
  var
    argsStatic: array[8, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(texture)
  argsToPassToGodot[][3] = unsafeAddr(srcRect)
  argsToPassToGodot[][4] = unsafeAddr(modulate)
  argsToPassToGodot[][5] = unsafeAddr(transpose)
  argsToPassToGodot[][6] = unsafeAddr(normalMap)
  argsToPassToGodot[][7] = unsafeAddr(clipUv)
  var ptrCallRet: pointer
  visualServerCanvasItemAddTextureRectRegionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemAddTriangleArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemAddTriangleArray(item: RID; indices: PoolIntArray;
                               points: PoolVector2Array; colors: PoolColorArray;
                               uvs: PoolVector2Array = newPoolVector2Array();
                               bones: PoolIntArray = newPoolIntArray();
                               weights: PoolRealArray = newPoolRealArray();
                               texture: RID = initRID(); count: int64 = -1'i64;
                               normalMap: RID = initRID();
                               antialiased: bool = false;
                               antialiasingUseIndices: bool = false) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemAddTriangleArrayMethodBind):
    visualServerCanvasItemAddTriangleArrayMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_add_triangle_array")
  var
    argsStatic: array[12, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = indices.godotPoolIntArray
  argsToPassToGodot[][2] = points.godotPoolVector2Array
  argsToPassToGodot[][3] = colors.godotPoolColorArray
  argsToPassToGodot[][4] = uvs.godotPoolVector2Array
  argsToPassToGodot[][5] = bones.godotPoolIntArray
  argsToPassToGodot[][6] = weights.godotPoolRealArray
  argsToPassToGodot[][7] = unsafeAddr(texture)
  argsToPassToGodot[][8] = unsafeAddr(count)
  argsToPassToGodot[][9] = unsafeAddr(normalMap)
  argsToPassToGodot[][10] = unsafeAddr(antialiased)
  argsToPassToGodot[][11] = unsafeAddr(antialiasingUseIndices)
  var ptrCallRet: pointer
  visualServerCanvasItemAddTriangleArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemClear(item: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemClearMethodBind):
    visualServerCanvasItemClearMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_clear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  var ptrCallRet: pointer
  visualServerCanvasItemClearMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemCreateMethodBind):
    visualServerCanvasItemCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerCanvasItemCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerCanvasItemSetClipMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetClip(item: RID; clip: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetClipMethodBind):
    visualServerCanvasItemSetClipMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_set_clip")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(clip)
  var ptrCallRet: pointer
  visualServerCanvasItemSetClipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetCopyToBackbufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetCopyToBackbuffer(item: RID; enabled: bool; rect: Rect2) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetCopyToBackbufferMethodBind):
    visualServerCanvasItemSetCopyToBackbufferMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_copy_to_backbuffer")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  argsToPassToGodot[][2] = unsafeAddr(rect)
  var ptrCallRet: pointer
  visualServerCanvasItemSetCopyToBackbufferMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetCustomRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetCustomRect(item: RID; useCustomRect: bool;
                            rect: Rect2 = initRect2(0.0, 0.0, 0.0, 0.0)) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetCustomRectMethodBind):
    visualServerCanvasItemSetCustomRectMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_custom_rect")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(useCustomRect)
  argsToPassToGodot[][2] = unsafeAddr(rect)
  var ptrCallRet: pointer
  visualServerCanvasItemSetCustomRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetDistanceFieldModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetDistanceFieldMode(item: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetDistanceFieldModeMethodBind):
    visualServerCanvasItemSetDistanceFieldModeMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_distance_field_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasItemSetDistanceFieldModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetDrawBehindParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetDrawBehindParent(item: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetDrawBehindParentMethodBind):
    visualServerCanvasItemSetDrawBehindParentMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_draw_behind_parent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasItemSetDrawBehindParentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetDrawIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetDrawIndex(item: RID; index: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetDrawIndexMethodBind):
    visualServerCanvasItemSetDrawIndexMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_draw_index")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  visualServerCanvasItemSetDrawIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetLightMask(item: RID; mask: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetLightMaskMethodBind):
    visualServerCanvasItemSetLightMaskMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_light_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  visualServerCanvasItemSetLightMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetMaterial(item: RID; material: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetMaterialMethodBind):
    visualServerCanvasItemSetMaterialMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(material)
  var ptrCallRet: pointer
  visualServerCanvasItemSetMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetModulate(item: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetModulateMethodBind):
    visualServerCanvasItemSetModulateMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_modulate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerCanvasItemSetModulateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetParent(item: RID; parent: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetParentMethodBind):
    visualServerCanvasItemSetParentMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_set_parent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(parent)
  var ptrCallRet: pointer
  visualServerCanvasItemSetParentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetSelfModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetSelfModulate(item: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetSelfModulateMethodBind):
    visualServerCanvasItemSetSelfModulateMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_self_modulate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerCanvasItemSetSelfModulateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetSortChildrenByYMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetSortChildrenByY(item: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetSortChildrenByYMethodBind):
    visualServerCanvasItemSetSortChildrenByYMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_sort_children_by_y")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasItemSetSortChildrenByYMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetTransform(item: RID; transform: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetTransformMethodBind):
    visualServerCanvasItemSetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerCanvasItemSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetUseParentMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetUseParentMaterial(item: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetUseParentMaterialMethodBind):
    visualServerCanvasItemSetUseParentMaterialMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_use_parent_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasItemSetUseParentMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetVisible(item: RID; visible: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetVisibleMethodBind):
    visualServerCanvasItemSetVisibleMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_set_visible")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(visible)
  var ptrCallRet: pointer
  visualServerCanvasItemSetVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetZAsRelativeToParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetZAsRelativeToParent(item: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetZAsRelativeToParentMethodBind):
    visualServerCanvasItemSetZAsRelativeToParentMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_item_set_z_as_relative_to_parent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasItemSetZAsRelativeToParentMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasItemSetZIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasItemSetZIndex(item: RID; zIndex: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasItemSetZIndexMethodBind):
    visualServerCanvasItemSetZIndexMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_item_set_z_index")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(item)
  argsToPassToGodot[][1] = unsafeAddr(zIndex)
  var ptrCallRet: pointer
  visualServerCanvasItemSetZIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightAttachToCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightAttachToCanvas(light: RID; canvas: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightAttachToCanvasMethodBind):
    visualServerCanvasLightAttachToCanvasMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_attach_to_canvas")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(canvas)
  var ptrCallRet: pointer
  visualServerCanvasLightAttachToCanvasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightCreateMethodBind):
    visualServerCanvasLightCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_light_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerCanvasLightCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualServerCanvasLightOccluderAttachToCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightOccluderAttachToCanvas(occluder: RID; canvas: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightOccluderAttachToCanvasMethodBind):
    visualServerCanvasLightOccluderAttachToCanvasMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_occluder_attach_to_canvas")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluder)
  argsToPassToGodot[][1] = unsafeAddr(canvas)
  var ptrCallRet: pointer
  visualServerCanvasLightOccluderAttachToCanvasMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightOccluderCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightOccluderCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightOccluderCreateMethodBind):
    visualServerCanvasLightOccluderCreateMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_occluder_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerCanvasLightOccluderCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualServerCanvasLightOccluderSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightOccluderSetEnabled(occluder: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightOccluderSetEnabledMethodBind):
    visualServerCanvasLightOccluderSetEnabledMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_occluder_set_enabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluder)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasLightOccluderSetEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightOccluderSetLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightOccluderSetLightMask(occluder: RID; mask: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightOccluderSetLightMaskMethodBind):
    visualServerCanvasLightOccluderSetLightMaskMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_occluder_set_light_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluder)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  visualServerCanvasLightOccluderSetLightMaskMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightOccluderSetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightOccluderSetPolygon(occluder: RID; polygon: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightOccluderSetPolygonMethodBind):
    visualServerCanvasLightOccluderSetPolygonMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_occluder_set_polygon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluder)
  argsToPassToGodot[][1] = unsafeAddr(polygon)
  var ptrCallRet: pointer
  visualServerCanvasLightOccluderSetPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightOccluderSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightOccluderSetTransform(occluder: RID; transform: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightOccluderSetTransformMethodBind):
    visualServerCanvasLightOccluderSetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_occluder_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluder)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerCanvasLightOccluderSetTransformMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetColor(light: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetColorMethodBind):
    visualServerCanvasLightSetColorMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_light_set_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerCanvasLightSetColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetEnabled(light: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetEnabledMethodBind):
    visualServerCanvasLightSetEnabledMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_enabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasLightSetEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetEnergy(light: RID; energy: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetEnergyMethodBind):
    visualServerCanvasLightSetEnergyMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_light_set_energy")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(energy)
  var ptrCallRet: pointer
  visualServerCanvasLightSetEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetHeight(light: RID; height: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetHeightMethodBind):
    visualServerCanvasLightSetHeightMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_light_set_height")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(height)
  var ptrCallRet: pointer
  visualServerCanvasLightSetHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetItemCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetItemCullMask(light: RID; mask: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetItemCullMaskMethodBind):
    visualServerCanvasLightSetItemCullMaskMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_item_cull_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  visualServerCanvasLightSetItemCullMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetItemShadowCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetItemShadowCullMask(light: RID; mask: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetItemShadowCullMaskMethodBind):
    visualServerCanvasLightSetItemShadowCullMaskMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_item_shadow_cull_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  visualServerCanvasLightSetItemShadowCullMaskMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetLayerRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetLayerRange(light: RID; minLayer: int64; maxLayer: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetLayerRangeMethodBind):
    visualServerCanvasLightSetLayerRangeMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_layer_range")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(minLayer)
  argsToPassToGodot[][2] = unsafeAddr(maxLayer)
  var ptrCallRet: pointer
  visualServerCanvasLightSetLayerRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetMode(light: RID; mode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetModeMethodBind):
    visualServerCanvasLightSetModeMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_light_set_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  visualServerCanvasLightSetModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetScale(light: RID; scale: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetScaleMethodBind):
    visualServerCanvasLightSetScaleMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_light_set_scale")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(scale)
  var ptrCallRet: pointer
  visualServerCanvasLightSetScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetShadowBufferSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetShadowBufferSize(light: RID; size: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetShadowBufferSizeMethodBind):
    visualServerCanvasLightSetShadowBufferSizeMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_shadow_buffer_size")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(size)
  var ptrCallRet: pointer
  visualServerCanvasLightSetShadowBufferSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetShadowColor(light: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetShadowColorMethodBind):
    visualServerCanvasLightSetShadowColorMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_shadow_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerCanvasLightSetShadowColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetShadowEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetShadowEnabled(light: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetShadowEnabledMethodBind):
    visualServerCanvasLightSetShadowEnabledMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_shadow_enabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerCanvasLightSetShadowEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetShadowFilterMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetShadowFilter(light: RID; filter: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetShadowFilterMethodBind):
    visualServerCanvasLightSetShadowFilterMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_shadow_filter")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(filter)
  var ptrCallRet: pointer
  visualServerCanvasLightSetShadowFilterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetShadowGradientLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetShadowGradientLength(light: RID; length: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetShadowGradientLengthMethodBind):
    visualServerCanvasLightSetShadowGradientLengthMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_shadow_gradient_length")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(length)
  var ptrCallRet: pointer
  visualServerCanvasLightSetShadowGradientLengthMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetShadowSmoothMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetShadowSmooth(light: RID; smooth: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetShadowSmoothMethodBind):
    visualServerCanvasLightSetShadowSmoothMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_shadow_smooth")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(smooth)
  var ptrCallRet: pointer
  visualServerCanvasLightSetShadowSmoothMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetTexture(light: RID; texture: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetTextureMethodBind):
    visualServerCanvasLightSetTextureMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_texture")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(texture)
  var ptrCallRet: pointer
  visualServerCanvasLightSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetTextureOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetTextureOffset(light: RID; offset: Vector2) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetTextureOffsetMethodBind):
    visualServerCanvasLightSetTextureOffsetMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_texture_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  var ptrCallRet: pointer
  visualServerCanvasLightSetTextureOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetTransform(light: RID; transform: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetTransformMethodBind):
    visualServerCanvasLightSetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_light_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerCanvasLightSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasLightSetZRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasLightSetZRange(light: RID; minZ: int64; maxZ: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasLightSetZRangeMethodBind):
    visualServerCanvasLightSetZRangeMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_light_set_z_range")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(minZ)
  argsToPassToGodot[][2] = unsafeAddr(maxZ)
  var ptrCallRet: pointer
  visualServerCanvasLightSetZRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasOccluderPolygonCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasOccluderPolygonCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasOccluderPolygonCreateMethodBind):
    visualServerCanvasOccluderPolygonCreateMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_occluder_polygon_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerCanvasOccluderPolygonCreateMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualServerCanvasOccluderPolygonSetCullModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasOccluderPolygonSetCullMode(occluderPolygon: RID; mode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasOccluderPolygonSetCullModeMethodBind):
    visualServerCanvasOccluderPolygonSetCullModeMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_occluder_polygon_set_cull_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluderPolygon)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  visualServerCanvasOccluderPolygonSetCullModeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasOccluderPolygonSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasOccluderPolygonSetShape(occluderPolygon: RID; shape: PoolVector2Array;
                                  closed: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasOccluderPolygonSetShapeMethodBind):
    visualServerCanvasOccluderPolygonSetShapeMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_occluder_polygon_set_shape")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluderPolygon)
  argsToPassToGodot[][1] = shape.godotPoolVector2Array
  argsToPassToGodot[][2] = unsafeAddr(closed)
  var ptrCallRet: pointer
  visualServerCanvasOccluderPolygonSetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasOccluderPolygonSetShapeAsLinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasOccluderPolygonSetShapeAsLines(occluderPolygon: RID;
    shape: PoolVector2Array) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasOccluderPolygonSetShapeAsLinesMethodBind):
    visualServerCanvasOccluderPolygonSetShapeAsLinesMethodBind = getMethod(
        cstring"VisualServer",
        cstring"canvas_occluder_polygon_set_shape_as_lines")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(occluderPolygon)
  argsToPassToGodot[][1] = shape.godotPoolVector2Array
  var ptrCallRet: pointer
  visualServerCanvasOccluderPolygonSetShapeAsLinesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerCanvasSetItemMirroringMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasSetItemMirroring(canvas: RID; item: RID; mirroring: Vector2) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasSetItemMirroringMethodBind):
    visualServerCanvasSetItemMirroringMethodBind = getMethod(
        cstring"VisualServer", cstring"canvas_set_item_mirroring")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvas)
  argsToPassToGodot[][1] = unsafeAddr(item)
  argsToPassToGodot[][2] = unsafeAddr(mirroring)
  var ptrCallRet: pointer
  visualServerCanvasSetItemMirroringMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerCanvasSetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc canvasSetModulate(canvas: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerCanvasSetModulateMethodBind):
    visualServerCanvasSetModulateMethodBind = getMethod(cstring"VisualServer",
        cstring"canvas_set_modulate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvas)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerCanvasSetModulateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerDirectionalLightCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc directionalLightCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerDirectionalLightCreateMethodBind):
    visualServerDirectionalLightCreateMethodBind = getMethod(
        cstring"VisualServer", cstring"directional_light_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerDirectionalLightCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualServerDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc draw(swapBuffers: bool = true; frameStep: float64 = 0.0) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerDrawMethodBind):
    visualServerDrawMethodBind = getMethod(cstring"VisualServer", cstring"draw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(swapBuffers)
  argsToPassToGodot[][1] = unsafeAddr(frameStep)
  var ptrCallRet: pointer
  visualServerDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var visualServerEnvironmentCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentCreateMethodBind):
    visualServerEnvironmentCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"environment_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerEnvironmentCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualServerEnvironmentSetAdjustmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetAdjustment(env: RID; enable: bool; brightness: float64;
                             contrast: float64; saturation: float64; ramp: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetAdjustmentMethodBind):
    visualServerEnvironmentSetAdjustmentMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_adjustment")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(brightness)
  argsToPassToGodot[][3] = unsafeAddr(contrast)
  argsToPassToGodot[][4] = unsafeAddr(saturation)
  argsToPassToGodot[][5] = unsafeAddr(ramp)
  var ptrCallRet: pointer
  visualServerEnvironmentSetAdjustmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetAmbientLightMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetAmbientLight(env: RID; color: Color; energy: float64 = 1.0;
                               skyContibution: float64 = 0.0) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetAmbientLightMethodBind):
    visualServerEnvironmentSetAmbientLightMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_ambient_light")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = unsafeAddr(energy)
  argsToPassToGodot[][3] = unsafeAddr(skyContibution)
  var ptrCallRet: pointer
  visualServerEnvironmentSetAmbientLightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetBackgroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetBackground(env: RID; bg: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetBackgroundMethodBind):
    visualServerEnvironmentSetBackgroundMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_background")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(bg)
  var ptrCallRet: pointer
  visualServerEnvironmentSetBackgroundMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetBgColor(env: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetBgColorMethodBind):
    visualServerEnvironmentSetBgColorMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_bg_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerEnvironmentSetBgColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetBgEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetBgEnergy(env: RID; energy: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetBgEnergyMethodBind):
    visualServerEnvironmentSetBgEnergyMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_bg_energy")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(energy)
  var ptrCallRet: pointer
  visualServerEnvironmentSetBgEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetCanvasMaxLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetCanvasMaxLayer(env: RID; maxLayer: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetCanvasMaxLayerMethodBind):
    visualServerEnvironmentSetCanvasMaxLayerMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_canvas_max_layer")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(maxLayer)
  var ptrCallRet: pointer
  visualServerEnvironmentSetCanvasMaxLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetDofBlurFarMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetDofBlurFar(env: RID; enable: bool; distance: float64;
                             transition: float64; farAmount: float64; quality: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetDofBlurFarMethodBind):
    visualServerEnvironmentSetDofBlurFarMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_dof_blur_far")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(distance)
  argsToPassToGodot[][3] = unsafeAddr(transition)
  argsToPassToGodot[][4] = unsafeAddr(farAmount)
  argsToPassToGodot[][5] = unsafeAddr(quality)
  var ptrCallRet: pointer
  visualServerEnvironmentSetDofBlurFarMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetDofBlurNearMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetDofBlurNear(env: RID; enable: bool; distance: float64;
                              transition: float64; farAmount: float64;
                              quality: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetDofBlurNearMethodBind):
    visualServerEnvironmentSetDofBlurNearMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_dof_blur_near")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(distance)
  argsToPassToGodot[][3] = unsafeAddr(transition)
  argsToPassToGodot[][4] = unsafeAddr(farAmount)
  argsToPassToGodot[][5] = unsafeAddr(quality)
  var ptrCallRet: pointer
  visualServerEnvironmentSetDofBlurNearMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetFogMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetFog(env: RID; enable: bool; color: Color; sunColor: Color;
                      sunAmount: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetFogMethodBind):
    visualServerEnvironmentSetFogMethodBind = getMethod(cstring"VisualServer",
        cstring"environment_set_fog")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(color)
  argsToPassToGodot[][3] = unsafeAddr(sunColor)
  argsToPassToGodot[][4] = unsafeAddr(sunAmount)
  var ptrCallRet: pointer
  visualServerEnvironmentSetFogMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetFogDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetFogDepth(env: RID; enable: bool; depthBegin: float64;
                           depthEnd: float64; depthCurve: float64; transmit: bool;
                           transmitCurve: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetFogDepthMethodBind):
    visualServerEnvironmentSetFogDepthMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_fog_depth")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(depthBegin)
  argsToPassToGodot[][3] = unsafeAddr(depthEnd)
  argsToPassToGodot[][4] = unsafeAddr(depthCurve)
  argsToPassToGodot[][5] = unsafeAddr(transmit)
  argsToPassToGodot[][6] = unsafeAddr(transmitCurve)
  var ptrCallRet: pointer
  visualServerEnvironmentSetFogDepthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetFogHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetFogHeight(env: RID; enable: bool; minHeight: float64;
                            maxHeight: float64; heightCurve: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetFogHeightMethodBind):
    visualServerEnvironmentSetFogHeightMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_fog_height")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(minHeight)
  argsToPassToGodot[][3] = unsafeAddr(maxHeight)
  argsToPassToGodot[][4] = unsafeAddr(heightCurve)
  var ptrCallRet: pointer
  visualServerEnvironmentSetFogHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetGlowMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetGlow(env: RID; enable: bool; levelFlags: int64; intensity: float64;
                       strength: float64; bloomThreshold: float64; blendMode: int64;
                       hdrBleedThreshold: float64; hdrBleedScale: float64;
                       hdrLuminanceCap: float64; bicubicUpscale: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetGlowMethodBind):
    visualServerEnvironmentSetGlowMethodBind = getMethod(cstring"VisualServer",
        cstring"environment_set_glow")
  var
    argsStatic: array[11, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(levelFlags)
  argsToPassToGodot[][3] = unsafeAddr(intensity)
  argsToPassToGodot[][4] = unsafeAddr(strength)
  argsToPassToGodot[][5] = unsafeAddr(bloomThreshold)
  argsToPassToGodot[][6] = unsafeAddr(blendMode)
  argsToPassToGodot[][7] = unsafeAddr(hdrBleedThreshold)
  argsToPassToGodot[][8] = unsafeAddr(hdrBleedScale)
  argsToPassToGodot[][9] = unsafeAddr(hdrLuminanceCap)
  argsToPassToGodot[][10] = unsafeAddr(bicubicUpscale)
  var ptrCallRet: pointer
  visualServerEnvironmentSetGlowMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetSkyMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetSky(env: RID; sky: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetSkyMethodBind):
    visualServerEnvironmentSetSkyMethodBind = getMethod(cstring"VisualServer",
        cstring"environment_set_sky")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(sky)
  var ptrCallRet: pointer
  visualServerEnvironmentSetSkyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetSkyCustomFovMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetSkyCustomFov(env: RID; scale: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetSkyCustomFovMethodBind):
    visualServerEnvironmentSetSkyCustomFovMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_sky_custom_fov")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(scale)
  var ptrCallRet: pointer
  visualServerEnvironmentSetSkyCustomFovMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetSkyOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetSkyOrientation(env: RID; orientation: Basis) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetSkyOrientationMethodBind):
    visualServerEnvironmentSetSkyOrientationMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_sky_orientation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(orientation)
  var ptrCallRet: pointer
  visualServerEnvironmentSetSkyOrientationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetSsaoMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetSsao(env: RID; enable: bool; radius: float64; intensity: float64;
                       radius2: float64; intensity2: float64; bias: float64;
                       lightAffect: float64; aoChannelAffect: float64; color: Color;
                       quality: int64; blur: int64; bilateralSharpness: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetSsaoMethodBind):
    visualServerEnvironmentSetSsaoMethodBind = getMethod(cstring"VisualServer",
        cstring"environment_set_ssao")
  var
    argsStatic: array[13, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(radius)
  argsToPassToGodot[][3] = unsafeAddr(intensity)
  argsToPassToGodot[][4] = unsafeAddr(radius2)
  argsToPassToGodot[][5] = unsafeAddr(intensity2)
  argsToPassToGodot[][6] = unsafeAddr(bias)
  argsToPassToGodot[][7] = unsafeAddr(lightAffect)
  argsToPassToGodot[][8] = unsafeAddr(aoChannelAffect)
  argsToPassToGodot[][9] = unsafeAddr(color)
  argsToPassToGodot[][10] = unsafeAddr(quality)
  argsToPassToGodot[][11] = unsafeAddr(blur)
  argsToPassToGodot[][12] = unsafeAddr(bilateralSharpness)
  var ptrCallRet: pointer
  visualServerEnvironmentSetSsaoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetSsrMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetSsr(env: RID; enable: bool; maxSteps: int64; fadeIn: float64;
                      fadeOut: float64; depthTolerance: float64; roughness: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetSsrMethodBind):
    visualServerEnvironmentSetSsrMethodBind = getMethod(cstring"VisualServer",
        cstring"environment_set_ssr")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  argsToPassToGodot[][2] = unsafeAddr(maxSteps)
  argsToPassToGodot[][3] = unsafeAddr(fadeIn)
  argsToPassToGodot[][4] = unsafeAddr(fadeOut)
  argsToPassToGodot[][5] = unsafeAddr(depthTolerance)
  argsToPassToGodot[][6] = unsafeAddr(roughness)
  var ptrCallRet: pointer
  visualServerEnvironmentSetSsrMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerEnvironmentSetTonemapMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentSetTonemap(env: RID; toneMapper: int64; exposure: float64;
                          white: float64; autoExposure: bool; minLuminance: float64;
                          maxLuminance: float64; autoExpSpeed: float64;
                          autoExpGrey: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerEnvironmentSetTonemapMethodBind):
    visualServerEnvironmentSetTonemapMethodBind = getMethod(
        cstring"VisualServer", cstring"environment_set_tonemap")
  var
    argsStatic: array[9, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(env)
  argsToPassToGodot[][1] = unsafeAddr(toneMapper)
  argsToPassToGodot[][2] = unsafeAddr(exposure)
  argsToPassToGodot[][3] = unsafeAddr(white)
  argsToPassToGodot[][4] = unsafeAddr(autoExposure)
  argsToPassToGodot[][5] = unsafeAddr(minLuminance)
  argsToPassToGodot[][6] = unsafeAddr(maxLuminance)
  argsToPassToGodot[][7] = unsafeAddr(autoExpSpeed)
  argsToPassToGodot[][8] = unsafeAddr(autoExpGrey)
  var ptrCallRet: pointer
  visualServerEnvironmentSetTonemapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerFinishMethodBind {.threadvar.}: ptr GodotMethodBind
proc finish() =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerFinishMethodBind):
    visualServerFinishMethodBind = getMethod(cstring"VisualServer",
        cstring"finish")
  var ptrCallRet: pointer
  visualServerFinishMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerForceDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceDraw(swapBuffers: bool = true; frameStep: float64 = 0.0) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerForceDrawMethodBind):
    visualServerForceDrawMethodBind = getMethod(cstring"VisualServer",
        cstring"force_draw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(swapBuffers)
  argsToPassToGodot[][1] = unsafeAddr(frameStep)
  var ptrCallRet: pointer
  visualServerForceDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerForceSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceSync() =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerForceSyncMethodBind):
    visualServerForceSyncMethodBind = getMethod(cstring"VisualServer",
        cstring"force_sync")
  var ptrCallRet: pointer
  visualServerForceSyncMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerFreeRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc freeRid(rid: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerFreeRidMethodBind):
    visualServerFreeRidMethodBind = getMethod(cstring"VisualServer",
        cstring"free_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  visualServerFreeRidMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var visualServerGetRenderInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRenderInfo(info: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGetRenderInfoMethodBind):
    visualServerGetRenderInfoMethodBind = getMethod(cstring"VisualServer",
        cstring"get_render_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(info)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGetRenderInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGetTestCubeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTestCube(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGetTestCubeMethodBind):
    visualServerGetTestCubeMethodBind = getMethod(cstring"VisualServer",
        cstring"get_test_cube")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGetTestCubeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerGetTestTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTestTexture(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGetTestTextureMethodBind):
    visualServerGetTestTextureMethodBind = getMethod(cstring"VisualServer",
        cstring"get_test_texture")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGetTestTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerGetVideoAdapterNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVideoAdapterName(): string =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGetVideoAdapterNameMethodBind):
    visualServerGetVideoAdapterNameMethodBind = getMethod(cstring"VisualServer",
        cstring"get_video_adapter_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualServerGetVideoAdapterNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualServerGetVideoAdapterVendorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVideoAdapterVendor(): string =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGetVideoAdapterVendorMethodBind):
    visualServerGetVideoAdapterVendorMethodBind = getMethod(
        cstring"VisualServer", cstring"get_video_adapter_vendor")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualServerGetVideoAdapterVendorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualServerGetWhiteTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWhiteTexture(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGetWhiteTextureMethodBind):
    visualServerGetWhiteTextureMethodBind = getMethod(cstring"VisualServer",
        cstring"get_white_texture")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGetWhiteTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerGiProbeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeCreateMethodBind):
    visualServerGiProbeCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerGiProbeGetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetBias(probe: RID): float64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetBiasMethodBind):
    visualServerGiProbeGetBiasMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_get_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetBiasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeGetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetBounds(probe: RID): AABB =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetBoundsMethodBind):
    visualServerGiProbeGetBoundsMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_get_bounds")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetBoundsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeGetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetCellSize(probe: RID): float64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetCellSizeMethodBind):
    visualServerGiProbeGetCellSizeMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_get_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeGetDynamicDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetDynamicData(probe: RID): PoolIntArray =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetDynamicDataMethodBind):
    visualServerGiProbeGetDynamicDataMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_get_dynamic_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  visualServerGiProbeGetDynamicDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var visualServerGiProbeGetDynamicRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetDynamicRange(probe: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetDynamicRangeMethodBind):
    visualServerGiProbeGetDynamicRangeMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_get_dynamic_range")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetDynamicRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeGetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetEnergy(probe: RID): float64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetEnergyMethodBind):
    visualServerGiProbeGetEnergyMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_get_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeGetNormalBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetNormalBias(probe: RID): float64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetNormalBiasMethodBind):
    visualServerGiProbeGetNormalBiasMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_get_normal_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetNormalBiasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeGetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetPropagation(probe: RID): float64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetPropagationMethodBind):
    visualServerGiProbeGetPropagationMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_get_propagation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetPropagationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeGetToCellXformMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeGetToCellXform(probe: RID): Transform =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeGetToCellXformMethodBind):
    visualServerGiProbeGetToCellXformMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_get_to_cell_xform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeGetToCellXformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeIsCompressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeIsCompressed(probe: RID): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeIsCompressedMethodBind):
    visualServerGiProbeIsCompressedMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_is_compressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeIsCompressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeIsInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeIsInterior(probe: RID): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeIsInteriorMethodBind):
    visualServerGiProbeIsInteriorMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_is_interior")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerGiProbeIsInteriorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetBias(probe: RID; bias: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetBiasMethodBind):
    visualServerGiProbeSetBiasMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_set_bias")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(bias)
  var ptrCallRet: pointer
  visualServerGiProbeSetBiasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetBounds(probe: RID; bounds: AABB) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetBoundsMethodBind):
    visualServerGiProbeSetBoundsMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_set_bounds")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(bounds)
  var ptrCallRet: pointer
  visualServerGiProbeSetBoundsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetCellSize(probe: RID; range: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetCellSizeMethodBind):
    visualServerGiProbeSetCellSizeMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_set_cell_size")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(range)
  var ptrCallRet: pointer
  visualServerGiProbeSetCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetCompressMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetCompress(probe: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetCompressMethodBind):
    visualServerGiProbeSetCompressMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_set_compress")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerGiProbeSetCompressMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetDynamicDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetDynamicData(probe: RID; data: PoolIntArray) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetDynamicDataMethodBind):
    visualServerGiProbeSetDynamicDataMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_set_dynamic_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = data.godotPoolIntArray
  var ptrCallRet: pointer
  visualServerGiProbeSetDynamicDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetDynamicRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetDynamicRange(probe: RID; range: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetDynamicRangeMethodBind):
    visualServerGiProbeSetDynamicRangeMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_set_dynamic_range")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(range)
  var ptrCallRet: pointer
  visualServerGiProbeSetDynamicRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetEnergy(probe: RID; energy: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetEnergyMethodBind):
    visualServerGiProbeSetEnergyMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_set_energy")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(energy)
  var ptrCallRet: pointer
  visualServerGiProbeSetEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetInterior(probe: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetInteriorMethodBind):
    visualServerGiProbeSetInteriorMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_set_interior")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerGiProbeSetInteriorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetNormalBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetNormalBias(probe: RID; bias: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetNormalBiasMethodBind):
    visualServerGiProbeSetNormalBiasMethodBind = getMethod(cstring"VisualServer",
        cstring"gi_probe_set_normal_bias")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(bias)
  var ptrCallRet: pointer
  visualServerGiProbeSetNormalBiasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetPropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetPropagation(probe: RID; propagation: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetPropagationMethodBind):
    visualServerGiProbeSetPropagationMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_set_propagation")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(propagation)
  var ptrCallRet: pointer
  visualServerGiProbeSetPropagationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerGiProbeSetToCellXformMethodBind {.threadvar.}: ptr GodotMethodBind
proc giProbeSetToCellXform(probe: RID; xform: Transform) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerGiProbeSetToCellXformMethodBind):
    visualServerGiProbeSetToCellXformMethodBind = getMethod(
        cstring"VisualServer", cstring"gi_probe_set_to_cell_xform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(xform)
  var ptrCallRet: pointer
  visualServerGiProbeSetToCellXformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerHasChangedMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasChanged(): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerHasChangedMethodBind):
    visualServerHasChangedMethodBind = getMethod(cstring"VisualServer",
        cstring"has_changed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerHasChangedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerHasFeatureMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasFeature(feature: int64): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerHasFeatureMethodBind):
    visualServerHasFeatureMethodBind = getMethod(cstring"VisualServer",
        cstring"has_feature")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(feature)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerHasFeatureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerHasOsFeatureMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasOsFeature(feature: string): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerHasOsFeatureMethodBind):
    visualServerHasOsFeatureMethodBind = getMethod(cstring"VisualServer",
        cstring"has_os_feature")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(feature)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerHasOsFeatureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var visualServerImmediateBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateBegin(immediate: RID; primitive: int64; texture: RID = initRID()) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateBeginMethodBind):
    visualServerImmediateBeginMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_begin")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(primitive)
  argsToPassToGodot[][2] = unsafeAddr(texture)
  var ptrCallRet: pointer
  visualServerImmediateBeginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateClear(immediate: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateClearMethodBind):
    visualServerImmediateClearMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_clear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  var ptrCallRet: pointer
  visualServerImmediateClearMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateColor(immediate: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateColorMethodBind):
    visualServerImmediateColorMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerImmediateColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateCreateMethodBind):
    visualServerImmediateCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerImmediateCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerImmediateEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateEnd(immediate: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateEndMethodBind):
    visualServerImmediateEndMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_end")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  var ptrCallRet: pointer
  visualServerImmediateEndMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerImmediateGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateGetMaterial(immediate: RID): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateGetMaterialMethodBind):
    visualServerImmediateGetMaterialMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_get_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerImmediateGetMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateNormal(immediate: RID; normal: Vector3) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateNormalMethodBind):
    visualServerImmediateNormalMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_normal")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(normal)
  var ptrCallRet: pointer
  visualServerImmediateNormalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateSetMaterial(immediate: RID; material: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateSetMaterialMethodBind):
    visualServerImmediateSetMaterialMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_set_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(material)
  var ptrCallRet: pointer
  visualServerImmediateSetMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateTangent(immediate: RID; tangent: Plane) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateTangentMethodBind):
    visualServerImmediateTangentMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_tangent")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(tangent)
  var ptrCallRet: pointer
  visualServerImmediateTangentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateUv(immediate: RID; texUv: Vector2) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateUvMethodBind):
    visualServerImmediateUvMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_uv")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(texUv)
  var ptrCallRet: pointer
  visualServerImmediateUvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerImmediateUv2MethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateUv2(immediate: RID; texUv: Vector2) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateUv2MethodBind):
    visualServerImmediateUv2MethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_uv2")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(texUv)
  var ptrCallRet: pointer
  visualServerImmediateUv2MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerImmediateVertexMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateVertex(immediate: RID; vertex: Vector3) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateVertexMethodBind):
    visualServerImmediateVertexMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_vertex")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(vertex)
  var ptrCallRet: pointer
  visualServerImmediateVertexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerImmediateVertex2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc immediateVertex2d(immediate: RID; vertex: Vector2) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerImmediateVertex2dMethodBind):
    visualServerImmediateVertex2dMethodBind = getMethod(cstring"VisualServer",
        cstring"immediate_vertex_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(immediate)
  argsToPassToGodot[][1] = unsafeAddr(vertex)
  var ptrCallRet: pointer
  visualServerImmediateVertex2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInitMethodBind {.threadvar.}: ptr GodotMethodBind
proc init() =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInitMethodBind):
    visualServerInitMethodBind = getMethod(cstring"VisualServer", cstring"init")
  var ptrCallRet: pointer
  visualServerInitMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerInstanceAttachObjectInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceAttachObjectInstanceId(instance: RID; id: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceAttachObjectInstanceIdMethodBind):
    visualServerInstanceAttachObjectInstanceIdMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_attach_object_instance_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  visualServerInstanceAttachObjectInstanceIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceAttachSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceAttachSkeleton(instance: RID; skeleton: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceAttachSkeletonMethodBind):
    visualServerInstanceAttachSkeletonMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_attach_skeleton")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(skeleton)
  var ptrCallRet: pointer
  visualServerInstanceAttachSkeletonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceCreateMethodBind):
    visualServerInstanceCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"instance_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerInstanceCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerInstanceCreate2MethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceCreate2(base: RID; scenario: RID): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceCreate2MethodBind):
    visualServerInstanceCreate2MethodBind = getMethod(cstring"VisualServer",
        cstring"instance_create2")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(base)
  argsToPassToGodot[][1] = unsafeAddr(scenario)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerInstanceCreate2MethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceGeometrySetAsInstanceLodMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceGeometrySetAsInstanceLod(instance: RID; asLodOfInstance: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceGeometrySetAsInstanceLodMethodBind):
    visualServerInstanceGeometrySetAsInstanceLodMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_geometry_set_as_instance_lod")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(asLodOfInstance)
  var ptrCallRet: pointer
  visualServerInstanceGeometrySetAsInstanceLodMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerInstanceGeometrySetCastShadowsSettingMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceGeometrySetCastShadowsSetting(instance: RID;
    shadowCastingSetting: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceGeometrySetCastShadowsSettingMethodBind):
    visualServerInstanceGeometrySetCastShadowsSettingMethodBind = getMethod(
        cstring"VisualServer",
        cstring"instance_geometry_set_cast_shadows_setting")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(shadowCastingSetting)
  var ptrCallRet: pointer
  visualServerInstanceGeometrySetCastShadowsSettingMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerInstanceGeometrySetDrawRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceGeometrySetDrawRange(instance: RID; min: float64; max: float64;
                                 minMargin: float64; maxMargin: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceGeometrySetDrawRangeMethodBind):
    visualServerInstanceGeometrySetDrawRangeMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_geometry_set_draw_range")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(min)
  argsToPassToGodot[][2] = unsafeAddr(max)
  argsToPassToGodot[][3] = unsafeAddr(minMargin)
  argsToPassToGodot[][4] = unsafeAddr(maxMargin)
  var ptrCallRet: pointer
  visualServerInstanceGeometrySetDrawRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceGeometrySetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceGeometrySetFlag(instance: RID; flag: int64; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceGeometrySetFlagMethodBind):
    visualServerInstanceGeometrySetFlagMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_geometry_set_flag")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(flag)
  argsToPassToGodot[][2] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerInstanceGeometrySetFlagMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceGeometrySetMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceGeometrySetMaterialOverride(instance: RID; material: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceGeometrySetMaterialOverrideMethodBind):
    visualServerInstanceGeometrySetMaterialOverrideMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_geometry_set_material_override")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(material)
  var ptrCallRet: pointer
  visualServerInstanceGeometrySetMaterialOverrideMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetBaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetBase(instance: RID; base: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetBaseMethodBind):
    visualServerInstanceSetBaseMethodBind = getMethod(cstring"VisualServer",
        cstring"instance_set_base")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(base)
  var ptrCallRet: pointer
  visualServerInstanceSetBaseMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetBlendShapeWeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetBlendShapeWeight(instance: RID; shape: int64; weight: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetBlendShapeWeightMethodBind):
    visualServerInstanceSetBlendShapeWeightMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_set_blend_shape_weight")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(shape)
  argsToPassToGodot[][2] = unsafeAddr(weight)
  var ptrCallRet: pointer
  visualServerInstanceSetBlendShapeWeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetCustomAabb(instance: RID; aabb: AABB) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetCustomAabbMethodBind):
    visualServerInstanceSetCustomAabbMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_set_custom_aabb")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(aabb)
  var ptrCallRet: pointer
  visualServerInstanceSetCustomAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetExteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetExterior(instance: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetExteriorMethodBind):
    visualServerInstanceSetExteriorMethodBind = getMethod(cstring"VisualServer",
        cstring"instance_set_exterior")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerInstanceSetExteriorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetExtraVisibilityMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetExtraVisibilityMargin(instance: RID; margin: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetExtraVisibilityMarginMethodBind):
    visualServerInstanceSetExtraVisibilityMarginMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_set_extra_visibility_margin")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(margin)
  var ptrCallRet: pointer
  visualServerInstanceSetExtraVisibilityMarginMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetLayerMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetLayerMask(instance: RID; mask: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetLayerMaskMethodBind):
    visualServerInstanceSetLayerMaskMethodBind = getMethod(cstring"VisualServer",
        cstring"instance_set_layer_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  visualServerInstanceSetLayerMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetScenarioMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetScenario(instance: RID; scenario: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetScenarioMethodBind):
    visualServerInstanceSetScenarioMethodBind = getMethod(cstring"VisualServer",
        cstring"instance_set_scenario")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(scenario)
  var ptrCallRet: pointer
  visualServerInstanceSetScenarioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetSurfaceMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetSurfaceMaterial(instance: RID; surface: int64; material: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetSurfaceMaterialMethodBind):
    visualServerInstanceSetSurfaceMaterialMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_set_surface_material")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  argsToPassToGodot[][2] = unsafeAddr(material)
  var ptrCallRet: pointer
  visualServerInstanceSetSurfaceMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetTransform(instance: RID; transform: Transform) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetTransformMethodBind):
    visualServerInstanceSetTransformMethodBind = getMethod(cstring"VisualServer",
        cstring"instance_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerInstanceSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetUseLightmapMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetUseLightmap(instance: RID; lightmapInstance: RID; lightmap: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetUseLightmapMethodBind):
    visualServerInstanceSetUseLightmapMethodBind = getMethod(
        cstring"VisualServer", cstring"instance_set_use_lightmap")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(lightmapInstance)
  argsToPassToGodot[][2] = unsafeAddr(lightmap)
  var ptrCallRet: pointer
  visualServerInstanceSetUseLightmapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstanceSetVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceSetVisible(instance: RID; visible: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstanceSetVisibleMethodBind):
    visualServerInstanceSetVisibleMethodBind = getMethod(cstring"VisualServer",
        cstring"instance_set_visible")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(instance)
  argsToPassToGodot[][1] = unsafeAddr(visible)
  var ptrCallRet: pointer
  visualServerInstanceSetVisibleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerInstancesCullAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc instancesCullAabb(aabb: AABB; scenario: RID = initRID()): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstancesCullAabbMethodBind):
    visualServerInstancesCullAabbMethodBind = getMethod(cstring"VisualServer",
        cstring"instances_cull_aabb")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(aabb)
  argsToPassToGodot[][1] = unsafeAddr(scenario)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerInstancesCullAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerInstancesCullConvexMethodBind {.threadvar.}: ptr GodotMethodBind
proc instancesCullConvex(convex: Array; scenario: RID = initRID()): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstancesCullConvexMethodBind):
    visualServerInstancesCullConvexMethodBind = getMethod(cstring"VisualServer",
        cstring"instances_cull_convex")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = convex.godotArray
  argsToPassToGodot[][1] = unsafeAddr(scenario)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerInstancesCullConvexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerInstancesCullRayMethodBind {.threadvar.}: ptr GodotMethodBind
proc instancesCullRay(fromm: Vector3; to: Vector3; scenario: RID = initRID()): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerInstancesCullRayMethodBind):
    visualServerInstancesCullRayMethodBind = getMethod(cstring"VisualServer",
        cstring"instances_cull_ray")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = unsafeAddr(scenario)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerInstancesCullRayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerIsRenderLoopEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isRenderLoopEnabled(): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerIsRenderLoopEnabledMethodBind):
    visualServerIsRenderLoopEnabledMethodBind = getMethod(cstring"VisualServer",
        cstring"is_render_loop_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerIsRenderLoopEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualServerLightDirectionalSetBlendSplitsMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightDirectionalSetBlendSplits(light: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightDirectionalSetBlendSplitsMethodBind):
    visualServerLightDirectionalSetBlendSplitsMethodBind = getMethod(
        cstring"VisualServer", cstring"light_directional_set_blend_splits")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerLightDirectionalSetBlendSplitsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightDirectionalSetShadowDepthRangeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightDirectionalSetShadowDepthRangeMode(light: RID; rangeMode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightDirectionalSetShadowDepthRangeModeMethodBind):
    visualServerLightDirectionalSetShadowDepthRangeModeMethodBind = getMethod(
        cstring"VisualServer",
        cstring"light_directional_set_shadow_depth_range_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(rangeMode)
  var ptrCallRet: pointer
  visualServerLightDirectionalSetShadowDepthRangeModeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerLightDirectionalSetShadowModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightDirectionalSetShadowMode(light: RID; mode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightDirectionalSetShadowModeMethodBind):
    visualServerLightDirectionalSetShadowModeMethodBind = getMethod(
        cstring"VisualServer", cstring"light_directional_set_shadow_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  visualServerLightDirectionalSetShadowModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightOmniSetShadowDetailMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightOmniSetShadowDetail(light: RID; detail: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightOmniSetShadowDetailMethodBind):
    visualServerLightOmniSetShadowDetailMethodBind = getMethod(
        cstring"VisualServer", cstring"light_omni_set_shadow_detail")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(detail)
  var ptrCallRet: pointer
  visualServerLightOmniSetShadowDetailMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightOmniSetShadowModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightOmniSetShadowMode(light: RID; mode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightOmniSetShadowModeMethodBind):
    visualServerLightOmniSetShadowModeMethodBind = getMethod(
        cstring"VisualServer", cstring"light_omni_set_shadow_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  visualServerLightOmniSetShadowModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetColor(light: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetColorMethodBind):
    visualServerLightSetColorMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerLightSetColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetCullMask(light: RID; mask: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetCullMaskMethodBind):
    visualServerLightSetCullMaskMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_cull_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(mask)
  var ptrCallRet: pointer
  visualServerLightSetCullMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetNegativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetNegative(light: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetNegativeMethodBind):
    visualServerLightSetNegativeMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_negative")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerLightSetNegativeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetParam(light: RID; param: int64; value: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetParamMethodBind):
    visualServerLightSetParamMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(param)
  argsToPassToGodot[][2] = unsafeAddr(value)
  var ptrCallRet: pointer
  visualServerLightSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetProjectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetProjector(light: RID; texture: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetProjectorMethodBind):
    visualServerLightSetProjectorMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_projector")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(texture)
  var ptrCallRet: pointer
  visualServerLightSetProjectorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetReverseCullFaceModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetReverseCullFaceMode(light: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetReverseCullFaceModeMethodBind):
    visualServerLightSetReverseCullFaceModeMethodBind = getMethod(
        cstring"VisualServer", cstring"light_set_reverse_cull_face_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerLightSetReverseCullFaceModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetShadowMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetShadow(light: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetShadowMethodBind):
    visualServerLightSetShadowMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_shadow")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerLightSetShadowMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetShadowColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetShadowColor(light: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetShadowColorMethodBind):
    visualServerLightSetShadowColorMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_shadow_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerLightSetShadowColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightSetUseGiMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightSetUseGi(light: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightSetUseGiMethodBind):
    visualServerLightSetUseGiMethodBind = getMethod(cstring"VisualServer",
        cstring"light_set_use_gi")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(light)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerLightSetUseGiMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureCreateMethodBind):
    visualServerLightmapCaptureCreateMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerLightmapCaptureCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualServerLightmapCaptureGetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureGetBounds(capture: RID): AABB =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureGetBoundsMethodBind):
    visualServerLightmapCaptureGetBoundsMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_get_bounds")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerLightmapCaptureGetBoundsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureGetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureGetEnergy(capture: RID): float64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureGetEnergyMethodBind):
    visualServerLightmapCaptureGetEnergyMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_get_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerLightmapCaptureGetEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureGetOctreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureGetOctree(capture: RID): PoolByteArray =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureGetOctreeMethodBind):
    visualServerLightmapCaptureGetOctreeMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_get_octree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  visualServerLightmapCaptureGetOctreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var visualServerLightmapCaptureGetOctreeCellSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureGetOctreeCellSubdiv(capture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureGetOctreeCellSubdivMethodBind):
    visualServerLightmapCaptureGetOctreeCellSubdivMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_get_octree_cell_subdiv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerLightmapCaptureGetOctreeCellSubdivMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureGetOctreeCellTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureGetOctreeCellTransform(capture: RID): Transform =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureGetOctreeCellTransformMethodBind):
    visualServerLightmapCaptureGetOctreeCellTransformMethodBind = getMethod(
        cstring"VisualServer",
        cstring"lightmap_capture_get_octree_cell_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerLightmapCaptureGetOctreeCellTransformMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureSetBoundsMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureSetBounds(capture: RID; bounds: AABB) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureSetBoundsMethodBind):
    visualServerLightmapCaptureSetBoundsMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_set_bounds")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  argsToPassToGodot[][1] = unsafeAddr(bounds)
  var ptrCallRet: pointer
  visualServerLightmapCaptureSetBoundsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureSetEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureSetEnergy(capture: RID; energy: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureSetEnergyMethodBind):
    visualServerLightmapCaptureSetEnergyMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_set_energy")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  argsToPassToGodot[][1] = unsafeAddr(energy)
  var ptrCallRet: pointer
  visualServerLightmapCaptureSetEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureSetOctreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureSetOctree(capture: RID; octree: PoolByteArray) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureSetOctreeMethodBind):
    visualServerLightmapCaptureSetOctreeMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_set_octree")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  argsToPassToGodot[][1] = octree.godotPoolByteArray
  var ptrCallRet: pointer
  visualServerLightmapCaptureSetOctreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureSetOctreeCellSubdivMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureSetOctreeCellSubdiv(capture: RID; subdiv: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureSetOctreeCellSubdivMethodBind):
    visualServerLightmapCaptureSetOctreeCellSubdivMethodBind = getMethod(
        cstring"VisualServer", cstring"lightmap_capture_set_octree_cell_subdiv")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  argsToPassToGodot[][1] = unsafeAddr(subdiv)
  var ptrCallRet: pointer
  visualServerLightmapCaptureSetOctreeCellSubdivMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerLightmapCaptureSetOctreeCellTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightmapCaptureSetOctreeCellTransform(capture: RID; xform: Transform) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerLightmapCaptureSetOctreeCellTransformMethodBind):
    visualServerLightmapCaptureSetOctreeCellTransformMethodBind = getMethod(
        cstring"VisualServer",
        cstring"lightmap_capture_set_octree_cell_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(capture)
  argsToPassToGodot[][1] = unsafeAddr(xform)
  var ptrCallRet: pointer
  visualServerLightmapCaptureSetOctreeCellTransformMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerMakeSphereMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeSphereMesh(latitudes: int64; longitudes: int64; radius: float64): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMakeSphereMeshMethodBind):
    visualServerMakeSphereMeshMethodBind = getMethod(cstring"VisualServer",
        cstring"make_sphere_mesh")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(latitudes)
  argsToPassToGodot[][1] = unsafeAddr(longitudes)
  argsToPassToGodot[][2] = unsafeAddr(radius)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMakeSphereMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMaterialCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialCreateMethodBind):
    visualServerMaterialCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"material_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMaterialCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerMaterialGetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialGetParam(material: RID; parameter: string): Variant =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialGetParamMethodBind):
    visualServerMaterialGetParamMethodBind = getMethod(cstring"VisualServer",
        cstring"material_get_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(material)
  var argToPassToGodot1 = toGodotString(parameter)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualServerMaterialGetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  result = newVariant(ptrCallVal)

var visualServerMaterialGetParamDefaultMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialGetParamDefault(material: RID; parameter: string): Variant =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialGetParamDefaultMethodBind):
    visualServerMaterialGetParamDefaultMethodBind = getMethod(
        cstring"VisualServer", cstring"material_get_param_default")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(material)
  var argToPassToGodot1 = toGodotString(parameter)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualServerMaterialGetParamDefaultMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  result = newVariant(ptrCallVal)

var visualServerMaterialGetShaderMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialGetShader(shaderMaterial: RID): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialGetShaderMethodBind):
    visualServerMaterialGetShaderMethodBind = getMethod(cstring"VisualServer",
        cstring"material_get_shader")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shaderMaterial)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMaterialGetShaderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMaterialSetLineWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialSetLineWidth(material: RID; width: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialSetLineWidthMethodBind):
    visualServerMaterialSetLineWidthMethodBind = getMethod(cstring"VisualServer",
        cstring"material_set_line_width")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(material)
  argsToPassToGodot[][1] = unsafeAddr(width)
  var ptrCallRet: pointer
  visualServerMaterialSetLineWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMaterialSetNextPassMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialSetNextPass(material: RID; nextMaterial: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialSetNextPassMethodBind):
    visualServerMaterialSetNextPassMethodBind = getMethod(cstring"VisualServer",
        cstring"material_set_next_pass")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(material)
  argsToPassToGodot[][1] = unsafeAddr(nextMaterial)
  var ptrCallRet: pointer
  visualServerMaterialSetNextPassMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMaterialSetParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialSetParam(material: RID; parameter: string; value: Variant) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialSetParamMethodBind):
    visualServerMaterialSetParamMethodBind = getMethod(cstring"VisualServer",
        cstring"material_set_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(material)
  var argToPassToGodot1 = toGodotString(parameter)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  visualServerMaterialSetParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualServerMaterialSetRenderPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialSetRenderPriority(material: RID; priority: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialSetRenderPriorityMethodBind):
    visualServerMaterialSetRenderPriorityMethodBind = getMethod(
        cstring"VisualServer", cstring"material_set_render_priority")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(material)
  argsToPassToGodot[][1] = unsafeAddr(priority)
  var ptrCallRet: pointer
  visualServerMaterialSetRenderPriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMaterialSetShaderMethodBind {.threadvar.}: ptr GodotMethodBind
proc materialSetShader(shaderMaterial: RID; shader: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMaterialSetShaderMethodBind):
    visualServerMaterialSetShaderMethodBind = getMethod(cstring"VisualServer",
        cstring"material_set_shader")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shaderMaterial)
  argsToPassToGodot[][1] = unsafeAddr(shader)
  var ptrCallRet: pointer
  visualServerMaterialSetShaderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshAddSurfaceFromArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshAddSurfaceFromArrays(mesh: RID; primitive: int64; arrays: Array;
                             blendShapes: Array = newArray();
                             compressFormat: int64 = 97280'i64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshAddSurfaceFromArraysMethodBind):
    visualServerMeshAddSurfaceFromArraysMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_add_surface_from_arrays")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(primitive)
  argsToPassToGodot[][2] = arrays.godotArray
  argsToPassToGodot[][3] = blendShapes.godotArray
  argsToPassToGodot[][4] = unsafeAddr(compressFormat)
  var ptrCallRet: pointer
  visualServerMeshAddSurfaceFromArraysMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshClear(mesh: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshClearMethodBind):
    visualServerMeshClearMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_clear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  var ptrCallRet: pointer
  visualServerMeshClearMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerMeshCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshCreateMethodBind):
    visualServerMeshCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerMeshGetBlendShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshGetBlendShapeCount(mesh: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshGetBlendShapeCountMethodBind):
    visualServerMeshGetBlendShapeCountMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_get_blend_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshGetBlendShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshGetBlendShapeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshGetBlendShapeMode(mesh: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshGetBlendShapeModeMethodBind):
    visualServerMeshGetBlendShapeModeMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_get_blend_shape_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshGetBlendShapeModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshGetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshGetCustomAabb(mesh: RID): AABB =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshGetCustomAabbMethodBind):
    visualServerMeshGetCustomAabbMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_get_custom_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshGetCustomAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshGetSurfaceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshGetSurfaceCount(mesh: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshGetSurfaceCountMethodBind):
    visualServerMeshGetSurfaceCountMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_get_surface_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshGetSurfaceCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshRemoveSurfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshRemoveSurface(mesh: RID; index: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshRemoveSurfaceMethodBind):
    visualServerMeshRemoveSurfaceMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_remove_surface")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  visualServerMeshRemoveSurfaceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSetBlendShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSetBlendShapeCount(mesh: RID; amount: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSetBlendShapeCountMethodBind):
    visualServerMeshSetBlendShapeCountMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_set_blend_shape_count")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(amount)
  var ptrCallRet: pointer
  visualServerMeshSetBlendShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSetBlendShapeModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSetBlendShapeMode(mesh: RID; mode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSetBlendShapeModeMethodBind):
    visualServerMeshSetBlendShapeModeMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_set_blend_shape_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  visualServerMeshSetBlendShapeModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSetCustomAabb(mesh: RID; aabb: AABB) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSetCustomAabbMethodBind):
    visualServerMeshSetCustomAabbMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_set_custom_aabb")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(aabb)
  var ptrCallRet: pointer
  visualServerMeshSetCustomAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetAabb(mesh: RID; surface: int64): AABB =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetAabbMethodBind):
    visualServerMeshSurfaceGetAabbMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_surface_get_aabb")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetArray(mesh: RID; surface: int64): PoolByteArray =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetArrayMethodBind):
    visualServerMeshSurfaceGetArrayMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_surface_get_array")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  visualServerMeshSurfaceGetArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var visualServerMeshSurfaceGetArrayIndexLenMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetArrayIndexLen(mesh: RID; surface: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetArrayIndexLenMethodBind):
    visualServerMeshSurfaceGetArrayIndexLenMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_array_index_len")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetArrayIndexLenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetArrayLenMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetArrayLen(mesh: RID; surface: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetArrayLenMethodBind):
    visualServerMeshSurfaceGetArrayLenMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_array_len")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetArrayLenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetArrays(mesh: RID; surface: int64): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetArraysMethodBind):
    visualServerMeshSurfaceGetArraysMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_surface_get_arrays")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerMeshSurfaceGetArraysMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerMeshSurfaceGetBlendShapeArraysMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetBlendShapeArrays(mesh: RID; surface: int64): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetBlendShapeArraysMethodBind):
    visualServerMeshSurfaceGetBlendShapeArraysMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_blend_shape_arrays")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerMeshSurfaceGetBlendShapeArraysMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerMeshSurfaceGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetFormat(mesh: RID; surface: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetFormatMethodBind):
    visualServerMeshSurfaceGetFormatMethodBind = getMethod(cstring"VisualServer",
        cstring"mesh_surface_get_format")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetFormatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetFormatOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetFormatOffset(format: int64; vertexLen: int64; indexLen: int64;
                               arrayIndex: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetFormatOffsetMethodBind):
    visualServerMeshSurfaceGetFormatOffsetMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_format_offset")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(format)
  argsToPassToGodot[][1] = unsafeAddr(vertexLen)
  argsToPassToGodot[][2] = unsafeAddr(indexLen)
  argsToPassToGodot[][3] = unsafeAddr(arrayIndex)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetFormatOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetFormatStrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetFormatStride(format: int64; vertexLen: int64; indexLen: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetFormatStrideMethodBind):
    visualServerMeshSurfaceGetFormatStrideMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_format_stride")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(format)
  argsToPassToGodot[][1] = unsafeAddr(vertexLen)
  argsToPassToGodot[][2] = unsafeAddr(indexLen)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetFormatStrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetIndexArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetIndexArray(mesh: RID; surface: int64): PoolByteArray =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetIndexArrayMethodBind):
    visualServerMeshSurfaceGetIndexArrayMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_index_array")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  visualServerMeshSurfaceGetIndexArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var visualServerMeshSurfaceGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetMaterial(mesh: RID; surface: int64): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetMaterialMethodBind):
    visualServerMeshSurfaceGetMaterialMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetPrimitiveTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetPrimitiveType(mesh: RID; surface: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetPrimitiveTypeMethodBind):
    visualServerMeshSurfaceGetPrimitiveTypeMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_primitive_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMeshSurfaceGetPrimitiveTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceGetSkeletonAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceGetSkeletonAabb(mesh: RID; surface: int64): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceGetSkeletonAabbMethodBind):
    visualServerMeshSurfaceGetSkeletonAabbMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_get_skeleton_aabb")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerMeshSurfaceGetSkeletonAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerMeshSurfaceSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceSetMaterial(mesh: RID; surface: int64; material: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceSetMaterialMethodBind):
    visualServerMeshSurfaceSetMaterialMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_set_material")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  argsToPassToGodot[][2] = unsafeAddr(material)
  var ptrCallRet: pointer
  visualServerMeshSurfaceSetMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMeshSurfaceUpdateRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshSurfaceUpdateRegion(mesh: RID; surface: int64; offset: int64;
                            data: PoolByteArray) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMeshSurfaceUpdateRegionMethodBind):
    visualServerMeshSurfaceUpdateRegionMethodBind = getMethod(
        cstring"VisualServer", cstring"mesh_surface_update_region")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mesh)
  argsToPassToGodot[][1] = unsafeAddr(surface)
  argsToPassToGodot[][2] = unsafeAddr(offset)
  argsToPassToGodot[][3] = data.godotPoolByteArray
  var ptrCallRet: pointer
  visualServerMeshSurfaceUpdateRegionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshAllocateMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshAllocate(multimesh: RID; instances: int64; transformFormat: int64;
                      colorFormat: int64; customDataFormat: int64 = 0'i64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshAllocateMethodBind):
    visualServerMultimeshAllocateMethodBind = getMethod(cstring"VisualServer",
        cstring"multimesh_allocate")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(instances)
  argsToPassToGodot[][2] = unsafeAddr(transformFormat)
  argsToPassToGodot[][3] = unsafeAddr(colorFormat)
  argsToPassToGodot[][4] = unsafeAddr(customDataFormat)
  var ptrCallRet: pointer
  visualServerMultimeshAllocateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshCreateMethodBind):
    visualServerMultimeshCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"multimesh_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerMultimeshGetAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshGetAabb(multimesh: RID): AABB =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshGetAabbMethodBind):
    visualServerMultimeshGetAabbMethodBind = getMethod(cstring"VisualServer",
        cstring"multimesh_get_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshGetAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshGetInstanceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshGetInstanceCount(multimesh: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshGetInstanceCountMethodBind):
    visualServerMultimeshGetInstanceCountMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_get_instance_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshGetInstanceCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshGetMesh(multimesh: RID): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshGetMeshMethodBind):
    visualServerMultimeshGetMeshMethodBind = getMethod(cstring"VisualServer",
        cstring"multimesh_get_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshGetMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshGetVisibleInstancesMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshGetVisibleInstances(multimesh: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshGetVisibleInstancesMethodBind):
    visualServerMultimeshGetVisibleInstancesMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_get_visible_instances")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshGetVisibleInstancesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceGetColor(multimesh: RID; index: int64): Color =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceGetColorMethodBind):
    visualServerMultimeshInstanceGetColorMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_get_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshInstanceGetColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceGetCustomDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceGetCustomData(multimesh: RID; index: int64): Color =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceGetCustomDataMethodBind):
    visualServerMultimeshInstanceGetCustomDataMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_get_custom_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshInstanceGetCustomDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceGetTransform(multimesh: RID; index: int64): Transform =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceGetTransformMethodBind):
    visualServerMultimeshInstanceGetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_get_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshInstanceGetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceGetTransform2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceGetTransform2d(multimesh: RID; index: int64): Transform2D =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceGetTransform2dMethodBind):
    visualServerMultimeshInstanceGetTransform2dMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_get_transform_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerMultimeshInstanceGetTransform2dMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceSetColor(multimesh: RID; index: int64; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceSetColorMethodBind):
    visualServerMultimeshInstanceSetColorMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_set_color")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  argsToPassToGodot[][2] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerMultimeshInstanceSetColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceSetCustomDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceSetCustomData(multimesh: RID; index: int64; customData: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceSetCustomDataMethodBind):
    visualServerMultimeshInstanceSetCustomDataMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_set_custom_data")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  argsToPassToGodot[][2] = unsafeAddr(customData)
  var ptrCallRet: pointer
  visualServerMultimeshInstanceSetCustomDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceSetTransform(multimesh: RID; index: int64; transform: Transform) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceSetTransformMethodBind):
    visualServerMultimeshInstanceSetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_set_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerMultimeshInstanceSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshInstanceSetTransform2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshInstanceSetTransform2d(multimesh: RID; index: int64;
                                    transform: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshInstanceSetTransform2dMethodBind):
    visualServerMultimeshInstanceSetTransform2dMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_instance_set_transform_2d")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(index)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerMultimeshInstanceSetTransform2dMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerMultimeshSetAsBulkArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshSetAsBulkArray(multimesh: RID; array: PoolRealArray) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshSetAsBulkArrayMethodBind):
    visualServerMultimeshSetAsBulkArrayMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_set_as_bulk_array")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = array.godotPoolRealArray
  var ptrCallRet: pointer
  visualServerMultimeshSetAsBulkArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshSetMesh(multimesh: RID; mesh: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshSetMeshMethodBind):
    visualServerMultimeshSetMeshMethodBind = getMethod(cstring"VisualServer",
        cstring"multimesh_set_mesh")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(mesh)
  var ptrCallRet: pointer
  visualServerMultimeshSetMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerMultimeshSetVisibleInstancesMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimeshSetVisibleInstances(multimesh: RID; visible: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerMultimeshSetVisibleInstancesMethodBind):
    visualServerMultimeshSetVisibleInstancesMethodBind = getMethod(
        cstring"VisualServer", cstring"multimesh_set_visible_instances")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(multimesh)
  argsToPassToGodot[][1] = unsafeAddr(visible)
  var ptrCallRet: pointer
  visualServerMultimeshSetVisibleInstancesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerOmniLightCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc omniLightCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerOmniLightCreateMethodBind):
    visualServerOmniLightCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"omni_light_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerOmniLightCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerParticlesCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesCreateMethodBind):
    visualServerParticlesCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerParticlesCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerParticlesGetCurrentAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesGetCurrentAabb(particles: RID): AABB =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesGetCurrentAabbMethodBind):
    visualServerParticlesGetCurrentAabbMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_get_current_aabb")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerParticlesGetCurrentAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesGetEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesGetEmitting(particles: RID): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesGetEmittingMethodBind):
    visualServerParticlesGetEmittingMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_get_emitting")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerParticlesGetEmittingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesIsInactiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesIsInactive(particles: RID): bool =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesIsInactiveMethodBind):
    visualServerParticlesIsInactiveMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_is_inactive")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerParticlesIsInactiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesRequestProcessMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesRequestProcess(particles: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesRequestProcessMethodBind):
    visualServerParticlesRequestProcessMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_request_process")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  var ptrCallRet: pointer
  visualServerParticlesRequestProcessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesRestartMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesRestart(particles: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesRestartMethodBind):
    visualServerParticlesRestartMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_restart")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  var ptrCallRet: pointer
  visualServerParticlesRestartMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetAmount(particles: RID; amount: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetAmountMethodBind):
    visualServerParticlesSetAmountMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_set_amount")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(amount)
  var ptrCallRet: pointer
  visualServerParticlesSetAmountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetCustomAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetCustomAabb(particles: RID; aabb: AABB) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetCustomAabbMethodBind):
    visualServerParticlesSetCustomAabbMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_custom_aabb")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(aabb)
  var ptrCallRet: pointer
  visualServerParticlesSetCustomAabbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetDrawOrderMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetDrawOrder(particles: RID; order: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetDrawOrderMethodBind):
    visualServerParticlesSetDrawOrderMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_draw_order")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(order)
  var ptrCallRet: pointer
  visualServerParticlesSetDrawOrderMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetDrawPassMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetDrawPassMesh(particles: RID; pass: int64; mesh: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetDrawPassMeshMethodBind):
    visualServerParticlesSetDrawPassMeshMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_draw_pass_mesh")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(pass)
  argsToPassToGodot[][2] = unsafeAddr(mesh)
  var ptrCallRet: pointer
  visualServerParticlesSetDrawPassMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetDrawPassesMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetDrawPasses(particles: RID; count: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetDrawPassesMethodBind):
    visualServerParticlesSetDrawPassesMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_draw_passes")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(count)
  var ptrCallRet: pointer
  visualServerParticlesSetDrawPassesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetEmissionTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetEmissionTransform(particles: RID; transform: Transform) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetEmissionTransformMethodBind):
    visualServerParticlesSetEmissionTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_emission_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerParticlesSetEmissionTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetEmittingMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetEmitting(particles: RID; emitting: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetEmittingMethodBind):
    visualServerParticlesSetEmittingMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_set_emitting")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(emitting)
  var ptrCallRet: pointer
  visualServerParticlesSetEmittingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetExplosivenessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetExplosivenessRatio(particles: RID; ratio: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetExplosivenessRatioMethodBind):
    visualServerParticlesSetExplosivenessRatioMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_explosiveness_ratio")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(ratio)
  var ptrCallRet: pointer
  visualServerParticlesSetExplosivenessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetFixedFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetFixedFps(particles: RID; fps: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetFixedFpsMethodBind):
    visualServerParticlesSetFixedFpsMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_set_fixed_fps")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(fps)
  var ptrCallRet: pointer
  visualServerParticlesSetFixedFpsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetFractionalDeltaMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetFractionalDelta(particles: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetFractionalDeltaMethodBind):
    visualServerParticlesSetFractionalDeltaMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_fractional_delta")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerParticlesSetFractionalDeltaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetLifetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetLifetime(particles: RID; lifetime: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetLifetimeMethodBind):
    visualServerParticlesSetLifetimeMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_set_lifetime")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(lifetime)
  var ptrCallRet: pointer
  visualServerParticlesSetLifetimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetOneShotMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetOneShot(particles: RID; oneShot: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetOneShotMethodBind):
    visualServerParticlesSetOneShotMethodBind = getMethod(cstring"VisualServer",
        cstring"particles_set_one_shot")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(oneShot)
  var ptrCallRet: pointer
  visualServerParticlesSetOneShotMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetPreProcessTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetPreProcessTime(particles: RID; time: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetPreProcessTimeMethodBind):
    visualServerParticlesSetPreProcessTimeMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_pre_process_time")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(time)
  var ptrCallRet: pointer
  visualServerParticlesSetPreProcessTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetProcessMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetProcessMaterial(particles: RID; material: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetProcessMaterialMethodBind):
    visualServerParticlesSetProcessMaterialMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_process_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(material)
  var ptrCallRet: pointer
  visualServerParticlesSetProcessMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetRandomnessRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetRandomnessRatio(particles: RID; ratio: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetRandomnessRatioMethodBind):
    visualServerParticlesSetRandomnessRatioMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_randomness_ratio")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(ratio)
  var ptrCallRet: pointer
  visualServerParticlesSetRandomnessRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetSpeedScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetSpeedScale(particles: RID; scale: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetSpeedScaleMethodBind):
    visualServerParticlesSetSpeedScaleMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_speed_scale")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(scale)
  var ptrCallRet: pointer
  visualServerParticlesSetSpeedScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerParticlesSetUseLocalCoordinatesMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesSetUseLocalCoordinates(particles: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerParticlesSetUseLocalCoordinatesMethodBind):
    visualServerParticlesSetUseLocalCoordinatesMethodBind = getMethod(
        cstring"VisualServer", cstring"particles_set_use_local_coordinates")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(particles)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerParticlesSetUseLocalCoordinatesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeCreateMethodBind):
    visualServerReflectionProbeCreateMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerReflectionProbeCreateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualServerReflectionProbeSetAsInteriorMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetAsInterior(probe: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetAsInteriorMethodBind):
    visualServerReflectionProbeSetAsInteriorMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_as_interior")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetAsInteriorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetCullMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetCullMask(probe: RID; layers: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetCullMaskMethodBind):
    visualServerReflectionProbeSetCullMaskMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_cull_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(layers)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetCullMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetEnableBoxProjectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetEnableBoxProjection(probe: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetEnableBoxProjectionMethodBind):
    visualServerReflectionProbeSetEnableBoxProjectionMethodBind = getMethod(
        cstring"VisualServer",
        cstring"reflection_probe_set_enable_box_projection")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetEnableBoxProjectionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetEnableShadowsMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetEnableShadows(probe: RID; enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetEnableShadowsMethodBind):
    visualServerReflectionProbeSetEnableShadowsMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_enable_shadows")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetEnableShadowsMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetExtents(probe: RID; extents: Vector3) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetExtentsMethodBind):
    visualServerReflectionProbeSetExtentsMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_extents")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(extents)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetExtentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetIntensity(probe: RID; intensity: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetIntensityMethodBind):
    visualServerReflectionProbeSetIntensityMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_intensity")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(intensity)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetIntensityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetInteriorAmbientMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetInteriorAmbient(probe: RID; color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetInteriorAmbientMethodBind):
    visualServerReflectionProbeSetInteriorAmbientMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_interior_ambient")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetInteriorAmbientMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetInteriorAmbientEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetInteriorAmbientEnergy(probe: RID; energy: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetInteriorAmbientEnergyMethodBind):
    visualServerReflectionProbeSetInteriorAmbientEnergyMethodBind = getMethod(
        cstring"VisualServer",
        cstring"reflection_probe_set_interior_ambient_energy")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(energy)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetInteriorAmbientEnergyMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetInteriorAmbientProbeContributionMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetInteriorAmbientProbeContribution(probe: RID;
    contrib: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetInteriorAmbientProbeContributionMethodBind):
    visualServerReflectionProbeSetInteriorAmbientProbeContributionMethodBind = getMethod(
        cstring"VisualServer",
        cstring"reflection_probe_set_interior_ambient_probe_contribution")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(contrib)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetInteriorAmbientProbeContributionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetMaxDistance(probe: RID; distance: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetMaxDistanceMethodBind):
    visualServerReflectionProbeSetMaxDistanceMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_max_distance")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(distance)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetMaxDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetOriginOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetOriginOffset(probe: RID; offset: Vector3) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetOriginOffsetMethodBind):
    visualServerReflectionProbeSetOriginOffsetMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_origin_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetOriginOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerReflectionProbeSetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc reflectionProbeSetUpdateMode(probe: RID; mode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerReflectionProbeSetUpdateModeMethodBind):
    visualServerReflectionProbeSetUpdateModeMethodBind = getMethod(
        cstring"VisualServer", cstring"reflection_probe_set_update_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(probe)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  visualServerReflectionProbeSetUpdateModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerRequestFrameDrawnCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc requestFrameDrawnCallback(where: Object; methodd: string; userdata: Variant) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerRequestFrameDrawnCallbackMethodBind):
    visualServerRequestFrameDrawnCallbackMethodBind = getMethod(
        cstring"VisualServer", cstring"request_frame_drawn_callback")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not where.isNil:
    where.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(methodd)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = userdata.godotVariant
  var ptrCallRet: pointer
  visualServerRequestFrameDrawnCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualServerScenarioCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc scenarioCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerScenarioCreateMethodBind):
    visualServerScenarioCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"scenario_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerScenarioCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerScenarioSetDebugMethodBind {.threadvar.}: ptr GodotMethodBind
proc scenarioSetDebug(scenario: RID; debugMode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerScenarioSetDebugMethodBind):
    visualServerScenarioSetDebugMethodBind = getMethod(cstring"VisualServer",
        cstring"scenario_set_debug")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scenario)
  argsToPassToGodot[][1] = unsafeAddr(debugMode)
  var ptrCallRet: pointer
  visualServerScenarioSetDebugMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerScenarioSetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc scenarioSetEnvironment(scenario: RID; environment: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerScenarioSetEnvironmentMethodBind):
    visualServerScenarioSetEnvironmentMethodBind = getMethod(
        cstring"VisualServer", cstring"scenario_set_environment")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scenario)
  argsToPassToGodot[][1] = unsafeAddr(environment)
  var ptrCallRet: pointer
  visualServerScenarioSetEnvironmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerScenarioSetFallbackEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc scenarioSetFallbackEnvironment(scenario: RID; environment: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerScenarioSetFallbackEnvironmentMethodBind):
    visualServerScenarioSetFallbackEnvironmentMethodBind = getMethod(
        cstring"VisualServer", cstring"scenario_set_fallback_environment")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scenario)
  argsToPassToGodot[][1] = unsafeAddr(environment)
  var ptrCallRet: pointer
  visualServerScenarioSetFallbackEnvironmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerScenarioSetReflectionAtlasSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc scenarioSetReflectionAtlasSize(scenario: RID; size: int64; subdiv: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerScenarioSetReflectionAtlasSizeMethodBind):
    visualServerScenarioSetReflectionAtlasSizeMethodBind = getMethod(
        cstring"VisualServer", cstring"scenario_set_reflection_atlas_size")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scenario)
  argsToPassToGodot[][1] = unsafeAddr(size)
  argsToPassToGodot[][2] = unsafeAddr(subdiv)
  var ptrCallRet: pointer
  visualServerScenarioSetReflectionAtlasSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSetBootImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBootImage(image: Image; color: Color; scale: bool; useFilter: bool = true) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSetBootImageMethodBind):
    visualServerSetBootImageMethodBind = getMethod(cstring"VisualServer",
        cstring"set_boot_image")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = unsafeAddr(scale)
  argsToPassToGodot[][3] = unsafeAddr(useFilter)
  var ptrCallRet: pointer
  visualServerSetBootImageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerSetDebugGenerateWireframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDebugGenerateWireframes(generate: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSetDebugGenerateWireframesMethodBind):
    visualServerSetDebugGenerateWireframesMethodBind = getMethod(
        cstring"VisualServer", cstring"set_debug_generate_wireframes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(generate)
  var ptrCallRet: pointer
  visualServerSetDebugGenerateWireframesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSetDefaultClearColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDefaultClearColor(color: Color) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSetDefaultClearColorMethodBind):
    visualServerSetDefaultClearColorMethodBind = getMethod(cstring"VisualServer",
        cstring"set_default_clear_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(color)
  var ptrCallRet: pointer
  visualServerSetDefaultClearColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSetRenderLoopEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRenderLoopEnabled(enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSetRenderLoopEnabledMethodBind):
    visualServerSetRenderLoopEnabledMethodBind = getMethod(cstring"VisualServer",
        cstring"set_render_loop_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerSetRenderLoopEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSetShaderTimeScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setShaderTimeScale(scale: float64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSetShaderTimeScaleMethodBind):
    visualServerSetShaderTimeScaleMethodBind = getMethod(cstring"VisualServer",
        cstring"set_shader_time_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scale)
  var ptrCallRet: pointer
  visualServerSetShaderTimeScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerShaderCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc shaderCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerShaderCreateMethodBind):
    visualServerShaderCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"shader_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerShaderCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerShaderGetCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shaderGetCode(shader: RID): string =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerShaderGetCodeMethodBind):
    visualServerShaderGetCodeMethodBind = getMethod(cstring"VisualServer",
        cstring"shader_get_code")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shader)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualServerShaderGetCodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualServerShaderGetDefaultTextureParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc shaderGetDefaultTextureParam(shader: RID; name: string): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerShaderGetDefaultTextureParamMethodBind):
    visualServerShaderGetDefaultTextureParamMethodBind = getMethod(
        cstring"VisualServer", cstring"shader_get_default_texture_param")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shader)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerShaderGetDefaultTextureParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualServerShaderGetParamListMethodBind {.threadvar.}: ptr GodotMethodBind
proc shaderGetParamList(shader: RID): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerShaderGetParamListMethodBind):
    visualServerShaderGetParamListMethodBind = getMethod(cstring"VisualServer",
        cstring"shader_get_param_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shader)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerShaderGetParamListMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerShaderSetCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shaderSetCode(shader: RID; code: string) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerShaderSetCodeMethodBind):
    visualServerShaderSetCodeMethodBind = getMethod(cstring"VisualServer",
        cstring"shader_set_code")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shader)
  var argToPassToGodot1 = toGodotString(code)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualServerShaderSetCodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualServerShaderSetDefaultTextureParamMethodBind {.threadvar.}: ptr GodotMethodBind
proc shaderSetDefaultTextureParam(shader: RID; name: string; texture: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerShaderSetDefaultTextureParamMethodBind):
    visualServerShaderSetDefaultTextureParamMethodBind = getMethod(
        cstring"VisualServer", cstring"shader_set_default_texture_param")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shader)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(texture)
  var ptrCallRet: pointer
  visualServerShaderSetDefaultTextureParamMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualServerSkeletonAllocateMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonAllocate(skeleton: RID; bones: int64; is2dSkeleton: bool = false) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkeletonAllocateMethodBind):
    visualServerSkeletonAllocateMethodBind = getMethod(cstring"VisualServer",
        cstring"skeleton_allocate")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(skeleton)
  argsToPassToGodot[][1] = unsafeAddr(bones)
  argsToPassToGodot[][2] = unsafeAddr(is2dSkeleton)
  var ptrCallRet: pointer
  visualServerSkeletonAllocateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSkeletonBoneGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonBoneGetTransform(skeleton: RID; bone: int64): Transform =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkeletonBoneGetTransformMethodBind):
    visualServerSkeletonBoneGetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"skeleton_bone_get_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(skeleton)
  argsToPassToGodot[][1] = unsafeAddr(bone)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerSkeletonBoneGetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSkeletonBoneGetTransform2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonBoneGetTransform2d(skeleton: RID; bone: int64): Transform2D =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkeletonBoneGetTransform2dMethodBind):
    visualServerSkeletonBoneGetTransform2dMethodBind = getMethod(
        cstring"VisualServer", cstring"skeleton_bone_get_transform_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(skeleton)
  argsToPassToGodot[][1] = unsafeAddr(bone)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerSkeletonBoneGetTransform2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSkeletonBoneSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonBoneSetTransform(skeleton: RID; bone: int64; transform: Transform) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkeletonBoneSetTransformMethodBind):
    visualServerSkeletonBoneSetTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"skeleton_bone_set_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(skeleton)
  argsToPassToGodot[][1] = unsafeAddr(bone)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerSkeletonBoneSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSkeletonBoneSetTransform2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonBoneSetTransform2d(skeleton: RID; bone: int64; transform: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkeletonBoneSetTransform2dMethodBind):
    visualServerSkeletonBoneSetTransform2dMethodBind = getMethod(
        cstring"VisualServer", cstring"skeleton_bone_set_transform_2d")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(skeleton)
  argsToPassToGodot[][1] = unsafeAddr(bone)
  argsToPassToGodot[][2] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerSkeletonBoneSetTransform2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSkeletonCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkeletonCreateMethodBind):
    visualServerSkeletonCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"skeleton_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerSkeletonCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerSkeletonGetBoneCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonGetBoneCount(skeleton: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkeletonGetBoneCountMethodBind):
    visualServerSkeletonGetBoneCountMethodBind = getMethod(cstring"VisualServer",
        cstring"skeleton_get_bone_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(skeleton)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerSkeletonGetBoneCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSkyCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc skyCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkyCreateMethodBind):
    visualServerSkyCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"sky_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerSkyCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerSkySetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc skySetTexture(sky: RID; cubeMap: RID; radianceSize: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSkySetTextureMethodBind):
    visualServerSkySetTextureMethodBind = getMethod(cstring"VisualServer",
        cstring"sky_set_texture")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(sky)
  argsToPassToGodot[][1] = unsafeAddr(cubeMap)
  argsToPassToGodot[][2] = unsafeAddr(radianceSize)
  var ptrCallRet: pointer
  visualServerSkySetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerSpotLightCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc spotLightCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSpotLightCreateMethodBind):
    visualServerSpotLightCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"spot_light_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerSpotLightCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerSyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc sync() =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerSyncMethodBind):
    visualServerSyncMethodBind = getMethod(cstring"VisualServer", cstring"sync")
  var ptrCallRet: pointer
  visualServerSyncMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerTextureAllocateMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureAllocate(texture: RID; width: int64; height: int64; depth3d: int64;
                    format: int64; typee: int64; flags: int64 = 7'i64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureAllocateMethodBind):
    visualServerTextureAllocateMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_allocate")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  argsToPassToGodot[][1] = unsafeAddr(width)
  argsToPassToGodot[][2] = unsafeAddr(height)
  argsToPassToGodot[][3] = unsafeAddr(depth3d)
  argsToPassToGodot[][4] = unsafeAddr(format)
  argsToPassToGodot[][5] = unsafeAddr(typee)
  argsToPassToGodot[][6] = unsafeAddr(flags)
  var ptrCallRet: pointer
  visualServerTextureAllocateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureBindMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureBind(texture: RID; number: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureBindMethodBind):
    visualServerTextureBindMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_bind")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  argsToPassToGodot[][1] = unsafeAddr(number)
  var ptrCallRet: pointer
  visualServerTextureBindMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualServerTextureCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureCreateMethodBind):
    visualServerTextureCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerTextureCreateFromImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureCreateFromImage(image: Image; flags: int64 = 7'i64): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureCreateFromImageMethodBind):
    visualServerTextureCreateFromImageMethodBind = getMethod(
        cstring"VisualServer", cstring"texture_create_from_image")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(flags)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureCreateFromImageMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureDebugUsageMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureDebugUsage(): Array =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureDebugUsageMethodBind):
    visualServerTextureDebugUsageMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_debug_usage")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualServerTextureDebugUsageMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var visualServerTextureGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetData(texture: RID; cubeSide: int64 = 0'i64): Image =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetDataMethodBind):
    visualServerTextureGetDataMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  argsToPassToGodot[][1] = unsafeAddr(cubeSide)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  visualServerTextureGetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var visualServerTextureGetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetDepth(texture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetDepthMethodBind):
    visualServerTextureGetDepthMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureGetDepthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureGetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetFlags(texture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetFlagsMethodBind):
    visualServerTextureGetFlagsMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureGetFlagsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetFormat(texture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetFormatMethodBind):
    visualServerTextureGetFormatMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_format")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureGetFormatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetHeight(texture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetHeightMethodBind):
    visualServerTextureGetHeightMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureGetHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureGetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetPath(texture: RID): string =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetPathMethodBind):
    visualServerTextureGetPathMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualServerTextureGetPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualServerTextureGetTexidMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetTexid(texture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetTexidMethodBind):
    visualServerTextureGetTexidMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_texid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureGetTexidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetType(texture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetTypeMethodBind):
    visualServerTextureGetTypeMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureGetTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureGetWidth(texture: RID): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureGetWidthMethodBind):
    visualServerTextureGetWidthMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_get_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerTextureGetWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureSetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureSetData(texture: RID; image: Image; layer: int64 = 0'i64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureSetDataMethodBind):
    visualServerTextureSetDataMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_set_data")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  let argToPassToGodot1 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(layer)
  var ptrCallRet: pointer
  visualServerTextureSetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureSetDataPartialMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureSetDataPartial(texture: RID; image: Image; srcX: int64; srcY: int64;
                          srcW: int64; srcH: int64; dstX: int64; dstY: int64;
                          dstMip: int64; layer: int64 = 0'i64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureSetDataPartialMethodBind):
    visualServerTextureSetDataPartialMethodBind = getMethod(
        cstring"VisualServer", cstring"texture_set_data_partial")
  var
    argsStatic: array[10, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  let argToPassToGodot1 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(srcX)
  argsToPassToGodot[][3] = unsafeAddr(srcY)
  argsToPassToGodot[][4] = unsafeAddr(srcW)
  argsToPassToGodot[][5] = unsafeAddr(srcH)
  argsToPassToGodot[][6] = unsafeAddr(dstX)
  argsToPassToGodot[][7] = unsafeAddr(dstY)
  argsToPassToGodot[][8] = unsafeAddr(dstMip)
  argsToPassToGodot[][9] = unsafeAddr(layer)
  var ptrCallRet: pointer
  visualServerTextureSetDataPartialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureSetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureSetFlags(texture: RID; flags: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureSetFlagsMethodBind):
    visualServerTextureSetFlagsMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_set_flags")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  var ptrCallRet: pointer
  visualServerTextureSetFlagsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureSetPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureSetPath(texture: RID; path: string) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureSetPathMethodBind):
    visualServerTextureSetPathMethodBind = getMethod(cstring"VisualServer",
        cstring"texture_set_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  var argToPassToGodot1 = toGodotString(path)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualServerTextureSetPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualServerTextureSetShrinkAllX2OnSetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureSetShrinkAllX2OnSetData(shrink: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureSetShrinkAllX2OnSetDataMethodBind):
    visualServerTextureSetShrinkAllX2OnSetDataMethodBind = getMethod(
        cstring"VisualServer", cstring"texture_set_shrink_all_x2_on_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shrink)
  var ptrCallRet: pointer
  visualServerTextureSetShrinkAllX2OnSetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTextureSetSizeOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureSetSizeOverride(texture: RID; width: int64; height: int64; depth: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTextureSetSizeOverrideMethodBind):
    visualServerTextureSetSizeOverrideMethodBind = getMethod(
        cstring"VisualServer", cstring"texture_set_size_override")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(texture)
  argsToPassToGodot[][1] = unsafeAddr(width)
  argsToPassToGodot[][2] = unsafeAddr(height)
  argsToPassToGodot[][3] = unsafeAddr(depth)
  var ptrCallRet: pointer
  visualServerTextureSetSizeOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerTexturesKeepOriginalMethodBind {.threadvar.}: ptr GodotMethodBind
proc texturesKeepOriginal(enable: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerTexturesKeepOriginalMethodBind):
    visualServerTexturesKeepOriginalMethodBind = getMethod(cstring"VisualServer",
        cstring"textures_keep_original")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualServerTexturesKeepOriginalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportAttachCameraMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportAttachCamera(viewport: RID; camera: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportAttachCameraMethodBind):
    visualServerViewportAttachCameraMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_attach_camera")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(camera)
  var ptrCallRet: pointer
  visualServerViewportAttachCameraMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportAttachCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportAttachCanvas(viewport: RID; canvas: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportAttachCanvasMethodBind):
    visualServerViewportAttachCanvasMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_attach_canvas")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(canvas)
  var ptrCallRet: pointer
  visualServerViewportAttachCanvasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportAttachToScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportAttachToScreen(viewport: RID;
                           rect: Rect2 = initRect2(0.0, 0.0, 0.0, 0.0);
                           screen: int64 = 0'i64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportAttachToScreenMethodBind):
    visualServerViewportAttachToScreenMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_attach_to_screen")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(screen)
  var ptrCallRet: pointer
  visualServerViewportAttachToScreenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportCreate(): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportCreateMethodBind):
    visualServerViewportCreateMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_create")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerViewportCreateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualServerViewportDetachMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportDetach(viewport: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportDetachMethodBind):
    visualServerViewportDetachMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_detach")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  var ptrCallRet: pointer
  visualServerViewportDetachMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportGetRenderInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportGetRenderInfo(viewport: RID; info: int64): int64 =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportGetRenderInfoMethodBind):
    visualServerViewportGetRenderInfoMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_get_render_info")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(info)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerViewportGetRenderInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportGetTexture(viewport: RID): RID =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportGetTextureMethodBind):
    visualServerViewportGetTextureMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_get_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualServerViewportGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportRemoveCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportRemoveCanvas(viewport: RID; canvas: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportRemoveCanvasMethodBind):
    visualServerViewportRemoveCanvasMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_remove_canvas")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(canvas)
  var ptrCallRet: pointer
  visualServerViewportRemoveCanvasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetActive(viewport: RID; active: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetActiveMethodBind):
    visualServerViewportSetActiveMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_active")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(active)
  var ptrCallRet: pointer
  visualServerViewportSetActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetCanvasStackingMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetCanvasStacking(viewport: RID; canvas: RID; layer: int64;
                              sublayer: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetCanvasStackingMethodBind):
    visualServerViewportSetCanvasStackingMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_canvas_stacking")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(canvas)
  argsToPassToGodot[][2] = unsafeAddr(layer)
  argsToPassToGodot[][3] = unsafeAddr(sublayer)
  var ptrCallRet: pointer
  visualServerViewportSetCanvasStackingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetCanvasTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetCanvasTransform(viewport: RID; canvas: RID; offset: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetCanvasTransformMethodBind):
    visualServerViewportSetCanvasTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_canvas_transform")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(canvas)
  argsToPassToGodot[][2] = unsafeAddr(offset)
  var ptrCallRet: pointer
  visualServerViewportSetCanvasTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetClearModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetClearMode(viewport: RID; clearMode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetClearModeMethodBind):
    visualServerViewportSetClearModeMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_clear_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(clearMode)
  var ptrCallRet: pointer
  visualServerViewportSetClearModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetDebugDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetDebugDraw(viewport: RID; draw: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetDebugDrawMethodBind):
    visualServerViewportSetDebugDrawMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_debug_draw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(draw)
  var ptrCallRet: pointer
  visualServerViewportSetDebugDrawMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetDisable3dMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetDisable3d(viewport: RID; disabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetDisable3dMethodBind):
    visualServerViewportSetDisable3dMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_disable_3d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  visualServerViewportSetDisable3dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetDisableEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetDisableEnvironment(viewport: RID; disabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetDisableEnvironmentMethodBind):
    visualServerViewportSetDisableEnvironmentMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_disable_environment")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  visualServerViewportSetDisableEnvironmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetGlobalCanvasTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetGlobalCanvasTransform(viewport: RID; transform: Transform2D) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetGlobalCanvasTransformMethodBind):
    visualServerViewportSetGlobalCanvasTransformMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_global_canvas_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  visualServerViewportSetGlobalCanvasTransformMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerViewportSetHdrMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetHdr(viewport: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetHdrMethodBind):
    visualServerViewportSetHdrMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_hdr")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerViewportSetHdrMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetHideCanvasMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetHideCanvas(viewport: RID; hidden: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetHideCanvasMethodBind):
    visualServerViewportSetHideCanvasMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_hide_canvas")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(hidden)
  var ptrCallRet: pointer
  visualServerViewportSetHideCanvasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetHideScenarioMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetHideScenario(viewport: RID; hidden: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetHideScenarioMethodBind):
    visualServerViewportSetHideScenarioMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_hide_scenario")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(hidden)
  var ptrCallRet: pointer
  visualServerViewportSetHideScenarioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetMsaaMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetMsaa(viewport: RID; msaa: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetMsaaMethodBind):
    visualServerViewportSetMsaaMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_msaa")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(msaa)
  var ptrCallRet: pointer
  visualServerViewportSetMsaaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetParentViewportMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetParentViewport(viewport: RID; parentViewport: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetParentViewportMethodBind):
    visualServerViewportSetParentViewportMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_parent_viewport")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(parentViewport)
  var ptrCallRet: pointer
  visualServerViewportSetParentViewportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetRenderDirectToScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetRenderDirectToScreen(viewport: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetRenderDirectToScreenMethodBind):
    visualServerViewportSetRenderDirectToScreenMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_render_direct_to_screen")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerViewportSetRenderDirectToScreenMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerViewportSetScenarioMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetScenario(viewport: RID; scenario: RID) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetScenarioMethodBind):
    visualServerViewportSetScenarioMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_scenario")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(scenario)
  var ptrCallRet: pointer
  visualServerViewportSetScenarioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetShadowAtlasQuadrantSubdivisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetShadowAtlasQuadrantSubdivision(viewport: RID; quadrant: int64;
    subdivision: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetShadowAtlasQuadrantSubdivisionMethodBind):
    visualServerViewportSetShadowAtlasQuadrantSubdivisionMethodBind = getMethod(
        cstring"VisualServer",
        cstring"viewport_set_shadow_atlas_quadrant_subdivision")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(quadrant)
  argsToPassToGodot[][2] = unsafeAddr(subdivision)
  var ptrCallRet: pointer
  visualServerViewportSetShadowAtlasQuadrantSubdivisionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerViewportSetShadowAtlasSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetShadowAtlasSize(viewport: RID; size: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetShadowAtlasSizeMethodBind):
    visualServerViewportSetShadowAtlasSizeMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_shadow_atlas_size")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(size)
  var ptrCallRet: pointer
  visualServerViewportSetShadowAtlasSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetSize(viewport: RID; width: int64; height: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetSizeMethodBind):
    visualServerViewportSetSizeMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_size")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(width)
  argsToPassToGodot[][2] = unsafeAddr(height)
  var ptrCallRet: pointer
  visualServerViewportSetSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetTransparentBackgroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetTransparentBackground(viewport: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetTransparentBackgroundMethodBind):
    visualServerViewportSetTransparentBackgroundMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_transparent_background")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerViewportSetTransparentBackgroundMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualServerViewportSetUpdateModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetUpdateMode(viewport: RID; updateMode: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetUpdateModeMethodBind):
    visualServerViewportSetUpdateModeMethodBind = getMethod(
        cstring"VisualServer", cstring"viewport_set_update_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(updateMode)
  var ptrCallRet: pointer
  visualServerViewportSetUpdateModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetUsageMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetUsage(viewport: RID; usage: int64) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetUsageMethodBind):
    visualServerViewportSetUsageMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_usage")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(usage)
  var ptrCallRet: pointer
  visualServerViewportSetUsageMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetUseArvrMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetUseArvr(viewport: RID; useArvr: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetUseArvrMethodBind):
    visualServerViewportSetUseArvrMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_use_arvr")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(useArvr)
  var ptrCallRet: pointer
  visualServerViewportSetUseArvrMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualServerViewportSetVflipMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportSetVflip(viewport: RID; enabled: bool) =
  if isNil(singletonVisualServer):
    singletonVisualServer = getSingleton[VisualServer]()
  let self = singletonVisualServer
  if isNil(visualServerViewportSetVflipMethodBind):
    visualServerViewportSetVflipMethodBind = getMethod(cstring"VisualServer",
        cstring"viewport_set_vflip")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(viewport)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualServerViewportSetVflipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
