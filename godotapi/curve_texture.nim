
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc curve*(self: CurveTexture): Curve {.gcsafe, locks: 0.}
proc `curve=`*(self: CurveTexture; val: Curve) {.gcsafe, locks: 0.}
proc width*(self: CurveTexture): int64 {.gcsafe, locks: 0.}
proc `width=`*(self: CurveTexture; val: int64) {.gcsafe, locks: 0.}
method update*(self: CurveTexture) {.gcsafe, locks: 0, base.}
var curveTextureGetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc curve(self: CurveTexture): Curve =
  if isNil(curveTextureGetCurveMethodBind):
    curveTextureGetCurveMethodBind = getMethod(cstring"CurveTexture",
        cstring"get_curve")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  curveTextureGetCurveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var curveTextureSetCurveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `curve=`(self: CurveTexture; val: Curve) =
  if isNil(curveTextureSetCurveMethodBind):
    curveTextureSetCurveMethodBind = getMethod(cstring"CurveTexture",
        cstring"set_curve")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  curveTextureSetCurveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveTextureGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc width(self: CurveTexture): int64 =
  if isNil(curveTextureGetWidthMethodBind):
    curveTextureGetWidthMethodBind = getMethod(cstring"CurveTexture",
        cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  curveTextureGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var curveTextureSetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `width=`(self: CurveTexture; val: int64) =
  if isNil(curveTextureSetWidthMethodBind):
    curveTextureSetWidthMethodBind = getMethod(cstring"CurveTexture",
        cstring"set_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  curveTextureSetWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var curveTextureUnderscoreupdateMethodBind {.threadvar.}: ptr GodotMethodBind
method update(self: CurveTexture) =
  if isNil(curveTextureUnderscoreupdateMethodBind):
    curveTextureUnderscoreupdateMethodBind = getMethod(cstring"CurveTexture",
        cstring"_update")
  var ptrCallRet: pointer
  curveTextureUnderscoreupdateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
