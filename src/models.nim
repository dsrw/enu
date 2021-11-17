import std / [tables, monotimes]
import model_citizen, chroma
import core/godotcoretypes except Color
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

  BlockKind = enum
    Hole, Manual, Computed

  Block* = object
    position: V3[int]
    color: Color
    kind: BlockKind

  Robot* = ref object of Unit
  Build* = ref object of Unit
    blocks*: Table[V2, seq[Block]]
    draw_position*: V3[float]
    starting_color*: Color
    blocks_per_frame*: float
    blocks_remaining_this_frame*: float
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
    id*: int
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

let EventFlags = {Retarget}

proc set_flag(flags: var set[TargetFlag], flag: TargetFlag, add: bool) =
  if add:
    flags.incl(flag)
  else:
    flags.excl(flag)

proc apply_target_flags(state: var GameState) =
  let requested = state.requested_target_flags

  var flags: set[TargetFlag]

  for flag in {CommandMode, TargetBlock, Editing, MouseCaptured, Retarget}:
    if flag in requested: flags.incl(flag)

  if Editing in requested:
    flags.excl(MouseCaptured)
  if CommandMode in requested:
    flags.incl(MouseCaptured)
  if Reticle in requested and MouseCaptured in flags:
    flags.incl(Reticle)

  state.target_flags.set = flags
  state.requested_target_flags = requested - EventFlags

proc `mouse_captured=`*(state: var GameState, captured: bool) =
  state.requested_target_flags.set_flag(MouseCaptured, captured)
  state.apply_target_flags()

proc `command_mode=`*(state: var GameState, command_mode: bool) =
  state.requested_target_flags.set_flag(CommandMode, command_mode)
  state.apply_target_flags()

proc `target_block=`*(state: var GameState, target_block: bool) =
  if target_block:
    state.requested_target_flags.incl(TargetBlock)
    state.requested_target_flags.excl(Reticle)
  else:
    state.requested_target_flags.excl(TargetBlock)
  state.apply_target_flags()

proc `reticle=`*(state: var GameState, reticle: bool) =
  if reticle:
    state.requested_target_flags.incl(Reticle)
    state.requested_target_flags.excl(TargetBlock)
  else:
    state.requested_target_flags.excl(Reticle)
  state.apply_target_flags()

proc `editing=`*(state: var GameState, editing: bool) =
  state.requested_target_flags.set_flag(Editing, editing)
  state.apply_target_flags()

proc mouse_captured*(state: GameState): bool = MouseCaptured in state.target_flags
proc command_mode*(state: GameState): bool = CommandMode in state.target_flags
proc target_block*(state: GameState): bool = TargetBlock in state.target_flags
proc reticle*(state: GameState): bool = Reticle in state.target_flags
proc editing*(state: GameState): bool = Editing in state.target_flags
proc retarget*(state: var GameState) =
  state.requested_target_flags.incl(Retarget)
  state.apply_target_flags()

when is_main_module:
  import std/unittest

  var state = GameState()

  state.reticle = true
  check:
    not state.reticle
    not state.target_block
    not state.command_mode
    not state.mouse_captured

  state.mouse_captured = true
  check:
    state.reticle
    state.mouse_captured
    not state.target_block

  state.target_block = true
  check:
    state.mouse_captured
    state.target_block
    not state.reticle

  state.mouse_captured = false
  state.reticle = true
  check:
    not state.reticle
    not state.mouse_captured
    not state.target_block
    not state.command_mode

  var added: set[TargetFlag]
  var removed: set[TargetFlag]

  state.target_flags.track proc(added_flags, removed_flags: set[TargetFlag]) =
    added = added_flags
    removed = removed_flags

  state.command_mode = true
  check:
    added == {CommandMode, MouseCaptured, Reticle}
    removed == {}
    state.command_mode
    state.mouse_captured
    state.reticle
    not state.target_block

  state.command_mode = false
  check:
    added == {}
    removed == {CommandMode, MouseCaptured, Reticle}

  state.mouse_captured = true
  check state.mouse_captured

  state.editing = true
  check not state.mouse_captured

  state.command_mode = true
  check state.mouse_captured

  state.mouse_captured = false
  check state.mouse_captured

  state.editing = false
  check state.mouse_captured

  state.command_mode = false
  check not state.mouse_captured
