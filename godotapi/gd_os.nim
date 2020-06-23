
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  DAY_FRIDAY* = 5'i64
  DAY_MONDAY* = 1'i64
  DAY_SATURDAY* = 6'i64
  DAY_SUNDAY* = 0'i64
  DAY_THURSDAY* = 4'i64
  DAY_TUESDAY* = 2'i64
  DAY_WEDNESDAY* = 3'i64
  MONTH_APRIL* = 4'i64
  MONTH_AUGUST* = 8'i64
  MONTH_DECEMBER* = 12'i64
  MONTH_FEBRUARY* = 2'i64
  MONTH_JANUARY* = 1'i64
  MONTH_JULY* = 7'i64
  MONTH_JUNE* = 6'i64
  MONTH_MARCH* = 3'i64
  MONTH_MAY* = 5'i64
  MONTH_NOVEMBER* = 11'i64
  MONTH_OCTOBER* = 10'i64
  MONTH_SEPTEMBER* = 9'i64
  POWERSTATE_CHARGED* = 4'i64
  POWERSTATE_CHARGING* = 3'i64
  POWERSTATE_NO_BATTERY* = 2'i64
  POWERSTATE_ON_BATTERY* = 1'i64
  POWERSTATE_UNKNOWN* = 0'i64
  SCREEN_ORIENTATION_LANDSCAPE* = 0'i64
  SCREEN_ORIENTATION_PORTRAIT* = 1'i64
  SCREEN_ORIENTATION_REVERSE_LANDSCAPE* = 2'i64
  SCREEN_ORIENTATION_REVERSE_PORTRAIT* = 3'i64
  SCREEN_ORIENTATION_SENSOR* = 6'i64
  SCREEN_ORIENTATION_SENSOR_LANDSCAPE* = 4'i64
  SCREEN_ORIENTATION_SENSOR_PORTRAIT* = 5'i64
  SYSTEM_DIR_DCIM* = 1'i64
  SYSTEM_DIR_DESKTOP* = 0'i64
  SYSTEM_DIR_DOCUMENTS* = 2'i64
  SYSTEM_DIR_DOWNLOADS* = 3'i64
  SYSTEM_DIR_MOVIES* = 4'i64
  SYSTEM_DIR_MUSIC* = 5'i64
  SYSTEM_DIR_PICTURES* = 6'i64
  SYSTEM_DIR_RINGTONES* = 7'i64
  VIDEO_DRIVER_GLES2* = 1'i64
  VIDEO_DRIVER_GLES3* = 0'i64
type
  OS = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(OS, "_OS", true)
var singletonOS {.threadvar.}: OS
proc alert*(text: string; title: string = "Alert!") {.gcsafe, locks: 0.}
proc canDraw*(): bool {.gcsafe, locks: 0.}
proc canUseThreads*(): bool {.gcsafe, locks: 0.}
proc centerWindow*() {.gcsafe, locks: 0.}
proc closeMidiInputs*() {.gcsafe, locks: 0.}
proc delayMsec*(msec: int64) {.gcsafe, locks: 0.}
proc delayUsec*(usec: int64) {.gcsafe, locks: 0.}
proc dumpMemoryToFile*(file: string) {.gcsafe, locks: 0.}
proc dumpResourcesToFile*(file: string) {.gcsafe, locks: 0.}
proc execute*(path: string; arguments: PoolStringArray; blocking: bool = true;
             output: Array = newArray(); readStderr: bool = false): int64 {.gcsafe,
    locks: 0.}
proc findScancodeFromString*(string: string): int64 {.gcsafe, locks: 0.}
proc getAudioDriverCount*(): int64 {.gcsafe, locks: 0.}
proc getAudioDriverName*(driver: int64): string {.gcsafe, locks: 0.}
proc getBorderlessWindow*(): bool {.gcsafe, locks: 0.}
proc getClipboard*(): string {.gcsafe, locks: 0.}
proc getCmdlineArgs*(): PoolStringArray {.gcsafe, locks: 0.}
proc getConnectedMidiInputs*(): PoolStringArray {.gcsafe, locks: 0.}
proc getCurrentScreen*(): int64 {.gcsafe, locks: 0.}
proc getCurrentTabletDriver*(): string {.gcsafe, locks: 0.}
proc getCurrentVideoDriver*(): int64 {.gcsafe, locks: 0.}
proc getDate*(utc: bool = false): Dictionary {.gcsafe, locks: 0.}
proc getDatetime*(utc: bool = false): Dictionary {.gcsafe, locks: 0.}
proc getDatetimeFromUnixTime*(unixTimeVal: int64): Dictionary {.gcsafe, locks: 0.}
proc getDynamicMemoryUsage*(): int64 {.gcsafe, locks: 0.}
proc getEnvironment*(environment: string): string {.gcsafe, locks: 0.}
proc getExecutablePath*(): string {.gcsafe, locks: 0.}
proc getExitCode*(): int64 {.gcsafe, locks: 0.}
proc getGrantedPermissions*(): PoolStringArray {.gcsafe, locks: 0.}
proc getImeSelection*(): Vector2 {.gcsafe, locks: 0.}
proc getImeText*(): string {.gcsafe, locks: 0.}
proc getLatinKeyboardVariant*(): string {.gcsafe, locks: 0.}
proc getLocale*(): string {.gcsafe, locks: 0.}
proc getLowProcessorUsageModeSleepUsec*(): int64 {.gcsafe, locks: 0.}
proc getMaxWindowSize*(): Vector2 {.gcsafe, locks: 0.}
proc getMinWindowSize*(): Vector2 {.gcsafe, locks: 0.}
proc getModelName*(): string {.gcsafe, locks: 0.}
proc getName*(): string {.gcsafe, locks: 0.}
proc getPowerPercentLeft*(): int64 {.gcsafe, locks: 0.}
proc getPowerSecondsLeft*(): int64 {.gcsafe, locks: 0.}
proc getPowerState*(): int64 {.gcsafe, locks: 0.}
proc getProcessId*(): int64 {.gcsafe, locks: 0.}
proc getProcessorCount*(): int64 {.gcsafe, locks: 0.}
proc getRealWindowSize*(): Vector2 {.gcsafe, locks: 0.}
proc getScancodeString*(code: int64): string {.gcsafe, locks: 0.}
proc getScreenCount*(): int64 {.gcsafe, locks: 0.}
proc getScreenDpi*(screen: int64 = -1'i64): int64 {.gcsafe, locks: 0.}
proc getScreenOrientation*(): int64 {.gcsafe, locks: 0.}
proc getScreenPosition*(screen: int64 = -1'i64): Vector2 {.gcsafe, locks: 0.}
proc getScreenSize*(screen: int64 = -1'i64): Vector2 {.gcsafe, locks: 0.}
proc getSplashTickMsec*(): int64 {.gcsafe, locks: 0.}
proc getStaticMemoryPeakUsage*(): int64 {.gcsafe, locks: 0.}
proc getStaticMemoryUsage*(): int64 {.gcsafe, locks: 0.}
proc getSystemDir*(dir: int64): string {.gcsafe, locks: 0.}
proc getSystemTimeMsecs*(): int64 {.gcsafe, locks: 0.}
proc getSystemTimeSecs*(): int64 {.gcsafe, locks: 0.}
proc getTabletDriverCount*(): int64 {.gcsafe, locks: 0.}
proc getTabletDriverName*(idx: int64): string {.gcsafe, locks: 0.}
proc getTicksMsec*(): int64 {.gcsafe, locks: 0.}
proc getTicksUsec*(): int64 {.gcsafe, locks: 0.}
proc getTime*(utc: bool = false): Dictionary {.gcsafe, locks: 0.}
proc getTimeZoneInfo*(): Dictionary {.gcsafe, locks: 0.}
proc getUniqueId*(): string {.gcsafe, locks: 0.}
proc getUnixTime*(): int64 {.gcsafe, locks: 0.}
proc getUnixTimeFromDatetime*(datetime: Dictionary): int64 {.gcsafe, locks: 0.}
proc getUserDataDir*(): string {.gcsafe, locks: 0.}
proc getVideoDriverCount*(): int64 {.gcsafe, locks: 0.}
proc getVideoDriverName*(driver: int64): string {.gcsafe, locks: 0.}
proc getVirtualKeyboardHeight*(): int64 {.gcsafe, locks: 0.}
proc getWindowPerPixelTransparencyEnabled*(): bool {.gcsafe, locks: 0.}
proc getWindowPosition*(): Vector2 {.gcsafe, locks: 0.}
proc getWindowSafeArea*(): Rect2 {.gcsafe, locks: 0.}
proc getWindowSize*(): Vector2 {.gcsafe, locks: 0.}
proc globalMenuAddItem*(menu: string; label: string; id: Variant; meta: Variant) {.
    gcsafe, locks: 0.}
proc globalMenuAddSeparator*(menu: string) {.gcsafe, locks: 0.}
proc globalMenuClear*(menu: string) {.gcsafe, locks: 0.}
proc globalMenuRemoveItem*(menu: string; idx: int64) {.gcsafe, locks: 0.}
proc hasEnvironment*(environment: string): bool {.gcsafe, locks: 0.}
proc hasFeature*(tagName: string): bool {.gcsafe, locks: 0.}
proc hasTouchscreenUiHint*(): bool {.gcsafe, locks: 0.}
proc hasVirtualKeyboard*(): bool {.gcsafe, locks: 0.}
proc hideVirtualKeyboard*() {.gcsafe, locks: 0.}
proc isDebugBuild*(): bool {.gcsafe, locks: 0.}
proc isInLowProcessorUsageMode*(): bool {.gcsafe, locks: 0.}
proc isKeepScreenOn*(): bool {.gcsafe, locks: 0.}
proc isOkLeftAndCancelRight*(): bool {.gcsafe, locks: 0.}
proc isScancodeUnicode*(code: int64): bool {.gcsafe, locks: 0.}
proc isStdoutVerbose*(): bool {.gcsafe, locks: 0.}
proc isUserfsPersistent*(): bool {.gcsafe, locks: 0.}
proc isVsyncEnabled*(): bool {.gcsafe, locks: 0.}
proc isVsyncViaCompositorEnabled*(): bool {.gcsafe, locks: 0.}
proc isWindowAlwaysOnTop*(): bool {.gcsafe, locks: 0.}
proc isWindowFocused*(): bool {.gcsafe, locks: 0.}
proc isWindowFullscreen*(): bool {.gcsafe, locks: 0.}
proc isWindowMaximized*(): bool {.gcsafe, locks: 0.}
proc isWindowMinimized*(): bool {.gcsafe, locks: 0.}
proc isWindowResizable*(): bool {.gcsafe, locks: 0.}
proc keyboardGetCurrentLayout*(): int64 {.gcsafe, locks: 0.}
proc keyboardGetLayoutCount*(): int64 {.gcsafe, locks: 0.}
proc keyboardGetLayoutLanguage*(index: int64): string {.gcsafe, locks: 0.}
proc keyboardGetLayoutName*(index: int64): string {.gcsafe, locks: 0.}
proc keyboardSetCurrentLayout*(index: int64) {.gcsafe, locks: 0.}
proc kill*(pid: int64): Error {.gcsafe, locks: 0.}
proc moveWindowToForeground*() {.gcsafe, locks: 0.}
proc nativeVideoIsPlaying*(): bool {.gcsafe, locks: 0.}
proc nativeVideoPause*() {.gcsafe, locks: 0.}
proc nativeVideoPlay*(path: string; volume: float64; audioTrack: string;
                     subtitleTrack: string): Error {.gcsafe, locks: 0.}
proc nativeVideoStop*() {.gcsafe, locks: 0.}
proc nativeVideoUnpause*() {.gcsafe, locks: 0.}
proc openMidiInputs*() {.gcsafe, locks: 0.}
proc printAllResources*(tofile: string = "") {.gcsafe, locks: 0.}
proc printAllTexturesBySize*() {.gcsafe, locks: 0.}
proc printResourcesByType*(types: PoolStringArray) {.gcsafe, locks: 0.}
proc printResourcesInUse*(short: bool = false) {.gcsafe, locks: 0.}
proc requestAttention*() {.gcsafe, locks: 0.}
proc requestPermission*(name: string): bool {.gcsafe, locks: 0.}
proc requestPermissions*(): bool {.gcsafe, locks: 0.}
proc setBorderlessWindow*(borderless: bool) {.gcsafe, locks: 0.}
proc setClipboard*(clipboard: string) {.gcsafe, locks: 0.}
proc setCurrentScreen*(screen: int64) {.gcsafe, locks: 0.}
proc setCurrentTabletDriver*(name: string) {.gcsafe, locks: 0.}
proc setExitCode*(code: int64) {.gcsafe, locks: 0.}
proc setIcon*(icon: Image) {.gcsafe, locks: 0.}
proc setImeActive*(active: bool) {.gcsafe, locks: 0.}
proc setImePosition*(position: Vector2) {.gcsafe, locks: 0.}
proc setKeepScreenOn*(enabled: bool) {.gcsafe, locks: 0.}
proc setLowProcessorUsageMode*(enable: bool) {.gcsafe, locks: 0.}
proc setLowProcessorUsageModeSleepUsec*(usec: int64) {.gcsafe, locks: 0.}
proc setMaxWindowSize*(size: Vector2) {.gcsafe, locks: 0.}
proc setMinWindowSize*(size: Vector2) {.gcsafe, locks: 0.}
proc setNativeIcon*(filename: string) {.gcsafe, locks: 0.}
proc setScreenOrientation*(orientation: int64) {.gcsafe, locks: 0.}
proc setThreadName*(name: string): Error {.gcsafe, locks: 0.}
proc setUseFileAccessSaveAndSwap*(enabled: bool) {.gcsafe, locks: 0.}
proc setUseVsync*(enable: bool) {.gcsafe, locks: 0.}
proc setVsyncViaCompositor*(enable: bool) {.gcsafe, locks: 0.}
proc setWindowAlwaysOnTop*(enabled: bool) {.gcsafe, locks: 0.}
proc setWindowFullscreen*(enabled: bool) {.gcsafe, locks: 0.}
proc setWindowMaximized*(enabled: bool) {.gcsafe, locks: 0.}
proc setWindowMinimized*(enabled: bool) {.gcsafe, locks: 0.}
proc setWindowPerPixelTransparencyEnabled*(enabled: bool) {.gcsafe, locks: 0.}
proc setWindowPosition*(position: Vector2) {.gcsafe, locks: 0.}
proc setWindowResizable*(enabled: bool) {.gcsafe, locks: 0.}
proc setWindowSize*(size: Vector2) {.gcsafe, locks: 0.}
proc setWindowTitle*(title: string) {.gcsafe, locks: 0.}
proc shellOpen*(uri: string): Error {.gcsafe, locks: 0.}
proc showVirtualKeyboard*(existingText: string = "") {.gcsafe, locks: 0.}
var oSAlertMethodBind {.threadvar.}: ptr GodotMethodBind
proc alert(text: string; title: string = "Alert!") =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSAlertMethodBind):
    oSAlertMethodBind = getMethod(cstring"_OS", cstring"alert")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(title)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  oSAlertMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var oSCanDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc canDraw(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSCanDrawMethodBind):
    oSCanDrawMethodBind = getMethod(cstring"_OS", cstring"can_draw")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSCanDrawMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSCanUseThreadsMethodBind {.threadvar.}: ptr GodotMethodBind
proc canUseThreads(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSCanUseThreadsMethodBind):
    oSCanUseThreadsMethodBind = getMethod(cstring"_OS", cstring"can_use_threads")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSCanUseThreadsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSCenterWindowMethodBind {.threadvar.}: ptr GodotMethodBind
proc centerWindow() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSCenterWindowMethodBind):
    oSCenterWindowMethodBind = getMethod(cstring"_OS", cstring"center_window")
  var ptrCallRet: pointer
  oSCenterWindowMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSCloseMidiInputsMethodBind {.threadvar.}: ptr GodotMethodBind
proc closeMidiInputs() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSCloseMidiInputsMethodBind):
    oSCloseMidiInputsMethodBind = getMethod(cstring"_OS",
        cstring"close_midi_inputs")
  var ptrCallRet: pointer
  oSCloseMidiInputsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSDelayMsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc delayMsec(msec: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSDelayMsecMethodBind):
    oSDelayMsecMethodBind = getMethod(cstring"_OS", cstring"delay_msec")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(msec)
  var ptrCallRet: pointer
  oSDelayMsecMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var oSDelayUsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc delayUsec(usec: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSDelayUsecMethodBind):
    oSDelayUsecMethodBind = getMethod(cstring"_OS", cstring"delay_usec")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(usec)
  var ptrCallRet: pointer
  oSDelayUsecMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var oSDumpMemoryToFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc dumpMemoryToFile(file: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSDumpMemoryToFileMethodBind):
    oSDumpMemoryToFileMethodBind = getMethod(cstring"_OS",
        cstring"dump_memory_to_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(file)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSDumpMemoryToFileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var oSDumpResourcesToFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc dumpResourcesToFile(file: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSDumpResourcesToFileMethodBind):
    oSDumpResourcesToFileMethodBind = getMethod(cstring"_OS",
        cstring"dump_resources_to_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(file)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSDumpResourcesToFileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var oSExecuteMethodBind {.threadvar.}: ptr GodotMethodBind
proc execute(path: string; arguments: PoolStringArray; blocking: bool = true;
            output: Array = newArray(); readStderr: bool = false): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSExecuteMethodBind):
    oSExecuteMethodBind = getMethod(cstring"_OS", cstring"execute")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = arguments.godotPoolStringArray
  argsToPassToGodot[][2] = unsafeAddr(blocking)
  argsToPassToGodot[][3] = output.godotArray
  argsToPassToGodot[][4] = unsafeAddr(readStderr)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSExecuteMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var oSFindScancodeFromStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc findScancodeFromString(string: string): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSFindScancodeFromStringMethodBind):
    oSFindScancodeFromStringMethodBind = getMethod(cstring"_OS",
        cstring"find_scancode_from_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(string)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSFindScancodeFromStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var oSGetAudioDriverCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAudioDriverCount(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetAudioDriverCountMethodBind):
    oSGetAudioDriverCountMethodBind = getMethod(cstring"_OS",
        cstring"get_audio_driver_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetAudioDriverCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetAudioDriverNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAudioDriverName(driver: int64): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetAudioDriverNameMethodBind):
    oSGetAudioDriverNameMethodBind = getMethod(cstring"_OS",
        cstring"get_audio_driver_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(driver)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetAudioDriverNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetBorderlessWindowMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBorderlessWindow(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetBorderlessWindowMethodBind):
    oSGetBorderlessWindowMethodBind = getMethod(cstring"_OS",
        cstring"get_borderless_window")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetBorderlessWindowMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetClipboardMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClipboard(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetClipboardMethodBind):
    oSGetClipboardMethodBind = getMethod(cstring"_OS", cstring"get_clipboard")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetClipboardMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetCmdlineArgsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCmdlineArgs(): PoolStringArray =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetCmdlineArgsMethodBind):
    oSGetCmdlineArgsMethodBind = getMethod(cstring"_OS", cstring"get_cmdline_args")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  oSGetCmdlineArgsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var oSGetConnectedMidiInputsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedMidiInputs(): PoolStringArray =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetConnectedMidiInputsMethodBind):
    oSGetConnectedMidiInputsMethodBind = getMethod(cstring"_OS",
        cstring"get_connected_midi_inputs")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  oSGetConnectedMidiInputsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var oSGetCurrentScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentScreen(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetCurrentScreenMethodBind):
    oSGetCurrentScreenMethodBind = getMethod(cstring"_OS",
        cstring"get_current_screen")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetCurrentScreenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetCurrentTabletDriverMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentTabletDriver(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetCurrentTabletDriverMethodBind):
    oSGetCurrentTabletDriverMethodBind = getMethod(cstring"_OS",
        cstring"get_current_tablet_driver")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetCurrentTabletDriverMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetCurrentVideoDriverMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentVideoDriver(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetCurrentVideoDriverMethodBind):
    oSGetCurrentVideoDriverMethodBind = getMethod(cstring"_OS",
        cstring"get_current_video_driver")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetCurrentVideoDriverMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetDateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDate(utc: bool = false): Dictionary =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetDateMethodBind):
    oSGetDateMethodBind = getMethod(cstring"_OS", cstring"get_date")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(utc)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  oSGetDateMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var oSGetDatetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDatetime(utc: bool = false): Dictionary =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetDatetimeMethodBind):
    oSGetDatetimeMethodBind = getMethod(cstring"_OS", cstring"get_datetime")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(utc)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  oSGetDatetimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var oSGetDatetimeFromUnixTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDatetimeFromUnixTime(unixTimeVal: int64): Dictionary =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetDatetimeFromUnixTimeMethodBind):
    oSGetDatetimeFromUnixTimeMethodBind = getMethod(cstring"_OS",
        cstring"get_datetime_from_unix_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(unixTimeVal)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  oSGetDatetimeFromUnixTimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var oSGetDynamicMemoryUsageMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDynamicMemoryUsage(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetDynamicMemoryUsageMethodBind):
    oSGetDynamicMemoryUsageMethodBind = getMethod(cstring"_OS",
        cstring"get_dynamic_memory_usage")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetDynamicMemoryUsageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getEnvironment(environment: string): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetEnvironmentMethodBind):
    oSGetEnvironmentMethodBind = getMethod(cstring"_OS", cstring"get_environment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(environment)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetEnvironmentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetExecutablePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getExecutablePath(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetExecutablePathMethodBind):
    oSGetExecutablePathMethodBind = getMethod(cstring"_OS",
        cstring"get_executable_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetExecutablePathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetExitCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getExitCode(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetExitCodeMethodBind):
    oSGetExitCodeMethodBind = getMethod(cstring"_OS", cstring"get_exit_code")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetExitCodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetGrantedPermissionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGrantedPermissions(): PoolStringArray =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetGrantedPermissionsMethodBind):
    oSGetGrantedPermissionsMethodBind = getMethod(cstring"_OS",
        cstring"get_granted_permissions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  oSGetGrantedPermissionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var oSGetImeSelectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getImeSelection(): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetImeSelectionMethodBind):
    oSGetImeSelectionMethodBind = getMethod(cstring"_OS",
        cstring"get_ime_selection")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetImeSelectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetImeTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getImeText(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetImeTextMethodBind):
    oSGetImeTextMethodBind = getMethod(cstring"_OS", cstring"get_ime_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetImeTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetLatinKeyboardVariantMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLatinKeyboardVariant(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetLatinKeyboardVariantMethodBind):
    oSGetLatinKeyboardVariantMethodBind = getMethod(cstring"_OS",
        cstring"get_latin_keyboard_variant")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetLatinKeyboardVariantMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetLocaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLocale(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetLocaleMethodBind):
    oSGetLocaleMethodBind = getMethod(cstring"_OS", cstring"get_locale")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetLocaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetLowProcessorUsageModeSleepUsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLowProcessorUsageModeSleepUsec(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetLowProcessorUsageModeSleepUsecMethodBind):
    oSGetLowProcessorUsageModeSleepUsecMethodBind = getMethod(cstring"_OS",
        cstring"get_low_processor_usage_mode_sleep_usec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetLowProcessorUsageModeSleepUsecMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var oSGetMaxWindowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMaxWindowSize(): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetMaxWindowSizeMethodBind):
    oSGetMaxWindowSizeMethodBind = getMethod(cstring"_OS",
        cstring"get_max_window_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetMaxWindowSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetMinWindowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMinWindowSize(): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetMinWindowSizeMethodBind):
    oSGetMinWindowSizeMethodBind = getMethod(cstring"_OS",
        cstring"get_min_window_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetMinWindowSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetModelNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getModelName(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetModelNameMethodBind):
    oSGetModelNameMethodBind = getMethod(cstring"_OS", cstring"get_model_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetModelNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getName(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetNameMethodBind):
    oSGetNameMethodBind = getMethod(cstring"_OS", cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetPowerPercentLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPowerPercentLeft(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetPowerPercentLeftMethodBind):
    oSGetPowerPercentLeftMethodBind = getMethod(cstring"_OS",
        cstring"get_power_percent_left")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetPowerPercentLeftMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetPowerSecondsLeftMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPowerSecondsLeft(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetPowerSecondsLeftMethodBind):
    oSGetPowerSecondsLeftMethodBind = getMethod(cstring"_OS",
        cstring"get_power_seconds_left")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetPowerSecondsLeftMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetPowerStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPowerState(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetPowerStateMethodBind):
    oSGetPowerStateMethodBind = getMethod(cstring"_OS", cstring"get_power_state")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetPowerStateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetProcessIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProcessId(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetProcessIdMethodBind):
    oSGetProcessIdMethodBind = getMethod(cstring"_OS", cstring"get_process_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetProcessIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetProcessorCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getProcessorCount(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetProcessorCountMethodBind):
    oSGetProcessorCountMethodBind = getMethod(cstring"_OS",
        cstring"get_processor_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetProcessorCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetRealWindowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRealWindowSize(): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetRealWindowSizeMethodBind):
    oSGetRealWindowSizeMethodBind = getMethod(cstring"_OS",
        cstring"get_real_window_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetRealWindowSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetScancodeStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScancodeString(code: int64): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetScancodeStringMethodBind):
    oSGetScancodeStringMethodBind = getMethod(cstring"_OS",
        cstring"get_scancode_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(code)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetScancodeStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetScreenCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScreenCount(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetScreenCountMethodBind):
    oSGetScreenCountMethodBind = getMethod(cstring"_OS", cstring"get_screen_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetScreenCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetScreenDpiMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScreenDpi(screen: int64 = -1'i64): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetScreenDpiMethodBind):
    oSGetScreenDpiMethodBind = getMethod(cstring"_OS", cstring"get_screen_dpi")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screen)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetScreenDpiMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var oSGetScreenOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScreenOrientation(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetScreenOrientationMethodBind):
    oSGetScreenOrientationMethodBind = getMethod(cstring"_OS",
        cstring"get_screen_orientation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetScreenOrientationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetScreenPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScreenPosition(screen: int64 = -1'i64): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetScreenPositionMethodBind):
    oSGetScreenPositionMethodBind = getMethod(cstring"_OS",
        cstring"get_screen_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screen)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetScreenPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var oSGetScreenSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScreenSize(screen: int64 = -1'i64): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetScreenSizeMethodBind):
    oSGetScreenSizeMethodBind = getMethod(cstring"_OS", cstring"get_screen_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screen)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetScreenSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var oSGetSplashTickMsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSplashTickMsec(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetSplashTickMsecMethodBind):
    oSGetSplashTickMsecMethodBind = getMethod(cstring"_OS",
        cstring"get_splash_tick_msec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetSplashTickMsecMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetStaticMemoryPeakUsageMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStaticMemoryPeakUsage(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetStaticMemoryPeakUsageMethodBind):
    oSGetStaticMemoryPeakUsageMethodBind = getMethod(cstring"_OS",
        cstring"get_static_memory_peak_usage")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetStaticMemoryPeakUsageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetStaticMemoryUsageMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStaticMemoryUsage(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetStaticMemoryUsageMethodBind):
    oSGetStaticMemoryUsageMethodBind = getMethod(cstring"_OS",
        cstring"get_static_memory_usage")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetStaticMemoryUsageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetSystemDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSystemDir(dir: int64): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetSystemDirMethodBind):
    oSGetSystemDirMethodBind = getMethod(cstring"_OS", cstring"get_system_dir")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(dir)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetSystemDirMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetSystemTimeMsecsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSystemTimeMsecs(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetSystemTimeMsecsMethodBind):
    oSGetSystemTimeMsecsMethodBind = getMethod(cstring"_OS",
        cstring"get_system_time_msecs")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetSystemTimeMsecsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetSystemTimeSecsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSystemTimeSecs(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetSystemTimeSecsMethodBind):
    oSGetSystemTimeSecsMethodBind = getMethod(cstring"_OS",
        cstring"get_system_time_secs")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetSystemTimeSecsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetTabletDriverCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabletDriverCount(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetTabletDriverCountMethodBind):
    oSGetTabletDriverCountMethodBind = getMethod(cstring"_OS",
        cstring"get_tablet_driver_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetTabletDriverCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetTabletDriverNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTabletDriverName(idx: int64): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetTabletDriverNameMethodBind):
    oSGetTabletDriverNameMethodBind = getMethod(cstring"_OS",
        cstring"get_tablet_driver_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetTabletDriverNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetTicksMsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTicksMsec(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetTicksMsecMethodBind):
    oSGetTicksMsecMethodBind = getMethod(cstring"_OS", cstring"get_ticks_msec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetTicksMsecMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetTicksUsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTicksUsec(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetTicksUsecMethodBind):
    oSGetTicksUsecMethodBind = getMethod(cstring"_OS", cstring"get_ticks_usec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetTicksUsecMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTime(utc: bool = false): Dictionary =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetTimeMethodBind):
    oSGetTimeMethodBind = getMethod(cstring"_OS", cstring"get_time")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(utc)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  oSGetTimeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var oSGetTimeZoneInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTimeZoneInfo(): Dictionary =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetTimeZoneInfoMethodBind):
    oSGetTimeZoneInfoMethodBind = getMethod(cstring"_OS",
        cstring"get_time_zone_info")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  oSGetTimeZoneInfoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var oSGetUniqueIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUniqueId(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetUniqueIdMethodBind):
    oSGetUniqueIdMethodBind = getMethod(cstring"_OS", cstring"get_unique_id")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetUniqueIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetUnixTimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUnixTime(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetUnixTimeMethodBind):
    oSGetUnixTimeMethodBind = getMethod(cstring"_OS", cstring"get_unix_time")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetUnixTimeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetUnixTimeFromDatetimeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUnixTimeFromDatetime(datetime: Dictionary): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetUnixTimeFromDatetimeMethodBind):
    oSGetUnixTimeFromDatetimeMethodBind = getMethod(cstring"_OS",
        cstring"get_unix_time_from_datetime")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = datetime.godotDictionary
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetUnixTimeFromDatetimeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var oSGetUserDataDirMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUserDataDir(): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetUserDataDirMethodBind):
    oSGetUserDataDirMethodBind = getMethod(cstring"_OS",
        cstring"get_user_data_dir")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetUserDataDirMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetVideoDriverCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVideoDriverCount(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetVideoDriverCountMethodBind):
    oSGetVideoDriverCountMethodBind = getMethod(cstring"_OS",
        cstring"get_video_driver_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetVideoDriverCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetVideoDriverNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVideoDriverName(driver: int64): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetVideoDriverNameMethodBind):
    oSGetVideoDriverNameMethodBind = getMethod(cstring"_OS",
        cstring"get_video_driver_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(driver)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSGetVideoDriverNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSGetVirtualKeyboardHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVirtualKeyboardHeight(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetVirtualKeyboardHeightMethodBind):
    oSGetVirtualKeyboardHeightMethodBind = getMethod(cstring"_OS",
        cstring"get_virtual_keyboard_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetVirtualKeyboardHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetWindowPerPixelTransparencyEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWindowPerPixelTransparencyEnabled(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetWindowPerPixelTransparencyEnabledMethodBind):
    oSGetWindowPerPixelTransparencyEnabledMethodBind = getMethod(cstring"_OS",
        cstring"get_window_per_pixel_transparency_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetWindowPerPixelTransparencyEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var oSGetWindowPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWindowPosition(): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetWindowPositionMethodBind):
    oSGetWindowPositionMethodBind = getMethod(cstring"_OS",
        cstring"get_window_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetWindowPositionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetWindowSafeAreaMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWindowSafeArea(): Rect2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetWindowSafeAreaMethodBind):
    oSGetWindowSafeAreaMethodBind = getMethod(cstring"_OS",
        cstring"get_window_safe_area")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetWindowSafeAreaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGetWindowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWindowSize(): Vector2 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGetWindowSizeMethodBind):
    oSGetWindowSizeMethodBind = getMethod(cstring"_OS", cstring"get_window_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSGetWindowSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSGlobalMenuAddItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalMenuAddItem(menu: string; label: string; id: Variant; meta: Variant) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGlobalMenuAddItemMethodBind):
    oSGlobalMenuAddItemMethodBind = getMethod(cstring"_OS",
        cstring"global_menu_add_item")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(menu)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(label)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = id.godotVariant
  argsToPassToGodot[][3] = meta.godotVariant
  var ptrCallRet: pointer
  oSGlobalMenuAddItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var oSGlobalMenuAddSeparatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalMenuAddSeparator(menu: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGlobalMenuAddSeparatorMethodBind):
    oSGlobalMenuAddSeparatorMethodBind = getMethod(cstring"_OS",
        cstring"global_menu_add_separator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(menu)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSGlobalMenuAddSeparatorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var oSGlobalMenuClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalMenuClear(menu: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGlobalMenuClearMethodBind):
    oSGlobalMenuClearMethodBind = getMethod(cstring"_OS",
        cstring"global_menu_clear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(menu)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSGlobalMenuClearMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var oSGlobalMenuRemoveItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc globalMenuRemoveItem(menu: string; idx: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSGlobalMenuRemoveItemMethodBind):
    oSGlobalMenuRemoveItemMethodBind = getMethod(cstring"_OS",
        cstring"global_menu_remove_item")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(menu)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(idx)
  var ptrCallRet: pointer
  oSGlobalMenuRemoveItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var oSHasEnvironmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasEnvironment(environment: string): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSHasEnvironmentMethodBind):
    oSHasEnvironmentMethodBind = getMethod(cstring"_OS", cstring"has_environment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(environment)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSHasEnvironmentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var oSHasFeatureMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasFeature(tagName: string): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSHasFeatureMethodBind):
    oSHasFeatureMethodBind = getMethod(cstring"_OS", cstring"has_feature")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(tagName)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSHasFeatureMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var oSHasTouchscreenUiHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasTouchscreenUiHint(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSHasTouchscreenUiHintMethodBind):
    oSHasTouchscreenUiHintMethodBind = getMethod(cstring"_OS",
        cstring"has_touchscreen_ui_hint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSHasTouchscreenUiHintMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSHasVirtualKeyboardMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasVirtualKeyboard(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSHasVirtualKeyboardMethodBind):
    oSHasVirtualKeyboardMethodBind = getMethod(cstring"_OS",
        cstring"has_virtual_keyboard")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSHasVirtualKeyboardMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSHideVirtualKeyboardMethodBind {.threadvar.}: ptr GodotMethodBind
proc hideVirtualKeyboard() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSHideVirtualKeyboardMethodBind):
    oSHideVirtualKeyboardMethodBind = getMethod(cstring"_OS",
        cstring"hide_virtual_keyboard")
  var ptrCallRet: pointer
  oSHideVirtualKeyboardMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsDebugBuildMethodBind {.threadvar.}: ptr GodotMethodBind
proc isDebugBuild(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsDebugBuildMethodBind):
    oSIsDebugBuildMethodBind = getMethod(cstring"_OS", cstring"is_debug_build")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsDebugBuildMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsInLowProcessorUsageModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInLowProcessorUsageMode(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsInLowProcessorUsageModeMethodBind):
    oSIsInLowProcessorUsageModeMethodBind = getMethod(cstring"_OS",
        cstring"is_in_low_processor_usage_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsInLowProcessorUsageModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsKeepScreenOnMethodBind {.threadvar.}: ptr GodotMethodBind
proc isKeepScreenOn(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsKeepScreenOnMethodBind):
    oSIsKeepScreenOnMethodBind = getMethod(cstring"_OS",
        cstring"is_keep_screen_on")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsKeepScreenOnMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsOkLeftAndCancelRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc isOkLeftAndCancelRight(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsOkLeftAndCancelRightMethodBind):
    oSIsOkLeftAndCancelRightMethodBind = getMethod(cstring"_OS",
        cstring"is_ok_left_and_cancel_right")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsOkLeftAndCancelRightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsScancodeUnicodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isScancodeUnicode(code: int64): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsScancodeUnicodeMethodBind):
    oSIsScancodeUnicodeMethodBind = getMethod(cstring"_OS",
        cstring"is_scancode_unicode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(code)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsScancodeUnicodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var oSIsStdoutVerboseMethodBind {.threadvar.}: ptr GodotMethodBind
proc isStdoutVerbose(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsStdoutVerboseMethodBind):
    oSIsStdoutVerboseMethodBind = getMethod(cstring"_OS",
        cstring"is_stdout_verbose")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsStdoutVerboseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsUserfsPersistentMethodBind {.threadvar.}: ptr GodotMethodBind
proc isUserfsPersistent(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsUserfsPersistentMethodBind):
    oSIsUserfsPersistentMethodBind = getMethod(cstring"_OS",
        cstring"is_userfs_persistent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsUserfsPersistentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsVsyncEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isVsyncEnabled(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsVsyncEnabledMethodBind):
    oSIsVsyncEnabledMethodBind = getMethod(cstring"_OS", cstring"is_vsync_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsVsyncEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsVsyncViaCompositorEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isVsyncViaCompositorEnabled(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsVsyncViaCompositorEnabledMethodBind):
    oSIsVsyncViaCompositorEnabledMethodBind = getMethod(cstring"_OS",
        cstring"is_vsync_via_compositor_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsVsyncViaCompositorEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var oSIsWindowAlwaysOnTopMethodBind {.threadvar.}: ptr GodotMethodBind
proc isWindowAlwaysOnTop(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsWindowAlwaysOnTopMethodBind):
    oSIsWindowAlwaysOnTopMethodBind = getMethod(cstring"_OS",
        cstring"is_window_always_on_top")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsWindowAlwaysOnTopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsWindowFocusedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isWindowFocused(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsWindowFocusedMethodBind):
    oSIsWindowFocusedMethodBind = getMethod(cstring"_OS",
        cstring"is_window_focused")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsWindowFocusedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsWindowFullscreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc isWindowFullscreen(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsWindowFullscreenMethodBind):
    oSIsWindowFullscreenMethodBind = getMethod(cstring"_OS",
        cstring"is_window_fullscreen")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsWindowFullscreenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsWindowMaximizedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isWindowMaximized(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsWindowMaximizedMethodBind):
    oSIsWindowMaximizedMethodBind = getMethod(cstring"_OS",
        cstring"is_window_maximized")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsWindowMaximizedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsWindowMinimizedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isWindowMinimized(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsWindowMinimizedMethodBind):
    oSIsWindowMinimizedMethodBind = getMethod(cstring"_OS",
        cstring"is_window_minimized")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsWindowMinimizedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSIsWindowResizableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isWindowResizable(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSIsWindowResizableMethodBind):
    oSIsWindowResizableMethodBind = getMethod(cstring"_OS",
        cstring"is_window_resizable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSIsWindowResizableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSKeyboardGetCurrentLayoutMethodBind {.threadvar.}: ptr GodotMethodBind
proc keyboardGetCurrentLayout(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSKeyboardGetCurrentLayoutMethodBind):
    oSKeyboardGetCurrentLayoutMethodBind = getMethod(cstring"_OS",
        cstring"keyboard_get_current_layout")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSKeyboardGetCurrentLayoutMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSKeyboardGetLayoutCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc keyboardGetLayoutCount(): int64 =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSKeyboardGetLayoutCountMethodBind):
    oSKeyboardGetLayoutCountMethodBind = getMethod(cstring"_OS",
        cstring"keyboard_get_layout_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSKeyboardGetLayoutCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSKeyboardGetLayoutLanguageMethodBind {.threadvar.}: ptr GodotMethodBind
proc keyboardGetLayoutLanguage(index: int64): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSKeyboardGetLayoutLanguageMethodBind):
    oSKeyboardGetLayoutLanguageMethodBind = getMethod(cstring"_OS",
        cstring"keyboard_get_layout_language")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSKeyboardGetLayoutLanguageMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSKeyboardGetLayoutNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc keyboardGetLayoutName(index: int64): string =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSKeyboardGetLayoutNameMethodBind):
    oSKeyboardGetLayoutNameMethodBind = getMethod(cstring"_OS",
        cstring"keyboard_get_layout_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  oSKeyboardGetLayoutNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var oSKeyboardSetCurrentLayoutMethodBind {.threadvar.}: ptr GodotMethodBind
proc keyboardSetCurrentLayout(index: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSKeyboardSetCurrentLayoutMethodBind):
    oSKeyboardSetCurrentLayoutMethodBind = getMethod(cstring"_OS",
        cstring"keyboard_set_current_layout")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  oSKeyboardSetCurrentLayoutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var oSKillMethodBind {.threadvar.}: ptr GodotMethodBind
proc kill(pid: int64): Error =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSKillMethodBind):
    oSKillMethodBind = getMethod(cstring"_OS", cstring"kill")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pid)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  oSKillMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var oSMoveWindowToForegroundMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveWindowToForeground() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSMoveWindowToForegroundMethodBind):
    oSMoveWindowToForegroundMethodBind = getMethod(cstring"_OS",
        cstring"move_window_to_foreground")
  var ptrCallRet: pointer
  oSMoveWindowToForegroundMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSNativeVideoIsPlayingMethodBind {.threadvar.}: ptr GodotMethodBind
proc nativeVideoIsPlaying(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSNativeVideoIsPlayingMethodBind):
    oSNativeVideoIsPlayingMethodBind = getMethod(cstring"_OS",
        cstring"native_video_is_playing")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSNativeVideoIsPlayingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSNativeVideoPauseMethodBind {.threadvar.}: ptr GodotMethodBind
proc nativeVideoPause() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSNativeVideoPauseMethodBind):
    oSNativeVideoPauseMethodBind = getMethod(cstring"_OS",
        cstring"native_video_pause")
  var ptrCallRet: pointer
  oSNativeVideoPauseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSNativeVideoPlayMethodBind {.threadvar.}: ptr GodotMethodBind
proc nativeVideoPlay(path: string; volume: float64; audioTrack: string;
                    subtitleTrack: string): Error =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSNativeVideoPlayMethodBind):
    oSNativeVideoPlayMethodBind = getMethod(cstring"_OS",
        cstring"native_video_play")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(volume)
  var argToPassToGodot2 = toGodotString(audioTrack)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var argToPassToGodot3 = toGodotString(subtitleTrack)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  oSNativeVideoPlayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot3)
  result = Error(ptrCallVal)

var oSNativeVideoStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc nativeVideoStop() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSNativeVideoStopMethodBind):
    oSNativeVideoStopMethodBind = getMethod(cstring"_OS",
        cstring"native_video_stop")
  var ptrCallRet: pointer
  oSNativeVideoStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSNativeVideoUnpauseMethodBind {.threadvar.}: ptr GodotMethodBind
proc nativeVideoUnpause() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSNativeVideoUnpauseMethodBind):
    oSNativeVideoUnpauseMethodBind = getMethod(cstring"_OS",
        cstring"native_video_unpause")
  var ptrCallRet: pointer
  oSNativeVideoUnpauseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSOpenMidiInputsMethodBind {.threadvar.}: ptr GodotMethodBind
proc openMidiInputs() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSOpenMidiInputsMethodBind):
    oSOpenMidiInputsMethodBind = getMethod(cstring"_OS", cstring"open_midi_inputs")
  var ptrCallRet: pointer
  oSOpenMidiInputsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSPrintAllResourcesMethodBind {.threadvar.}: ptr GodotMethodBind
proc printAllResources(tofile: string = "") =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSPrintAllResourcesMethodBind):
    oSPrintAllResourcesMethodBind = getMethod(cstring"_OS",
        cstring"print_all_resources")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(tofile)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSPrintAllResourcesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var oSPrintAllTexturesBySizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc printAllTexturesBySize() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSPrintAllTexturesBySizeMethodBind):
    oSPrintAllTexturesBySizeMethodBind = getMethod(cstring"_OS",
        cstring"print_all_textures_by_size")
  var ptrCallRet: pointer
  oSPrintAllTexturesBySizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSPrintResourcesByTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc printResourcesByType(types: PoolStringArray) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSPrintResourcesByTypeMethodBind):
    oSPrintResourcesByTypeMethodBind = getMethod(cstring"_OS",
        cstring"print_resources_by_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = types.godotPoolStringArray
  var ptrCallRet: pointer
  oSPrintResourcesByTypeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSPrintResourcesInUseMethodBind {.threadvar.}: ptr GodotMethodBind
proc printResourcesInUse(short: bool = false) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSPrintResourcesInUseMethodBind):
    oSPrintResourcesInUseMethodBind = getMethod(cstring"_OS",
        cstring"print_resources_in_use")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(short)
  var ptrCallRet: pointer
  oSPrintResourcesInUseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSRequestAttentionMethodBind {.threadvar.}: ptr GodotMethodBind
proc requestAttention() =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSRequestAttentionMethodBind):
    oSRequestAttentionMethodBind = getMethod(cstring"_OS",
        cstring"request_attention")
  var ptrCallRet: pointer
  oSRequestAttentionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSRequestPermissionMethodBind {.threadvar.}: ptr GodotMethodBind
proc requestPermission(name: string): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSRequestPermissionMethodBind):
    oSRequestPermissionMethodBind = getMethod(cstring"_OS",
        cstring"request_permission")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSRequestPermissionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var oSRequestPermissionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc requestPermissions(): bool =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSRequestPermissionsMethodBind):
    oSRequestPermissionsMethodBind = getMethod(cstring"_OS",
        cstring"request_permissions")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  oSRequestPermissionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var oSSetBorderlessWindowMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBorderlessWindow(borderless: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetBorderlessWindowMethodBind):
    oSSetBorderlessWindowMethodBind = getMethod(cstring"_OS",
        cstring"set_borderless_window")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(borderless)
  var ptrCallRet: pointer
  oSSetBorderlessWindowMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetClipboardMethodBind {.threadvar.}: ptr GodotMethodBind
proc setClipboard(clipboard: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetClipboardMethodBind):
    oSSetClipboardMethodBind = getMethod(cstring"_OS", cstring"set_clipboard")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(clipboard)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSSetClipboardMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var oSSetCurrentScreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCurrentScreen(screen: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetCurrentScreenMethodBind):
    oSSetCurrentScreenMethodBind = getMethod(cstring"_OS",
        cstring"set_current_screen")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(screen)
  var ptrCallRet: pointer
  oSSetCurrentScreenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var oSSetCurrentTabletDriverMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCurrentTabletDriver(name: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetCurrentTabletDriverMethodBind):
    oSSetCurrentTabletDriverMethodBind = getMethod(cstring"_OS",
        cstring"set_current_tablet_driver")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSSetCurrentTabletDriverMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var oSSetExitCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setExitCode(code: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetExitCodeMethodBind):
    oSSetExitCodeMethodBind = getMethod(cstring"_OS", cstring"set_exit_code")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(code)
  var ptrCallRet: pointer
  oSSetExitCodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var oSSetIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIcon(icon: Image) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetIconMethodBind):
    oSSetIconMethodBind = getMethod(cstring"_OS", cstring"set_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  oSSetIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var oSSetImeActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc setImeActive(active: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetImeActiveMethodBind):
    oSSetImeActiveMethodBind = getMethod(cstring"_OS", cstring"set_ime_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(active)
  var ptrCallRet: pointer
  oSSetImeActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var oSSetImePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setImePosition(position: Vector2) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetImePositionMethodBind):
    oSSetImePositionMethodBind = getMethod(cstring"_OS", cstring"set_ime_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  oSSetImePositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var oSSetKeepScreenOnMethodBind {.threadvar.}: ptr GodotMethodBind
proc setKeepScreenOn(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetKeepScreenOnMethodBind):
    oSSetKeepScreenOnMethodBind = getMethod(cstring"_OS",
        cstring"set_keep_screen_on")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetKeepScreenOnMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var oSSetLowProcessorUsageModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLowProcessorUsageMode(enable: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetLowProcessorUsageModeMethodBind):
    oSSetLowProcessorUsageModeMethodBind = getMethod(cstring"_OS",
        cstring"set_low_processor_usage_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  oSSetLowProcessorUsageModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var oSSetLowProcessorUsageModeSleepUsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLowProcessorUsageModeSleepUsec(usec: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetLowProcessorUsageModeSleepUsecMethodBind):
    oSSetLowProcessorUsageModeSleepUsecMethodBind = getMethod(cstring"_OS",
        cstring"set_low_processor_usage_mode_sleep_usec")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(usec)
  var ptrCallRet: pointer
  oSSetLowProcessorUsageModeSleepUsecMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var oSSetMaxWindowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMaxWindowSize(size: Vector2) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetMaxWindowSizeMethodBind):
    oSSetMaxWindowSizeMethodBind = getMethod(cstring"_OS",
        cstring"set_max_window_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  oSSetMaxWindowSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var oSSetMinWindowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMinWindowSize(size: Vector2) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetMinWindowSizeMethodBind):
    oSSetMinWindowSizeMethodBind = getMethod(cstring"_OS",
        cstring"set_min_window_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  oSSetMinWindowSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var oSSetNativeIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNativeIcon(filename: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetNativeIconMethodBind):
    oSSetNativeIconMethodBind = getMethod(cstring"_OS", cstring"set_native_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(filename)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSSetNativeIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var oSSetScreenOrientationMethodBind {.threadvar.}: ptr GodotMethodBind
proc setScreenOrientation(orientation: int64) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetScreenOrientationMethodBind):
    oSSetScreenOrientationMethodBind = getMethod(cstring"_OS",
        cstring"set_screen_orientation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(orientation)
  var ptrCallRet: pointer
  oSSetScreenOrientationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetThreadNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setThreadName(name: string): Error =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetThreadNameMethodBind):
    oSSetThreadNameMethodBind = getMethod(cstring"_OS", cstring"set_thread_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  oSSetThreadNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var oSSetUseFileAccessSaveAndSwapMethodBind {.threadvar.}: ptr GodotMethodBind
proc setUseFileAccessSaveAndSwap(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetUseFileAccessSaveAndSwapMethodBind):
    oSSetUseFileAccessSaveAndSwapMethodBind = getMethod(cstring"_OS",
        cstring"set_use_file_access_save_and_swap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetUseFileAccessSaveAndSwapMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var oSSetUseVsyncMethodBind {.threadvar.}: ptr GodotMethodBind
proc setUseVsync(enable: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetUseVsyncMethodBind):
    oSSetUseVsyncMethodBind = getMethod(cstring"_OS", cstring"set_use_vsync")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  oSSetUseVsyncMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var oSSetVsyncViaCompositorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVsyncViaCompositor(enable: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetVsyncViaCompositorMethodBind):
    oSSetVsyncViaCompositorMethodBind = getMethod(cstring"_OS",
        cstring"set_vsync_via_compositor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  oSSetVsyncViaCompositorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetWindowAlwaysOnTopMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowAlwaysOnTop(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowAlwaysOnTopMethodBind):
    oSSetWindowAlwaysOnTopMethodBind = getMethod(cstring"_OS",
        cstring"set_window_always_on_top")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetWindowAlwaysOnTopMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetWindowFullscreenMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowFullscreen(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowFullscreenMethodBind):
    oSSetWindowFullscreenMethodBind = getMethod(cstring"_OS",
        cstring"set_window_fullscreen")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetWindowFullscreenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetWindowMaximizedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowMaximized(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowMaximizedMethodBind):
    oSSetWindowMaximizedMethodBind = getMethod(cstring"_OS",
        cstring"set_window_maximized")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetWindowMaximizedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetWindowMinimizedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowMinimized(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowMinimizedMethodBind):
    oSSetWindowMinimizedMethodBind = getMethod(cstring"_OS",
        cstring"set_window_minimized")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetWindowMinimizedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetWindowPerPixelTransparencyEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowPerPixelTransparencyEnabled(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowPerPixelTransparencyEnabledMethodBind):
    oSSetWindowPerPixelTransparencyEnabledMethodBind = getMethod(cstring"_OS",
        cstring"set_window_per_pixel_transparency_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetWindowPerPixelTransparencyEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var oSSetWindowPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowPosition(position: Vector2) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowPositionMethodBind):
    oSSetWindowPositionMethodBind = getMethod(cstring"_OS",
        cstring"set_window_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  oSSetWindowPositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var oSSetWindowResizableMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowResizable(enabled: bool) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowResizableMethodBind):
    oSSetWindowResizableMethodBind = getMethod(cstring"_OS",
        cstring"set_window_resizable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  oSSetWindowResizableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var oSSetWindowSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowSize(size: Vector2) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowSizeMethodBind):
    oSSetWindowSizeMethodBind = getMethod(cstring"_OS", cstring"set_window_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  oSSetWindowSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var oSSetWindowTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setWindowTitle(title: string) =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSSetWindowTitleMethodBind):
    oSSetWindowTitleMethodBind = getMethod(cstring"_OS", cstring"set_window_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(title)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSSetWindowTitleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var oSShellOpenMethodBind {.threadvar.}: ptr GodotMethodBind
proc shellOpen(uri: string): Error =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSShellOpenMethodBind):
    oSShellOpenMethodBind = getMethod(cstring"_OS", cstring"shell_open")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(uri)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  oSShellOpenMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var oSShowVirtualKeyboardMethodBind {.threadvar.}: ptr GodotMethodBind
proc showVirtualKeyboard(existingText: string = "") =
  if isNil(singletonOS):
    singletonOS = getSingleton[OS]()
  let self = singletonOS
  if isNil(oSShowVirtualKeyboardMethodBind):
    oSShowVirtualKeyboardMethodBind = getMethod(cstring"_OS",
        cstring"show_virtual_keyboard")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(existingText)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  oSShowVirtualKeyboardMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
