
import
  godot, godottypes, godotinternal, material

export
  godottypes, material

const
  BILLBOARD_DISABLED* = 0'i64
  BILLBOARD_ENABLED* = 1'i64
  BILLBOARD_FIXED_Y* = 2'i64
  BILLBOARD_PARTICLES* = 3'i64
  BLEND_MODE_ADD* = 1'i64
  BLEND_MODE_MIX* = 0'i64
  BLEND_MODE_MUL* = 3'i64
  BLEND_MODE_SUB* = 2'i64
  CULL_BACK* = 0'i64
  CULL_DISABLED* = 2'i64
  CULL_FRONT* = 1'i64
  DEPTH_DRAW_ALPHA_OPAQUE_PREPASS* = 3'i64
  DEPTH_DRAW_ALWAYS* = 1'i64
  DEPTH_DRAW_DISABLED* = 2'i64
  DEPTH_DRAW_OPAQUE_ONLY* = 0'i64
  DETAIL_UV_1* = 0'i64
  DETAIL_UV_2* = 1'i64
  DIFFUSE_BURLEY* = 0'i64
  DIFFUSE_LAMBERT* = 1'i64
  DIFFUSE_LAMBERT_WRAP* = 2'i64
  DIFFUSE_OREN_NAYAR* = 3'i64
  DIFFUSE_TOON* = 4'i64
  DISTANCE_FADE_DISABLED* = 0'i64
  DISTANCE_FADE_OBJECT_DITHER* = 3'i64
  DISTANCE_FADE_PIXEL_ALPHA* = 1'i64
  DISTANCE_FADE_PIXEL_DITHER* = 2'i64
  EMISSION_OP_ADD* = 0'i64
  EMISSION_OP_MULTIPLY* = 1'i64
  FEATURE_AMBIENT_OCCLUSION* = 6'i64
  FEATURE_ANISOTROPY* = 5'i64
  FEATURE_CLEARCOAT* = 4'i64
  FEATURE_DEPTH_MAPPING* = 7'i64
  FEATURE_DETAIL* = 11'i64
  FEATURE_EMISSION* = 1'i64
  FEATURE_MAX* = 12'i64
  FEATURE_NORMAL_MAPPING* = 2'i64
  FEATURE_REFRACTION* = 10'i64
  FEATURE_RIM* = 3'i64
  FEATURE_SUBSURACE_SCATTERING* = 8'i64
  FEATURE_TRANSMISSION* = 9'i64
  FEATURE_TRANSPARENT* = 0'i64
  FLAG_ALBEDO_FROM_VERTEX_COLOR* = 3'i64
  FLAG_ALBEDO_TEXTURE_FORCE_SRGB* = 14'i64
  FLAG_AO_ON_UV2* = 11'i64
  FLAG_BILLBOARD_KEEP_SCALE* = 7'i64
  FLAG_DISABLE_AMBIENT_LIGHT* = 17'i64
  FLAG_DISABLE_DEPTH_TEST* = 2'i64
  FLAG_DONT_RECEIVE_SHADOWS* = 15'i64
  FLAG_EMISSION_ON_UV2* = 12'i64
  FLAG_ENSURE_CORRECT_NORMALS* = 16'i64
  FLAG_FIXED_SIZE* = 6'i64
  FLAG_MAX* = 19'i64
  FLAG_SRGB_VERTEX_COLOR* = 4'i64
  FLAG_TRIPLANAR_USE_WORLD* = 10'i64
  FLAG_UNSHADED* = 0'i64
  FLAG_USE_ALPHA_SCISSOR* = 13'i64
  FLAG_USE_POINT_SIZE* = 5'i64
  FLAG_USE_SHADOW_TO_OPACITY* = 18'i64
  FLAG_USE_VERTEX_LIGHTING* = 1'i64
  FLAG_UV1_USE_TRIPLANAR* = 8'i64
  FLAG_UV2_USE_TRIPLANAR* = 9'i64
  SPECULAR_BLINN* = 1'i64
  SPECULAR_DISABLED* = 4'i64
  SPECULAR_PHONG* = 2'i64
  SPECULAR_SCHLICK_GGX* = 0'i64
  SPECULAR_TOON* = 3'i64
  TEXTURE_ALBEDO* = 0'i64
  TEXTURE_AMBIENT_OCCLUSION* = 8'i64
  TEXTURE_CHANNEL_ALPHA* = 3'i64
  TEXTURE_CHANNEL_BLUE* = 2'i64
  TEXTURE_CHANNEL_GRAYSCALE* = 4'i64
  TEXTURE_CHANNEL_GREEN* = 1'i64
  TEXTURE_CHANNEL_RED* = 0'i64
  TEXTURE_CLEARCOAT* = 6'i64
  TEXTURE_DEPTH* = 9'i64
  TEXTURE_DETAIL_ALBEDO* = 14'i64
  TEXTURE_DETAIL_MASK* = 13'i64
  TEXTURE_DETAIL_NORMAL* = 15'i64
  TEXTURE_EMISSION* = 3'i64
  TEXTURE_FLOWMAP* = 7'i64
  TEXTURE_MAX* = 16'i64
  TEXTURE_METALLIC* = 1'i64
  TEXTURE_NORMAL* = 4'i64
  TEXTURE_REFRACTION* = 12'i64
  TEXTURE_RIM* = 5'i64
  TEXTURE_ROUGHNESS* = 2'i64
  TEXTURE_SUBSURFACE_SCATTERING* = 10'i64
  TEXTURE_TRANSMISSION* = 11'i64
proc albedoColor*(self: SpatialMaterial): Color {.gcsafe, locks: 0.}
proc `albedoColor=`*(self: SpatialMaterial; val: Color) {.gcsafe, locks: 0.}
proc albedoTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `albedoTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc anisotropy*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `anisotropy=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc anisotropyEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `anisotropyEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc anisotropyFlowmap*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `anisotropyFlowmap=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc aoEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `aoEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc aoLightAffect*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `aoLightAffect=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc aoOnUv2*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `aoOnUv2=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc aoTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `aoTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc aoTextureChannel*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `aoTextureChannel=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc clearcoat*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `clearcoat=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc clearcoatEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `clearcoatEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc clearcoatGloss*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `clearcoatGloss=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc clearcoatTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `clearcoatTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc depthDeepParallax*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `depthDeepParallax=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc depthEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `depthEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc depthFlipBinormal*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `depthFlipBinormal=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc depthFlipTangent*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `depthFlipTangent=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc depthMaxLayers*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `depthMaxLayers=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc depthMinLayers*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `depthMinLayers=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc depthScale*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `depthScale=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc depthTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `depthTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc detailAlbedo*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `detailAlbedo=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc detailBlendMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `detailBlendMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc detailEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `detailEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc detailMask*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `detailMask=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc detailNormal*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `detailNormal=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc detailUvLayer*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `detailUvLayer=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc distanceFadeMaxDistance*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `distanceFadeMaxDistance=`*(self: SpatialMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc distanceFadeMinDistance*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `distanceFadeMinDistance=`*(self: SpatialMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc distanceFadeMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `distanceFadeMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc emission*(self: SpatialMaterial): Color {.gcsafe, locks: 0.}
proc `emission=`*(self: SpatialMaterial; val: Color) {.gcsafe, locks: 0.}
proc emissionEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `emissionEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc emissionEnergy*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `emissionEnergy=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc emissionOnUv2*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `emissionOnUv2=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc emissionOperator*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `emissionOperator=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc emissionTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `emissionTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc flagsAlbedoTexForceSrgb*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsAlbedoTexForceSrgb=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsDisableAmbientLight*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsDisableAmbientLight=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsDoNotReceiveShadows*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsDoNotReceiveShadows=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsEnsureCorrectNormals*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsEnsureCorrectNormals=`*(self: SpatialMaterial; val: bool) {.gcsafe,
    locks: 0.}
proc flagsFixedSize*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsFixedSize=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsNoDepthTest*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsNoDepthTest=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsTransparent*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsTransparent=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsUnshaded*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsUnshaded=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsUsePointSize*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsUsePointSize=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsUseShadowToOpacity*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsUseShadowToOpacity=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsVertexLighting*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsVertexLighting=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc flagsWorldTriplanar*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `flagsWorldTriplanar=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc metallic*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `metallic=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc metallicSpecular*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `metallicSpecular=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc metallicTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `metallicTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc metallicTextureChannel*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `metallicTextureChannel=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc normalEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `normalEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc normalScale*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `normalScale=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc normalTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `normalTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc paramsAlphaScissorThreshold*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `paramsAlphaScissorThreshold=`*(self: SpatialMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc paramsBillboardKeepScale*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `paramsBillboardKeepScale=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc paramsBillboardMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `paramsBillboardMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc paramsBlendMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `paramsBlendMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc paramsCullMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `paramsCullMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc paramsDepthDrawMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `paramsDepthDrawMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc paramsDiffuseMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `paramsDiffuseMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc paramsGrow*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `paramsGrow=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc paramsGrowAmount*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `paramsGrowAmount=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc paramsLineWidth*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `paramsLineWidth=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc paramsPointSize*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `paramsPointSize=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc paramsSpecularMode*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `paramsSpecularMode=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc paramsUseAlphaScissor*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `paramsUseAlphaScissor=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc particlesAnimHFrames*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `particlesAnimHFrames=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc particlesAnimLoop*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `particlesAnimLoop=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc particlesAnimVFrames*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `particlesAnimVFrames=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc proximityFadeDistance*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `proximityFadeDistance=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc proximityFadeEnable*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `proximityFadeEnable=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc refractionEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `refractionEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc refractionScale*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `refractionScale=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc refractionTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `refractionTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc refractionTextureChannel*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `refractionTextureChannel=`*(self: SpatialMaterial; val: int64) {.gcsafe,
    locks: 0.}
proc rim*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `rim=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc rimEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `rimEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc rimTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `rimTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc rimTint*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `rimTint=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc roughness*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `roughness=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc roughnessTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `roughnessTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc roughnessTextureChannel*(self: SpatialMaterial): int64 {.gcsafe, locks: 0.}
proc `roughnessTextureChannel=`*(self: SpatialMaterial; val: int64) {.gcsafe, locks: 0.}
proc subsurfScatterEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `subsurfScatterEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc subsurfScatterStrength*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `subsurfScatterStrength=`*(self: SpatialMaterial; val: float64) {.gcsafe,
    locks: 0.}
proc subsurfScatterTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `subsurfScatterTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc transmission*(self: SpatialMaterial): Color {.gcsafe, locks: 0.}
proc `transmission=`*(self: SpatialMaterial; val: Color) {.gcsafe, locks: 0.}
proc transmissionEnabled*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `transmissionEnabled=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc transmissionTexture*(self: SpatialMaterial): Texture {.gcsafe, locks: 0.}
proc `transmissionTexture=`*(self: SpatialMaterial; val: Texture) {.gcsafe, locks: 0.}
proc uv1Offset*(self: SpatialMaterial): Vector3 {.gcsafe, locks: 0.}
proc `uv1Offset=`*(self: SpatialMaterial; val: Vector3) {.gcsafe, locks: 0.}
proc uv1Scale*(self: SpatialMaterial): Vector3 {.gcsafe, locks: 0.}
proc `uv1Scale=`*(self: SpatialMaterial; val: Vector3) {.gcsafe, locks: 0.}
proc uv1Triplanar*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `uv1Triplanar=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc uv1TriplanarSharpness*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `uv1TriplanarSharpness=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc uv2Offset*(self: SpatialMaterial): Vector3 {.gcsafe, locks: 0.}
proc `uv2Offset=`*(self: SpatialMaterial; val: Vector3) {.gcsafe, locks: 0.}
proc uv2Scale*(self: SpatialMaterial): Vector3 {.gcsafe, locks: 0.}
proc `uv2Scale=`*(self: SpatialMaterial; val: Vector3) {.gcsafe, locks: 0.}
proc uv2Triplanar*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `uv2Triplanar=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc uv2TriplanarSharpness*(self: SpatialMaterial): float64 {.gcsafe, locks: 0.}
proc `uv2TriplanarSharpness=`*(self: SpatialMaterial; val: float64) {.gcsafe, locks: 0.}
proc vertexColorIsSrgb*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `vertexColorIsSrgb=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
proc vertexColorUseAsAlbedo*(self: SpatialMaterial): bool {.gcsafe, locks: 0.}
proc `vertexColorUseAsAlbedo=`*(self: SpatialMaterial; val: bool) {.gcsafe, locks: 0.}
var spatialMaterialGetAlbedoMethodBind {.threadvar.}: ptr GodotMethodBind
proc albedoColor(self: SpatialMaterial): Color =
  if isNil(spatialMaterialGetAlbedoMethodBind):
    spatialMaterialGetAlbedoMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_albedo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetAlbedoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetAlbedoMethodBind {.threadvar.}: ptr GodotMethodBind
proc `albedoColor=`(self: SpatialMaterial; val: Color) =
  if isNil(spatialMaterialSetAlbedoMethodBind):
    spatialMaterialSetAlbedoMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_albedo")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetAlbedoMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc albedoTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spatialMaterialSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `albedoTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetAnisotropyMethodBind {.threadvar.}: ptr GodotMethodBind
proc anisotropy(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetAnisotropyMethodBind):
    spatialMaterialGetAnisotropyMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_anisotropy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetAnisotropyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetAnisotropyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `anisotropy=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetAnisotropyMethodBind):
    spatialMaterialSetAnisotropyMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_anisotropy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetAnisotropyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetFeatureMethodBind {.threadvar.}: ptr GodotMethodBind
proc anisotropyEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialSetFeatureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `anisotropyEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc anisotropyFlowmap(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `anisotropyFlowmap=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc aoEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `aoEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetAoLightAffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc aoLightAffect(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetAoLightAffectMethodBind):
    spatialMaterialGetAoLightAffectMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_ao_light_affect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetAoLightAffectMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetAoLightAffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `aoLightAffect=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetAoLightAffectMethodBind):
    spatialMaterialSetAoLightAffectMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_ao_light_affect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetAoLightAffectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc aoOnUv2(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialSetFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc `aoOnUv2=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc aoTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `aoTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetAoTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc aoTextureChannel(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetAoTextureChannelMethodBind):
    spatialMaterialGetAoTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_ao_texture_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetAoTextureChannelMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetAoTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `aoTextureChannel=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetAoTextureChannelMethodBind):
    spatialMaterialSetAoTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_ao_texture_channel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetAoTextureChannelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetClearcoatMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearcoat(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetClearcoatMethodBind):
    spatialMaterialGetClearcoatMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_clearcoat")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetClearcoatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetClearcoatMethodBind {.threadvar.}: ptr GodotMethodBind
proc `clearcoat=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetClearcoatMethodBind):
    spatialMaterialSetClearcoatMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_clearcoat")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetClearcoatMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc clearcoatEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `clearcoatEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetClearcoatGlossMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearcoatGloss(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetClearcoatGlossMethodBind):
    spatialMaterialGetClearcoatGlossMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_clearcoat_gloss")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetClearcoatGlossMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetClearcoatGlossMethodBind {.threadvar.}: ptr GodotMethodBind
proc `clearcoatGloss=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetClearcoatGlossMethodBind):
    spatialMaterialSetClearcoatGlossMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_clearcoat_gloss")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetClearcoatGlossMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc clearcoatTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `clearcoatTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialIsDepthDeepParallaxEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc depthDeepParallax(self: SpatialMaterial): bool =
  if isNil(spatialMaterialIsDepthDeepParallaxEnabledMethodBind):
    spatialMaterialIsDepthDeepParallaxEnabledMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"is_depth_deep_parallax_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialIsDepthDeepParallaxEnabledMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetDepthDeepParallaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depthDeepParallax=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetDepthDeepParallaxMethodBind):
    spatialMaterialSetDepthDeepParallaxMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_depth_deep_parallax")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDepthDeepParallaxMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc depthEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `depthEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDepthDeepParallaxFlipBinormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc depthFlipBinormal(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetDepthDeepParallaxFlipBinormalMethodBind):
    spatialMaterialGetDepthDeepParallaxFlipBinormalMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_depth_deep_parallax_flip_binormal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDepthDeepParallaxFlipBinormalMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialMaterialSetDepthDeepParallaxFlipBinormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depthFlipBinormal=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetDepthDeepParallaxFlipBinormalMethodBind):
    spatialMaterialSetDepthDeepParallaxFlipBinormalMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_depth_deep_parallax_flip_binormal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDepthDeepParallaxFlipBinormalMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDepthDeepParallaxFlipTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc depthFlipTangent(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetDepthDeepParallaxFlipTangentMethodBind):
    spatialMaterialGetDepthDeepParallaxFlipTangentMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_depth_deep_parallax_flip_tangent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDepthDeepParallaxFlipTangentMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialMaterialSetDepthDeepParallaxFlipTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depthFlipTangent=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetDepthDeepParallaxFlipTangentMethodBind):
    spatialMaterialSetDepthDeepParallaxFlipTangentMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_depth_deep_parallax_flip_tangent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDepthDeepParallaxFlipTangentMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDepthDeepParallaxMaxLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc depthMaxLayers(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetDepthDeepParallaxMaxLayersMethodBind):
    spatialMaterialGetDepthDeepParallaxMaxLayersMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_depth_deep_parallax_max_layers")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDepthDeepParallaxMaxLayersMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialMaterialSetDepthDeepParallaxMaxLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depthMaxLayers=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetDepthDeepParallaxMaxLayersMethodBind):
    spatialMaterialSetDepthDeepParallaxMaxLayersMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_depth_deep_parallax_max_layers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDepthDeepParallaxMaxLayersMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDepthDeepParallaxMinLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc depthMinLayers(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetDepthDeepParallaxMinLayersMethodBind):
    spatialMaterialGetDepthDeepParallaxMinLayersMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_depth_deep_parallax_min_layers")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDepthDeepParallaxMinLayersMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialMaterialSetDepthDeepParallaxMinLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depthMinLayers=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetDepthDeepParallaxMinLayersMethodBind):
    spatialMaterialSetDepthDeepParallaxMinLayersMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_depth_deep_parallax_min_layers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDepthDeepParallaxMinLayersMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDepthScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc depthScale(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetDepthScaleMethodBind):
    spatialMaterialGetDepthScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_depth_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDepthScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetDepthScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depthScale=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetDepthScaleMethodBind):
    spatialMaterialSetDepthScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_depth_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDepthScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc depthTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `depthTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc detailAlbedo(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `detailAlbedo=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDetailBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc detailBlendMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetDetailBlendModeMethodBind):
    spatialMaterialGetDetailBlendModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_detail_blend_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDetailBlendModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetDetailBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `detailBlendMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetDetailBlendModeMethodBind):
    spatialMaterialSetDetailBlendModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_detail_blend_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDetailBlendModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc detailEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `detailEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc detailMask(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `detailMask=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc detailNormal(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `detailNormal=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDetailUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc detailUvLayer(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetDetailUvMethodBind):
    spatialMaterialGetDetailUvMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_detail_uv")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDetailUvMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetDetailUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc `detailUvLayer=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetDetailUvMethodBind):
    spatialMaterialSetDetailUvMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_detail_uv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDetailUvMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDistanceFadeMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc distanceFadeMaxDistance(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetDistanceFadeMaxDistanceMethodBind):
    spatialMaterialGetDistanceFadeMaxDistanceMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_distance_fade_max_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDistanceFadeMaxDistanceMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetDistanceFadeMaxDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `distanceFadeMaxDistance=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetDistanceFadeMaxDistanceMethodBind):
    spatialMaterialSetDistanceFadeMaxDistanceMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_distance_fade_max_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDistanceFadeMaxDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDistanceFadeMinDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc distanceFadeMinDistance(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetDistanceFadeMinDistanceMethodBind):
    spatialMaterialGetDistanceFadeMinDistanceMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_distance_fade_min_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDistanceFadeMinDistanceMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetDistanceFadeMinDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `distanceFadeMinDistance=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetDistanceFadeMinDistanceMethodBind):
    spatialMaterialSetDistanceFadeMinDistanceMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_distance_fade_min_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDistanceFadeMinDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDistanceFadeMethodBind {.threadvar.}: ptr GodotMethodBind
proc distanceFadeMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetDistanceFadeMethodBind):
    spatialMaterialGetDistanceFadeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_distance_fade")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDistanceFadeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetDistanceFadeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `distanceFadeMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetDistanceFadeMethodBind):
    spatialMaterialSetDistanceFadeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_distance_fade")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDistanceFadeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetEmissionMethodBind {.threadvar.}: ptr GodotMethodBind
proc emission(self: SpatialMaterial): Color =
  if isNil(spatialMaterialGetEmissionMethodBind):
    spatialMaterialGetEmissionMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_emission")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetEmissionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetEmissionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emission=`(self: SpatialMaterial; val: Color) =
  if isNil(spatialMaterialSetEmissionMethodBind):
    spatialMaterialSetEmissionMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_emission")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetEmissionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc emissionEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `emissionEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetEmissionEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionEnergy(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetEmissionEnergyMethodBind):
    spatialMaterialGetEmissionEnergyMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_emission_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetEmissionEnergyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetEmissionEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionEnergy=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetEmissionEnergyMethodBind):
    spatialMaterialSetEmissionEnergyMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_emission_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetEmissionEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc emissionOnUv2(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `emissionOnUv2=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetEmissionOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc emissionOperator(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetEmissionOperatorMethodBind):
    spatialMaterialGetEmissionOperatorMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_emission_operator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetEmissionOperatorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetEmissionOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `emissionOperator=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetEmissionOperatorMethodBind):
    spatialMaterialSetEmissionOperatorMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_emission_operator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetEmissionOperatorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc emissionTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `emissionTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc flagsAlbedoTexForceSrgb(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsAlbedoTexForceSrgb=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 14'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsDisableAmbientLight(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsDisableAmbientLight=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 17'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsDoNotReceiveShadows(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsDoNotReceiveShadows=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 15'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsEnsureCorrectNormals(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsEnsureCorrectNormals=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 16'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsFixedSize(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsFixedSize=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 6'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsNoDepthTest(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsNoDepthTest=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsTransparent(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `flagsTransparent=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc flagsUnshaded(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsUnshaded=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsUsePointSize(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsUsePointSize=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsUseShadowToOpacity(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsUseShadowToOpacity=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 18'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsVertexLighting(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsVertexLighting=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc flagsWorldTriplanar(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `flagsWorldTriplanar=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetMetallicMethodBind {.threadvar.}: ptr GodotMethodBind
proc metallic(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetMetallicMethodBind):
    spatialMaterialGetMetallicMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_metallic")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetMetallicMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetMetallicMethodBind {.threadvar.}: ptr GodotMethodBind
proc `metallic=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetMetallicMethodBind):
    spatialMaterialSetMetallicMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_metallic")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetMetallicMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetSpecularMethodBind {.threadvar.}: ptr GodotMethodBind
proc metallicSpecular(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetSpecularMethodBind):
    spatialMaterialGetSpecularMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_specular")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetSpecularMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetSpecularMethodBind {.threadvar.}: ptr GodotMethodBind
proc `metallicSpecular=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetSpecularMethodBind):
    spatialMaterialSetSpecularMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_specular")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetSpecularMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc metallicTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `metallicTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetMetallicTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc metallicTextureChannel(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetMetallicTextureChannelMethodBind):
    spatialMaterialGetMetallicTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_metallic_texture_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetMetallicTextureChannelMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetMetallicTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `metallicTextureChannel=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetMetallicTextureChannelMethodBind):
    spatialMaterialSetMetallicTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_metallic_texture_channel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetMetallicTextureChannelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc normalEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `normalEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetNormalScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalScale(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetNormalScaleMethodBind):
    spatialMaterialGetNormalScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_normal_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetNormalScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetNormalScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalScale=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetNormalScaleMethodBind):
    spatialMaterialSetNormalScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_normal_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetNormalScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc normalTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `normalTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetAlphaScissorThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsAlphaScissorThreshold(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetAlphaScissorThresholdMethodBind):
    spatialMaterialGetAlphaScissorThresholdMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_alpha_scissor_threshold")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetAlphaScissorThresholdMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetAlphaScissorThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsAlphaScissorThreshold=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetAlphaScissorThresholdMethodBind):
    spatialMaterialSetAlphaScissorThresholdMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_alpha_scissor_threshold")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetAlphaScissorThresholdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc paramsBillboardKeepScale(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `paramsBillboardKeepScale=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 7'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetBillboardModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsBillboardMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetBillboardModeMethodBind):
    spatialMaterialGetBillboardModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_billboard_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetBillboardModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetBillboardModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsBillboardMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetBillboardModeMethodBind):
    spatialMaterialSetBillboardModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_billboard_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetBillboardModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsBlendMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetBlendModeMethodBind):
    spatialMaterialGetBlendModeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_blend_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetBlendModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsBlendMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetBlendModeMethodBind):
    spatialMaterialSetBlendModeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_blend_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetBlendModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetCullModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsCullMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetCullModeMethodBind):
    spatialMaterialGetCullModeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_cull_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetCullModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetCullModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsCullMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetCullModeMethodBind):
    spatialMaterialSetCullModeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_cull_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetCullModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDepthDrawModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsDepthDrawMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetDepthDrawModeMethodBind):
    spatialMaterialGetDepthDrawModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_depth_draw_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDepthDrawModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetDepthDrawModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsDepthDrawMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetDepthDrawModeMethodBind):
    spatialMaterialSetDepthDrawModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_depth_draw_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDepthDrawModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetDiffuseModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsDiffuseMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetDiffuseModeMethodBind):
    spatialMaterialGetDiffuseModeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_diffuse_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetDiffuseModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetDiffuseModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsDiffuseMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetDiffuseModeMethodBind):
    spatialMaterialSetDiffuseModeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_diffuse_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetDiffuseModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialIsGrowEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsGrow(self: SpatialMaterial): bool =
  if isNil(spatialMaterialIsGrowEnabledMethodBind):
    spatialMaterialIsGrowEnabledMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"is_grow_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialIsGrowEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetGrowEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsGrow=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetGrowEnabledMethodBind):
    spatialMaterialSetGrowEnabledMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_grow_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetGrowEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetGrowMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsGrowAmount(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetGrowMethodBind):
    spatialMaterialGetGrowMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_grow")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetGrowMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetGrowMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsGrowAmount=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetGrowMethodBind):
    spatialMaterialSetGrowMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_grow")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetGrowMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetLineWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsLineWidth(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetLineWidthMethodBind):
    spatialMaterialGetLineWidthMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_line_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetLineWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetLineWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsLineWidth=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetLineWidthMethodBind):
    spatialMaterialSetLineWidthMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_line_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetLineWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetPointSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsPointSize(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetPointSizeMethodBind):
    spatialMaterialGetPointSizeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_point_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetPointSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetPointSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsPointSize=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetPointSizeMethodBind):
    spatialMaterialSetPointSizeMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_point_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetPointSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetSpecularModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc paramsSpecularMode(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetSpecularModeMethodBind):
    spatialMaterialGetSpecularModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_specular_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetSpecularModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetSpecularModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `paramsSpecularMode=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetSpecularModeMethodBind):
    spatialMaterialSetSpecularModeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_specular_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetSpecularModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc paramsUseAlphaScissor(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `paramsUseAlphaScissor=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 13'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetParticlesAnimHFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesAnimHFrames(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetParticlesAnimHFramesMethodBind):
    spatialMaterialGetParticlesAnimHFramesMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_particles_anim_h_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetParticlesAnimHFramesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetParticlesAnimHFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `particlesAnimHFrames=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetParticlesAnimHFramesMethodBind):
    spatialMaterialSetParticlesAnimHFramesMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_particles_anim_h_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetParticlesAnimHFramesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetParticlesAnimLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesAnimLoop(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetParticlesAnimLoopMethodBind):
    spatialMaterialGetParticlesAnimLoopMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_particles_anim_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetParticlesAnimLoopMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetParticlesAnimLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `particlesAnimLoop=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetParticlesAnimLoopMethodBind):
    spatialMaterialSetParticlesAnimLoopMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_particles_anim_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetParticlesAnimLoopMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetParticlesAnimVFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesAnimVFrames(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetParticlesAnimVFramesMethodBind):
    spatialMaterialGetParticlesAnimVFramesMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_particles_anim_v_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetParticlesAnimVFramesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetParticlesAnimVFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `particlesAnimVFrames=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetParticlesAnimVFramesMethodBind):
    spatialMaterialSetParticlesAnimVFramesMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_particles_anim_v_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetParticlesAnimVFramesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetProximityFadeDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc proximityFadeDistance(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetProximityFadeDistanceMethodBind):
    spatialMaterialGetProximityFadeDistanceMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_proximity_fade_distance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetProximityFadeDistanceMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetProximityFadeDistanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `proximityFadeDistance=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetProximityFadeDistanceMethodBind):
    spatialMaterialSetProximityFadeDistanceMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_proximity_fade_distance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetProximityFadeDistanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialIsProximityFadeEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc proximityFadeEnable(self: SpatialMaterial): bool =
  if isNil(spatialMaterialIsProximityFadeEnabledMethodBind):
    spatialMaterialIsProximityFadeEnabledMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"is_proximity_fade_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialIsProximityFadeEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetProximityFadeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `proximityFadeEnable=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetProximityFadeMethodBind):
    spatialMaterialSetProximityFadeMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_proximity_fade")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetProximityFadeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc refractionEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `refractionEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetRefractionMethodBind {.threadvar.}: ptr GodotMethodBind
proc refractionScale(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetRefractionMethodBind):
    spatialMaterialGetRefractionMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_refraction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetRefractionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetRefractionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `refractionScale=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetRefractionMethodBind):
    spatialMaterialSetRefractionMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_refraction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetRefractionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc refractionTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `refractionTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 12'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetRefractionTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc refractionTextureChannel(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetRefractionTextureChannelMethodBind):
    spatialMaterialGetRefractionTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_refraction_texture_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetRefractionTextureChannelMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetRefractionTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `refractionTextureChannel=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetRefractionTextureChannelMethodBind):
    spatialMaterialSetRefractionTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_refraction_texture_channel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetRefractionTextureChannelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetRimMethodBind {.threadvar.}: ptr GodotMethodBind
proc rim(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetRimMethodBind):
    spatialMaterialGetRimMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_rim")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetRimMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetRimMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rim=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetRimMethodBind):
    spatialMaterialSetRimMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_rim")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetRimMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc rimEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `rimEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc rimTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `rimTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 5'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetRimTintMethodBind {.threadvar.}: ptr GodotMethodBind
proc rimTint(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetRimTintMethodBind):
    spatialMaterialGetRimTintMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_rim_tint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetRimTintMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetRimTintMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rimTint=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetRimTintMethodBind):
    spatialMaterialSetRimTintMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_rim_tint")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetRimTintMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetRoughnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc roughness(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetRoughnessMethodBind):
    spatialMaterialGetRoughnessMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_roughness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetRoughnessMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetRoughnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roughness=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetRoughnessMethodBind):
    spatialMaterialSetRoughnessMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_roughness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetRoughnessMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc roughnessTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `roughnessTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetRoughnessTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc roughnessTextureChannel(self: SpatialMaterial): int64 =
  if isNil(spatialMaterialGetRoughnessTextureChannelMethodBind):
    spatialMaterialGetRoughnessTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_roughness_texture_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetRoughnessTextureChannelMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var spatialMaterialSetRoughnessTextureChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roughnessTextureChannel=`(self: SpatialMaterial; val: int64) =
  if isNil(spatialMaterialSetRoughnessTextureChannelMethodBind):
    spatialMaterialSetRoughnessTextureChannelMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_roughness_texture_channel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetRoughnessTextureChannelMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc subsurfScatterEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `subsurfScatterEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetSubsurfaceScatteringStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc subsurfScatterStrength(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetSubsurfaceScatteringStrengthMethodBind):
    spatialMaterialGetSubsurfaceScatteringStrengthMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_subsurface_scattering_strength")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetSubsurfaceScatteringStrengthMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialMaterialSetSubsurfaceScatteringStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `subsurfScatterStrength=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetSubsurfaceScatteringStrengthMethodBind):
    spatialMaterialSetSubsurfaceScatteringStrengthMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_subsurface_scattering_strength")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetSubsurfaceScatteringStrengthMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc subsurfScatterTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `subsurfScatterTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 10'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetTransmissionMethodBind {.threadvar.}: ptr GodotMethodBind
proc transmission(self: SpatialMaterial): Color =
  if isNil(spatialMaterialGetTransmissionMethodBind):
    spatialMaterialGetTransmissionMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_transmission")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetTransmissionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spatialMaterialSetTransmissionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transmission=`(self: SpatialMaterial; val: Color) =
  if isNil(spatialMaterialSetTransmissionMethodBind):
    spatialMaterialSetTransmissionMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_transmission")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetTransmissionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc transmissionEnabled(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFeatureMethodBind):
    spatialMaterialGetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_feature")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `transmissionEnabled=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFeatureMethodBind):
    spatialMaterialSetFeatureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_feature")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFeatureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc transmissionTexture(self: SpatialMaterial): Texture =
  if isNil(spatialMaterialGetTextureMethodBind):
    spatialMaterialGetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_texture")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spatialMaterialGetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

proc `transmissionTexture=`(self: SpatialMaterial; val: Texture) =
  if isNil(spatialMaterialSetTextureMethodBind):
    spatialMaterialSetTextureMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_texture")
  var
    godotBoundArg0 = 11'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  let argToPassToGodot1 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  spatialMaterialSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetUv1OffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc uv1Offset(self: SpatialMaterial): Vector3 =
  if isNil(spatialMaterialGetUv1OffsetMethodBind):
    spatialMaterialGetUv1OffsetMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_uv1_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetUv1OffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetUv1OffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uv1Offset=`(self: SpatialMaterial; val: Vector3) =
  if isNil(spatialMaterialSetUv1OffsetMethodBind):
    spatialMaterialSetUv1OffsetMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_uv1_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetUv1OffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetUv1ScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc uv1Scale(self: SpatialMaterial): Vector3 =
  if isNil(spatialMaterialGetUv1ScaleMethodBind):
    spatialMaterialGetUv1ScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_uv1_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetUv1ScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetUv1ScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uv1Scale=`(self: SpatialMaterial; val: Vector3) =
  if isNil(spatialMaterialSetUv1ScaleMethodBind):
    spatialMaterialSetUv1ScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_uv1_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetUv1ScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc uv1Triplanar(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `uv1Triplanar=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 8'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetUv1TriplanarBlendSharpnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc uv1TriplanarSharpness(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetUv1TriplanarBlendSharpnessMethodBind):
    spatialMaterialGetUv1TriplanarBlendSharpnessMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_uv1_triplanar_blend_sharpness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetUv1TriplanarBlendSharpnessMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialMaterialSetUv1TriplanarBlendSharpnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uv1TriplanarSharpness=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetUv1TriplanarBlendSharpnessMethodBind):
    spatialMaterialSetUv1TriplanarBlendSharpnessMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_uv1_triplanar_blend_sharpness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetUv1TriplanarBlendSharpnessMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var spatialMaterialGetUv2OffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc uv2Offset(self: SpatialMaterial): Vector3 =
  if isNil(spatialMaterialGetUv2OffsetMethodBind):
    spatialMaterialGetUv2OffsetMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_uv2_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetUv2OffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetUv2OffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uv2Offset=`(self: SpatialMaterial; val: Vector3) =
  if isNil(spatialMaterialSetUv2OffsetMethodBind):
    spatialMaterialSetUv2OffsetMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_uv2_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetUv2OffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spatialMaterialGetUv2ScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc uv2Scale(self: SpatialMaterial): Vector3 =
  if isNil(spatialMaterialGetUv2ScaleMethodBind):
    spatialMaterialGetUv2ScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_uv2_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetUv2ScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spatialMaterialSetUv2ScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uv2Scale=`(self: SpatialMaterial; val: Vector3) =
  if isNil(spatialMaterialSetUv2ScaleMethodBind):
    spatialMaterialSetUv2ScaleMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_uv2_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetUv2ScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc uv2Triplanar(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `uv2Triplanar=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 9'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spatialMaterialGetUv2TriplanarBlendSharpnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc uv2TriplanarSharpness(self: SpatialMaterial): float64 =
  if isNil(spatialMaterialGetUv2TriplanarBlendSharpnessMethodBind):
    spatialMaterialGetUv2TriplanarBlendSharpnessMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"get_uv2_triplanar_blend_sharpness")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetUv2TriplanarBlendSharpnessMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var spatialMaterialSetUv2TriplanarBlendSharpnessMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uv2TriplanarSharpness=`(self: SpatialMaterial; val: float64) =
  if isNil(spatialMaterialSetUv2TriplanarBlendSharpnessMethodBind):
    spatialMaterialSetUv2TriplanarBlendSharpnessMethodBind = getMethod(
        cstring"SpatialMaterial", cstring"set_uv2_triplanar_blend_sharpness")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetUv2TriplanarBlendSharpnessMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

proc vertexColorIsSrgb(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `vertexColorIsSrgb=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 4'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc vertexColorUseAsAlbedo(self: SpatialMaterial): bool =
  if isNil(spatialMaterialGetFlagMethodBind):
    spatialMaterialGetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"get_flag")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spatialMaterialGetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `vertexColorUseAsAlbedo=`(self: SpatialMaterial; val: bool) =
  if isNil(spatialMaterialSetFlagMethodBind):
    spatialMaterialSetFlagMethodBind = getMethod(cstring"SpatialMaterial",
        cstring"set_flag")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spatialMaterialSetFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
