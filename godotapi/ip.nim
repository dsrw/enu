
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  RESOLVER_INVALID_ID* = -1'i64
  RESOLVER_MAX_QUERIES* = 32'i64
  RESOLVER_STATUS_DONE* = 2'i64
  RESOLVER_STATUS_ERROR* = 3'i64
  RESOLVER_STATUS_NONE* = 0'i64
  RESOLVER_STATUS_WAITING* = 1'i64
  TYPE_ANY* = 3'i64
  TYPE_IPV4* = 1'i64
  TYPE_IPV6* = 2'i64
  TYPE_NONE* = 0'i64
type
  IP = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
  IPUnix = ref object of IP
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
registerClass(IP, "IP", true)
registerClass(IPUnix, "IP_Unix", true)
var singletonIP {.threadvar.}: IP
proc clearCache*(hostname: string = "") {.gcsafe, locks: 0.}
proc eraseResolveItem*(id: int64) {.gcsafe, locks: 0.}
proc getLocalAddresses*(): Array {.gcsafe, locks: 0.}
proc getLocalInterfaces*(): Array {.gcsafe, locks: 0.}
proc getResolveItemAddress*(id: int64): string {.gcsafe, locks: 0.}
proc getResolveItemStatus*(id: int64): int64 {.gcsafe, locks: 0.}
proc resolveHostname*(host: string; ipType: int64 = 3'i64): string {.gcsafe, locks: 0.}
proc resolveHostnameQueueItem*(host: string; ipType: int64 = 3'i64): int64 {.gcsafe,
    locks: 0.}
var iPClearCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCache(hostname: string = "") =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPClearCacheMethodBind):
    iPClearCacheMethodBind = getMethod(cstring"IP", cstring"clear_cache")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(hostname)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  iPClearCacheMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var iPEraseResolveItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc eraseResolveItem(id: int64) =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPEraseResolveItemMethodBind):
    iPEraseResolveItemMethodBind = getMethod(cstring"IP",
        cstring"erase_resolve_item")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  iPEraseResolveItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var iPGetLocalAddressesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLocalAddresses(): Array =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPGetLocalAddressesMethodBind):
    iPGetLocalAddressesMethodBind = getMethod(cstring"IP",
        cstring"get_local_addresses")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  iPGetLocalAddressesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var iPGetLocalInterfacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLocalInterfaces(): Array =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPGetLocalInterfacesMethodBind):
    iPGetLocalInterfacesMethodBind = getMethod(cstring"IP",
        cstring"get_local_interfaces")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  iPGetLocalInterfacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var iPGetResolveItemAddressMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResolveItemAddress(id: int64): string =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPGetResolveItemAddressMethodBind):
    iPGetResolveItemAddressMethodBind = getMethod(cstring"IP",
        cstring"get_resolve_item_address")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  iPGetResolveItemAddressMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var iPGetResolveItemStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc getResolveItemStatus(id: int64): int64 =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPGetResolveItemStatusMethodBind):
    iPGetResolveItemStatusMethodBind = getMethod(cstring"IP",
        cstring"get_resolve_item_status")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  iPGetResolveItemStatusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var iPResolveHostnameMethodBind {.threadvar.}: ptr GodotMethodBind
proc resolveHostname(host: string; ipType: int64 = 3'i64): string =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPResolveHostnameMethodBind):
    iPResolveHostnameMethodBind = getMethod(cstring"IP", cstring"resolve_hostname")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(host)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(ipType)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  iPResolveHostnameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var iPResolveHostnameQueueItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc resolveHostnameQueueItem(host: string; ipType: int64 = 3'i64): int64 =
  if isNil(singletonIP):
    singletonIP = getSingleton[IP]()
  let self = singletonIP
  if isNil(iPResolveHostnameQueueItemMethodBind):
    iPResolveHostnameQueueItemMethodBind = getMethod(cstring"IP",
        cstring"resolve_hostname_queue_item")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(host)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(ipType)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  iPResolveHostnameQueueItemMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
