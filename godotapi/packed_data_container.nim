
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc data*(self: PackedDataContainer): PoolByteArray {.gcsafe, locks: 0.}
proc `data=`*(self: PackedDataContainer; val: PoolByteArray) {.gcsafe, locks: 0.}
method iterGet*(self: PackedDataContainer; arg0: Variant): Variant {.gcsafe, locks: 0,
    base.}
method iterInit*(self: PackedDataContainer; arg0: Array): Variant {.gcsafe, locks: 0,
    base.}
method iterNext*(self: PackedDataContainer; arg0: Array): Variant {.gcsafe, locks: 0,
    base.}
proc pack*(self: PackedDataContainer; value: Variant): Error {.gcsafe, locks: 0.}
proc size*(self: PackedDataContainer): int64 {.gcsafe, locks: 0.}
var packedDataContainerUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: PackedDataContainer): PoolByteArray =
  if isNil(packedDataContainerUnderscoregetDataMethodBind):
    packedDataContainerUnderscoregetDataMethodBind = getMethod(
        cstring"PackedDataContainer", cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var packedDataContainerUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: PackedDataContainer; val: PoolByteArray) =
  if isNil(packedDataContainerUnderscoresetDataMethodBind):
    packedDataContainerUnderscoresetDataMethodBind = getMethod(
        cstring"PackedDataContainer", cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolByteArray
  var ptrCallRet: pointer
  packedDataContainerUnderscoresetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var packedDataContainerUnderscoreiterGetMethodBind {.threadvar.}: ptr GodotMethodBind
method iterGet(self: PackedDataContainer; arg0: Variant): Variant =
  if isNil(packedDataContainerUnderscoreiterGetMethodBind):
    packedDataContainerUnderscoreiterGetMethodBind = getMethod(
        cstring"PackedDataContainer", cstring"_iter_get")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerUnderscoreiterGetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var packedDataContainerUnderscoreiterInitMethodBind {.threadvar.}: ptr GodotMethodBind
method iterInit(self: PackedDataContainer; arg0: Array): Variant =
  if isNil(packedDataContainerUnderscoreiterInitMethodBind):
    packedDataContainerUnderscoreiterInitMethodBind = getMethod(
        cstring"PackedDataContainer", cstring"_iter_init")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerUnderscoreiterInitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var packedDataContainerUnderscoreiterNextMethodBind {.threadvar.}: ptr GodotMethodBind
method iterNext(self: PackedDataContainer; arg0: Array): Variant =
  if isNil(packedDataContainerUnderscoreiterNextMethodBind):
    packedDataContainerUnderscoreiterNextMethodBind = getMethod(
        cstring"PackedDataContainer", cstring"_iter_next")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerUnderscoreiterNextMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var packedDataContainerPackMethodBind {.threadvar.}: ptr GodotMethodBind
proc pack(self: PackedDataContainer; value: Variant): Error =
  if isNil(packedDataContainerPackMethodBind):
    packedDataContainerPackMethodBind = getMethod(cstring"PackedDataContainer",
        cstring"pack")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = value.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packedDataContainerPackMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = Error(ptrCallVal)

var packedDataContainerSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: PackedDataContainer): int64 =
  if isNil(packedDataContainerSizeMethodBind):
    packedDataContainerSizeMethodBind = getMethod(cstring"PackedDataContainer",
        cstring"size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  packedDataContainerSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
