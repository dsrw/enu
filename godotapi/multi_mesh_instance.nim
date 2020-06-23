
import
  godot, godottypes, godotinternal, geometry_instance

export
  godottypes, geometry_instance

proc multimesh*(self: MultiMeshInstance): MultiMesh {.gcsafe, locks: 0.}
proc `multimesh=`*(self: MultiMeshInstance; val: MultiMesh) {.gcsafe, locks: 0.}
var multiMeshInstanceGetMultimeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc multimesh(self: MultiMeshInstance): MultiMesh =
  if isNil(multiMeshInstanceGetMultimeshMethodBind):
    multiMeshInstanceGetMultimeshMethodBind = getMethod(
        cstring"MultiMeshInstance", cstring"get_multimesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  multiMeshInstanceGetMultimeshMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var multiMeshInstanceSetMultimeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `multimesh=`(self: MultiMeshInstance; val: MultiMesh) =
  if isNil(multiMeshInstanceSetMultimeshMethodBind):
    multiMeshInstanceSetMultimeshMethodBind = getMethod(
        cstring"MultiMeshInstance", cstring"set_multimesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  multiMeshInstanceSetMultimeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
