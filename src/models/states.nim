import std / [tables, strutils, macros]
import pkg / model_citizen
import models / [types, colors, console]

const computed_flags = {EditorVisible, ConsoleVisible, ErrorsVisible, BlockTargetVisible, ReticleVisible,
                        MouseCaptured, EditorFocused, ConsoleFocused}

proc set_flag*(self: GameState, flag: StateFlags, set: bool) =
  if set:
    self.flags += flag
  else:
    self.flags -= flag

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
    flags: Zen.init(set[StateFlags]),
    units: Zen.init(seq[Unit]),
    action_count: action_count,
    action_index: action_index,
    open_unit: ZenValue[Unit].init,
    config: Config(),
    tool: %Block,
    gravity: -80.0,
    console: Console.init
  )

  self.open_unit.changes:
    if added():
      let editing = not change.item.is_nil
      self.flags += ShowEditor

  self.flags.changes:
    if ReticleVisible.added:
      self.flags -= BlockTargetVisible
    elif BlockTargetVisible.added:
      self.flags -= ReticleVisible
    elif FocusEditor.added:
      self.flags -= FocusConsole
    elif FocusConsole.added:
      self.flags -= FocusEditor
    elif EditorVisible.removed:
      self.flags -= FocusEditor
    elif ConsoleVisible.removed:
      self.flags -= FocusConsole

    self.set_flag MouseCaptured,
      (CaptureMouse in self.flags and EditorVisible notin self.flags) or CommandMode in self.flags
    self.set_flag ReticleVisible,
      ShowReticle in self.flags and (MouseCaptured in self.flags or CommandMode in self.flags)
    self.set_flag BlockTargetVisible, ShowBlockTarget in self.flags
    self.set_flag EditorVisible, ShowEditor in self.flags
    self.set_flag ConsoleVisible, ShowConsole in self.flags
    self.set_flag ErrorsVisible, ShowErrors in self.flags
    self.set_flag EditorFocused, FocusEditor in self.flags and CommandMode notin self.flags
    self.set_flag ConsoleFocused, FocusConsole in self.flags and CommandMode notin self.flags

  result = self

proc `+=`*(self: ZenSet[StateFlags], flag: StateFlags) =
  assert flag notin computed_flags, $flag & " cannot be set"
  model_citizen.`+=`(self, flag)

proc `-=`*(self: ZenSet[StateFlags], flag: StateFlags) =
  assert flag notin computed_flags, $flag & " cannot be removed"
  model_citizen.`-=`(self, flag)

proc active*(_: type GameState): GameState =
  let instance {.global.} = GameState.init(action_count = 7, action_index = 1)
  result = instance

when is_main_module:
  import std / [unittest, sequtils]
  type Node = ref object
  var state = GameState.init

  state.flags += ReticleVisible
  check:
    not state.reticle_visible
    not state.block_target_visible
    not state.command_mode
    not state.mouse_captured

  state.flags += MouseCaptured
  check:
    state.reticle_visible
    state.mouse_captured
    not state.block_target_visible

  state.flags += BlockTargetVisible
  check:
    state.mouse_captured
    state.block_target_visible
    not state.reticle_visible

  state.flags -= MouseCaptured
  state.flags += ReticleVisible
  check:
    not state.reticle_visible
    not state.mouse_captured
    not state.block_target_visible
    not state.command_mode

  var added: set[StateFlags]
  var removed: set[StateFlags]

  state.flags.track proc(changes, _: auto) =
    added = {}
    removed = {}
    for change in changes:
      if Added in change.changes: added.incl change.item
      if Removed in change.changes: removed.incl change.item

  state.flags += CommandMode
  check:
    state.command_mode
    state.mouse_captured
    state.reticle_visible
    not state.block_target_visible

  state.flags -= CommandMode

  state.flags += MouseCaptured
  check state.mouse_captured

  state.open_unit.value = Unit()
  check not state.mouse_captured

  state.flags += CommandMode
  check state.mouse_captured

  state.flags -= MouseCaptured
  check state.mouse_captured

  state.open_unit.value = nil
  check state.mouse_captured

  state.flags -= CommandMode
  check not state.mouse_captured
