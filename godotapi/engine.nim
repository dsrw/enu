
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  Engine = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(Engine, "_Engine", true)
var singletonEngine {.threadvar.}: Engine
proc getAuthorInfo*(): Dictionary {.gcsafe, locks: 0.}
proc getCopyrightInfo*(): Array {.gcsafe, locks: 0.}
proc getDonorInfo*(): Dictionary {.gcsafe, locks: 0.}
proc getFramesDrawn*(): int64 {.gcsafe, locks: 0.}
proc getFramesPerSecond*(): float64 {.gcsafe, locks: 0.}
proc getIdleFrames*(): int64 {.gcsafe, locks: 0.}
proc getIterationsPerSecond*(): int64 {.gcsafe, locks: 0.}
proc getLicenseInfo*(): Dictionary {.gcsafe, locks: 0.}
proc getLicenseText*(): string {.gcsafe, locks: 0.}
proc getMainLoop*(): MainLoop {.gcsafe, locks: 0.}
proc getPhysicsFrames*(): int64 {.gcsafe, locks: 0.}
proc getPhysicsInterpolationFraction*(): float64 {.gcsafe, locks: 0.}
proc getPhysicsJitterFix*(): float64 {.gcsafe, locks: 0.}
proc getSingleton*(name: string): Object {.gcsafe, locks: 0.}
proc getTargetFps*(): int64 {.gcsafe, locks: 0.}
proc getTimeScale*(): float64 {.gcsafe, locks: 0.}
proc getVersionInfo*(): Dictionary {.gcsafe, locks: 0.}
proc hasSingleton*(name: string): bool {.gcsafe, locks: 0.}
proc isEditorHint*(): bool {.gcsafe, locks: 0.}
proc isInPhysicsFrame*(): bool {.gcsafe, locks: 0.}
proc setEditorHint*(enabled: bool) {.gcsafe, locks: 0.}
proc setIterationsPerSecond*(iterationsPerSecond: int64) {.gcsafe, locks: 0.}
proc setPhysicsJitterFix*(physicsJitterFix: float64) {.gcsafe, locks: 0.}
proc setTargetFps*(targetFps: int64) {.gcsafe, locks: 0.}
proc setTimeScale*(timeScale: float64) {.gcsafe, locks: 0.}
var engineGetAuthorInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAuthorInfo(): Dictionary =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetAuthorInfoMethodBind):
    engineGetAuthorInfoMethodBind = getMethod(cstring"_Engine",
        cstring"get_author_info")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  engineGetAuthorInfoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var engineGetCopyrightInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCopyrightInfo(): Array =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetCopyrightInfoMethodBind):
    engineGetCopyrightInfoMethodBind = getMethod(cstring"_Engine",
        cstring"get_copyright_info")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  engineGetCopyrightInfoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var engineGetDonorInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDonorInfo(): Dictionary =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetDonorInfoMethodBind):
    engineGetDonorInfoMethodBind = getMethod(cstring"_Engine",
        cstring"get_donor_info")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  engineGetDonorInfoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var engineGetFramesDrawnMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFramesDrawn(): int64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetFramesDrawnMethodBind):
    engineGetFramesDrawnMethodBind = getMethod(cstring"_Engine",
        cstring"get_frames_drawn")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetFramesDrawnMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetFramesPerSecondMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFramesPerSecond(): float64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetFramesPerSecondMethodBind):
    engineGetFramesPerSecondMethodBind = getMethod(cstring"_Engine",
        cstring"get_frames_per_second")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetFramesPerSecondMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetIdleFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIdleFrames(): int64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetIdleFramesMethodBind):
    engineGetIdleFramesMethodBind = getMethod(cstring"_Engine",
        cstring"get_idle_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetIdleFramesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetIterationsPerSecondMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIterationsPerSecond(): int64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetIterationsPerSecondMethodBind):
    engineGetIterationsPerSecondMethodBind = getMethod(cstring"_Engine",
        cstring"get_iterations_per_second")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetIterationsPerSecondMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetLicenseInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLicenseInfo(): Dictionary =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetLicenseInfoMethodBind):
    engineGetLicenseInfoMethodBind = getMethod(cstring"_Engine",
        cstring"get_license_info")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  engineGetLicenseInfoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var engineGetLicenseTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLicenseText(): string =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetLicenseTextMethodBind):
    engineGetLicenseTextMethodBind = getMethod(cstring"_Engine",
        cstring"get_license_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  engineGetLicenseTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var engineGetMainLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMainLoop(): MainLoop =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetMainLoopMethodBind):
    engineGetMainLoopMethodBind = getMethod(cstring"_Engine",
        cstring"get_main_loop")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  engineGetMainLoopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var engineGetPhysicsFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPhysicsFrames(): int64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetPhysicsFramesMethodBind):
    engineGetPhysicsFramesMethodBind = getMethod(cstring"_Engine",
        cstring"get_physics_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetPhysicsFramesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetPhysicsInterpolationFractionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPhysicsInterpolationFraction(): float64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetPhysicsInterpolationFractionMethodBind):
    engineGetPhysicsInterpolationFractionMethodBind = getMethod(cstring"_Engine",
        cstring"get_physics_interpolation_fraction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetPhysicsInterpolationFractionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var engineGetPhysicsJitterFixMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPhysicsJitterFix(): float64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetPhysicsJitterFixMethodBind):
    engineGetPhysicsJitterFixMethodBind = getMethod(cstring"_Engine",
        cstring"get_physics_jitter_fix")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetPhysicsJitterFixMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSingleton(name: string): Object =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetSingletonMethodBind):
    engineGetSingletonMethodBind = getMethod(cstring"_Engine",
        cstring"get_singleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  engineGetSingletonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var engineGetTargetFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTargetFps(): int64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetTargetFpsMethodBind):
    engineGetTargetFpsMethodBind = getMethod(cstring"_Engine",
        cstring"get_target_fps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetTargetFpsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetTimeScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTimeScale(): float64 =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetTimeScaleMethodBind):
    engineGetTimeScaleMethodBind = getMethod(cstring"_Engine",
        cstring"get_time_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineGetTimeScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineGetVersionInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVersionInfo(): Dictionary =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineGetVersionInfoMethodBind):
    engineGetVersionInfoMethodBind = getMethod(cstring"_Engine",
        cstring"get_version_info")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  engineGetVersionInfoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var engineHasSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSingleton(name: string): bool =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineHasSingletonMethodBind):
    engineHasSingletonMethodBind = getMethod(cstring"_Engine",
        cstring"has_singleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineHasSingletonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var engineIsEditorHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc isEditorHint(): bool =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineIsEditorHintMethodBind):
    engineIsEditorHintMethodBind = getMethod(cstring"_Engine",
        cstring"is_editor_hint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineIsEditorHintMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineIsInPhysicsFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc isInPhysicsFrame(): bool =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineIsInPhysicsFrameMethodBind):
    engineIsInPhysicsFrameMethodBind = getMethod(cstring"_Engine",
        cstring"is_in_physics_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  engineIsInPhysicsFrameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var engineSetEditorHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc setEditorHint(enabled: bool) =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineSetEditorHintMethodBind):
    engineSetEditorHintMethodBind = getMethod(cstring"_Engine",
        cstring"set_editor_hint")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  engineSetEditorHintMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var engineSetIterationsPerSecondMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIterationsPerSecond(iterationsPerSecond: int64) =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineSetIterationsPerSecondMethodBind):
    engineSetIterationsPerSecondMethodBind = getMethod(cstring"_Engine",
        cstring"set_iterations_per_second")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(iterationsPerSecond)
  var ptrCallRet: pointer
  engineSetIterationsPerSecondMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var engineSetPhysicsJitterFixMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPhysicsJitterFix(physicsJitterFix: float64) =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineSetPhysicsJitterFixMethodBind):
    engineSetPhysicsJitterFixMethodBind = getMethod(cstring"_Engine",
        cstring"set_physics_jitter_fix")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(physicsJitterFix)
  var ptrCallRet: pointer
  engineSetPhysicsJitterFixMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var engineSetTargetFpsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTargetFps(targetFps: int64) =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineSetTargetFpsMethodBind):
    engineSetTargetFpsMethodBind = getMethod(cstring"_Engine",
        cstring"set_target_fps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(targetFps)
  var ptrCallRet: pointer
  engineSetTargetFpsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var engineSetTimeScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTimeScale(timeScale: float64) =
  if isNil(singletonEngine):
    singletonEngine = getSingleton[Engine]()
  let self = singletonEngine
  if isNil(engineSetTimeScaleMethodBind):
    engineSetTimeScaleMethodBind = getMethod(cstring"_Engine",
        cstring"set_time_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(timeScale)
  var ptrCallRet: pointer
  engineSetTimeScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
