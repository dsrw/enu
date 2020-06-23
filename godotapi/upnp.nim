
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  UPNP_RESULT_ACTION_FAILED* = 5'i64
  UPNP_RESULT_CONFLICT_WITH_OTHER_MAPPING* = 13'i64
  UPNP_RESULT_CONFLICT_WITH_OTHER_MECHANISM* = 12'i64
  UPNP_RESULT_EXT_PORT_MUST_BE_WILDCARD* = 10'i64
  UPNP_RESULT_EXT_PORT_WILDCARD_NOT_PERMITTED* = 7'i64
  UPNP_RESULT_HTTP_ERROR* = 23'i64
  UPNP_RESULT_INCONSISTENT_PARAMETERS* = 3'i64
  UPNP_RESULT_INT_PORT_WILDCARD_NOT_PERMITTED* = 8'i64
  UPNP_RESULT_INVALID_ARGS* = 20'i64
  UPNP_RESULT_INVALID_DURATION* = 19'i64
  UPNP_RESULT_INVALID_GATEWAY* = 16'i64
  UPNP_RESULT_INVALID_PARAM* = 22'i64
  UPNP_RESULT_INVALID_PORT* = 17'i64
  UPNP_RESULT_INVALID_PROTOCOL* = 18'i64
  UPNP_RESULT_INVALID_RESPONSE* = 21'i64
  UPNP_RESULT_MEM_ALLOC_ERROR* = 25'i64
  UPNP_RESULT_NOT_AUTHORIZED* = 1'i64
  UPNP_RESULT_NO_DEVICES* = 27'i64
  UPNP_RESULT_NO_GATEWAY* = 26'i64
  UPNP_RESULT_NO_PORT_MAPS_AVAILABLE* = 11'i64
  UPNP_RESULT_NO_SUCH_ENTRY_IN_ARRAY* = 4'i64
  UPNP_RESULT_ONLY_PERMANENT_LEASE_SUPPORTED* = 15'i64
  UPNP_RESULT_PORT_MAPPING_NOT_FOUND* = 2'i64
  UPNP_RESULT_REMOTE_HOST_MUST_BE_WILDCARD* = 9'i64
  UPNP_RESULT_SAME_PORT_VALUES_REQUIRED* = 14'i64
  UPNP_RESULT_SOCKET_ERROR* = 24'i64
  UPNP_RESULT_SRC_IP_WILDCARD_NOT_PERMITTED* = 6'i64
  UPNP_RESULT_SUCCESS* = 0'i64
  UPNP_RESULT_UNKNOWN_ERROR* = 28'i64
proc discoverIpv6*(self: UPNP): bool {.gcsafe, locks: 0.}
proc `discoverIpv6=`*(self: UPNP; val: bool) {.gcsafe, locks: 0.}
proc discoverLocalPort*(self: UPNP): int64 {.gcsafe, locks: 0.}
proc `discoverLocalPort=`*(self: UPNP; val: int64) {.gcsafe, locks: 0.}
proc discoverMulticastIf*(self: UPNP): string {.gcsafe, locks: 0.}
proc `discoverMulticastIf=`*(self: UPNP; val: string) {.gcsafe, locks: 0.}
proc addDevice*(self: UPNP; device: UPNPDevice) {.gcsafe, locks: 0.}
proc addPortMapping*(self: UPNP; port: int64; portInternal: int64 = 0'i64;
                    desc: string = ""; proto: string = "UDP"; duration: int64 = 0'i64): int64 {.
    gcsafe, locks: 0.}
proc clearDevices*(self: UPNP) {.gcsafe, locks: 0.}
proc deletePortMapping*(self: UPNP; port: int64; proto: string = "UDP"): int64 {.gcsafe,
    locks: 0.}
proc discover*(self: UPNP; timeout: int64 = 2000'i64; ttl: int64 = 2'i64;
              deviceFilter: string = "InternetGatewayDevice"): int64 {.gcsafe,
    locks: 0.}
proc getDevice*(self: UPNP; index: int64): UPNPDevice {.gcsafe, locks: 0.}
proc getDeviceCount*(self: UPNP): int64 {.gcsafe, locks: 0.}
proc getGateway*(self: UPNP): UPNPDevice {.gcsafe, locks: 0.}
proc queryExternalAddress*(self: UPNP): string {.gcsafe, locks: 0.}
proc removeDevice*(self: UPNP; index: int64) {.gcsafe, locks: 0.}
proc setDevice*(self: UPNP; index: int64; device: UPNPDevice) {.gcsafe, locks: 0.}
var uPNPIsDiscoverIpv6MethodBind {.threadvar.}: ptr GodotMethodBind
proc discoverIpv6(self: UPNP): bool =
  if isNil(uPNPIsDiscoverIpv6MethodBind):
    uPNPIsDiscoverIpv6MethodBind = getMethod(cstring"UPNP",
        cstring"is_discover_ipv6")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPIsDiscoverIpv6MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uPNPSetDiscoverIpv6MethodBind {.threadvar.}: ptr GodotMethodBind
proc `discoverIpv6=`(self: UPNP; val: bool) =
  if isNil(uPNPSetDiscoverIpv6MethodBind):
    uPNPSetDiscoverIpv6MethodBind = getMethod(cstring"UPNP",
        cstring"set_discover_ipv6")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  uPNPSetDiscoverIpv6MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var uPNPGetDiscoverLocalPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc discoverLocalPort(self: UPNP): int64 =
  if isNil(uPNPGetDiscoverLocalPortMethodBind):
    uPNPGetDiscoverLocalPortMethodBind = getMethod(cstring"UPNP",
        cstring"get_discover_local_port")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPGetDiscoverLocalPortMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uPNPSetDiscoverLocalPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc `discoverLocalPort=`(self: UPNP; val: int64) =
  if isNil(uPNPSetDiscoverLocalPortMethodBind):
    uPNPSetDiscoverLocalPortMethodBind = getMethod(cstring"UPNP",
        cstring"set_discover_local_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  uPNPSetDiscoverLocalPortMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var uPNPGetDiscoverMulticastIfMethodBind {.threadvar.}: ptr GodotMethodBind
proc discoverMulticastIf(self: UPNP): string =
  if isNil(uPNPGetDiscoverMulticastIfMethodBind):
    uPNPGetDiscoverMulticastIfMethodBind = getMethod(cstring"UPNP",
        cstring"get_discover_multicast_if")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPGetDiscoverMulticastIfMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var uPNPSetDiscoverMulticastIfMethodBind {.threadvar.}: ptr GodotMethodBind
proc `discoverMulticastIf=`(self: UPNP; val: string) =
  if isNil(uPNPSetDiscoverMulticastIfMethodBind):
    uPNPSetDiscoverMulticastIfMethodBind = getMethod(cstring"UPNP",
        cstring"set_discover_multicast_if")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  uPNPSetDiscoverMulticastIfMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var uPNPAddDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addDevice(self: UPNP; device: UPNPDevice) =
  if isNil(uPNPAddDeviceMethodBind):
    uPNPAddDeviceMethodBind = getMethod(cstring"UPNP", cstring"add_device")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not device.isNil:
    device.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  uPNPAddDeviceMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var uPNPAddPortMappingMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPortMapping(self: UPNP; port: int64; portInternal: int64 = 0'i64;
                   desc: string = ""; proto: string = "UDP"; duration: int64 = 0'i64): int64 =
  if isNil(uPNPAddPortMappingMethodBind):
    uPNPAddPortMappingMethodBind = getMethod(cstring"UPNP",
        cstring"add_port_mapping")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  argsToPassToGodot[][1] = unsafeAddr(portInternal)
  var argToPassToGodot2 = toGodotString(desc)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var argToPassToGodot3 = toGodotString(proto)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  argsToPassToGodot[][4] = unsafeAddr(duration)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPAddPortMappingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot3)

var uPNPClearDevicesMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearDevices(self: UPNP) =
  if isNil(uPNPClearDevicesMethodBind):
    uPNPClearDevicesMethodBind = getMethod(cstring"UPNP", cstring"clear_devices")
  var ptrCallRet: pointer
  uPNPClearDevicesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uPNPDeletePortMappingMethodBind {.threadvar.}: ptr GodotMethodBind
proc deletePortMapping(self: UPNP; port: int64; proto: string = "UDP"): int64 =
  if isNil(uPNPDeletePortMappingMethodBind):
    uPNPDeletePortMappingMethodBind = getMethod(cstring"UPNP",
        cstring"delete_port_mapping")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var argToPassToGodot1 = toGodotString(proto)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPDeletePortMappingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var uPNPDiscoverMethodBind {.threadvar.}: ptr GodotMethodBind
proc discover(self: UPNP; timeout: int64 = 2000'i64; ttl: int64 = 2'i64;
             deviceFilter: string = "InternetGatewayDevice"): int64 =
  if isNil(uPNPDiscoverMethodBind):
    uPNPDiscoverMethodBind = getMethod(cstring"UPNP", cstring"discover")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(timeout)
  argsToPassToGodot[][1] = unsafeAddr(ttl)
  var argToPassToGodot2 = toGodotString(deviceFilter)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPDiscoverMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var uPNPGetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDevice(self: UPNP; index: int64): UPNPDevice =
  if isNil(uPNPGetDeviceMethodBind):
    uPNPGetDeviceMethodBind = getMethod(cstring"UPNP", cstring"get_device")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  uPNPGetDeviceMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var uPNPGetDeviceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDeviceCount(self: UPNP): int64 =
  if isNil(uPNPGetDeviceCountMethodBind):
    uPNPGetDeviceCountMethodBind = getMethod(cstring"UPNP",
        cstring"get_device_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPGetDeviceCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uPNPGetGatewayMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGateway(self: UPNP): UPNPDevice =
  if isNil(uPNPGetGatewayMethodBind):
    uPNPGetGatewayMethodBind = getMethod(cstring"UPNP", cstring"get_gateway")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  uPNPGetGatewayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var uPNPQueryExternalAddressMethodBind {.threadvar.}: ptr GodotMethodBind
proc queryExternalAddress(self: UPNP): string =
  if isNil(uPNPQueryExternalAddressMethodBind):
    uPNPQueryExternalAddressMethodBind = getMethod(cstring"UPNP",
        cstring"query_external_address")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPQueryExternalAddressMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var uPNPRemoveDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeDevice(self: UPNP; index: int64) =
  if isNil(uPNPRemoveDeviceMethodBind):
    uPNPRemoveDeviceMethodBind = getMethod(cstring"UPNP", cstring"remove_device")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  uPNPRemoveDeviceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var uPNPSetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDevice(self: UPNP; index: int64; device: UPNPDevice) =
  if isNil(uPNPSetDeviceMethodBind):
    uPNPSetDeviceMethodBind = getMethod(cstring"UPNP", cstring"set_device")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  let argToPassToGodot1 = if not device.isNil:
    device.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  uPNPSetDeviceMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
