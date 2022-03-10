import std / [tables, strutils]
import pkg / model_citizen
import models / [types, colors]

proc set_flag(flags: var set[TargetFlags], flag: TargetFlags, add: bool) =
  if add:
    flags.incl(flag)
  else:
    flags.excl(flag)

proc apply_target_flags(state: GameState) =
  let requested = state.requested_target_flags

  var flags: set[TargetFlags]

  for flag in {CommandMode, TargetBlock, Editing, MouseCaptured}:
    if flag in requested: flags.incl(flag)

  if Editing in requested:
    flags.excl(MouseCaptured)
  if CommandMode in requested:
    flags.incl(MouseCaptured)
  if Reticle in requested and MouseCaptured in flags:
    flags.incl(Reticle)

  state.target_flags.value = flags

proc `mouse_captured=`*(state: GameState, captured: bool) =
  state.requested_target_flags.set_flag(MouseCaptured, captured)
  state.apply_target_flags()

proc `command_mode=`*(state: GameState, command_mode: bool) =
  state.requested_target_flags.set_flag(CommandMode, command_mode)
  state.apply_target_flags()

proc `target_block=`*(state: GameState, target_block: bool) =
  if target_block:
    state.requested_target_flags.incl(TargetBlock)
    state.requested_target_flags.excl(Reticle)
  else:
    state.requested_target_flags.excl(TargetBlock)
  state.apply_target_flags()

proc `reticle=`*(state: GameState, reticle: bool) =
  if reticle:
    state.requested_target_flags.incl(Reticle)
    state.requested_target_flags.excl(TargetBlock)
  else:
    state.requested_target_flags.excl(Reticle)
  state.apply_target_flags()

proc mouse_captured*(state: GameState): bool = MouseCaptured in state.target_flags
proc command_mode*(state: GameState): bool = CommandMode in state.target_flags
proc target_block*(state: GameState): bool = TargetBlock in state.target_flags
proc reticle*(state: GameState): bool = Reticle in state.target_flags
proc editing*(state: GameState): bool = Editing in state.target_flags

proc selected_color*(self: GameState): Color =
  action_colors[Colors(self.action_index)]

proc debug*(self: GameState, args: varargs[string, `$`]) =
  self.logger("debug", args.join)

proc info*(self: GameState, args: varargs[string, `$`]) =
  self.logger("info", args.join)

proc err*(self: GameState, args: varargs[string, `$`]) =
  self.logger "err", args.join

proc init*(_: type GameState, action_count = 0, action_index = 0): GameState =
  let self = GameState(
    target_flags: Zen.init(set[TargetFlags]),
    input_flags: Zen.init(set[InputFlags]),
    units: Zen.init(seq[Unit]),
    action_count: action_count,
    action_index: action_index,
    open_unit: ZenValue[Unit].init,
    config: Config(),
    tool: %Block,
    gravity: -80.0,
    console: ConsoleModel(
      log: Zen.init(seq[string]),
      visible: ZenValue[bool].init(false),
      show_errors: ZenValue[bool].init(false)
    )
  )

  self.open_unit.changes:
    if added():
      let editing = not change.item.is_nil
      self.requested_target_flags.set_flag(Editing, editing)
      self.apply_target_flags()

  result = self

proc active*(_: type GameState): GameState =
  let instance {.global.} = GameState.init(action_count = 7, action_index = 1)
  result = instance

when is_main_module:
  import std / [unittest, sequtils]
  type Node = ref object
  var state = GameState.init

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

  var added: set[TargetFlags]
  var removed: set[TargetFlags]

  state.target_flags.track proc(changes, _: auto) =
    added = {}
    removed = {}
    for change in changes:
      if Added in change.changes: added.incl change.item
      if Removed in change.changes: removed.incl change.item

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

  state.open_unit.value = Unit()
  check not state.mouse_captured

  state.command_mode = true
  check state.mouse_captured

  state.mouse_captured = false
  check state.mouse_captured

  state.open_unit.value = nil
  check state.mouse_captured

  state.command_mode = false
  check not state.mouse_captured
