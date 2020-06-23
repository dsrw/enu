
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  Marshalls = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(Marshalls, "_Marshalls", true)
var singletonMarshalls {.threadvar.}: Marshalls
proc base64ToRaw*(base64Str: string): PoolByteArray {.gcsafe, locks: 0.}
proc base64ToUtf8*(base64Str: string): string {.gcsafe, locks: 0.}
proc base64ToVariant*(base64Str: string; allowObjects: bool = false): Variant {.gcsafe,
    locks: 0.}
proc rawToBase64*(array: PoolByteArray): string {.gcsafe, locks: 0.}
proc utf8ToBase64*(utf8Str: string): string {.gcsafe, locks: 0.}
proc variantToBase64*(variant: Variant; fullObjects: bool = false): string {.gcsafe,
    locks: 0.}
var marshallsBase64ToRawMethodBind {.threadvar.}: ptr GodotMethodBind
proc base64ToRaw(base64Str: string): PoolByteArray =
  if isNil(singletonMarshalls):
    singletonMarshalls = getSingleton[Marshalls]()
  let self = singletonMarshalls
  if isNil(marshallsBase64ToRawMethodBind):
    marshallsBase64ToRawMethodBind = getMethod(cstring"_Marshalls",
        cstring"base64_to_raw")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(base64Str)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  marshallsBase64ToRawMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolByteArray(ptrCallVal)

var marshallsBase64ToUtf8MethodBind {.threadvar.}: ptr GodotMethodBind
proc base64ToUtf8(base64Str: string): string =
  if isNil(singletonMarshalls):
    singletonMarshalls = getSingleton[Marshalls]()
  let self = singletonMarshalls
  if isNil(marshallsBase64ToUtf8MethodBind):
    marshallsBase64ToUtf8MethodBind = getMethod(cstring"_Marshalls",
        cstring"base64_to_utf8")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(base64Str)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  marshallsBase64ToUtf8MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var marshallsBase64ToVariantMethodBind {.threadvar.}: ptr GodotMethodBind
proc base64ToVariant(base64Str: string; allowObjects: bool = false): Variant =
  if isNil(singletonMarshalls):
    singletonMarshalls = getSingleton[Marshalls]()
  let self = singletonMarshalls
  if isNil(marshallsBase64ToVariantMethodBind):
    marshallsBase64ToVariantMethodBind = getMethod(cstring"_Marshalls",
        cstring"base64_to_variant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(base64Str)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(allowObjects)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  marshallsBase64ToVariantMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var marshallsRawToBase64MethodBind {.threadvar.}: ptr GodotMethodBind
proc rawToBase64(array: PoolByteArray): string =
  if isNil(singletonMarshalls):
    singletonMarshalls = getSingleton[Marshalls]()
  let self = singletonMarshalls
  if isNil(marshallsRawToBase64MethodBind):
    marshallsRawToBase64MethodBind = getMethod(cstring"_Marshalls",
        cstring"raw_to_base64")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = array.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  marshallsRawToBase64MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var marshallsUtf8ToBase64MethodBind {.threadvar.}: ptr GodotMethodBind
proc utf8ToBase64(utf8Str: string): string =
  if isNil(singletonMarshalls):
    singletonMarshalls = getSingleton[Marshalls]()
  let self = singletonMarshalls
  if isNil(marshallsUtf8ToBase64MethodBind):
    marshallsUtf8ToBase64MethodBind = getMethod(cstring"_Marshalls",
        cstring"utf8_to_base64")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(utf8Str)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  marshallsUtf8ToBase64MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var marshallsVariantToBase64MethodBind {.threadvar.}: ptr GodotMethodBind
proc variantToBase64(variant: Variant; fullObjects: bool = false): string =
  if isNil(singletonMarshalls):
    singletonMarshalls = getSingleton[Marshalls]()
  let self = singletonMarshalls
  if isNil(marshallsVariantToBase64MethodBind):
    marshallsVariantToBase64MethodBind = getMethod(cstring"_Marshalls",
        cstring"variant_to_base64")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = variant.godotVariant
  argsToPassToGodot[][1] = unsafeAddr(fullObjects)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  marshallsVariantToBase64MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
