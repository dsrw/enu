
import
  godot, godottypes, godotinternal, csg_primitive

export
  godottypes, csg_primitive

proc depth*(self: CSGBox): float64 {.gcsafe, locks: 0.}
proc `depth=`*(self: CSGBox; val: float64) {.gcsafe, locks: 0.}
proc height*(self: CSGBox): float64 {.gcsafe, locks: 0.}
proc `height=`*(self: CSGBox; val: float64) {.gcsafe, locks: 0.}
proc material*(self: CSGBox): Material {.gcsafe, locks: 0.}
proc `material=`*(self: CSGBox; val: Material) {.gcsafe, locks: 0.}
proc width*(self: CSGBox): float64 {.gcsafe, locks: 0.}
proc `width=`*(self: CSGBox; val: float64) {.gcsafe, locks: 0.}
var cSGBoxGetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc depth(self: CSGBox): float64 =
  if isNil(cSGBoxGetDepthMethodBind):
    cSGBoxGetDepthMethodBind = getMethod(cstring"CSGBox", cstring"get_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGBoxGetDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGBoxSetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `depth=`(self: CSGBox; val: float64) =
  if isNil(cSGBoxSetDepthMethodBind):
    cSGBoxSetDepthMethodBind = getMethod(cstring"CSGBox", cstring"set_depth")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGBoxSetDepthMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var cSGBoxGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: CSGBox): float64 =
  if isNil(cSGBoxGetHeightMethodBind):
    cSGBoxGetHeightMethodBind = getMethod(cstring"CSGBox", cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGBoxGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGBoxSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: CSGBox; val: float64) =
  if isNil(cSGBoxSetHeightMethodBind):
    cSGBoxSetHeightMethodBind = getMethod(cstring"CSGBox", cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGBoxSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var cSGBoxGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc material(self: CSGBox): Material =
  if isNil(cSGBoxGetMaterialMethodBind):
    cSGBoxGetMaterialMethodBind = getMethod(cstring"CSGBox", cstring"get_material")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cSGBoxGetMaterialMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cSGBoxSetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc `material=`(self: CSGBox; val: Material) =
  if isNil(cSGBoxSetMaterialMethodBind):
    cSGBoxSetMaterialMethodBind = getMethod(cstring"CSGBox", cstring"set_material")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  cSGBoxSetMaterialMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var cSGBoxGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc width(self: CSGBox): float64 =
  if isNil(cSGBoxGetWidthMethodBind):
    cSGBoxGetWidthMethodBind = getMethod(cstring"CSGBox", cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGBoxGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGBoxSetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `width=`(self: CSGBox; val: float64) =
  if isNil(cSGBoxSetWidthMethodBind):
    cSGBoxSetWidthMethodBind = getMethod(cstring"CSGBox", cstring"set_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGBoxSetWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
