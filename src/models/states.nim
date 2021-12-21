import std / [importutils, tables]
import model_citizen
import types, colors

let EventFlags = {Retarget}

proc init*(_: type GameState, T: type, action_count = 0, action_index = 0): GameState[T] =
  GameState[T](
    target_flags: Zen.init(set[TargetFlag]),
    units: Zen.init(seq[Unit[T]]),
    action_count: action_count,
    action_index: action_index
  )

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

  state.target_flags.value = flags
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

proc selected_color*(self: GameState): Color =
  action_colors[Colors(self.action_index)]

when is_main_module:
  import std / [unittest, sequtils]
  type Node = ref object
  var state = GameState.init(Node)

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

  state.target_flags.track proc(changes, _: auto) =
    added = {}
    removed = {}
    for change in changes:
      if Added in change.changes: added.incl change.obj
      if Removed in change.changes: removed.incl change.obj

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
