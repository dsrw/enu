
import
  godot, godottypes, godotinternal

export
  godottypes

const
  CONNECT_DEFERRED* = 1'i64
  CONNECT_ONESHOT* = 4'i64
  CONNECT_PERSIST* = 2'i64
  CONNECT_REFERENCE_COUNTED* = 8'i64
  NOTIFICATION_POSTINITIALIZE* = 0'i64
  NOTIFICATION_PREDELETE* = 1'i64
method get*(self: Object; property: string): Variant {.gcsafe, locks: 0, base.}
method getPropertyList*(self: Object): Array {.gcsafe, locks: 0, base.}
method init*(self: Object) {.gcsafe, locks: 0, base.}
method notification*(self: Object; what: int64) {.gcsafe, locks: 0, base.}
method set*(self: Object; property: string; value: Variant): bool {.gcsafe, locks: 0, base.}
method toString*(self: Object): string {.gcsafe, locks: 0, base.}
proc addUserSignal*(self: Object; signal: string; arguments: Array = newArray()) {.
    gcsafe, locks: 0.}
proc call*(self: Object; methodd: string; variantArgs: varargs[Variant]): Variant {.
    gcsafe, locks: 0.}
proc callDeferred*(self: Object; methodd: string; variantArgs: varargs[Variant]) {.
    gcsafe, locks: 0.}
proc callv*(self: Object; methodd: string; argArray: Array): Variant {.gcsafe, locks: 0.}
proc canTranslateMessages*(self: Object): bool {.gcsafe, locks: 0.}
proc connect*(self: Object; signal: string; target: Object; methodd: string;
             binds: Array = newArray(); flags: int64 = 0'i64): Error {.gcsafe, locks: 0.}
proc disconnect*(self: Object; signal: string; target: Object; methodd: string) {.gcsafe,
    locks: 0.}
proc emitSignal*(self: Object; signal: string; variantArgs: varargs[Variant]) {.gcsafe,
    locks: 0.}
proc free*(self: Object) {.gcsafe, locks: 0.}
proc getImpl*(self: Object; property: string): Variant {.gcsafe, locks: 0.}
proc getClass*(self: Object): string {.gcsafe, locks: 0.}
proc getIncomingConnections*(self: Object): Array {.gcsafe, locks: 0.}
proc getIndexed*(self: Object; property: NodePath): Variant {.gcsafe, locks: 0.}
proc getInstanceId*(self: Object): int64 {.gcsafe, locks: 0.}
proc getMeta*(self: Object; name: string): Variant {.gcsafe, locks: 0.}
proc getMetaList*(self: Object): PoolStringArray {.gcsafe, locks: 0.}
proc getMethodList*(self: Object): Array {.gcsafe, locks: 0.}
proc getPropertyListImpl*(self: Object): Array {.gcsafe, locks: 0.}
proc getScript*(self: Object): Reference {.gcsafe, locks: 0.}
proc getSignalConnectionList*(self: Object; signal: string): Array {.gcsafe, locks: 0.}
proc getSignalList*(self: Object): Array {.gcsafe, locks: 0.}
proc hasMeta*(self: Object; name: string): bool {.gcsafe, locks: 0.}
proc hasMethod*(self: Object; methodd: string): bool {.gcsafe, locks: 0.}
proc hasSignal*(self: Object; signal: string): bool {.gcsafe, locks: 0.}
proc hasUserSignal*(self: Object; signal: string): bool {.gcsafe, locks: 0.}
proc isBlockingSignals*(self: Object): bool {.gcsafe, locks: 0.}
proc isClass*(self: Object; class: string): bool {.gcsafe, locks: 0.}
proc isConnected*(self: Object; signal: string; target: Object; methodd: string): bool {.
    gcsafe, locks: 0.}
proc isQueuedForDeletion*(self: Object): bool {.gcsafe, locks: 0.}
proc notificationImpl*(self: Object; what: int64; reversed: bool = false) {.gcsafe,
    locks: 0.}
proc propertyListChangedNotify*(self: Object) {.gcsafe, locks: 0.}
proc removeMeta*(self: Object; name: string) {.gcsafe, locks: 0.}
proc setImpl*(self: Object; property: string; value: Variant) {.gcsafe, locks: 0.}
proc setBlockSignals*(self: Object; enable: bool) {.gcsafe, locks: 0.}
proc setDeferred*(self: Object; property: string; value: Variant) {.gcsafe, locks: 0.}
proc setIndexed*(self: Object; property: NodePath; value: Variant) {.gcsafe, locks: 0.}
proc setMessageTranslation*(self: Object; enable: bool) {.gcsafe, locks: 0.}
proc setMeta*(self: Object; name: string; value: Variant) {.gcsafe, locks: 0.}
proc setScript*(self: Object; script: Reference) {.gcsafe, locks: 0.}
proc toStringImpl*(self: Object): string {.gcsafe, locks: 0.}
proc tr*(self: Object; message: string): string {.gcsafe, locks: 0.}
var objectUnderscoregetMethodBind {.threadvar.}: ptr GodotMethodBind
method get(self: Object; property: string): Variant =
  if isNil(objectUnderscoregetMethodBind):
    objectUnderscoregetMethodBind = getMethod(cstring"Object", cstring"_get")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  objectUnderscoregetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var objectUnderscoregetPropertyListMethodBind {.threadvar.}: ptr GodotMethodBind
method getPropertyList(self: Object): Array =
  if isNil(objectUnderscoregetPropertyListMethodBind):
    objectUnderscoregetPropertyListMethodBind = getMethod(cstring"Object",
        cstring"_get_property_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  objectUnderscoregetPropertyListMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

method init(self: Object) =
  discard

var objectUnderscorenotificationMethodBind {.threadvar.}: ptr GodotMethodBind
method notification(self: Object; what: int64) =
  if isNil(objectUnderscorenotificationMethodBind):
    objectUnderscorenotificationMethodBind = getMethod(cstring"Object",
        cstring"_notification")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(what)
  var ptrCallRet: pointer
  objectUnderscorenotificationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var objectUnderscoresetMethodBind {.threadvar.}: ptr GodotMethodBind
method set(self: Object; property: string; value: Variant): bool =
  if isNil(objectUnderscoresetMethodBind):
    objectUnderscoresetMethodBind = getMethod(cstring"Object", cstring"_set")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectUnderscoresetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var objectUnderscoretoStringMethodBind {.threadvar.}: ptr GodotMethodBind
method toString(self: Object): string =
  if isNil(objectUnderscoretoStringMethodBind):
    objectUnderscoretoStringMethodBind = getMethod(cstring"Object",
        cstring"_to_string")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  objectUnderscoretoStringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var objectAddUserSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc addUserSignal(self: Object; signal: string; arguments: Array = newArray()) =
  if isNil(objectAddUserSignalMethodBind):
    objectAddUserSignalMethodBind = getMethod(cstring"Object",
        cstring"add_user_signal")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signal)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = arguments.godotArray
  var ptrCallRet: pointer
  objectAddUserSignalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var objectCallMethodBind {.threadvar.}: ptr GodotMethodBind
proc call(self: Object; methodd: string; variantArgs: varargs[Variant]): Variant =
  if isNil(objectCallMethodBind):
    objectCallMethodBind = getMethod(cstring"Object", cstring"call")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(1 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(methodd)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var idx = 1
  while idx < cint(1 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 1].godotVariant
    inc idx
  let callRet {.used.} = objectCallMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(1 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var objectCallDeferredMethodBind {.threadvar.}: ptr GodotMethodBind
proc callDeferred(self: Object; methodd: string; variantArgs: varargs[Variant]) =
  if isNil(objectCallDeferredMethodBind):
    objectCallDeferredMethodBind = getMethod(cstring"Object",
        cstring"call_deferred")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(1 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(methodd)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var idx = 1
  while idx < cint(1 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 1].godotVariant
    inc idx
  let callRet {.used.} = objectCallDeferredMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(1 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  
var objectCallvMethodBind {.threadvar.}: ptr GodotMethodBind
proc callv(self: Object; methodd: string; argArray: Array): Variant =
  if isNil(objectCallvMethodBind):
    objectCallvMethodBind = getMethod(cstring"Object", cstring"callv")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(methodd)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = argArray.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  objectCallvMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var objectCanTranslateMessagesMethodBind {.threadvar.}: ptr GodotMethodBind
proc canTranslateMessages(self: Object): bool =
  if isNil(objectCanTranslateMessagesMethodBind):
    objectCanTranslateMessagesMethodBind = getMethod(cstring"Object",
        cstring"can_translate_messages")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectCanTranslateMessagesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var objectConnectMethodBind {.threadvar.}: ptr GodotMethodBind
proc connect(self: Object; signal: string; target: Object; methodd: string;
            binds: Array = newArray(); flags: int64 = 0'i64): Error =
  if isNil(objectConnectMethodBind):
    objectConnectMethodBind = getMethod(cstring"Object", cstring"connect")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signal)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(methodd)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = binds.godotArray
  argsToPassToGodot[][4] = unsafeAddr(flags)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  objectConnectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)
  result = Error(ptrCallVal)

var objectDisconnectMethodBind {.threadvar.}: ptr GodotMethodBind
proc disconnect(self: Object; signal: string; target: Object; methodd: string) =
  if isNil(objectDisconnectMethodBind):
    objectDisconnectMethodBind = getMethod(cstring"Object", cstring"disconnect")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signal)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(methodd)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  objectDisconnectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var objectEmitSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc emitSignal(self: Object; signal: string; variantArgs: varargs[Variant]) =
  if isNil(objectEmitSignalMethodBind):
    objectEmitSignalMethodBind = getMethod(cstring"Object", cstring"emit_signal")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(1 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(signal)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var idx = 1
  while idx < cint(1 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 1].godotVariant
    inc idx
  let callRet {.used.} = objectEmitSignalMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(1 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  
var objectFreeMethodBind {.threadvar.}: ptr GodotMethodBind
proc free(self: Object) =
  if isNil(objectFreeMethodBind):
    objectFreeMethodBind = getMethod(cstring"Object", cstring"free")
  var ptrCallRet: pointer
  objectFreeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var objectGetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getImpl(self: Object; property: string): Variant =
  if isNil(objectGetMethodBind):
    objectGetMethodBind = getMethod(cstring"Object", cstring"get")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  objectGetMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var objectGetClassMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClass(self: Object): string =
  if isNil(objectGetClassMethodBind):
    objectGetClassMethodBind = getMethod(cstring"Object", cstring"get_class")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  objectGetClassMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var objectGetIncomingConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIncomingConnections(self: Object): Array =
  if isNil(objectGetIncomingConnectionsMethodBind):
    objectGetIncomingConnectionsMethodBind = getMethod(cstring"Object",
        cstring"get_incoming_connections")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  objectGetIncomingConnectionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var objectGetIndexedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIndexed(self: Object; property: NodePath): Variant =
  if isNil(objectGetIndexedMethodBind):
    objectGetIndexedMethodBind = getMethod(cstring"Object", cstring"get_indexed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = property.godotNodePath
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  objectGetIndexedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = newVariant(ptrCallVal)

var objectGetInstanceIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstanceId(self: Object): int64 =
  if isNil(objectGetInstanceIdMethodBind):
    objectGetInstanceIdMethodBind = getMethod(cstring"Object",
        cstring"get_instance_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectGetInstanceIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var objectGetMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMeta(self: Object; name: string): Variant =
  if isNil(objectGetMetaMethodBind):
    objectGetMetaMethodBind = getMethod(cstring"Object", cstring"get_meta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  objectGetMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var objectGetMetaListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMetaList(self: Object): PoolStringArray =
  if isNil(objectGetMetaListMethodBind):
    objectGetMetaListMethodBind = getMethod(cstring"Object",
        cstring"get_meta_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  objectGetMetaListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var objectGetMethodListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMethodList(self: Object): Array =
  if isNil(objectGetMethodListMethodBind):
    objectGetMethodListMethodBind = getMethod(cstring"Object",
        cstring"get_method_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  objectGetMethodListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var objectGetPropertyListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPropertyListImpl(self: Object): Array =
  if isNil(objectGetPropertyListMethodBind):
    objectGetPropertyListMethodBind = getMethod(cstring"Object",
        cstring"get_property_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  objectGetPropertyListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var objectGetScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScript(self: Object): Reference =
  if isNil(objectGetScriptMethodBind):
    objectGetScriptMethodBind = getMethod(cstring"Object", cstring"get_script")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  objectGetScriptMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var objectGetSignalConnectionListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSignalConnectionList(self: Object; signal: string): Array =
  if isNil(objectGetSignalConnectionListMethodBind):
    objectGetSignalConnectionListMethodBind = getMethod(cstring"Object",
        cstring"get_signal_connection_list")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signal)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  objectGetSignalConnectionListMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var objectGetSignalListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSignalList(self: Object): Array =
  if isNil(objectGetSignalListMethodBind):
    objectGetSignalListMethodBind = getMethod(cstring"Object",
        cstring"get_signal_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  objectGetSignalListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var objectHasMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasMeta(self: Object; name: string): bool =
  if isNil(objectHasMetaMethodBind):
    objectHasMetaMethodBind = getMethod(cstring"Object", cstring"has_meta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectHasMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var objectHasMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasMethod(self: Object; methodd: string): bool =
  if isNil(objectHasMethodMethodBind):
    objectHasMethodMethodBind = getMethod(cstring"Object", cstring"has_method")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(methodd)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectHasMethodMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var objectHasSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSignal(self: Object; signal: string): bool =
  if isNil(objectHasSignalMethodBind):
    objectHasSignalMethodBind = getMethod(cstring"Object", cstring"has_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signal)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectHasSignalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var objectHasUserSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasUserSignal(self: Object; signal: string): bool =
  if isNil(objectHasUserSignalMethodBind):
    objectHasUserSignalMethodBind = getMethod(cstring"Object",
        cstring"has_user_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signal)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectHasUserSignalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var objectIsBlockingSignalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc isBlockingSignals(self: Object): bool =
  if isNil(objectIsBlockingSignalsMethodBind):
    objectIsBlockingSignalsMethodBind = getMethod(cstring"Object",
        cstring"is_blocking_signals")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectIsBlockingSignalsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var objectIsClassMethodBind {.threadvar.}: ptr GodotMethodBind
proc isClass(self: Object; class: string): bool =
  if isNil(objectIsClassMethodBind):
    objectIsClassMethodBind = getMethod(cstring"Object", cstring"is_class")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectIsClassMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var objectIsConnectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isConnected(self: Object; signal: string; target: Object; methodd: string): bool =
  if isNil(objectIsConnectedMethodBind):
    objectIsConnectedMethodBind = getMethod(cstring"Object", cstring"is_connected")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signal)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not target.isNil:
    target.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(methodd)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectIsConnectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var objectIsQueuedForDeletionMethodBind {.threadvar.}: ptr GodotMethodBind
proc isQueuedForDeletion(self: Object): bool =
  if isNil(objectIsQueuedForDeletionMethodBind):
    objectIsQueuedForDeletionMethodBind = getMethod(cstring"Object",
        cstring"is_queued_for_deletion")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  objectIsQueuedForDeletionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var objectNotificationMethodBind {.threadvar.}: ptr GodotMethodBind
proc notificationImpl(self: Object; what: int64; reversed: bool = false) =
  if isNil(objectNotificationMethodBind):
    objectNotificationMethodBind = getMethod(cstring"Object",
        cstring"notification")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(what)
  argsToPassToGodot[][1] = unsafeAddr(reversed)
  var ptrCallRet: pointer
  objectNotificationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var objectPropertyListChangedNotifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc propertyListChangedNotify(self: Object) =
  if isNil(objectPropertyListChangedNotifyMethodBind):
    objectPropertyListChangedNotifyMethodBind = getMethod(cstring"Object",
        cstring"property_list_changed_notify")
  var ptrCallRet: pointer
  objectPropertyListChangedNotifyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var objectRemoveMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeMeta(self: Object; name: string) =
  if isNil(objectRemoveMetaMethodBind):
    objectRemoveMetaMethodBind = getMethod(cstring"Object", cstring"remove_meta")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  objectRemoveMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var objectSetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setImpl(self: Object; property: string; value: Variant) =
  if isNil(objectSetMethodBind):
    objectSetMethodBind = getMethod(cstring"Object", cstring"set")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  objectSetMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var objectSetBlockSignalsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBlockSignals(self: Object; enable: bool) =
  if isNil(objectSetBlockSignalsMethodBind):
    objectSetBlockSignalsMethodBind = getMethod(cstring"Object",
        cstring"set_block_signals")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  objectSetBlockSignalsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var objectSetDeferredMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDeferred(self: Object; property: string; value: Variant) =
  if isNil(objectSetDeferredMethodBind):
    objectSetDeferredMethodBind = getMethod(cstring"Object", cstring"set_deferred")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  objectSetDeferredMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var objectSetIndexedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIndexed(self: Object; property: NodePath; value: Variant) =
  if isNil(objectSetIndexedMethodBind):
    objectSetIndexedMethodBind = getMethod(cstring"Object", cstring"set_indexed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = property.godotNodePath
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  objectSetIndexedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var objectSetMessageTranslationMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMessageTranslation(self: Object; enable: bool) =
  if isNil(objectSetMessageTranslationMethodBind):
    objectSetMessageTranslationMethodBind = getMethod(cstring"Object",
        cstring"set_message_translation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  objectSetMessageTranslationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var objectSetMetaMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMeta(self: Object; name: string; value: Variant) =
  if isNil(objectSetMetaMethodBind):
    objectSetMetaMethodBind = getMethod(cstring"Object", cstring"set_meta")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  objectSetMetaMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var objectSetScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc setScript(self: Object; script: Reference) =
  if isNil(objectSetScriptMethodBind):
    objectSetScriptMethodBind = getMethod(cstring"Object", cstring"set_script")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not script.isNil:
    script.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  objectSetScriptMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var objectToStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc toStringImpl(self: Object): string =
  if isNil(objectToStringMethodBind):
    objectToStringMethodBind = getMethod(cstring"Object", cstring"to_string")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  objectToStringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var objectTrMethodBind {.threadvar.}: ptr GodotMethodBind
proc tr(self: Object; message: string): string =
  if isNil(objectTrMethodBind):
    objectTrMethodBind = getMethod(cstring"Object", cstring"tr")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(message)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  objectTrMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)
