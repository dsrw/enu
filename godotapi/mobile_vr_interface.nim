
import
  godot, godottypes, godotinternal, arvr_interface

export
  godottypes, arvr_interface

proc displayToLens*(self: MobileVRInterface): float64 {.gcsafe, locks: 0.}
proc `displayToLens=`*(self: MobileVRInterface; val: float64) {.gcsafe, locks: 0.}
proc displayWidth*(self: MobileVRInterface): float64 {.gcsafe, locks: 0.}
proc `displayWidth=`*(self: MobileVRInterface; val: float64) {.gcsafe, locks: 0.}
proc eyeHeight*(self: MobileVRInterface): float64 {.gcsafe, locks: 0.}
proc `eyeHeight=`*(self: MobileVRInterface; val: float64) {.gcsafe, locks: 0.}
proc iod*(self: MobileVRInterface): float64 {.gcsafe, locks: 0.}
proc `iod=`*(self: MobileVRInterface; val: float64) {.gcsafe, locks: 0.}
proc k1*(self: MobileVRInterface): float64 {.gcsafe, locks: 0.}
proc `k1=`*(self: MobileVRInterface; val: float64) {.gcsafe, locks: 0.}
proc k2*(self: MobileVRInterface): float64 {.gcsafe, locks: 0.}
proc `k2=`*(self: MobileVRInterface; val: float64) {.gcsafe, locks: 0.}
proc oversample*(self: MobileVRInterface): float64 {.gcsafe, locks: 0.}
proc `oversample=`*(self: MobileVRInterface; val: float64) {.gcsafe, locks: 0.}
var mobileVRInterfaceGetDisplayToLensMethodBind {.threadvar.}: ptr GodotMethodBind
proc displayToLens(self: MobileVRInterface): float64 =
  if isNil(mobileVRInterfaceGetDisplayToLensMethodBind):
    mobileVRInterfaceGetDisplayToLensMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"get_display_to_lens")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mobileVRInterfaceGetDisplayToLensMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var mobileVRInterfaceSetDisplayToLensMethodBind {.threadvar.}: ptr GodotMethodBind
proc `displayToLens=`(self: MobileVRInterface; val: float64) =
  if isNil(mobileVRInterfaceSetDisplayToLensMethodBind):
    mobileVRInterfaceSetDisplayToLensMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"set_display_to_lens")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  mobileVRInterfaceSetDisplayToLensMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var mobileVRInterfaceGetDisplayWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc displayWidth(self: MobileVRInterface): float64 =
  if isNil(mobileVRInterfaceGetDisplayWidthMethodBind):
    mobileVRInterfaceGetDisplayWidthMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"get_display_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mobileVRInterfaceGetDisplayWidthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var mobileVRInterfaceSetDisplayWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `displayWidth=`(self: MobileVRInterface; val: float64) =
  if isNil(mobileVRInterfaceSetDisplayWidthMethodBind):
    mobileVRInterfaceSetDisplayWidthMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"set_display_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  mobileVRInterfaceSetDisplayWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var mobileVRInterfaceGetEyeHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc eyeHeight(self: MobileVRInterface): float64 =
  if isNil(mobileVRInterfaceGetEyeHeightMethodBind):
    mobileVRInterfaceGetEyeHeightMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"get_eye_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mobileVRInterfaceGetEyeHeightMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var mobileVRInterfaceSetEyeHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `eyeHeight=`(self: MobileVRInterface; val: float64) =
  if isNil(mobileVRInterfaceSetEyeHeightMethodBind):
    mobileVRInterfaceSetEyeHeightMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"set_eye_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  mobileVRInterfaceSetEyeHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var mobileVRInterfaceGetIodMethodBind {.threadvar.}: ptr GodotMethodBind
proc iod(self: MobileVRInterface): float64 =
  if isNil(mobileVRInterfaceGetIodMethodBind):
    mobileVRInterfaceGetIodMethodBind = getMethod(cstring"MobileVRInterface",
        cstring"get_iod")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mobileVRInterfaceGetIodMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mobileVRInterfaceSetIodMethodBind {.threadvar.}: ptr GodotMethodBind
proc `iod=`(self: MobileVRInterface; val: float64) =
  if isNil(mobileVRInterfaceSetIodMethodBind):
    mobileVRInterfaceSetIodMethodBind = getMethod(cstring"MobileVRInterface",
        cstring"set_iod")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  mobileVRInterfaceSetIodMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var mobileVRInterfaceGetK1MethodBind {.threadvar.}: ptr GodotMethodBind
proc k1(self: MobileVRInterface): float64 =
  if isNil(mobileVRInterfaceGetK1MethodBind):
    mobileVRInterfaceGetK1MethodBind = getMethod(cstring"MobileVRInterface",
        cstring"get_k1")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mobileVRInterfaceGetK1MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mobileVRInterfaceSetK1MethodBind {.threadvar.}: ptr GodotMethodBind
proc `k1=`(self: MobileVRInterface; val: float64) =
  if isNil(mobileVRInterfaceSetK1MethodBind):
    mobileVRInterfaceSetK1MethodBind = getMethod(cstring"MobileVRInterface",
        cstring"set_k1")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  mobileVRInterfaceSetK1MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var mobileVRInterfaceGetK2MethodBind {.threadvar.}: ptr GodotMethodBind
proc k2(self: MobileVRInterface): float64 =
  if isNil(mobileVRInterfaceGetK2MethodBind):
    mobileVRInterfaceGetK2MethodBind = getMethod(cstring"MobileVRInterface",
        cstring"get_k2")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mobileVRInterfaceGetK2MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mobileVRInterfaceSetK2MethodBind {.threadvar.}: ptr GodotMethodBind
proc `k2=`(self: MobileVRInterface; val: float64) =
  if isNil(mobileVRInterfaceSetK2MethodBind):
    mobileVRInterfaceSetK2MethodBind = getMethod(cstring"MobileVRInterface",
        cstring"set_k2")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  mobileVRInterfaceSetK2MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var mobileVRInterfaceGetOversampleMethodBind {.threadvar.}: ptr GodotMethodBind
proc oversample(self: MobileVRInterface): float64 =
  if isNil(mobileVRInterfaceGetOversampleMethodBind):
    mobileVRInterfaceGetOversampleMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"get_oversample")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mobileVRInterfaceGetOversampleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var mobileVRInterfaceSetOversampleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `oversample=`(self: MobileVRInterface; val: float64) =
  if isNil(mobileVRInterfaceSetOversampleMethodBind):
    mobileVRInterfaceSetOversampleMethodBind = getMethod(
        cstring"MobileVRInterface", cstring"set_oversample")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  mobileVRInterfaceSetOversampleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
