
import
  godot, godottypes, godotinternal, video_stream

export
  godottypes, video_stream

proc file*(self: VideoStreamGDNative): string {.gcsafe, locks: 0.}
proc `file=`*(self: VideoStreamGDNative; val: string) {.gcsafe, locks: 0.}
var videoStreamGDNativeGetFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc file(self: VideoStreamGDNative): string =
  if isNil(videoStreamGDNativeGetFileMethodBind):
    videoStreamGDNativeGetFileMethodBind = getMethod(
        cstring"VideoStreamGDNative", cstring"get_file")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  videoStreamGDNativeGetFileMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var videoStreamGDNativeSetFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc `file=`(self: VideoStreamGDNative; val: string) =
  if isNil(videoStreamGDNativeSetFileMethodBind):
    videoStreamGDNativeSetFileMethodBind = getMethod(
        cstring"VideoStreamGDNative", cstring"set_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  videoStreamGDNativeSetFileMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
