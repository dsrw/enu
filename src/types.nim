import std / [tables, monotimes, sets, options]
import godotapi / [spatial, ray_cast]
import pkg/core/godotcoretypes except Color
import pkg / core / [vector3, basis, aabb, godotbase]
import pkg / compiler / passes {.all.}
import pkg / compiler / ast
import pkg / model_citizen
import models/colors, libs / [eval]

export Vector3, Transform, vector3, basis, AABB, aabb
export godotbase except print
export Interpreter

type

  StateFlags* = enum
    CommandMode, EditorVisible, ConsoleVisible,
    BlockTargetVisible, ReticleVisible, DocsVisible, MouseCaptured,
    PrimaryDown, SecondaryDown, EditorFocused, ConsoleFocused, DocsFocused,
    Playing, Flying, God

  Tools* = enum
    CodeMode, BlueBlock, RedBlock, GreenBlock, BlackBlock, WhiteBlock,
    BrownBlock, PlaceBot

  TaskStates* = enum
    Running, Done, NextTask

  ModelFlags* = enum
    Hover, TargetMoved, Highlight, Global, Visible, Lock

  ConsoleModel* = ref object
    log*: ZenSeq[string]

  GameState* = ref object
    flags*: ZenSet[StateFlags]
    wants*: OrderedSet[StateFlags]
    config*: Config
    open_unit*: ZenValue[Unit]
    dirty_units*: HashSet[Unit]
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
    draw_unit_id*: string
    console*: ConsoleModel
    paused*: bool
    frame_count*: int
    reloading*: bool
    skip_block_paint*: bool
    open_sign*: ZenValue[Sign]
    timeout_frame_at*: MonoTime
    queued_action*: string

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
    glow*: ZenValue[float]
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
    color*: ZenValue[Color]
    sight_ray*: RayCast
    frame_created*: int
    state_zids*: seq[ZID]

  Player* = ref object of Unit
    colliders*: HashSet[Model]
    rotation*: ZenValue[float]

  Bot* = ref object of Unit
    animation*: ZenValue[string]

  Sign* = ref object of Unit
    markdown*, title*: ZenValue[string]
    width*, height*: float
    size*: int
    billboard*, zoomable*: bool
    owner*: Unit

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

  Config* = ref object
    font_size*: ZenValue[int]
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
    world_prefix*: string

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
    file_name*: string
    exit_code*: Option[int]
    errors*: seq[tuple[msg: string, info: TLineInfo, location: string]]
    callback*: Callback
    saved_callback*: Callback
    action_running*: bool
    running*: bool
    interpreter*: Interpreter
    code*: string
    dependents*: HashSet[string]
    pass_context*: TPassContextArray

  VMError* = object of CatchableError
  QuitKind* = enum
    Unknown, Timeout

  VMQuit* = object of VMError
    info*: TLineInfo
    kind*: QuitKind
    location*: string

  VMPause* = object of CatchableError

  Callback* = proc(delta: float): TaskStates

  ScriptController* = ref object
    retry_failures*: bool
    interpreter: Interpreter
    module_names: HashSet[string]
    active_unit: Unit
    unit_map: Table[PNode, Unit]
    node_map: Table[Unit, PNode]
    failed: seq[tuple[unit: Unit, e: ref VMQuit]]

  NodeController* = ref object