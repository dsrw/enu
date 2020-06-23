
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc curve*(self: Path): Curve3D {.gcsafe, locks: 0.}
proc `curve=`*(self: Path; val: Curve3D) {.gcsafe, locks: 0.}
method curveChanged*(self: Path) {.gcsafe, locks: 0, base.}
var pathGetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc curve(self: Path): Curve3D =
  if isNil(pathGetCurveMethodBind):
    pathGetCurveMethodBind = getMethod(cstring"Path", cstring"get_curve")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  pathGetCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var pathSetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `curve=`(self: Path; val: Curve3D) =
  if isNil(pathSetCurveMethodBind):
    pathSetCurveMethodBind = getMethod(cstring"Path", cstring"set_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  pathSetCurveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var pathUnderscorecurveChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method curveChanged(self: Path) =
  if isNil(pathUnderscorecurveChangedMethodBind):
    pathUnderscorecurveChangedMethodBind = getMethod(cstring"Path",
        cstring"_curve_changed")
  var ptrCallRet: pointer
  pathUnderscorecurveChangedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
