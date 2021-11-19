import std / [tables, monotimes, sets]
import model_citizen, chroma
from core/godotcoretypes as GD import nil
import engine/engine

type
  V3*[T: int | float] = tuple[x, y, z: T]
  V2*[T: int | float] = tuple[x, y: T]

  TargetFlag* = enum
    Reticle, TargetBlock, MouseCaptured, CommandMode, Editing, Retarget

  GameState* = object
    target_flags*: TrackedSet[TargetFlag]
    requested_target_flags: set[TargetFlag]
    open_file*: string
    config*: Config
    open_engine*: Engine
    nodes*: tuple[
      game: RootRef,
      player: RootRef
    ]
    units*: seq[Unit]

  Unit* = ref object of RootObj
    parent*: Unit
    units*: seq[Unit]
    local*: bool
    starting_position*: V3[float]
    position*: V3[float]
    scale*: float
    speed*: float
    script_ctx*: ScriptCtx
    disabled*: bool

  Robot* = ref object of Unit

  VoxelKind* = enum
    Hole, Manual, Computed

  Voxel* = object
    position*: V3[int]
    color*: Color
    kind*: VoxelKind

  Build* = ref object of Unit
    voxels*: Table[V2[int], HashSet[Voxel]]
    draw_position*: V3[float]
    starting_color*: Color
    voxels_per_frame*: float
    drawing*: bool
    moving*: bool
    save_points*: Table[string, tuple[position: GD.Transform, index: int, drawing: bool]]

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
