
import
  godot, godottypes, godotinternal, csg_primitive

export
  godottypes, csg_primitive

proc innerRadius*(self: CSGTorus): float64 {.gcsafe, locks: 0.}
proc `innerRadius=`*(self: CSGTorus; val: float64) {.gcsafe, locks: 0.}
proc material*(self: CSGTorus): Material {.gcsafe, locks: 0.}
proc `material=`*(self: CSGTorus; val: Material) {.gcsafe, locks: 0.}
proc outerRadius*(self: CSGTorus): float64 {.gcsafe, locks: 0.}
proc `outerRadius=`*(self: CSGTorus; val: float64) {.gcsafe, locks: 0.}
proc ringSides*(self: CSGTorus): int64 {.gcsafe, locks: 0.}
proc `ringSides=`*(self: CSGTorus; val: int64) {.gcsafe, locks: 0.}
proc sides*(self: CSGTorus): int64 {.gcsafe, locks: 0.}
proc `sides=`*(self: CSGTorus; val: int64) {.gcsafe, locks: 0.}
proc smoothFaces*(self: CSGTorus): bool {.gcsafe, locks: 0.}
proc `smoothFaces=`*(self: CSGTorus; val: bool) {.gcsafe, locks: 0.}
var cSGTorusGetInnerRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc innerRadius(self: CSGTorus): float64 =
  if isNil(cSGTorusGetInnerRadiusMethodBind):
    cSGTorusGetInnerRadiusMethodBind = getMethod(cstring"CSGTorus",
        cstring"get_inner_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGTorusGetInnerRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGTorusSetInnerRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `innerRadius=`(self: CSGTorus; val: float64) =
  if isNil(cSGTorusSetInnerRadiusMethodBind):
    cSGTorusSetInnerRadiusMethodBind = getMethod(cstring"CSGTorus",
        cstring"set_inner_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGTorusSetInnerRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGTorusGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: CSGTorus): Material =
  if isNil(cSGTorusGetMaterialMethodBind):
    cSGTorusGetMaterialMethodBind = getMethod(cstring"CSGTorus",
        cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cSGTorusGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cSGTorusSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: CSGTorus; val: Material) =
  if isNil(cSGTorusSetMaterialMethodBind):
    cSGTorusSetMaterialMethodBind = getMethod(cstring"CSGTorus",
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
  cSGTorusSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var cSGTorusGetOuterRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc outerRadius(self: CSGTorus): float64 =
  if isNil(cSGTorusGetOuterRadiusMethodBind):
    cSGTorusGetOuterRadiusMethodBind = getMethod(cstring"CSGTorus",
        cstring"get_outer_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGTorusGetOuterRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGTorusSetOuterRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outerRadius=`(self: CSGTorus; val: float64) =
  if isNil(cSGTorusSetOuterRadiusMethodBind):
    cSGTorusSetOuterRadiusMethodBind = getMethod(cstring"CSGTorus",
        cstring"set_outer_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGTorusSetOuterRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGTorusGetRingSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc ringSides(self: CSGTorus): int64 =
  if isNil(cSGTorusGetRingSidesMethodBind):
    cSGTorusGetRingSidesMethodBind = getMethod(cstring"CSGTorus",
        cstring"get_ring_sides")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGTorusGetRingSidesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGTorusSetRingSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ringSides=`(self: CSGTorus; val: int64) =
  if isNil(cSGTorusSetRingSidesMethodBind):
    cSGTorusSetRingSidesMethodBind = getMethod(cstring"CSGTorus",
        cstring"set_ring_sides")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGTorusSetRingSidesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGTorusGetSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc sides(self: CSGTorus): int64 =
  if isNil(cSGTorusGetSidesMethodBind):
    cSGTorusGetSidesMethodBind = getMethod(cstring"CSGTorus", cstring"get_sides")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGTorusGetSidesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGTorusSetSidesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sides=`(self: CSGTorus; val: int64) =
  if isNil(cSGTorusSetSidesMethodBind):
    cSGTorusSetSidesMethodBind = getMethod(cstring"CSGTorus", cstring"set_sides")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGTorusSetSidesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var cSGTorusGetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc smoothFaces(self: CSGTorus): bool =
  if isNil(cSGTorusGetSmoothFacesMethodBind):
    cSGTorusGetSmoothFacesMethodBind = getMethod(cstring"CSGTorus",
        cstring"get_smooth_faces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGTorusGetSmoothFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGTorusSetSmoothFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `smoothFaces=`(self: CSGTorus; val: bool) =
  if isNil(cSGTorusSetSmoothFacesMethodBind):
    cSGTorusSetSmoothFacesMethodBind = getMethod(cstring"CSGTorus",
        cstring"set_smooth_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGTorusSetSmoothFacesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
