
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  IGD_STATUS_DISCONNECTED* = 5'i64
  IGD_STATUS_HTTP_EMPTY* = 2'i64
  IGD_STATUS_HTTP_ERROR* = 1'i64
  IGD_STATUS_INVALID_CONTROL* = 7'i64
  IGD_STATUS_MALLOC_ERROR* = 8'i64
  IGD_STATUS_NO_IGD* = 4'i64
  IGD_STATUS_NO_URLS* = 3'i64
  IGD_STATUS_OK* = 0'i64
  IGD_STATUS_UNKNOWN_DEVICE* = 6'i64
  IGD_STATUS_UNKNOWN_ERROR* = 9'i64
proc descriptionUrl*(self: UPNPDevice): string {.gcsafe, locks: 0.}
proc `descriptionUrl=`*(self: UPNPDevice; val: string) {.gcsafe, locks: 0.}
proc igdControlUrl*(self: UPNPDevice): string {.gcsafe, locks: 0.}
proc `igdControlUrl=`*(self: UPNPDevice; val: string) {.gcsafe, locks: 0.}
proc igdOurAddr*(self: UPNPDevice): string {.gcsafe, locks: 0.}
proc `igdOurAddr=`*(self: UPNPDevice; val: string) {.gcsafe, locks: 0.}
proc igdServiceType*(self: UPNPDevice): string {.gcsafe, locks: 0.}
proc `igdServiceType=`*(self: UPNPDevice; val: string) {.gcsafe, locks: 0.}
proc igdStatus*(self: UPNPDevice): int64 {.gcsafe, locks: 0.}
proc `igdStatus=`*(self: UPNPDevice; val: int64) {.gcsafe, locks: 0.}
proc serviceType*(self: UPNPDevice): string {.gcsafe, locks: 0.}
proc `serviceType=`*(self: UPNPDevice; val: string) {.gcsafe, locks: 0.}
proc addPortMapping*(self: UPNPDevice; port: int64; portInternal: int64 = 0'i64;
                    desc: string = ""; proto: string = "UDP"; duration: int64 = 0'i64): int64 {.
    gcsafe, locks: 0.}
proc deletePortMapping*(self: UPNPDevice; port: int64; proto: string = "UDP"): int64 {.
    gcsafe, locks: 0.}
proc isValidGateway*(self: UPNPDevice): bool {.gcsafe, locks: 0.}
proc queryExternalAddress*(self: UPNPDevice): string {.gcsafe, locks: 0.}
var uPNPDeviceGetDescriptionUrlMethodBind {.threadvar.}: ptr GodotMethodBind
proc descriptionUrl(self: UPNPDevice): string =
  if isNil(uPNPDeviceGetDescriptionUrlMethodBind):
    uPNPDeviceGetDescriptionUrlMethodBind = getMethod(cstring"UPNPDevice",
        cstring"get_description_url")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPDeviceGetDescriptionUrlMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var uPNPDeviceSetDescriptionUrlMethodBind {.threadvar.}: ptr GodotMethodBind
proc `descriptionUrl=`(self: UPNPDevice; val: string) =
  if isNil(uPNPDeviceSetDescriptionUrlMethodBind):
    uPNPDeviceSetDescriptionUrlMethodBind = getMethod(cstring"UPNPDevice",
        cstring"set_description_url")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  uPNPDeviceSetDescriptionUrlMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var uPNPDeviceGetIgdControlUrlMethodBind {.threadvar.}: ptr GodotMethodBind
proc igdControlUrl(self: UPNPDevice): string =
  if isNil(uPNPDeviceGetIgdControlUrlMethodBind):
    uPNPDeviceGetIgdControlUrlMethodBind = getMethod(cstring"UPNPDevice",
        cstring"get_igd_control_url")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPDeviceGetIgdControlUrlMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var uPNPDeviceSetIgdControlUrlMethodBind {.threadvar.}: ptr GodotMethodBind
proc `igdControlUrl=`(self: UPNPDevice; val: string) =
  if isNil(uPNPDeviceSetIgdControlUrlMethodBind):
    uPNPDeviceSetIgdControlUrlMethodBind = getMethod(cstring"UPNPDevice",
        cstring"set_igd_control_url")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  uPNPDeviceSetIgdControlUrlMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var uPNPDeviceGetIgdOurAddrMethodBind {.threadvar.}: ptr GodotMethodBind
proc igdOurAddr(self: UPNPDevice): string =
  if isNil(uPNPDeviceGetIgdOurAddrMethodBind):
    uPNPDeviceGetIgdOurAddrMethodBind = getMethod(cstring"UPNPDevice",
        cstring"get_igd_our_addr")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPDeviceGetIgdOurAddrMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var uPNPDeviceSetIgdOurAddrMethodBind {.threadvar.}: ptr GodotMethodBind
proc `igdOurAddr=`(self: UPNPDevice; val: string) =
  if isNil(uPNPDeviceSetIgdOurAddrMethodBind):
    uPNPDeviceSetIgdOurAddrMethodBind = getMethod(cstring"UPNPDevice",
        cstring"set_igd_our_addr")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  uPNPDeviceSetIgdOurAddrMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var uPNPDeviceGetIgdServiceTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc igdServiceType(self: UPNPDevice): string =
  if isNil(uPNPDeviceGetIgdServiceTypeMethodBind):
    uPNPDeviceGetIgdServiceTypeMethodBind = getMethod(cstring"UPNPDevice",
        cstring"get_igd_service_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPDeviceGetIgdServiceTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var uPNPDeviceSetIgdServiceTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `igdServiceType=`(self: UPNPDevice; val: string) =
  if isNil(uPNPDeviceSetIgdServiceTypeMethodBind):
    uPNPDeviceSetIgdServiceTypeMethodBind = getMethod(cstring"UPNPDevice",
        cstring"set_igd_service_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  uPNPDeviceSetIgdServiceTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var uPNPDeviceGetIgdStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc igdStatus(self: UPNPDevice): int64 =
  if isNil(uPNPDeviceGetIgdStatusMethodBind):
    uPNPDeviceGetIgdStatusMethodBind = getMethod(cstring"UPNPDevice",
        cstring"get_igd_status")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPDeviceGetIgdStatusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uPNPDeviceSetIgdStatusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `igdStatus=`(self: UPNPDevice; val: int64) =
  if isNil(uPNPDeviceSetIgdStatusMethodBind):
    uPNPDeviceSetIgdStatusMethodBind = getMethod(cstring"UPNPDevice",
        cstring"set_igd_status")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  uPNPDeviceSetIgdStatusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var uPNPDeviceGetServiceTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc serviceType(self: UPNPDevice): string =
  if isNil(uPNPDeviceGetServiceTypeMethodBind):
    uPNPDeviceGetServiceTypeMethodBind = getMethod(cstring"UPNPDevice",
        cstring"get_service_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPDeviceGetServiceTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var uPNPDeviceSetServiceTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `serviceType=`(self: UPNPDevice; val: string) =
  if isNil(uPNPDeviceSetServiceTypeMethodBind):
    uPNPDeviceSetServiceTypeMethodBind = getMethod(cstring"UPNPDevice",
        cstring"set_service_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  uPNPDeviceSetServiceTypeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var uPNPDeviceAddPortMappingMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPortMapping(self: UPNPDevice; port: int64; portInternal: int64 = 0'i64;
                   desc: string = ""; proto: string = "UDP"; duration: int64 = 0'i64): int64 =
  if isNil(uPNPDeviceAddPortMappingMethodBind):
    uPNPDeviceAddPortMappingMethodBind = getMethod(cstring"UPNPDevice",
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
  uPNPDeviceAddPortMappingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot3)

var uPNPDeviceDeletePortMappingMethodBind {.threadvar.}: ptr GodotMethodBind
proc deletePortMapping(self: UPNPDevice; port: int64; proto: string = "UDP"): int64 =
  if isNil(uPNPDeviceDeletePortMappingMethodBind):
    uPNPDeviceDeletePortMappingMethodBind = getMethod(cstring"UPNPDevice",
        cstring"delete_port_mapping")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var argToPassToGodot1 = toGodotString(proto)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPDeviceDeletePortMappingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var uPNPDeviceIsValidGatewayMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValidGateway(self: UPNPDevice): bool =
  if isNil(uPNPDeviceIsValidGatewayMethodBind):
    uPNPDeviceIsValidGatewayMethodBind = getMethod(cstring"UPNPDevice",
        cstring"is_valid_gateway")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uPNPDeviceIsValidGatewayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uPNPDeviceQueryExternalAddressMethodBind {.threadvar.}: ptr GodotMethodBind
proc queryExternalAddress(self: UPNPDevice): string =
  if isNil(uPNPDeviceQueryExternalAddressMethodBind):
    uPNPDeviceQueryExternalAddressMethodBind = getMethod(cstring"UPNPDevice",
        cstring"query_external_address")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  uPNPDeviceQueryExternalAddressMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
