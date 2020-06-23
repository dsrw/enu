
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method isDictionary*(self: PackedDataContainerRef): bool {.gcsafe, locks: 0, base.}
method iterGet*(self: PackedDataContainerRef; arg0: Variant): Variant {.gcsafe,
    locks: 0, base.}
method iterInit*(self: PackedDataContainerRef; arg0: Array): Variant {.gcsafe,
    locks: 0, base.}
method iterNext*(self: PackedDataContainerRef; arg0: Array): Variant {.gcsafe,
    locks: 0, base.}
proc size*(self: PackedDataContainerRef): int64 {.gcsafe, locks: 0.}
var packedDataContainerRefUnderscoreisDictionaryMethodBind {.threadvar.}: ptr GodotMethodBind
method isDictionary(self: PackedDataContainerRef): bool =
  if isNil(packedDataContainerRefUnderscoreisDictionaryMethodBind):
    packedDataContainerRefUnderscoreisDictionaryMethodBind = getMethod(
        cstring"PackedDataContainerRef", cstring"_is_dictionary")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packedDataContainerRefUnderscoreisDictionaryMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var packedDataContainerRefUnderscoreiterGetMethodBind {.threadvar.}: ptr GodotMethodBind
method iterGet(self: PackedDataContainerRef; arg0: Variant): Variant =
  if isNil(packedDataContainerRefUnderscoreiterGetMethodBind):
    packedDataContainerRefUnderscoreiterGetMethodBind = getMethod(
        cstring"PackedDataContainerRef", cstring"_iter_get")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerRefUnderscoreiterGetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var packedDataContainerRefUnderscoreiterInitMethodBind {.threadvar.}: ptr GodotMethodBind
method iterInit(self: PackedDataContainerRef; arg0: Array): Variant =
  if isNil(packedDataContainerRefUnderscoreiterInitMethodBind):
    packedDataContainerRefUnderscoreiterInitMethodBind = getMethod(
        cstring"PackedDataContainerRef", cstring"_iter_init")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerRefUnderscoreiterInitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var packedDataContainerRefUnderscoreiterNextMethodBind {.threadvar.}: ptr GodotMethodBind
method iterNext(self: PackedDataContainerRef; arg0: Array): Variant =
  if isNil(packedDataContainerRefUnderscoreiterNextMethodBind):
    packedDataContainerRefUnderscoreiterNextMethodBind = getMethod(
        cstring"PackedDataContainerRef", cstring"_iter_next")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerRefUnderscoreiterNextMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var packedDataContainerRefSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: PackedDataContainerRef): int64 =
  if isNil(packedDataContainerRefSizeMethodBind):
    packedDataContainerRefSizeMethodBind = getMethod(
        cstring"PackedDataContainerRef", cstring"size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packedDataContainerRefSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
