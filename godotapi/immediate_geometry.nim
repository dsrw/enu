
import
  godot, godottypes, godotinternal, geometry_instance

export
  godottypes, geometry_instance

proc addSphere*(self: ImmediateGeometry; lats: int64; lons: int64; radius: float64;
               addUv: bool = true) {.gcsafe, locks: 0.}
proc addVertex*(self: ImmediateGeometry; position: Vector3) {.gcsafe, locks: 0.}
proc begin*(self: ImmediateGeometry; primitive: int64; texture: Texture = nil) {.gcsafe,
    locks: 0.}
proc clear*(self: ImmediateGeometry) {.gcsafe, locks: 0.}
proc endd*(self: ImmediateGeometry) {.gcsafe, locks: 0.}
proc setColor*(self: ImmediateGeometry; color: Color) {.gcsafe, locks: 0.}
proc setNormal*(self: ImmediateGeometry; normal: Vector3) {.gcsafe, locks: 0.}
proc setTangent*(self: ImmediateGeometry; tangent: Plane) {.gcsafe, locks: 0.}
proc setUv*(self: ImmediateGeometry; uv: Vector2) {.gcsafe, locks: 0.}
proc setUv2*(self: ImmediateGeometry; uv: Vector2) {.gcsafe, locks: 0.}
var immediateGeometryAddSphereMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSphere(self: ImmediateGeometry; lats: int64; lons: int64; radius: float64;
              addUv: bool = true) =
  if isNil(immediateGeometryAddSphereMethodBind):
    immediateGeometryAddSphereMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"add_sphere")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(lats)
  argsToPassToGodot[][1] = unsafeAddr(lons)
  argsToPassToGodot[][2] = unsafeAddr(radius)
  argsToPassToGodot[][3] = unsafeAddr(addUv)
  var ptrCallRet: pointer
  immediateGeometryAddSphereMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var immediateGeometryAddVertexMethodBind {.threadvar.}: ptr GodotMethodBind
proc addVertex(self: ImmediateGeometry; position: Vector3) =
  if isNil(immediateGeometryAddVertexMethodBind):
    immediateGeometryAddVertexMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"add_vertex")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  immediateGeometryAddVertexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var immediateGeometryBeginMethodBind {.threadvar.}: ptr GodotMethodBind
proc begin(self: ImmediateGeometry; primitive: int64; texture: Texture = nil) =
  if isNil(immediateGeometryBeginMethodBind):
    immediateGeometryBeginMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"begin")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(primitive)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  immediateGeometryBeginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var immediateGeometryClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: ImmediateGeometry) =
  if isNil(immediateGeometryClearMethodBind):
    immediateGeometryClearMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"clear")
  var ptrCallRet: pointer
  immediateGeometryClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var immediateGeometryEndMethodBind {.threadvar.}: ptr GodotMethodBind
proc endd(self: ImmediateGeometry) =
  if isNil(immediateGeometryEndMethodBind):
    immediateGeometryEndMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"end")
  var ptrCallRet: pointer
  immediateGeometryEndMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var immediateGeometrySetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setColor(self: ImmediateGeometry; color: Color) =
  if isNil(immediateGeometrySetColorMethodBind):
    immediateGeometrySetColorMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(color)
  var ptrCallRet: pointer
  immediateGeometrySetColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var immediateGeometrySetNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNormal(self: ImmediateGeometry; normal: Vector3) =
  if isNil(immediateGeometrySetNormalMethodBind):
    immediateGeometrySetNormalMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"set_normal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(normal)
  var ptrCallRet: pointer
  immediateGeometrySetNormalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var immediateGeometrySetTangentMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTangent(self: ImmediateGeometry; tangent: Plane) =
  if isNil(immediateGeometrySetTangentMethodBind):
    immediateGeometrySetTangentMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"set_tangent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(tangent)
  var ptrCallRet: pointer
  immediateGeometrySetTangentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var immediateGeometrySetUvMethodBind {.threadvar.}: ptr GodotMethodBind
proc setUv(self: ImmediateGeometry; uv: Vector2) =
  if isNil(immediateGeometrySetUvMethodBind):
    immediateGeometrySetUvMethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"set_uv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(uv)
  var ptrCallRet: pointer
  immediateGeometrySetUvMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var immediateGeometrySetUv2MethodBind {.threadvar.}: ptr GodotMethodBind
proc setUv2(self: ImmediateGeometry; uv: Vector2) =
  if isNil(immediateGeometrySetUv2MethodBind):
    immediateGeometrySetUv2MethodBind = getMethod(cstring"ImmediateGeometry",
        cstring"set_uv2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(uv)
  var ptrCallRet: pointer
  immediateGeometrySetUv2MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
