
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc multimesh*(self: MultiMeshInstance2D): MultiMesh {.gcsafe, locks: 0.}
proc `multimesh=`*(self: MultiMeshInstance2D; val: MultiMesh) {.gcsafe, locks: 0.}
proc normalMap*(self: MultiMeshInstance2D): Texture {.gcsafe, locks: 0.}
proc `normalMap=`*(self: MultiMeshInstance2D; val: Texture) {.gcsafe, locks: 0.}
proc texture*(self: MultiMeshInstance2D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: MultiMeshInstance2D; val: Texture) {.gcsafe, locks: 0.}
var multiMeshInstance2DGetMultimeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimesh(self: MultiMeshInstance2D): MultiMesh =
  if isNil(multiMeshInstance2DGetMultimeshMethodBind):
    multiMeshInstance2DGetMultimeshMethodBind = getMethod(
        cstring"MultiMeshInstance2D", cstring"get_multimesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  multiMeshInstance2DGetMultimeshMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var multiMeshInstance2DSetMultimeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `multimesh=`(self: MultiMeshInstance2D; val: MultiMesh) =
  if isNil(multiMeshInstance2DSetMultimeshMethodBind):
    multiMeshInstance2DSetMultimeshMethodBind = getMethod(
        cstring"MultiMeshInstance2D", cstring"set_multimesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  multiMeshInstance2DSetMultimeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshInstance2DGetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalMap(self: MultiMeshInstance2D): Texture =
  if isNil(multiMeshInstance2DGetNormalMapMethodBind):
    multiMeshInstance2DGetNormalMapMethodBind = getMethod(
        cstring"MultiMeshInstance2D", cstring"get_normal_map")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  multiMeshInstance2DGetNormalMapMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var multiMeshInstance2DSetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalMap=`(self: MultiMeshInstance2D; val: Texture) =
  if isNil(multiMeshInstance2DSetNormalMapMethodBind):
    multiMeshInstance2DSetNormalMapMethodBind = getMethod(
        cstring"MultiMeshInstance2D", cstring"set_normal_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  multiMeshInstance2DSetNormalMapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var multiMeshInstance2DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: MultiMeshInstance2D): Texture =
  if isNil(multiMeshInstance2DGetTextureMethodBind):
    multiMeshInstance2DGetTextureMethodBind = getMethod(
        cstring"MultiMeshInstance2D", cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  multiMeshInstance2DGetTextureMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var multiMeshInstance2DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: MultiMeshInstance2D; val: Texture) =
  if isNil(multiMeshInstance2DSetTextureMethodBind):
    multiMeshInstance2DSetTextureMethodBind = getMethod(
        cstring"MultiMeshInstance2D", cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  multiMeshInstance2DSetTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
