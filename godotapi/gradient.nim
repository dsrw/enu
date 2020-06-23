
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc colors*(self: Gradient): PoolColorArray {.gcsafe, locks: 0.}
proc `colors=`*(self: Gradient; val: PoolColorArray) {.gcsafe, locks: 0.}
proc offsets*(self: Gradient): PoolRealArray {.gcsafe, locks: 0.}
proc `offsets=`*(self: Gradient; val: PoolRealArray) {.gcsafe, locks: 0.}
proc addPoint*(self: Gradient; offset: float64; color: Color) {.gcsafe, locks: 0.}
proc getColor*(self: Gradient; point: int64): Color {.gcsafe, locks: 0.}
proc getOffset*(self: Gradient; point: int64): float64 {.gcsafe, locks: 0.}
proc getPointCount*(self: Gradient): int64 {.gcsafe, locks: 0.}
proc interpolate*(self: Gradient; offset: float64): Color {.gcsafe, locks: 0.}
proc removePoint*(self: Gradient; offset: int64) {.gcsafe, locks: 0.}
proc setColor*(self: Gradient; point: int64; color: Color) {.gcsafe, locks: 0.}
proc setOffset*(self: Gradient; point: int64; offset: float64) {.gcsafe, locks: 0.}
var gradientGetColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc colors(self: Gradient): PoolColorArray =
  if isNil(gradientGetColorsMethodBind):
    gradientGetColorsMethodBind = getMethod(cstring"Gradient", cstring"get_colors")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolColorArray
  ptrCallRet = addr(ptrCallVal)
  gradientGetColorsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolColorArray(ptrCallVal)

var gradientSetColorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `colors=`(self: Gradient; val: PoolColorArray) =
  if isNil(gradientSetColorsMethodBind):
    gradientSetColorsMethodBind = getMethod(cstring"Gradient", cstring"set_colors")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolColorArray
  var ptrCallRet: pointer
  gradientSetColorsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gradientGetOffsetsMethodBind {.threadvar.}: ptr GodotMethodBind
proc offsets(self: Gradient): PoolRealArray =
  if isNil(gradientGetOffsetsMethodBind):
    gradientGetOffsetsMethodBind = getMethod(cstring"Gradient",
        cstring"get_offsets")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  ptrCallRet = addr(ptrCallVal)
  gradientGetOffsetsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var gradientSetOffsetsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offsets=`(self: Gradient; val: PoolRealArray) =
  if isNil(gradientSetOffsetsMethodBind):
    gradientSetOffsetsMethodBind = getMethod(cstring"Gradient",
        cstring"set_offsets")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolRealArray
  var ptrCallRet: pointer
  gradientSetOffsetsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gradientAddPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPoint(self: Gradient; offset: float64; color: Color) =
  if isNil(gradientAddPointMethodBind):
    gradientAddPointMethodBind = getMethod(cstring"Gradient", cstring"add_point")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  gradientAddPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gradientGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColor(self: Gradient; point: int64): Color =
  if isNil(gradientGetColorMethodBind):
    gradientGetColorMethodBind = getMethod(cstring"Gradient", cstring"get_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gradientGetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gradientGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOffset(self: Gradient; point: int64): float64 =
  if isNil(gradientGetOffsetMethodBind):
    gradientGetOffsetMethodBind = getMethod(cstring"Gradient", cstring"get_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gradientGetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gradientGetPointCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPointCount(self: Gradient): int64 =
  if isNil(gradientGetPointCountMethodBind):
    gradientGetPointCountMethodBind = getMethod(cstring"Gradient",
        cstring"get_point_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gradientGetPointCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gradientInterpolateMethodBind {.threadvar.}: ptr GodotMethodBind
proc interpolate(self: Gradient; offset: float64): Color =
  if isNil(gradientInterpolateMethodBind):
    gradientInterpolateMethodBind = getMethod(cstring"Gradient",
        cstring"interpolate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gradientInterpolateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gradientRemovePointMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePoint(self: Gradient; offset: int64) =
  if isNil(gradientRemovePointMethodBind):
    gradientRemovePointMethodBind = getMethod(cstring"Gradient",
        cstring"remove_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(offset)
  var ptrCallRet: pointer
  gradientRemovePointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gradientSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setColor(self: Gradient; point: int64; color: Color) =
  if isNil(gradientSetColorMethodBind):
    gradientSetColorMethodBind = getMethod(cstring"Gradient", cstring"set_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  gradientSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gradientSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOffset(self: Gradient; point: int64; offset: float64) =
  if isNil(gradientSetOffsetMethodBind):
    gradientSetOffsetMethodBind = getMethod(cstring"Gradient", cstring"set_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(offset)
  var ptrCallRet: pointer
  gradientSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
