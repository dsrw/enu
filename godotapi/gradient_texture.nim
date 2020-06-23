
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc gradient*(self: GradientTexture): Gradient {.gcsafe, locks: 0.}
proc `gradient=`*(self: GradientTexture; val: Gradient) {.gcsafe, locks: 0.}
proc width*(self: GradientTexture): int64 {.gcsafe, locks: 0.}
proc `width=`*(self: GradientTexture; val: int64) {.gcsafe, locks: 0.}
method update*(self: GradientTexture) {.gcsafe, locks: 0, base.}
var gradientTextureGetGradientMethodBind {.threadvar.}: ptr GodotMethodBind
proc gradient(self: GradientTexture): Gradient =
  if isNil(gradientTextureGetGradientMethodBind):
    gradientTextureGetGradientMethodBind = getMethod(cstring"GradientTexture",
        cstring"get_gradient")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gradientTextureGetGradientMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gradientTextureSetGradientMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gradient=`(self: GradientTexture; val: Gradient) =
  if isNil(gradientTextureSetGradientMethodBind):
    gradientTextureSetGradientMethodBind = getMethod(cstring"GradientTexture",
        cstring"set_gradient")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gradientTextureSetGradientMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gradientTextureGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc width(self: GradientTexture): int64 =
  if isNil(gradientTextureGetWidthMethodBind):
    gradientTextureGetWidthMethodBind = getMethod(cstring"GradientTexture",
        cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gradientTextureGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gradientTextureSetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `width=`(self: GradientTexture; val: int64) =
  if isNil(gradientTextureSetWidthMethodBind):
    gradientTextureSetWidthMethodBind = getMethod(cstring"GradientTexture",
        cstring"set_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gradientTextureSetWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gradientTextureUnderscoreupdateMethodBind {.threadvar.}: ptr GodotMethodBind
method update(self: GradientTexture) =
  if isNil(gradientTextureUnderscoreupdateMethodBind):
    gradientTextureUnderscoreupdateMethodBind = getMethod(
        cstring"GradientTexture", cstring"_update")
  var ptrCallRet: pointer
  gradientTextureUnderscoreupdateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
