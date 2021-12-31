import std / [tables, monotimes]
import pkg/model_citizen
import pkg/core/godotcoretypes except Color
import pkg / core / [vector3, transforms, basis]
import models/colors

export Vector3, Transform, vector3, transforms, basis

import engine/engine

type
  TargetFlags* = enum
    Reticle, TargetBlock, MouseCaptured, CommandMode, Editing, Retarget

  ModelFlags* = enum
    Highlight, Hover, TargetMoved

  InputFlags* = enum
    Primary, Secondary

  Tools* = enum
    Code, Block, Place

  GameState*[T] = ref object
    target_flags*: ZenSet[TargetFlags]
    input_flags*: ZenSet[InputFlags]
    requested_target_flags*: set[TargetFlags]
    open_file*: string
    config*: Config
    open_engine*: Engine
    action_index*: int
    action_count*: int
    tool*: Tools
    nodes*: tuple[
      game: T,
      data: T,
      player: T
    ]
    units*: ZenSeq[Unit[T]]
    ground*: Ground[T]
    draw_plane*: Vector3

  Model*[T] = ref object of RootObj
    target_point*: Vector3
    target_normal*: Vector3
    flags*: ZenSet[ModelFlags]
    to_local*: proc(global: Vector3): Vector3
    to_global*: proc(local: Vector3): Vector3
    node*: T

  Ground*[T] = ref object of Model[T]

  Unit*[T] = ref object of Model[T]
    parent*: Unit[T]
    units*: ZenSeq[Unit[T]]
    local*: bool
    start_transform*: Transform
    transform*: Transform
    scale*: float
    speed*: float
    script_ctx*: ScriptCtx
    disabled*: bool

  Bot*[T] = ref object of Unit[T]

  VoxelKind* = enum
    Hole, Manual, Computed

  VoxelInfo* = tuple
    kind: VoxelKind
    color: Color

  VoxelBlock* = ZenTable[Vector3, VoxelInfo]

  Build*[T] = ref object of Unit[T]
    voxels*: ZenTable[Vector3, VoxelBlock]
    draw_position*: Vector3
    start_color*: Color
    color*: Color
    voxels_per_frame*: float
    drawing*: bool
    moving*: bool
    root*: bool
    save_points*: Table[string, tuple[position: Transform, index: int, drawing: bool]]

  Callback* = proc(delta: float): bool
  ScriptCtx* = ref object
    script*: string
    engine*: Engine
    timer*: MonoTime
    prefix*: string
    paused*: bool
    load_vars*: proc()
    reload_script*: proc()
    is_clone*: bool
    speed*: float

  Config* = object
    font_size*: int
    dock_icon_size*: float
    world*: string
    show_stats*: bool
    mega_pixels*: float
    world_dir*: string
    script_dir*: string
    scene*: string
    lib_dir*: string

proc local_to*[T](self: Vector3, unit: Unit[T]): Vector3 =
  result = self
  var unit = unit
  while unit:
    result -= unit.transform.origin
    unit = unit.parent

proc global_from*[T](self: Vector3, unit: Unit[T]): Vector3 =
  result = -self.local_to(unit)

proc init*(_: type Transform, origin = vec3()): Transform =
  result = init_transform()
  result.origin = origin

proc init*(_: type Basis): Basis = init_basis()
