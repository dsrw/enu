
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc absoluteIndex*(self: CharFXTransform): int64 {.gcsafe, locks: 0.}
proc `absoluteIndex=`*(self: CharFXTransform; val: int64) {.gcsafe, locks: 0.}
proc character*(self: CharFXTransform): int64 {.gcsafe, locks: 0.}
proc `character=`*(self: CharFXTransform; val: int64) {.gcsafe, locks: 0.}
proc color*(self: CharFXTransform): Color {.gcsafe, locks: 0.}
proc `color=`*(self: CharFXTransform; val: Color) {.gcsafe, locks: 0.}
proc elapsedTime*(self: CharFXTransform): float64 {.gcsafe, locks: 0.}
proc `elapsedTime=`*(self: CharFXTransform; val: float64) {.gcsafe, locks: 0.}
proc env*(self: CharFXTransform): Dictionary {.gcsafe, locks: 0.}
proc `env=`*(self: CharFXTransform; val: Dictionary) {.gcsafe, locks: 0.}
proc offset*(self: CharFXTransform): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: CharFXTransform; val: Vector2) {.gcsafe, locks: 0.}
proc relativeIndex*(self: CharFXTransform): int64 {.gcsafe, locks: 0.}
proc `relativeIndex=`*(self: CharFXTransform; val: int64) {.gcsafe, locks: 0.}
proc visible*(self: CharFXTransform): bool {.gcsafe, locks: 0.}
proc `visible=`*(self: CharFXTransform; val: bool) {.gcsafe, locks: 0.}
var charFXTransformGetAbsoluteIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc absoluteIndex(self: CharFXTransform): int64 =
  if isNil(charFXTransformGetAbsoluteIndexMethodBind):
    charFXTransformGetAbsoluteIndexMethodBind = getMethod(
        cstring"CharFXTransform", cstring"get_absolute_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  charFXTransformGetAbsoluteIndexMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var charFXTransformSetAbsoluteIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `absoluteIndex=`(self: CharFXTransform; val: int64) =
  if isNil(charFXTransformSetAbsoluteIndexMethodBind):
    charFXTransformSetAbsoluteIndexMethodBind = getMethod(
        cstring"CharFXTransform", cstring"set_absolute_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  charFXTransformSetAbsoluteIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var charFXTransformGetCharacterMethodBind {.threadvar.}: ptr GodotMethodBind
proc character(self: CharFXTransform): int64 =
  if isNil(charFXTransformGetCharacterMethodBind):
    charFXTransformGetCharacterMethodBind = getMethod(cstring"CharFXTransform",
        cstring"get_character")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  charFXTransformGetCharacterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var charFXTransformSetCharacterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `character=`(self: CharFXTransform; val: int64) =
  if isNil(charFXTransformSetCharacterMethodBind):
    charFXTransformSetCharacterMethodBind = getMethod(cstring"CharFXTransform",
        cstring"set_character")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  charFXTransformSetCharacterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var charFXTransformGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: CharFXTransform): Color =
  if isNil(charFXTransformGetColorMethodBind):
    charFXTransformGetColorMethodBind = getMethod(cstring"CharFXTransform",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  charFXTransformGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var charFXTransformSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: CharFXTransform; val: Color) =
  if isNil(charFXTransformSetColorMethodBind):
    charFXTransformSetColorMethodBind = getMethod(cstring"CharFXTransform",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  charFXTransformSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var charFXTransformGetElapsedTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc elapsedTime(self: CharFXTransform): float64 =
  if isNil(charFXTransformGetElapsedTimeMethodBind):
    charFXTransformGetElapsedTimeMethodBind = getMethod(cstring"CharFXTransform",
        cstring"get_elapsed_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  charFXTransformGetElapsedTimeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var charFXTransformSetElapsedTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `elapsedTime=`(self: CharFXTransform; val: float64) =
  if isNil(charFXTransformSetElapsedTimeMethodBind):
    charFXTransformSetElapsedTimeMethodBind = getMethod(cstring"CharFXTransform",
        cstring"set_elapsed_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  charFXTransformSetElapsedTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var charFXTransformGetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc env(self: CharFXTransform): Dictionary =
  if isNil(charFXTransformGetEnvironmentMethodBind):
    charFXTransformGetEnvironmentMethodBind = getMethod(cstring"CharFXTransform",
        cstring"get_environment")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  charFXTransformGetEnvironmentMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var charFXTransformSetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `env=`(self: CharFXTransform; val: Dictionary) =
  if isNil(charFXTransformSetEnvironmentMethodBind):
    charFXTransformSetEnvironmentMethodBind = getMethod(cstring"CharFXTransform",
        cstring"set_environment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  charFXTransformSetEnvironmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var charFXTransformGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: CharFXTransform): Vector2 =
  if isNil(charFXTransformGetOffsetMethodBind):
    charFXTransformGetOffsetMethodBind = getMethod(cstring"CharFXTransform",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  charFXTransformGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var charFXTransformSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: CharFXTransform; val: Vector2) =
  if isNil(charFXTransformSetOffsetMethodBind):
    charFXTransformSetOffsetMethodBind = getMethod(cstring"CharFXTransform",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  charFXTransformSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var charFXTransformGetRelativeIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc relativeIndex(self: CharFXTransform): int64 =
  if isNil(charFXTransformGetRelativeIndexMethodBind):
    charFXTransformGetRelativeIndexMethodBind = getMethod(
        cstring"CharFXTransform", cstring"get_relative_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  charFXTransformGetRelativeIndexMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var charFXTransformSetRelativeIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `relativeIndex=`(self: CharFXTransform; val: int64) =
  if isNil(charFXTransformSetRelativeIndexMethodBind):
    charFXTransformSetRelativeIndexMethodBind = getMethod(
        cstring"CharFXTransform", cstring"set_relative_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  charFXTransformSetRelativeIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var charFXTransformIsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc visible(self: CharFXTransform): bool =
  if isNil(charFXTransformIsVisibleMethodBind):
    charFXTransformIsVisibleMethodBind = getMethod(cstring"CharFXTransform",
        cstring"is_visible")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  charFXTransformIsVisibleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var charFXTransformSetVisibilityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `visible=`(self: CharFXTransform; val: bool) =
  if isNil(charFXTransformSetVisibilityMethodBind):
    charFXTransformSetVisibilityMethodBind = getMethod(cstring"CharFXTransform",
        cstring"set_visibility")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  charFXTransformSetVisibilityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
