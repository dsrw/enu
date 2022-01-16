import std / [tables, monotimes]
import godotapi/node
import pkg/model_citizen
import pkg/core/godotcoretypes except Color
import pkg / core / [vector3, transforms, basis, aabb]
import models/colors
import engine/engine
import core

export Vector3, Transform, vector3, transforms, basis, AABB, aabb

type
  TargetFlags* = enum
    Reticle, TargetBlock, MouseCaptured, CommandMode, Editing

  ModelFlags* = enum
    Hover, TargetMoved

  InputFlags* = enum
    Primary, Secondary

  Tools* = enum
    Code, Block, Place

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
    logger*: proc(level, msg: string)
    units*: ZenSeq[Unit]
    ground*: Ground
    draw_plane*: Vector3
    paused*: bool

  Model* = ref object of RootObj
    target_point*: Vector3
    target_normal*: Vector3
    flags*: ZenSet[ModelFlags]
    to_local*: proc(global: Vector3): Vector3
    to_global*: proc(local: Vector3): Vector3
    node*: Node

  Ground* = ref object of Model

  Unit* = ref object of Model
    id*: string
    parent*: Unit
    units*: ZenSeq[Unit]
    local*: bool
    start_transform*: Transform
    transform*: ZenValue[Transform]
    scale*: float
    speed*: float
    code*: ZenValue[string]
    script_ctx*: ScriptCtx
    disabled*: bool
    velocity*: ZenValue[Vector3]
    energy*: ZenValue[float]

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
    start_color*: Color
    color*: Color
    voxels_per_frame*: float
    voxels_remaining_this_frame*: float
    drawing*: bool
    moving*: bool
    root*: bool
    save_points*: Table[string, tuple[position: Transform, index: int, drawing: bool]]
    bounds*: ZenValue[AABB]

  Callback* = proc(delta: float): bool
  ScriptCtx* = ref object
    script*: string
    engine*: Engine
    timer*: MonoTime
    load_vars*: proc()
    reload_script*: proc()
    is_clone*: bool
    speed*: float

  Config* = ref object
    font_size*: int
    dock_icon_size*: float
    world*: string
    show_stats*: bool
    mega_pixels*: float
    world_dir*: string
    script_dir*: string
    scene*: string
    lib_dir*: string

proc local_to*(self: Vector3, unit: Unit): Vector3 =
  result = self
  var unit = unit
  while unit:
    result -= unit.transform.value.origin
    unit = unit.parent

proc global_from*(self: Vector3, unit: Unit): Vector3 =
  result = -self.local_to(unit)

proc init*(_: type Transform, origin = vec3()): Transform =
  result = init_transform()
  result.origin = origin

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
