
import
  godot, godottypes, godotinternal, csg_primitive

export
  godottypes, csg_primitive

proc cone*(self: CSGCylinder): bool {.gcsafe, locks: 0.}
proc `cone=`*(self: CSGCylinder; val: bool) {.gcsafe, locks: 0.}
proc height*(self: CSGCylinder): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: CSGCylinder; val: float64) {.gcsafe, locks: 0.}
proc material*(self: CSGCylinder): Material {.gcsafe, locks: 0.}
proc `material=`*(self: CSGCylinder; val: Material) {.gcsafe, locks: 0.}
proc radius*(self: CSGCylinder): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: CSGCylinder; val: float64) {.gcsafe, locks: 0.}
proc sides*(self: CSGCylinder): int64 {.gcsafe, locks: 0.}
proc `sides=`*(self: CSGCylinder; val: int64) {.gcsafe, locks: 0.}
proc smoothFaces*(self: CSGCylinder): bool {.gcsafe, locks: 0.}
proc `smoothFaces=`*(self: CSGCylinder; val: bool) {.gcsafe, locks: 0.}
var cSGCylinderIsConeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cone(self: CSGCylinder): bool =
  if isNil(cSGCylinderIsConeMethodBind):
    cSGCylinderIsConeMethodBind = getMethod(cstring"CSGCylinder", cstring"is_cone")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGCylinderIsConeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGCylinderSetConeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cone=`(self: CSGCylinder; val: bool) =
  if isNil(cSGCylinderSetConeMethodBind):
    cSGCylinderSetConeMethodBind = getMethod(cstring"CSGCylinder",
        cstring"set_cone")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGCylinderSetConeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var cSGCylinderGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: CSGCylinder): float64 =
  if isNil(cSGCylinderGetHeightMethodBind):
    cSGCylinderGetHeightMethodBind = getMethod(cstring"CSGCylinder",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGCylinderGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGCylinderSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: CSGCylinder; val: float64) =
  if isNil(cSGCylinderSetHeightMethodBind):
    cSGCylinderSetHeightMethodBind = getMethod(cstring"CSGCylinder",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGCylinderSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGCylinderGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: CSGCylinder): Material =
  if isNil(cSGCylinderGetMaterialMethodBind):
    cSGCylinderGetMaterialMethodBind = getMethod(cstring"CSGCylinder",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cSGCylinderGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cSGCylinderSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: CSGCylinder; val: Material) =
  if isNil(cSGCylinderSetMaterialMethodBind):
    cSGCylinderSetMaterialMethodBind = getMethod(cstring"CSGCylinder",
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
  cSGCylinderSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGCylinderGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: CSGCylinder): float64 =
  if isNil(cSGCylinderGetRadiusMethodBind):
    cSGCylinderGetRadiusMethodBind = getMethod(cstring"CSGCylinder",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGCylinderGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGCylinderSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: CSGCylinder; val: float64) =
  if isNil(cSGCylinderSetRadiusMethodBind):
    cSGCylinderSetRadiusMethodBind = getMethod(cstring"CSGCylinder",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGCylinderSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGCylinderGetSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc sides(self: CSGCylinder): int64 =
  if isNil(cSGCylinderGetSidesMethodBind):
    cSGCylinderGetSidesMethodBind = getMethod(cstring"CSGCylinder",
        cstring"get_sides")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGCylinderGetSidesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGCylinderSetSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sides=`(self: CSGCylinder; val: int64) =
  if isNil(cSGCylinderSetSidesMethodBind):
    cSGCylinderSetSidesMethodBind = getMethod(cstring"CSGCylinder",
        cstring"set_sides")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGCylinderSetSidesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var cSGCylinderGetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc smoothFaces(self: CSGCylinder): bool =
  if isNil(cSGCylinderGetSmoothFacesMethodBind):
    cSGCylinderGetSmoothFacesMethodBind = getMethod(cstring"CSGCylinder",
        cstring"get_smooth_faces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGCylinderGetSmoothFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGCylinderSetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `smoothFaces=`(self: CSGCylinder; val: bool) =
  if isNil(cSGCylinderSetSmoothFacesMethodBind):
    cSGCylinderSetSmoothFacesMethodBind = getMethod(cstring"CSGCylinder",
        cstring"set_smooth_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGCylinderSetSmoothFacesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
