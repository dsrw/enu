
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc curve*(self: Path2D): Curve2D {.gcsafe, locks: 0.}
proc `curve=`*(self: Path2D; val: Curve2D) {.gcsafe, locks: 0.}
method curveChanged*(self: Path2D) {.gcsafe, locks: 0, base.}
var path2DGetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc curve(self: Path2D): Curve2D =
  if isNil(path2DGetCurveMethodBind):
    path2DGetCurveMethodBind = getMethod(cstring"Path2D", cstring"get_curve")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  path2DGetCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var path2DSetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `curve=`(self: Path2D; val: Curve2D) =
  if isNil(path2DSetCurveMethodBind):
    path2DSetCurveMethodBind = getMethod(cstring"Path2D", cstring"set_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  path2DSetCurveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var path2DUnderscorecurveChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method curveChanged(self: Path2D) =
  if isNil(path2DUnderscorecurveChangedMethodBind):
    path2DUnderscorecurveChangedMethodBind = getMethod(cstring"Path2D",
        cstring"_curve_changed")
  var ptrCallRet: pointer
  path2DUnderscorecurveChangedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
