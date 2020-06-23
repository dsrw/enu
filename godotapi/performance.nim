
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  AUDIO_OUTPUT_LATENCY* = 30'i64
  MEMORY_DYNAMIC* = 4'i64
  MEMORY_DYNAMIC_MAX* = 6'i64
  MEMORY_MESSAGE_BUFFER_MAX* = 7'i64
  MEMORY_STATIC* = 3'i64
  MEMORY_STATIC_MAX* = 5'i64
  MONITOR_MAX* = 31'i64
  OBJECT_COUNT* = 8'i64
  OBJECT_NODE_COUNT* = 10'i64
  OBJECT_ORPHAN_NODE_COUNT* = 11'i64
  OBJECT_RESOURCE_COUNT* = 9'i64
  PHYSICS_2D_ACTIVE_OBJECTS* = 24'i64
  PHYSICS_2D_COLLISION_PAIRS* = 25'i64
  PHYSICS_2D_ISLAND_COUNT* = 26'i64
  PHYSICS_3D_ACTIVE_OBJECTS* = 27'i64
  PHYSICS_3D_COLLISION_PAIRS* = 28'i64
  PHYSICS_3D_ISLAND_COUNT* = 29'i64
  RENDER_2D_DRAW_CALLS_IN_FRAME* = 19'i64
  RENDER_2D_ITEMS_IN_FRAME* = 18'i64
  RENDER_DRAW_CALLS_IN_FRAME* = 17'i64
  RENDER_MATERIAL_CHANGES_IN_FRAME* = 14'i64
  RENDER_OBJECTS_IN_FRAME* = 12'i64
  RENDER_SHADER_CHANGES_IN_FRAME* = 15'i64
  RENDER_SURFACE_CHANGES_IN_FRAME* = 16'i64
  RENDER_TEXTURE_MEM_USED* = 21'i64
  RENDER_USAGE_VIDEO_MEM_TOTAL* = 23'i64
  RENDER_VERTEX_MEM_USED* = 22'i64
  RENDER_VERTICES_IN_FRAME* = 13'i64
  RENDER_VIDEO_MEM_USED* = 20'i64
  TIME_FPS* = 0'i64
  TIME_PHYSICS_PROCESS* = 2'i64
  TIME_PROCESS* = 1'i64
type
  Performance = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(Performance, "Performance", true)
var singletonPerformance {.threadvar.}: Performance
proc getMonitor*(monitor: int64): float64 {.gcsafe, locks: 0.}
var performanceGetMonitorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMonitor(monitor: int64): float64 =
  if isNil(singletonPerformance):
    singletonPerformance = getSingleton[Performance]()
  let self = singletonPerformance
  if isNil(performanceGetMonitorMethodBind):
    performanceGetMonitorMethodBind = getMethod(cstring"Performance",
        cstring"get_monitor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(monitor)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  performanceGetMonitorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
