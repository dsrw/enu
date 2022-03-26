import std / [tables, monotimes]
import godotapi / [spatial, ray_cast]
import pkg/model_citizen
import pkg/core/godotcoretypes except Color
import pkg / core / [vector3, basis, aabb, godotbase]
import core, models/colors, libs / [transforms, eval]

export Vector3, Transform, vector3, transforms, basis, AABB, aabb
export godotbase except print
export Interpreter

type
  TargetFlags* = enum
    Reticle, TargetBlock, MouseCaptured, CommandMode, Editing, Playing

  ModelFlags* = enum
    Hover, TargetMoved, Highlight, Global

  InputFlags* = enum
    Primary, Secondary

  Tools* = enum
    Code, Block, Place

  ConsoleModel* = ref object
    log*: ZenSeq[string]
    visible*: ZenValue[bool]
    show_errors*: ZenValue[bool]

  GameState* = ref object
    target_flags*: ZenSet[TargetFlags]
    input_flags*: ZenSet[InputFlags]
    requested_target_flags*: set[TargetFlags]
    config*: Config
    open_unit*: ZenValue[Unit]
    action_index*: int
    action_count*: int
    tool*: ZenValue[Tools]
    gravity*: float
    nodes*: tuple[
      game: Node,
      data: Node,
      player: Node
    ]
    player*: Player
    logger*: proc(level, msg: string)
    units*: ZenSeq[Unit]
    ground*: Ground
    local_draw_plane*: Vector3
    local_draw_unit_id*: string
    global_draw_plane*: Vector3
    console*: ConsoleModel
    paused*: bool

  Model* = ref object of RootObj
    target_point*: Vector3
    target_normal*: Vector3
    flags*: ZenSet[ModelFlags]
    node*: Spatial

  Ground* = ref object of Model

  Shared* = ref object
    materials*: seq[ShaderMaterial]
    edits*: Table[string, Table[Vector3, VoxelInfo]]

  Unit* = ref object of Model
    id*: string
    parent*: Unit
    units*: ZenSeq[Unit]
    start_transform*: Transform
    scale*: ZenValue[float]
    energy*: ZenValue[float]
    speed*: float
    code*: ZenValue[string]
    script_ctx*: ScriptCtx
    disabled*: bool
    velocity*: ZenValue[Vector3]
    transform*: ZenValue[Transform]
    clone_of*: Unit
    collisions*: seq[tuple[model: Model, normal: Vector3]]
    frame_delta*: ZenValue[float]
    shared*: Shared
    start_color*: Color
    color*: Color
    sight_ray*: RayCast

  Player* = ref object of Unit
    colliders*: HashSet[Model]
    rotation*: ZenValue[float]

  Bot* = ref object of Unit
    animation*: ZenValue[string]

  VoxelKind* = enum
    Hole, Manual, Computed

  VoxelInfo* = tuple
    kind: VoxelKind
    color: Color

  Chunk* = ZenTable[Vector3, VoxelInfo]

  Build* = ref object of Unit
    chunks*: ZenTable[Vector3, Chunk]
    draw_transform*: Transform
    voxels_per_frame*: float
    voxels_remaining_this_frame*: float
    drawing*: bool
    save_points*: Table[string, tuple[position: Transform, color: Color, drawing: bool]]
    bounds*: ZenValue[AABB]
    bot_collisions*: bool

  Edit = ref object of RootObj
    chunk*: Chunk

  Config* = ref object
    font_size*: int
    dock_icon_size*: float
    world*: string
    show_stats*: bool
    mega_pixels*: float
    world_dir*: string
    data_dir*: string
    script_dir*: string
    scene*: string
    lib_dir*: string
    start_full_screen*: bool
    semicolon_as_colon*: bool

  ScriptCtx* = ref object
    script*: string
    timer*: MonoTime
    timeout_at*: MonoTime
    load_vars*: proc()
    ctx: PCtx
    pc: int
    tos: PStackFrame
    line_changed*: proc(current, previous: TLineInfo)
    current_line*: TLineInfo
    previous_line: TLineInfo
    pause_requested: bool
    module_name*: string
    file_name: string
    exit_code*: Option[int]
    errors*: seq[tuple[msg: string, info: TLineInfo, location: string]]
    callback*: Callback
    saved_callback*: Callback
    action_running*: bool
    running*: bool
    interpreter*: Interpreter
    code*: string

  VMError* = object of CatchableError

  VMQuit* = object of VMError
    info*: TLineInfo
    location*: string

  VMPause* = object of CatchableError

  Callback* = proc(delta: float): bool

# TODO: this shouldn't be here
proc local_to*(self: Vector3, unit: Unit): Vector3 =
  result = self
  var unit = unit
  while unit:
    result -= unit.node.transform.origin
    unit = unit.parent

proc global_from*(self: Vector3, unit: Unit): Vector3 =
  result = -self.local_to(unit)

proc init*(_: type Transform, origin = vec3()): Transform =
  result = init_transform()
  result.origin = origin

proc `+=`*(self: ZenValue[string], str: string) =
  self.value = self.value & str

proc origin*(self: ZenValue[Transform]): Vector3 =
  self.value.origin

proc `origin=`*(self: ZenValue[Transform], value: Vector3) =
  var transform = self.value
  transform.origin = value
  self.value = transform

proc basis*(self: ZenValue[Transform]): Basis =
  self.value.basis

proc `basis=`*(self: ZenValue[Transform], value: Basis) =
  var transform = self.value
  transform.basis = value
  self.value = transform

proc init*(_: type Basis): Basis = init_basis()
