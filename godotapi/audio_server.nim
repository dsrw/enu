
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  SPEAKER_MODE_STEREO* = 0'i64
  SPEAKER_SURROUND_31* = 1'i64
  SPEAKER_SURROUND_51* = 2'i64
  SPEAKER_SURROUND_71* = 3'i64
type
  AudioServer = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(AudioServer, "AudioServer", true)
var singletonAudioServer {.threadvar.}: AudioServer
proc addBus*(atPosition: int64 = -1'i64) {.gcsafe, locks: 0.}
proc addBusEffect*(busIdx: int64; effect: AudioEffect; atPosition: int64 = -1'i64) {.
    gcsafe, locks: 0.}
proc captureGetDevice*(): string {.gcsafe, locks: 0.}
proc captureGetDeviceList*(): Array {.gcsafe, locks: 0.}
proc captureSetDevice*(name: string) {.gcsafe, locks: 0.}
proc generateBusLayout*(): AudioBusLayout {.gcsafe, locks: 0.}
proc getBusChannels*(busIdx: int64): int64 {.gcsafe, locks: 0.}
proc getBusCount*(): int64 {.gcsafe, locks: 0.}
proc getBusEffect*(busIdx: int64; effectIdx: int64): AudioEffect {.gcsafe, locks: 0.}
proc getBusEffectCount*(busIdx: int64): int64 {.gcsafe, locks: 0.}
proc getBusEffectInstance*(busIdx: int64; effectIdx: int64; channel: int64 = 0'i64): AudioEffectInstance {.
    gcsafe, locks: 0.}
proc getBusIndex*(busName: string): int64 {.gcsafe, locks: 0.}
proc getBusName*(busIdx: int64): string {.gcsafe, locks: 0.}
proc getBusPeakVolumeLeftDb*(busIdx: int64; channel: int64): float64 {.gcsafe, locks: 0.}
proc getBusPeakVolumeRightDb*(busIdx: int64; channel: int64): float64 {.gcsafe,
    locks: 0.}
proc getBusSend*(busIdx: int64): string {.gcsafe, locks: 0.}
proc getBusVolumeDb*(busIdx: int64): float64 {.gcsafe, locks: 0.}
proc getDevice*(): string {.gcsafe, locks: 0.}
proc getDeviceList*(): Array {.gcsafe, locks: 0.}
proc getGlobalRateScale*(): float64 {.gcsafe, locks: 0.}
proc getMixRate*(): float64 {.gcsafe, locks: 0.}
proc getOutputLatency*(): float64 {.gcsafe, locks: 0.}
proc getSpeakerMode*(): int64 {.gcsafe, locks: 0.}
proc getTimeSinceLastMix*(): float64 {.gcsafe, locks: 0.}
proc getTimeToNextMix*(): float64 {.gcsafe, locks: 0.}
proc isBusBypassingEffects*(busIdx: int64): bool {.gcsafe, locks: 0.}
proc isBusEffectEnabled*(busIdx: int64; effectIdx: int64): bool {.gcsafe, locks: 0.}
proc isBusMute*(busIdx: int64): bool {.gcsafe, locks: 0.}
proc isBusSolo*(busIdx: int64): bool {.gcsafe, locks: 0.}
proc lock*() {.gcsafe, locks: 0.}
proc moveBus*(index: int64; toIndex: int64) {.gcsafe, locks: 0.}
proc removeBus*(index: int64) {.gcsafe, locks: 0.}
proc removeBusEffect*(busIdx: int64; effectIdx: int64) {.gcsafe, locks: 0.}
proc setBusBypassEffects*(busIdx: int64; enable: bool) {.gcsafe, locks: 0.}
proc setBusCount*(amount: int64) {.gcsafe, locks: 0.}
proc setBusEffectEnabled*(busIdx: int64; effectIdx: int64; enabled: bool) {.gcsafe,
    locks: 0.}
proc setBusLayout*(busLayout: AudioBusLayout) {.gcsafe, locks: 0.}
proc setBusMute*(busIdx: int64; enable: bool) {.gcsafe, locks: 0.}
proc setBusName*(busIdx: int64; name: string) {.gcsafe, locks: 0.}
proc setBusSend*(busIdx: int64; send: string) {.gcsafe, locks: 0.}
proc setBusSolo*(busIdx: int64; enable: bool) {.gcsafe, locks: 0.}
proc setBusVolumeDb*(busIdx: int64; volumeDb: float64) {.gcsafe, locks: 0.}
proc setDevice*(device: string) {.gcsafe, locks: 0.}
proc setGlobalRateScale*(scale: float64) {.gcsafe, locks: 0.}
proc swapBusEffects*(busIdx: int64; effectIdx: int64; byEffectIdx: int64) {.gcsafe,
    locks: 0.}
proc unlock*() {.gcsafe, locks: 0.}
var audioServerAddBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBus(atPosition: int64 = -1'i64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerAddBusMethodBind):
    audioServerAddBusMethodBind = getMethod(cstring"AudioServer", cstring"add_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  audioServerAddBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var audioServerAddBusEffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc addBusEffect(busIdx: int64; effect: AudioEffect; atPosition: int64 = -1'i64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerAddBusEffectMethodBind):
    audioServerAddBusEffectMethodBind = getMethod(cstring"AudioServer",
        cstring"add_bus_effect")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  let argToPassToGodot1 = if not effect.isNil:
    effect.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(atPosition)
  var ptrCallRet: pointer
  audioServerAddBusEffectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerCaptureGetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureGetDevice(): string =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerCaptureGetDeviceMethodBind):
    audioServerCaptureGetDeviceMethodBind = getMethod(cstring"AudioServer",
        cstring"capture_get_device")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioServerCaptureGetDeviceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioServerCaptureGetDeviceListMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureGetDeviceList(): Array =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerCaptureGetDeviceListMethodBind):
    audioServerCaptureGetDeviceListMethodBind = getMethod(cstring"AudioServer",
        cstring"capture_get_device_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  audioServerCaptureGetDeviceListMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var audioServerCaptureSetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureSetDevice(name: string) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerCaptureSetDeviceMethodBind):
    audioServerCaptureSetDeviceMethodBind = getMethod(cstring"AudioServer",
        cstring"capture_set_device")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  audioServerCaptureSetDeviceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var audioServerGenerateBusLayoutMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateBusLayout(): AudioBusLayout =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGenerateBusLayoutMethodBind):
    audioServerGenerateBusLayoutMethodBind = getMethod(cstring"AudioServer",
        cstring"generate_bus_layout")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioServerGenerateBusLayoutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioServerGetBusChannelsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusChannels(busIdx: int64): int64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusChannelsMethodBind):
    audioServerGetBusChannelsMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_channels")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetBusChannelsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerGetBusCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusCount(): int64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusCountMethodBind):
    audioServerGetBusCountMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetBusCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioServerGetBusEffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusEffect(busIdx: int64; effectIdx: int64): AudioEffect =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusEffectMethodBind):
    audioServerGetBusEffectMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_effect")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(effectIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioServerGetBusEffectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioServerGetBusEffectCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusEffectCount(busIdx: int64): int64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusEffectCountMethodBind):
    audioServerGetBusEffectCountMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_effect_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetBusEffectCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerGetBusEffectInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusEffectInstance(busIdx: int64; effectIdx: int64; channel: int64 = 0'i64): AudioEffectInstance =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusEffectInstanceMethodBind):
    audioServerGetBusEffectInstanceMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_effect_instance")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(effectIdx)
  argsToPassToGodot[][2] = unsafeAddr(channel)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  audioServerGetBusEffectInstanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var audioServerGetBusIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusIndex(busName: string): int64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusIndexMethodBind):
    audioServerGetBusIndexMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(busName)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetBusIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var audioServerGetBusNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusName(busIdx: int64): string =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusNameMethodBind):
    audioServerGetBusNameMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioServerGetBusNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioServerGetBusPeakVolumeLeftDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusPeakVolumeLeftDb(busIdx: int64; channel: int64): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusPeakVolumeLeftDbMethodBind):
    audioServerGetBusPeakVolumeLeftDbMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_peak_volume_left_db")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(channel)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetBusPeakVolumeLeftDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerGetBusPeakVolumeRightDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusPeakVolumeRightDb(busIdx: int64; channel: int64): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusPeakVolumeRightDbMethodBind):
    audioServerGetBusPeakVolumeRightDbMethodBind = getMethod(
        cstring"AudioServer", cstring"get_bus_peak_volume_right_db")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(channel)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetBusPeakVolumeRightDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerGetBusSendMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusSend(busIdx: int64): string =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusSendMethodBind):
    audioServerGetBusSendMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_send")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioServerGetBusSendMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioServerGetBusVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBusVolumeDb(busIdx: int64): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetBusVolumeDbMethodBind):
    audioServerGetBusVolumeDbMethodBind = getMethod(cstring"AudioServer",
        cstring"get_bus_volume_db")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetBusVolumeDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerGetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDevice(): string =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetDeviceMethodBind):
    audioServerGetDeviceMethodBind = getMethod(cstring"AudioServer",
        cstring"get_device")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  audioServerGetDeviceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var audioServerGetDeviceListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDeviceList(): Array =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetDeviceListMethodBind):
    audioServerGetDeviceListMethodBind = getMethod(cstring"AudioServer",
        cstring"get_device_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  audioServerGetDeviceListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var audioServerGetGlobalRateScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGlobalRateScale(): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetGlobalRateScaleMethodBind):
    audioServerGetGlobalRateScaleMethodBind = getMethod(cstring"AudioServer",
        cstring"get_global_rate_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetGlobalRateScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioServerGetMixRateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMixRate(): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetMixRateMethodBind):
    audioServerGetMixRateMethodBind = getMethod(cstring"AudioServer",
        cstring"get_mix_rate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetMixRateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioServerGetOutputLatencyMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOutputLatency(): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetOutputLatencyMethodBind):
    audioServerGetOutputLatencyMethodBind = getMethod(cstring"AudioServer",
        cstring"get_output_latency")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetOutputLatencyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioServerGetSpeakerModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSpeakerMode(): int64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetSpeakerModeMethodBind):
    audioServerGetSpeakerModeMethodBind = getMethod(cstring"AudioServer",
        cstring"get_speaker_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetSpeakerModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioServerGetTimeSinceLastMixMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTimeSinceLastMix(): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetTimeSinceLastMixMethodBind):
    audioServerGetTimeSinceLastMixMethodBind = getMethod(cstring"AudioServer",
        cstring"get_time_since_last_mix")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetTimeSinceLastMixMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioServerGetTimeToNextMixMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTimeToNextMix(): float64 =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerGetTimeToNextMixMethodBind):
    audioServerGetTimeToNextMixMethodBind = getMethod(cstring"AudioServer",
        cstring"get_time_to_next_mix")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerGetTimeToNextMixMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioServerIsBusBypassingEffectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc isBusBypassingEffects(busIdx: int64): bool =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerIsBusBypassingEffectsMethodBind):
    audioServerIsBusBypassingEffectsMethodBind = getMethod(cstring"AudioServer",
        cstring"is_bus_bypassing_effects")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerIsBusBypassingEffectsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerIsBusEffectEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isBusEffectEnabled(busIdx: int64; effectIdx: int64): bool =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerIsBusEffectEnabledMethodBind):
    audioServerIsBusEffectEnabledMethodBind = getMethod(cstring"AudioServer",
        cstring"is_bus_effect_enabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(effectIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerIsBusEffectEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerIsBusMuteMethodBind {.threadvar.}: ptr GodotMethodBind
proc isBusMute(busIdx: int64): bool =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerIsBusMuteMethodBind):
    audioServerIsBusMuteMethodBind = getMethod(cstring"AudioServer",
        cstring"is_bus_mute")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerIsBusMuteMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerIsBusSoloMethodBind {.threadvar.}: ptr GodotMethodBind
proc isBusSolo(busIdx: int64): bool =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerIsBusSoloMethodBind):
    audioServerIsBusSoloMethodBind = getMethod(cstring"AudioServer",
        cstring"is_bus_solo")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioServerIsBusSoloMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerLockMethodBind {.threadvar.}: ptr GodotMethodBind
proc lock() =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerLockMethodBind):
    audioServerLockMethodBind = getMethod(cstring"AudioServer", cstring"lock")
  var ptrCallRet: pointer
  audioServerLockMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioServerMoveBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveBus(index: int64; toIndex: int64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerMoveBusMethodBind):
    audioServerMoveBusMethodBind = getMethod(cstring"AudioServer",
        cstring"move_bus")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(toIndex)
  var ptrCallRet: pointer
  audioServerMoveBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var audioServerRemoveBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeBus(index: int64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerRemoveBusMethodBind):
    audioServerRemoveBusMethodBind = getMethod(cstring"AudioServer",
        cstring"remove_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  audioServerRemoveBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerRemoveBusEffectMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeBusEffect(busIdx: int64; effectIdx: int64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerRemoveBusEffectMethodBind):
    audioServerRemoveBusEffectMethodBind = getMethod(cstring"AudioServer",
        cstring"remove_bus_effect")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(effectIdx)
  var ptrCallRet: pointer
  audioServerRemoveBusEffectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerSetBusBypassEffectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusBypassEffects(busIdx: int64; enable: bool) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusBypassEffectsMethodBind):
    audioServerSetBusBypassEffectsMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_bypass_effects")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  audioServerSetBusBypassEffectsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerSetBusCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusCount(amount: int64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusCountMethodBind):
    audioServerSetBusCountMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(amount)
  var ptrCallRet: pointer
  audioServerSetBusCountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerSetBusEffectEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusEffectEnabled(busIdx: int64; effectIdx: int64; enabled: bool) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusEffectEnabledMethodBind):
    audioServerSetBusEffectEnabledMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_effect_enabled")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(effectIdx)
  argsToPassToGodot[][2] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  audioServerSetBusEffectEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerSetBusLayoutMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusLayout(busLayout: AudioBusLayout) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusLayoutMethodBind):
    audioServerSetBusLayoutMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_layout")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not busLayout.isNil:
    busLayout.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  audioServerSetBusLayoutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerSetBusMuteMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusMute(busIdx: int64; enable: bool) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusMuteMethodBind):
    audioServerSetBusMuteMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_mute")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  audioServerSetBusMuteMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerSetBusNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusName(busIdx: int64; name: string) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusNameMethodBind):
    audioServerSetBusNameMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  audioServerSetBusNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var audioServerSetBusSendMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusSend(busIdx: int64; send: string) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusSendMethodBind):
    audioServerSetBusSendMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_send")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  var argToPassToGodot1 = toGodotString(send)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  audioServerSetBusSendMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var audioServerSetBusSoloMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusSolo(busIdx: int64; enable: bool) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusSoloMethodBind):
    audioServerSetBusSoloMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_solo")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  audioServerSetBusSoloMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioServerSetBusVolumeDbMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBusVolumeDb(busIdx: int64; volumeDb: float64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetBusVolumeDbMethodBind):
    audioServerSetBusVolumeDbMethodBind = getMethod(cstring"AudioServer",
        cstring"set_bus_volume_db")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(volumeDb)
  var ptrCallRet: pointer
  audioServerSetBusVolumeDbMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerSetDeviceMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDevice(device: string) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetDeviceMethodBind):
    audioServerSetDeviceMethodBind = getMethod(cstring"AudioServer",
        cstring"set_device")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(device)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  audioServerSetDeviceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var audioServerSetGlobalRateScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setGlobalRateScale(scale: float64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSetGlobalRateScaleMethodBind):
    audioServerSetGlobalRateScaleMethodBind = getMethod(cstring"AudioServer",
        cstring"set_global_rate_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scale)
  var ptrCallRet: pointer
  audioServerSetGlobalRateScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerSwapBusEffectsMethodBind {.threadvar.}: ptr GodotMethodBind
proc swapBusEffects(busIdx: int64; effectIdx: int64; byEffectIdx: int64) =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerSwapBusEffectsMethodBind):
    audioServerSwapBusEffectsMethodBind = getMethod(cstring"AudioServer",
        cstring"swap_bus_effects")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(busIdx)
  argsToPassToGodot[][1] = unsafeAddr(effectIdx)
  argsToPassToGodot[][2] = unsafeAddr(byEffectIdx)
  var ptrCallRet: pointer
  audioServerSwapBusEffectsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioServerUnlockMethodBind {.threadvar.}: ptr GodotMethodBind
proc unlock() =
  if isNil(singletonAudioServer):
    singletonAudioServer = getSingleton[AudioServer]()
  let self = singletonAudioServer
  if isNil(audioServerUnlockMethodBind):
    audioServerUnlockMethodBind = getMethod(cstring"AudioServer", cstring"unlock")
  var ptrCallRet: pointer
  audioServerUnlockMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
