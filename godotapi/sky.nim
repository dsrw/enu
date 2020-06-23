
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  RADIANCE_SIZE_1024* = 5'i64
  RADIANCE_SIZE_128* = 2'i64
  RADIANCE_SIZE_2048* = 6'i64
  RADIANCE_SIZE_256* = 3'i64
  RADIANCE_SIZE_32* = 0'i64
  RADIANCE_SIZE_512* = 4'i64
  RADIANCE_SIZE_64* = 1'i64
  RADIANCE_SIZE_MAX* = 7'i64
proc radianceSize*(self: Sky): int64 {.gcsafe, locks: 0.}
proc `radianceSize=`*(self: Sky; val: int64) {.gcsafe, locks: 0.}
var skyGetRadianceSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc radianceSize(self: Sky): int64 =
  if isNil(skyGetRadianceSizeMethodBind):
    skyGetRadianceSizeMethodBind = getMethod(cstring"Sky",
        cstring"get_radiance_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  skyGetRadianceSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var skySetRadianceSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radianceSize=`(self: Sky; val: int64) =
  if isNil(skySetRadianceSizeMethodBind):
    skySetRadianceSizeMethodBind = getMethod(cstring"Sky",
        cstring"set_radiance_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  skySetRadianceSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
