
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc seed*(self: RandomNumberGenerator): int64 {.gcsafe, locks: 0.}
proc `seed=`*(self: RandomNumberGenerator; val: int64) {.gcsafe, locks: 0.}
proc randf*(self: RandomNumberGenerator): float64 {.gcsafe, locks: 0.}
proc randfRange*(self: RandomNumberGenerator; fromm: float64; to: float64): float64 {.
    gcsafe, locks: 0.}
proc randfn*(self: RandomNumberGenerator; mean: float64 = 0.0; deviation: float64 = 1.0): float64 {.
    gcsafe, locks: 0.}
proc randi*(self: RandomNumberGenerator): int64 {.gcsafe, locks: 0.}
proc randiRange*(self: RandomNumberGenerator; fromm: int64; to: int64): int64 {.gcsafe,
    locks: 0.}
proc randomize*(self: RandomNumberGenerator) {.gcsafe, locks: 0.}
var randomNumberGeneratorGetSeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc seed(self: RandomNumberGenerator): int64 =
  if isNil(randomNumberGeneratorGetSeedMethodBind):
    randomNumberGeneratorGetSeedMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"get_seed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  randomNumberGeneratorGetSeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var randomNumberGeneratorSetSeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `seed=`(self: RandomNumberGenerator; val: int64) =
  if isNil(randomNumberGeneratorSetSeedMethodBind):
    randomNumberGeneratorSetSeedMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"set_seed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  randomNumberGeneratorSetSeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var randomNumberGeneratorRandfMethodBind {.threadvar.}: ptr GodotMethodBind
proc randf(self: RandomNumberGenerator): float64 =
  if isNil(randomNumberGeneratorRandfMethodBind):
    randomNumberGeneratorRandfMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"randf")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  randomNumberGeneratorRandfMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var randomNumberGeneratorRandfRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc randfRange(self: RandomNumberGenerator; fromm: float64; to: float64): float64 =
  if isNil(randomNumberGeneratorRandfRangeMethodBind):
    randomNumberGeneratorRandfRangeMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"randf_range")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  randomNumberGeneratorRandfRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var randomNumberGeneratorRandfnMethodBind {.threadvar.}: ptr GodotMethodBind
proc randfn(self: RandomNumberGenerator; mean: float64 = 0.0; deviation: float64 = 1.0): float64 =
  if isNil(randomNumberGeneratorRandfnMethodBind):
    randomNumberGeneratorRandfnMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"randfn")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mean)
  argsToPassToGodot[][1] = unsafeAddr(deviation)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  randomNumberGeneratorRandfnMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var randomNumberGeneratorRandiMethodBind {.threadvar.}: ptr GodotMethodBind
proc randi(self: RandomNumberGenerator): int64 =
  if isNil(randomNumberGeneratorRandiMethodBind):
    randomNumberGeneratorRandiMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"randi")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  randomNumberGeneratorRandiMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var randomNumberGeneratorRandiRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc randiRange(self: RandomNumberGenerator; fromm: int64; to: int64): int64 =
  if isNil(randomNumberGeneratorRandiRangeMethodBind):
    randomNumberGeneratorRandiRangeMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"randi_range")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  randomNumberGeneratorRandiRangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var randomNumberGeneratorRandomizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc randomize(self: RandomNumberGenerator) =
  if isNil(randomNumberGeneratorRandomizeMethodBind):
    randomNumberGeneratorRandomizeMethodBind = getMethod(
        cstring"RandomNumberGenerator", cstring"randomize")
  var ptrCallRet: pointer
  randomNumberGeneratorRandomizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
