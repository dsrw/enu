
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  CURSOR_ARROW* = 0'i64
  CURSOR_BDIAGSIZE* = 11'i64
  CURSOR_BUSY* = 5'i64
  CURSOR_CAN_DROP* = 7'i64
  CURSOR_CROSS* = 3'i64
  CURSOR_DRAG* = 6'i64
  CURSOR_FDIAGSIZE* = 12'i64
  CURSOR_FORBIDDEN* = 8'i64
  CURSOR_HELP* = 16'i64
  CURSOR_HSIZE* = 10'i64
  CURSOR_HSPLIT* = 15'i64
  CURSOR_IBEAM* = 1'i64
  CURSOR_MOVE* = 13'i64
  CURSOR_POINTING_HAND* = 2'i64
  CURSOR_VSIZE* = 9'i64
  CURSOR_VSPLIT* = 14'i64
  CURSOR_WAIT* = 4'i64
  MOUSE_MODE_CAPTURED* = 2'i64
  MOUSE_MODE_CONFINED* = 3'i64
  MOUSE_MODE_HIDDEN* = 1'i64
  MOUSE_MODE_VISIBLE* = 0'i64
type
  Input = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
  InputDefault = ref object of Input
    ## singleton: false
    ## instanciable: false
    ## is_reference: false
  
registerClass(Input, "Input", true)
registerClass(InputDefault, "InputDefault", true)
var singletonInput {.threadvar.}: Input
proc actionPress*(action: string; strength: float64 = 1.0) {.gcsafe, locks: 0.}
proc actionRelease*(action: string) {.gcsafe, locks: 0.}
proc addJoyMapping*(mapping: string; updateExisting: bool = false) {.gcsafe, locks: 0.}
proc getAccelerometer*(): Vector3 {.gcsafe, locks: 0.}
proc getActionStrength*(action: string): float64 {.gcsafe, locks: 0.}
proc getConnectedJoypads*(): Array {.gcsafe, locks: 0.}
proc getCurrentCursorShape*(): int64 {.gcsafe, locks: 0.}
proc getGravity*(): Vector3 {.gcsafe, locks: 0.}
proc getGyroscope*(): Vector3 {.gcsafe, locks: 0.}
proc getJoyAxis*(device: int64; axis: int64): float64 {.gcsafe, locks: 0.}
proc getJoyAxisIndexFromString*(axis: string): int64 {.gcsafe, locks: 0.}
proc getJoyAxisString*(axisIndex: int64): string {.gcsafe, locks: 0.}
proc getJoyButtonIndexFromString*(button: string): int64 {.gcsafe, locks: 0.}
proc getJoyButtonString*(buttonIndex: int64): string {.gcsafe, locks: 0.}
proc getJoyGuid*(device: int64): string {.gcsafe, locks: 0.}
proc getJoyName*(device: int64): string {.gcsafe, locks: 0.}
proc getJoyVibrationDuration*(device: int64): float64 {.gcsafe, locks: 0.}
proc getJoyVibrationStrength*(device: int64): Vector2 {.gcsafe, locks: 0.}
proc getLastMouseSpeed*(): Vector2 {.gcsafe, locks: 0.}
proc getMagnetometer*(): Vector3 {.gcsafe, locks: 0.}
proc getMouseButtonMask*(): int64 {.gcsafe, locks: 0.}
proc getMouseMode*(): int64 {.gcsafe, locks: 0.}
proc isActionJustPressed*(action: string): bool {.gcsafe, locks: 0.}
proc isActionJustReleased*(action: string): bool {.gcsafe, locks: 0.}
proc isActionPressed*(action: string): bool {.gcsafe, locks: 0.}
proc isJoyButtonPressed*(device: int64; button: int64): bool {.gcsafe, locks: 0.}
proc isJoyKnown*(device: int64): bool {.gcsafe, locks: 0.}
proc isKeyPressed*(scancode: int64): bool {.gcsafe, locks: 0.}
proc isMouseButtonPressed*(button: int64): bool {.gcsafe, locks: 0.}
proc joyConnectionChanged*(device: int64; connected: bool; name: string; guid: string) {.
    gcsafe, locks: 0.}
proc parseInputEvent*(event: InputEvent) {.gcsafe, locks: 0.}
proc removeJoyMapping*(guid: string) {.gcsafe, locks: 0.}
proc setCustomMouseCursor*(image: Resource; shape: int64 = 0'i64;
                          hotspot: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc setDefaultCursorShape*(shape: int64 = 0'i64) {.gcsafe, locks: 0.}
proc setMouseMode*(mode: int64) {.gcsafe, locks: 0.}
proc setUseAccumulatedInput*(enable: bool) {.gcsafe, locks: 0.}
proc startJoyVibration*(device: int64; weakMagnitude: float64;
                       strongMagnitude: float64; duration: float64 = 0.0) {.gcsafe,
    locks: 0.}
proc stopJoyVibration*(device: int64) {.gcsafe, locks: 0.}
proc vibrateHandheld*(durationMs: int64 = 500'i64) {.gcsafe, locks: 0.}
proc warpMousePosition*(to: Vector2) {.gcsafe, locks: 0.}
var inputActionPressMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionPress(action: string; strength: float64 = 1.0) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputActionPressMethodBind):
    inputActionPressMethodBind = getMethod(cstring"Input", cstring"action_press")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(strength)
  var ptrCallRet: pointer
  inputActionPressMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var inputActionReleaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc actionRelease(action: string) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputActionReleaseMethodBind):
    inputActionReleaseMethodBind = getMethod(cstring"Input",
        cstring"action_release")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  inputActionReleaseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var inputAddJoyMappingMethodBind {.threadvar.}: ptr GodotMethodBind
proc addJoyMapping(mapping: string; updateExisting: bool = false) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputAddJoyMappingMethodBind):
    inputAddJoyMappingMethodBind = getMethod(cstring"Input",
        cstring"add_joy_mapping")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(mapping)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(updateExisting)
  var ptrCallRet: pointer
  inputAddJoyMappingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var inputGetAccelerometerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAccelerometer(): Vector3 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetAccelerometerMethodBind):
    inputGetAccelerometerMethodBind = getMethod(cstring"Input",
        cstring"get_accelerometer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetAccelerometerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputGetActionStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getActionStrength(action: string): float64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetActionStrengthMethodBind):
    inputGetActionStrengthMethodBind = getMethod(cstring"Input",
        cstring"get_action_strength")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetActionStrengthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var inputGetConnectedJoypadsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getConnectedJoypads(): Array =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetConnectedJoypadsMethodBind):
    inputGetConnectedJoypadsMethodBind = getMethod(cstring"Input",
        cstring"get_connected_joypads")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  inputGetConnectedJoypadsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var inputGetCurrentCursorShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentCursorShape(): int64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetCurrentCursorShapeMethodBind):
    inputGetCurrentCursorShapeMethodBind = getMethod(cstring"Input",
        cstring"get_current_cursor_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetCurrentCursorShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputGetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGravity(): Vector3 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetGravityMethodBind):
    inputGetGravityMethodBind = getMethod(cstring"Input", cstring"get_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetGravityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputGetGyroscopeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGyroscope(): Vector3 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetGyroscopeMethodBind):
    inputGetGyroscopeMethodBind = getMethod(cstring"Input", cstring"get_gyroscope")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetGyroscopeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputGetJoyAxisMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyAxis(device: int64; axis: int64): float64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyAxisMethodBind):
    inputGetJoyAxisMethodBind = getMethod(cstring"Input", cstring"get_joy_axis")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  argsToPassToGodot[][1] = unsafeAddr(axis)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetJoyAxisMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var inputGetJoyAxisIndexFromStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyAxisIndexFromString(axis: string): int64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyAxisIndexFromStringMethodBind):
    inputGetJoyAxisIndexFromStringMethodBind = getMethod(cstring"Input",
        cstring"get_joy_axis_index_from_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(axis)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetJoyAxisIndexFromStringMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputGetJoyAxisStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyAxisString(axisIndex: int64): string =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyAxisStringMethodBind):
    inputGetJoyAxisStringMethodBind = getMethod(cstring"Input",
        cstring"get_joy_axis_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(axisIndex)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  inputGetJoyAxisStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var inputGetJoyButtonIndexFromStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyButtonIndexFromString(button: string): int64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyButtonIndexFromStringMethodBind):
    inputGetJoyButtonIndexFromStringMethodBind = getMethod(cstring"Input",
        cstring"get_joy_button_index_from_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(button)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetJoyButtonIndexFromStringMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputGetJoyButtonStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyButtonString(buttonIndex: int64): string =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyButtonStringMethodBind):
    inputGetJoyButtonStringMethodBind = getMethod(cstring"Input",
        cstring"get_joy_button_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(buttonIndex)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  inputGetJoyButtonStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var inputGetJoyGuidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyGuid(device: int64): string =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyGuidMethodBind):
    inputGetJoyGuidMethodBind = getMethod(cstring"Input", cstring"get_joy_guid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  inputGetJoyGuidMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var inputGetJoyNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyName(device: int64): string =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyNameMethodBind):
    inputGetJoyNameMethodBind = getMethod(cstring"Input", cstring"get_joy_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  inputGetJoyNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var inputGetJoyVibrationDurationMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyVibrationDuration(device: int64): float64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyVibrationDurationMethodBind):
    inputGetJoyVibrationDurationMethodBind = getMethod(cstring"Input",
        cstring"get_joy_vibration_duration")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetJoyVibrationDurationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputGetJoyVibrationStrengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getJoyVibrationStrength(device: int64): Vector2 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetJoyVibrationStrengthMethodBind):
    inputGetJoyVibrationStrengthMethodBind = getMethod(cstring"Input",
        cstring"get_joy_vibration_strength")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetJoyVibrationStrengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputGetLastMouseSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLastMouseSpeed(): Vector2 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetLastMouseSpeedMethodBind):
    inputGetLastMouseSpeedMethodBind = getMethod(cstring"Input",
        cstring"get_last_mouse_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetLastMouseSpeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputGetMagnetometerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMagnetometer(): Vector3 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetMagnetometerMethodBind):
    inputGetMagnetometerMethodBind = getMethod(cstring"Input",
        cstring"get_magnetometer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetMagnetometerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputGetMouseButtonMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMouseButtonMask(): int64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetMouseButtonMaskMethodBind):
    inputGetMouseButtonMaskMethodBind = getMethod(cstring"Input",
        cstring"get_mouse_button_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetMouseButtonMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputGetMouseModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMouseMode(): int64 =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputGetMouseModeMethodBind):
    inputGetMouseModeMethodBind = getMethod(cstring"Input",
        cstring"get_mouse_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputGetMouseModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputIsActionJustPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActionJustPressed(action: string): bool =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputIsActionJustPressedMethodBind):
    inputIsActionJustPressedMethodBind = getMethod(cstring"Input",
        cstring"is_action_just_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputIsActionJustPressedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var inputIsActionJustReleasedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActionJustReleased(action: string): bool =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputIsActionJustReleasedMethodBind):
    inputIsActionJustReleasedMethodBind = getMethod(cstring"Input",
        cstring"is_action_just_released")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputIsActionJustReleasedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var inputIsActionPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isActionPressed(action: string): bool =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputIsActionPressedMethodBind):
    inputIsActionPressedMethodBind = getMethod(cstring"Input",
        cstring"is_action_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(action)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputIsActionPressedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var inputIsJoyButtonPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isJoyButtonPressed(device: int64; button: int64): bool =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputIsJoyButtonPressedMethodBind):
    inputIsJoyButtonPressedMethodBind = getMethod(cstring"Input",
        cstring"is_joy_button_pressed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  argsToPassToGodot[][1] = unsafeAddr(button)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputIsJoyButtonPressedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputIsJoyKnownMethodBind {.threadvar.}: ptr GodotMethodBind
proc isJoyKnown(device: int64): bool =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputIsJoyKnownMethodBind):
    inputIsJoyKnownMethodBind = getMethod(cstring"Input", cstring"is_joy_known")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputIsJoyKnownMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var inputIsKeyPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isKeyPressed(scancode: int64): bool =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputIsKeyPressedMethodBind):
    inputIsKeyPressedMethodBind = getMethod(cstring"Input",
        cstring"is_key_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(scancode)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputIsKeyPressedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var inputIsMouseButtonPressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isMouseButtonPressed(button: int64): bool =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputIsMouseButtonPressedMethodBind):
    inputIsMouseButtonPressedMethodBind = getMethod(cstring"Input",
        cstring"is_mouse_button_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(button)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputIsMouseButtonPressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputJoyConnectionChangedMethodBind {.threadvar.}: ptr GodotMethodBind
proc joyConnectionChanged(device: int64; connected: bool; name: string; guid: string) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputJoyConnectionChangedMethodBind):
    inputJoyConnectionChangedMethodBind = getMethod(cstring"Input",
        cstring"joy_connection_changed")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  argsToPassToGodot[][1] = unsafeAddr(connected)
  var argToPassToGodot2 = toGodotString(name)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var argToPassToGodot3 = toGodotString(guid)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  var ptrCallRet: pointer
  inputJoyConnectionChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot3)

var inputParseInputEventMethodBind {.threadvar.}: ptr GodotMethodBind
proc parseInputEvent(event: InputEvent) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputParseInputEventMethodBind):
    inputParseInputEventMethodBind = getMethod(cstring"Input",
        cstring"parse_input_event")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  inputParseInputEventMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputRemoveJoyMappingMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeJoyMapping(guid: string) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputRemoveJoyMappingMethodBind):
    inputRemoveJoyMappingMethodBind = getMethod(cstring"Input",
        cstring"remove_joy_mapping")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(guid)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  inputRemoveJoyMappingMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var inputSetCustomMouseCursorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCustomMouseCursor(image: Resource; shape: int64 = 0'i64;
                         hotspot: Vector2 = vec2(0.0, 0.0)) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputSetCustomMouseCursorMethodBind):
    inputSetCustomMouseCursorMethodBind = getMethod(cstring"Input",
        cstring"set_custom_mouse_cursor")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(shape)
  argsToPassToGodot[][2] = unsafeAddr(hotspot)
  var ptrCallRet: pointer
  inputSetCustomMouseCursorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputSetDefaultCursorShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDefaultCursorShape(shape: int64 = 0'i64) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputSetDefaultCursorShapeMethodBind):
    inputSetDefaultCursorShapeMethodBind = getMethod(cstring"Input",
        cstring"set_default_cursor_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shape)
  var ptrCallRet: pointer
  inputSetDefaultCursorShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputSetMouseModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMouseMode(mode: int64) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputSetMouseModeMethodBind):
    inputSetMouseModeMethodBind = getMethod(cstring"Input",
        cstring"set_mouse_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  var ptrCallRet: pointer
  inputSetMouseModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var inputSetUseAccumulatedInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc setUseAccumulatedInput(enable: bool) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputSetUseAccumulatedInputMethodBind):
    inputSetUseAccumulatedInputMethodBind = getMethod(cstring"Input",
        cstring"set_use_accumulated_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enable)
  var ptrCallRet: pointer
  inputSetUseAccumulatedInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputStartJoyVibrationMethodBind {.threadvar.}: ptr GodotMethodBind
proc startJoyVibration(device: int64; weakMagnitude: float64;
                      strongMagnitude: float64; duration: float64 = 0.0) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputStartJoyVibrationMethodBind):
    inputStartJoyVibrationMethodBind = getMethod(cstring"Input",
        cstring"start_joy_vibration")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  argsToPassToGodot[][1] = unsafeAddr(weakMagnitude)
  argsToPassToGodot[][2] = unsafeAddr(strongMagnitude)
  argsToPassToGodot[][3] = unsafeAddr(duration)
  var ptrCallRet: pointer
  inputStartJoyVibrationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputStopJoyVibrationMethodBind {.threadvar.}: ptr GodotMethodBind
proc stopJoyVibration(device: int64) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputStopJoyVibrationMethodBind):
    inputStopJoyVibrationMethodBind = getMethod(cstring"Input",
        cstring"stop_joy_vibration")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(device)
  var ptrCallRet: pointer
  inputStopJoyVibrationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputVibrateHandheldMethodBind {.threadvar.}: ptr GodotMethodBind
proc vibrateHandheld(durationMs: int64 = 500'i64) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputVibrateHandheldMethodBind):
    inputVibrateHandheldMethodBind = getMethod(cstring"Input",
        cstring"vibrate_handheld")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(durationMs)
  var ptrCallRet: pointer
  inputVibrateHandheldMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputWarpMousePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc warpMousePosition(to: Vector2) =
  if isNil(singletonInput):
    singletonInput = getSingleton[Input]()
  let self = singletonInput
  if isNil(inputWarpMousePositionMethodBind):
    inputWarpMousePositionMethodBind = getMethod(cstring"Input",
        cstring"warp_mouse_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(to)
  var ptrCallRet: pointer
  inputWarpMousePositionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
