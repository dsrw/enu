
import
  godot, godottypes, godotinternal, stream_peer

export
  godottypes, stream_peer

proc dataArray*(self: StreamPeerBuffer): PoolByteArray {.gcsafe, locks: 0.}
proc `dataArray=`*(self: StreamPeerBuffer; val: PoolByteArray) {.gcsafe, locks: 0.}
proc clear*(self: StreamPeerBuffer) {.gcsafe, locks: 0.}
proc duplicate*(self: StreamPeerBuffer): StreamPeerBuffer {.gcsafe, locks: 0.}
proc getPosition*(self: StreamPeerBuffer): int64 {.gcsafe, locks: 0.}
proc getSize*(self: StreamPeerBuffer): int64 {.gcsafe, locks: 0.}
proc resize*(self: StreamPeerBuffer; size: int64) {.gcsafe, locks: 0.}
proc seek*(self: StreamPeerBuffer; position: int64) {.gcsafe, locks: 0.}
var streamPeerBufferGetDataArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc dataArray(self: StreamPeerBuffer): PoolByteArray =
  if isNil(streamPeerBufferGetDataArrayMethodBind):
    streamPeerBufferGetDataArrayMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"get_data_array")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  ptrCallRet = addr(ptrCallVal)
  streamPeerBufferGetDataArrayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var streamPeerBufferSetDataArrayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dataArray=`(self: StreamPeerBuffer; val: PoolByteArray) =
  if isNil(streamPeerBufferSetDataArrayMethodBind):
    streamPeerBufferSetDataArrayMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"set_data_array")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolByteArray
  var ptrCallRet: pointer
  streamPeerBufferSetDataArrayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var streamPeerBufferClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: StreamPeerBuffer) =
  if isNil(streamPeerBufferClearMethodBind):
    streamPeerBufferClearMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"clear")
  var ptrCallRet: pointer
  streamPeerBufferClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerBufferDuplicateMethodBind {.threadvar.}: ptr GodotMethodBind
proc duplicate(self: StreamPeerBuffer): StreamPeerBuffer =
  if isNil(streamPeerBufferDuplicateMethodBind):
    streamPeerBufferDuplicateMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"duplicate")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  streamPeerBufferDuplicateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var streamPeerBufferGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPosition(self: StreamPeerBuffer): int64 =
  if isNil(streamPeerBufferGetPositionMethodBind):
    streamPeerBufferGetPositionMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerBufferGetPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerBufferGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSize(self: StreamPeerBuffer): int64 =
  if isNil(streamPeerBufferGetSizeMethodBind):
    streamPeerBufferGetSizeMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerBufferGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerBufferResizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc resize(self: StreamPeerBuffer; size: int64) =
  if isNil(streamPeerBufferResizeMethodBind):
    streamPeerBufferResizeMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"resize")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  streamPeerBufferResizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var streamPeerBufferSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: StreamPeerBuffer; position: int64) =
  if isNil(streamPeerBufferSeekMethodBind):
    streamPeerBufferSeekMethodBind = getMethod(cstring"StreamPeerBuffer",
        cstring"seek")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  streamPeerBufferSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
