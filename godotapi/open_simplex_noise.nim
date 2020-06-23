
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc lacunarity*(self: OpenSimplexNoise): float64 {.gcsafe, locks: 0.}
proc `lacunarity=`*(self: OpenSimplexNoise; val: float64) {.gcsafe, locks: 0.}
proc octaves*(self: OpenSimplexNoise): int64 {.gcsafe, locks: 0.}
proc `octaves=`*(self: OpenSimplexNoise; val: int64) {.gcsafe, locks: 0.}
proc period*(self: OpenSimplexNoise): float64 {.gcsafe, locks: 0.}
proc `period=`*(self: OpenSimplexNoise; val: float64) {.gcsafe, locks: 0.}
proc persistence*(self: OpenSimplexNoise): float64 {.gcsafe, locks: 0.}
proc `persistence=`*(self: OpenSimplexNoise; val: float64) {.gcsafe, locks: 0.}
proc seed*(self: OpenSimplexNoise): int64 {.gcsafe, locks: 0.}
proc `seed=`*(self: OpenSimplexNoise; val: int64) {.gcsafe, locks: 0.}
proc getImage*(self: OpenSimplexNoise; width: int64; height: int64): Image {.gcsafe,
    locks: 0.}
proc getNoise1d*(self: OpenSimplexNoise; x: float64): float64 {.gcsafe, locks: 0.}
proc getNoise2d*(self: OpenSimplexNoise; x: float64; y: float64): float64 {.gcsafe,
    locks: 0.}
proc getNoise2dv*(self: OpenSimplexNoise; pos: Vector2): float64 {.gcsafe, locks: 0.}
proc getNoise3d*(self: OpenSimplexNoise; x: float64; y: float64; z: float64): float64 {.
    gcsafe, locks: 0.}
proc getNoise3dv*(self: OpenSimplexNoise; pos: Vector3): float64 {.gcsafe, locks: 0.}
proc getNoise4d*(self: OpenSimplexNoise; x: float64; y: float64; z: float64; w: float64): float64 {.
    gcsafe, locks: 0.}
proc getSeamlessImage*(self: OpenSimplexNoise; size: int64): Image {.gcsafe, locks: 0.}
var openSimplexNoiseGetLacunarityMethodBind {.threadvar.}: ptr GodotMethodBind
proc lacunarity(self: OpenSimplexNoise): float64 =
  if isNil(openSimplexNoiseGetLacunarityMethodBind):
    openSimplexNoiseGetLacunarityMethodBind = getMethod(
        cstring"OpenSimplexNoise", cstring"get_lacunarity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetLacunarityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var openSimplexNoiseSetLacunarityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lacunarity=`(self: OpenSimplexNoise; val: float64) =
  if isNil(openSimplexNoiseSetLacunarityMethodBind):
    openSimplexNoiseSetLacunarityMethodBind = getMethod(
        cstring"OpenSimplexNoise", cstring"set_lacunarity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  openSimplexNoiseSetLacunarityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetOctavesMethodBind {.threadvar.}: ptr GodotMethodBind
proc octaves(self: OpenSimplexNoise): int64 =
  if isNil(openSimplexNoiseGetOctavesMethodBind):
    openSimplexNoiseGetOctavesMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_octaves")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetOctavesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var openSimplexNoiseSetOctavesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `octaves=`(self: OpenSimplexNoise; val: int64) =
  if isNil(openSimplexNoiseSetOctavesMethodBind):
    openSimplexNoiseSetOctavesMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"set_octaves")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  openSimplexNoiseSetOctavesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetPeriodMethodBind {.threadvar.}: ptr GodotMethodBind
proc period(self: OpenSimplexNoise): float64 =
  if isNil(openSimplexNoiseGetPeriodMethodBind):
    openSimplexNoiseGetPeriodMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_period")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetPeriodMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var openSimplexNoiseSetPeriodMethodBind {.threadvar.}: ptr GodotMethodBind
proc `period=`(self: OpenSimplexNoise; val: float64) =
  if isNil(openSimplexNoiseSetPeriodMethodBind):
    openSimplexNoiseSetPeriodMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"set_period")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  openSimplexNoiseSetPeriodMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetPersistenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc persistence(self: OpenSimplexNoise): float64 =
  if isNil(openSimplexNoiseGetPersistenceMethodBind):
    openSimplexNoiseGetPersistenceMethodBind = getMethod(
        cstring"OpenSimplexNoise", cstring"get_persistence")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetPersistenceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var openSimplexNoiseSetPersistenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `persistence=`(self: OpenSimplexNoise; val: float64) =
  if isNil(openSimplexNoiseSetPersistenceMethodBind):
    openSimplexNoiseSetPersistenceMethodBind = getMethod(
        cstring"OpenSimplexNoise", cstring"set_persistence")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  openSimplexNoiseSetPersistenceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetSeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc seed(self: OpenSimplexNoise): int64 =
  if isNil(openSimplexNoiseGetSeedMethodBind):
    openSimplexNoiseGetSeedMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_seed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetSeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var openSimplexNoiseSetSeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `seed=`(self: OpenSimplexNoise; val: int64) =
  if isNil(openSimplexNoiseSetSeedMethodBind):
    openSimplexNoiseSetSeedMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"set_seed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  openSimplexNoiseSetSeedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var openSimplexNoiseGetImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc getImage(self: OpenSimplexNoise; width: int64; height: int64): Image =
  if isNil(openSimplexNoiseGetImageMethodBind):
    openSimplexNoiseGetImageMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_image")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  openSimplexNoiseGetImageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var openSimplexNoiseGetNoise1dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNoise1d(self: OpenSimplexNoise; x: float64): float64 =
  if isNil(openSimplexNoiseGetNoise1dMethodBind):
    openSimplexNoiseGetNoise1dMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_noise_1d")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetNoise1dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetNoise2dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNoise2d(self: OpenSimplexNoise; x: float64; y: float64): float64 =
  if isNil(openSimplexNoiseGetNoise2dMethodBind):
    openSimplexNoiseGetNoise2dMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_noise_2d")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetNoise2dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetNoise2dvMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNoise2dv(self: OpenSimplexNoise; pos: Vector2): float64 =
  if isNil(openSimplexNoiseGetNoise2dvMethodBind):
    openSimplexNoiseGetNoise2dvMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_noise_2dv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pos)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetNoise2dvMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetNoise3dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNoise3d(self: OpenSimplexNoise; x: float64; y: float64; z: float64): float64 =
  if isNil(openSimplexNoiseGetNoise3dMethodBind):
    openSimplexNoiseGetNoise3dMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_noise_3d")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(z)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetNoise3dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetNoise3dvMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNoise3dv(self: OpenSimplexNoise; pos: Vector3): float64 =
  if isNil(openSimplexNoiseGetNoise3dvMethodBind):
    openSimplexNoiseGetNoise3dvMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_noise_3dv")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pos)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetNoise3dvMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetNoise4dMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNoise4d(self: OpenSimplexNoise; x: float64; y: float64; z: float64; w: float64): float64 =
  if isNil(openSimplexNoiseGetNoise4dMethodBind):
    openSimplexNoiseGetNoise4dMethodBind = getMethod(cstring"OpenSimplexNoise",
        cstring"get_noise_4d")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(x)
  argsToPassToGodot[][1] = unsafeAddr(y)
  argsToPassToGodot[][2] = unsafeAddr(z)
  argsToPassToGodot[][3] = unsafeAddr(w)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  openSimplexNoiseGetNoise4dMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var openSimplexNoiseGetSeamlessImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSeamlessImage(self: OpenSimplexNoise; size: int64): Image =
  if isNil(openSimplexNoiseGetSeamlessImageMethodBind):
    openSimplexNoiseGetSeamlessImageMethodBind = getMethod(
        cstring"OpenSimplexNoise", cstring"get_seamless_image")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  openSimplexNoiseGetSeamlessImageMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
