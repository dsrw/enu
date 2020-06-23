
import
  godot, godottypes, godotinternal, csg_primitive

export
  godottypes, csg_primitive

proc material*(self: CSGMesh): Material {.gcsafe, locks: 0.}
proc `material=`*(self: CSGMesh; val: Material) {.gcsafe, locks: 0.}
proc mesh*(self: CSGMesh): Mesh {.gcsafe, locks: 0.}
proc `mesh=`*(self: CSGMesh; val: Mesh) {.gcsafe, locks: 0.}
method meshChanged*(self: CSGMesh) {.gcsafe, locks: 0, base.}
var cSGMeshGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: CSGMesh): Material =
  if isNil(cSGMeshGetMaterialMethodBind):
    cSGMeshGetMaterialMethodBind = getMethod(cstring"CSGMesh",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cSGMeshGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cSGMeshSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: CSGMesh; val: Material) =
  if isNil(cSGMeshSetMaterialMethodBind):
    cSGMeshSetMaterialMethodBind = getMethod(cstring"CSGMesh",
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
  cSGMeshSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var cSGMeshGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: CSGMesh): Mesh =
  if isNil(cSGMeshGetMeshMethodBind):
    cSGMeshGetMeshMethodBind = getMethod(cstring"CSGMesh", cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cSGMeshGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cSGMeshSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: CSGMesh; val: Mesh) =
  if isNil(cSGMeshSetMeshMethodBind):
    cSGMeshSetMeshMethodBind = getMethod(cstring"CSGMesh", cstring"set_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cSGMeshSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var cSGMeshUnderscoremeshChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method meshChanged(self: CSGMesh) =
  if isNil(cSGMeshUnderscoremeshChangedMethodBind):
    cSGMeshUnderscoremeshChangedMethodBind = getMethod(cstring"CSGMesh",
        cstring"_mesh_changed")
  var ptrCallRet: pointer
  cSGMeshUnderscoremeshChangedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
