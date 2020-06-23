
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc antialiased*(self: Polygon2D): bool {.gcsafe, locks: 0.}
proc `antialiased=`*(self: Polygon2D; val: bool) {.gcsafe, locks: 0.}
proc bones*(self: Polygon2D): Array {.gcsafe, locks: 0.}
proc `bones=`*(self: Polygon2D; val: Array) {.gcsafe, locks: 0.}
proc color*(self: Polygon2D): Color {.gcsafe, locks: 0.}
proc `color=`*(self: Polygon2D; val: Color) {.gcsafe, locks: 0.}
proc internalVertexCount*(self: Polygon2D): int64 {.gcsafe, locks: 0.}
proc `internalVertexCount=`*(self: Polygon2D; val: int64) {.gcsafe, locks: 0.}
proc invertBorder*(self: Polygon2D): float64 {.gcsafe, locks: 0.}
proc `invertBorder=`*(self: Polygon2D; val: float64) {.gcsafe, locks: 0.}
proc invertEnable*(self: Polygon2D): bool {.gcsafe, locks: 0.}
proc `invertEnable=`*(self: Polygon2D; val: bool) {.gcsafe, locks: 0.}
proc offset*(self: Polygon2D): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: Polygon2D; val: Vector2) {.gcsafe, locks: 0.}
proc polygon*(self: Polygon2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `polygon=`*(self: Polygon2D; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc polygons*(self: Polygon2D): Array {.gcsafe, locks: 0.}
proc `polygons=`*(self: Polygon2D; val: Array) {.gcsafe, locks: 0.}
proc skeleton*(self: Polygon2D): NodePath {.gcsafe, locks: 0.}
proc `skeleton=`*(self: Polygon2D; val: NodePath) {.gcsafe, locks: 0.}
proc texture*(self: Polygon2D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: Polygon2D; val: Texture) {.gcsafe, locks: 0.}
proc textureOffset*(self: Polygon2D): Vector2 {.gcsafe, locks: 0.}
proc `textureOffset=`*(self: Polygon2D; val: Vector2) {.gcsafe, locks: 0.}
proc textureRotation*(self: Polygon2D): float64 {.gcsafe, locks: 0.}
proc `textureRotation=`*(self: Polygon2D; val: float64) {.gcsafe, locks: 0.}
proc textureRotationDegrees*(self: Polygon2D): float64 {.gcsafe, locks: 0.}
proc `textureRotationDegrees=`*(self: Polygon2D; val: float64) {.gcsafe, locks: 0.}
proc textureScale*(self: Polygon2D): Vector2 {.gcsafe, locks: 0.}
proc `textureScale=`*(self: Polygon2D; val: Vector2) {.gcsafe, locks: 0.}
proc uv*(self: Polygon2D): PoolVector2Array {.gcsafe, locks: 0.}
proc `uv=`*(self: Polygon2D; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc vertexColors*(self: Polygon2D): PoolColorArray {.gcsafe, locks: 0.}
proc `vertexColors=`*(self: Polygon2D; val: PoolColorArray) {.gcsafe, locks: 0.}
method skeletonBoneSetupChanged*(self: Polygon2D) {.gcsafe, locks: 0, base.}
proc addBone*(self: Polygon2D; path: NodePath; weights: PoolRealArray) {.gcsafe,
    locks: 0.}
proc clearBones*(self: Polygon2D) {.gcsafe, locks: 0.}
proc eraseBone*(self: Polygon2D; index: int64) {.gcsafe, locks: 0.}
proc getBoneCount*(self: Polygon2D): int64 {.gcsafe, locks: 0.}
proc getBonePath*(self: Polygon2D; index: int64): NodePath {.gcsafe, locks: 0.}
proc getBoneWeights*(self: Polygon2D; index: int64): PoolRealArray {.gcsafe, locks: 0.}
proc setBonePath*(self: Polygon2D; index: int64; path: NodePath) {.gcsafe, locks: 0.}
proc setBoneWeights*(self: Polygon2D; index: int64; weights: PoolRealArray) {.gcsafe,
    locks: 0.}
var polygon2DGetAntialiasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc antialiased(self: Polygon2D): bool =
  if isNil(polygon2DGetAntialiasedMethodBind):
    polygon2DGetAntialiasedMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_antialiased")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetAntialiasedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetAntialiasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `antialiased=`(self: Polygon2D; val: bool) =
  if isNil(polygon2DSetAntialiasedMethodBind):
    polygon2DSetAntialiasedMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_antialiased")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetAntialiasedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var polygon2DUnderscoregetBonesMethodBind {.threadvar.}: ptr GodotMethodBind
proc bones(self: Polygon2D): Array =
  if isNil(polygon2DUnderscoregetBonesMethodBind):
    polygon2DUnderscoregetBonesMethodBind = getMethod(cstring"Polygon2D",
        cstring"_get_bones")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  polygon2DUnderscoregetBonesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var polygon2DUnderscoresetBonesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bones=`(self: Polygon2D; val: Array) =
  if isNil(polygon2DUnderscoresetBonesMethodBind):
    polygon2DUnderscoresetBonesMethodBind = getMethod(cstring"Polygon2D",
        cstring"_set_bones")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  polygon2DUnderscoresetBonesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygon2DGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: Polygon2D): Color =
  if isNil(polygon2DGetColorMethodBind):
    polygon2DGetColorMethodBind = getMethod(cstring"Polygon2D", cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: Polygon2D; val: Color) =
  if isNil(polygon2DSetColorMethodBind):
    polygon2DSetColorMethodBind = getMethod(cstring"Polygon2D", cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var polygon2DGetInternalVertexCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc internalVertexCount(self: Polygon2D): int64 =
  if isNil(polygon2DGetInternalVertexCountMethodBind):
    polygon2DGetInternalVertexCountMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_internal_vertex_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetInternalVertexCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var polygon2DSetInternalVertexCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `internalVertexCount=`(self: Polygon2D; val: int64) =
  if isNil(polygon2DSetInternalVertexCountMethodBind):
    polygon2DSetInternalVertexCountMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_internal_vertex_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetInternalVertexCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygon2DGetInvertBorderMethodBind {.threadvar.}: ptr GodotMethodBind
proc invertBorder(self: Polygon2D): float64 =
  if isNil(polygon2DGetInvertBorderMethodBind):
    polygon2DGetInvertBorderMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_invert_border")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetInvertBorderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetInvertBorderMethodBind {.threadvar.}: ptr GodotMethodBind
proc `invertBorder=`(self: Polygon2D; val: float64) =
  if isNil(polygon2DSetInvertBorderMethodBind):
    polygon2DSetInvertBorderMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_invert_border")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetInvertBorderMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var polygon2DGetInvertMethodBind {.threadvar.}: ptr GodotMethodBind
proc invertEnable(self: Polygon2D): bool =
  if isNil(polygon2DGetInvertMethodBind):
    polygon2DGetInvertMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_invert")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetInvertMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetInvertMethodBind {.threadvar.}: ptr GodotMethodBind
proc `invertEnable=`(self: Polygon2D; val: bool) =
  if isNil(polygon2DSetInvertMethodBind):
    polygon2DSetInvertMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_invert")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetInvertMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var polygon2DGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: Polygon2D): Vector2 =
  if isNil(polygon2DGetOffsetMethodBind):
    polygon2DGetOffsetMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: Polygon2D; val: Vector2) =
  if isNil(polygon2DSetOffsetMethodBind):
    polygon2DSetOffsetMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var polygon2DGetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygon(self: Polygon2D): PoolVector2Array =
  if isNil(polygon2DGetPolygonMethodBind):
    polygon2DGetPolygonMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_polygon")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetPolygonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var polygon2DSetPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygon=`(self: Polygon2D; val: PoolVector2Array) =
  if isNil(polygon2DSetPolygonMethodBind):
    polygon2DSetPolygonMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  polygon2DSetPolygonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var polygon2DGetPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc polygons(self: Polygon2D): Array =
  if isNil(polygon2DGetPolygonsMethodBind):
    polygon2DGetPolygonsMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_polygons")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetPolygonsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var polygon2DSetPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `polygons=`(self: Polygon2D; val: Array) =
  if isNil(polygon2DSetPolygonsMethodBind):
    polygon2DSetPolygonsMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_polygons")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  polygon2DSetPolygonsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var polygon2DGetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeleton(self: Polygon2D): NodePath =
  if isNil(polygon2DGetSkeletonMethodBind):
    polygon2DGetSkeletonMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_skeleton")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetSkeletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var polygon2DSetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skeleton=`(self: Polygon2D; val: NodePath) =
  if isNil(polygon2DSetSkeletonMethodBind):
    polygon2DSetSkeletonMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_skeleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  polygon2DSetSkeletonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var polygon2DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: Polygon2D): Texture =
  if isNil(polygon2DGetTextureMethodBind):
    polygon2DGetTextureMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var polygon2DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: Polygon2D; val: Texture) =
  if isNil(polygon2DSetTextureMethodBind):
    polygon2DSetTextureMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  polygon2DSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var polygon2DGetTextureOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureOffset(self: Polygon2D): Vector2 =
  if isNil(polygon2DGetTextureOffsetMethodBind):
    polygon2DGetTextureOffsetMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_texture_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetTextureOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetTextureOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureOffset=`(self: Polygon2D; val: Vector2) =
  if isNil(polygon2DSetTextureOffsetMethodBind):
    polygon2DSetTextureOffsetMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_texture_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetTextureOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygon2DGetTextureRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureRotation(self: Polygon2D): float64 =
  if isNil(polygon2DGetTextureRotationMethodBind):
    polygon2DGetTextureRotationMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_texture_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetTextureRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetTextureRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureRotation=`(self: Polygon2D; val: float64) =
  if isNil(polygon2DSetTextureRotationMethodBind):
    polygon2DSetTextureRotationMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_texture_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetTextureRotationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygon2DGetTextureRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureRotationDegrees(self: Polygon2D): float64 =
  if isNil(polygon2DGetTextureRotationDegreesMethodBind):
    polygon2DGetTextureRotationDegreesMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_texture_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetTextureRotationDegreesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var polygon2DSetTextureRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureRotationDegrees=`(self: Polygon2D; val: float64) =
  if isNil(polygon2DSetTextureRotationDegreesMethodBind):
    polygon2DSetTextureRotationDegreesMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_texture_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetTextureRotationDegreesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var polygon2DGetTextureScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc textureScale(self: Polygon2D): Vector2 =
  if isNil(polygon2DGetTextureScaleMethodBind):
    polygon2DGetTextureScaleMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_texture_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetTextureScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DSetTextureScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textureScale=`(self: Polygon2D; val: Vector2) =
  if isNil(polygon2DSetTextureScaleMethodBind):
    polygon2DSetTextureScaleMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_texture_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  polygon2DSetTextureScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var polygon2DGetUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc uv(self: Polygon2D): PoolVector2Array =
  if isNil(polygon2DGetUvMethodBind):
    polygon2DGetUvMethodBind = getMethod(cstring"Polygon2D", cstring"get_uv")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetUvMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var polygon2DSetUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uv=`(self: Polygon2D; val: PoolVector2Array) =
  if isNil(polygon2DSetUvMethodBind):
    polygon2DSetUvMethodBind = getMethod(cstring"Polygon2D", cstring"set_uv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  polygon2DSetUvMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var polygon2DGetVertexColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc vertexColors(self: Polygon2D): PoolColorArray =
  if isNil(polygon2DGetVertexColorsMethodBind):
    polygon2DGetVertexColorsMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_vertex_colors")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolColorArray
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetVertexColorsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolColorArray(ptrCallVal)

var polygon2DSetVertexColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vertexColors=`(self: Polygon2D; val: PoolColorArray) =
  if isNil(polygon2DSetVertexColorsMethodBind):
    polygon2DSetVertexColorsMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_vertex_colors")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolColorArray
  var ptrCallRet: pointer
  polygon2DSetVertexColorsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var polygon2DUnderscoreskeletonBoneSetupChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method skeletonBoneSetupChanged(self: Polygon2D) =
  if isNil(polygon2DUnderscoreskeletonBoneSetupChangedMethodBind):
    polygon2DUnderscoreskeletonBoneSetupChangedMethodBind = getMethod(
        cstring"Polygon2D", cstring"_skeleton_bone_setup_changed")
  var ptrCallRet: pointer
  polygon2DUnderscoreskeletonBoneSetupChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var polygon2DAddBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBone(self: Polygon2D; path: NodePath; weights: PoolRealArray) =
  if isNil(polygon2DAddBoneMethodBind):
    polygon2DAddBoneMethodBind = getMethod(cstring"Polygon2D", cstring"add_bone")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  argsToPassToGodot[][1] = weights.godotPoolRealArray
  var ptrCallRet: pointer
  polygon2DAddBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var polygon2DClearBonesMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBones(self: Polygon2D) =
  if isNil(polygon2DClearBonesMethodBind):
    polygon2DClearBonesMethodBind = getMethod(cstring"Polygon2D",
        cstring"clear_bones")
  var ptrCallRet: pointer
  polygon2DClearBonesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DEraseBoneMethodBind {.threadvar.}: ptr GodotMethodBind
proc eraseBone(self: Polygon2D; index: int64) =
  if isNil(polygon2DEraseBoneMethodBind):
    polygon2DEraseBoneMethodBind = getMethod(cstring"Polygon2D",
        cstring"erase_bone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  polygon2DEraseBoneMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var polygon2DGetBoneCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneCount(self: Polygon2D): int64 =
  if isNil(polygon2DGetBoneCountMethodBind):
    polygon2DGetBoneCountMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_bone_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  polygon2DGetBoneCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var polygon2DGetBonePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBonePath(self: Polygon2D; index: int64): NodePath =
  if isNil(polygon2DGetBonePathMethodBind):
    polygon2DGetBonePathMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_bone_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetBonePathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var polygon2DGetBoneWeightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneWeights(self: Polygon2D; index: int64): PoolRealArray =
  if isNil(polygon2DGetBoneWeightsMethodBind):
    polygon2DGetBoneWeightsMethodBind = getMethod(cstring"Polygon2D",
        cstring"get_bone_weights")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  ptrCallRet = addr(ptrCallVal)
  polygon2DGetBoneWeightsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var polygon2DSetBonePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBonePath(self: Polygon2D; index: int64; path: NodePath) =
  if isNil(polygon2DSetBonePathMethodBind):
    polygon2DSetBonePathMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_bone_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = path.godotNodePath
  var ptrCallRet: pointer
  polygon2DSetBonePathMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var polygon2DSetBoneWeightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBoneWeights(self: Polygon2D; index: int64; weights: PoolRealArray) =
  if isNil(polygon2DSetBoneWeightsMethodBind):
    polygon2DSetBoneWeightsMethodBind = getMethod(cstring"Polygon2D",
        cstring"set_bone_weights")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = weights.godotPoolRealArray
  var ptrCallRet: pointer
  polygon2DSetBoneWeightsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
