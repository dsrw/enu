import std / [tables, strutils, sequtils, algorithm, sets, sugar]
import pkg / [print]
import core, models / [colors]

# only one flag from the group is active at a time
const groups = @[
  {EditorFocused, ConsoleFocused, DocsFocused},
  {ReticleVisible, BlockTargetVisible},
  {Playing, Flying}
]

proc resolve_flags(self: GameState) =
  var result: set[StateFlags]
  for flag in self.wants:
    for group in groups:
      if flag in group:
        for f in group:
          result.excl f
    result.incl flag

  if self.tool.value == CodeMode:
    for flag in groups[1]:
      result.excl(flag)
    result.incl(ReticleVisible)

  if not groups[1].any_it(it in result):
    result.incl ReticleVisible

  if CommandMode in result:
    result.incl(MouseCaptured)
    for flag in groups[0]:
      result.excl(flag)
  else:
    if EditorVisible in result or DocsVisible in result:
      result.excl(MouseCaptured)

  if MouseCaptured notin result:
    result.excl(ReticleVisible)

  self.flags.value = result

proc replace_flags*(self: GameState, flags: varargs[StateFlags]) =
  for flag in flags:
    for group in groups:
      if flag in group:
        for flag in group:
          self.wants.excl flag
        self.wants.incl flag
  self.resolve_flags

proc replace_flag*(self: GameState, flag: StateFlags) =
  self.replace_flags flag

proc push_flags*(self: GameState, flags: varargs[StateFlags]) =
  for flag in flags:
    self.wants.incl flag
  self.resolve_flags

proc push_flag*(self: GameState, flag: StateFlags) =
  self.push_flags flag

proc pop_flags*(self: GameState, flags: varargs[StateFlags]) =
  for flag in flags:
    self.wants.excl flag

  self.resolve_flags

proc pop_flag*(self: GameState, flag: StateFlags) =
  self.pop_flags flag

proc set_flag*(self: GameState, flag: StateFlags, value: bool) =
  if value:
    self.push_flag flag
  else:
    self.pop_flag flag

proc `+=`*(self: ZenSet[StateFlags], flag: StateFlags) {.error:
  "Use `push_flag`, `pop_flag` and `replace_flag`".}

proc `-=`*(self: ZenSet[StateFlags], flag: StateFlags) {.error:
  "Use `push_flag`, `pop_flag` and `replace_flag`".}

proc selected_color*(self: GameState): Color =
  action_colors[Colors(ord self.tool.value)]

proc debug*(self: GameState, args: varargs[string, `$`]) =
  self.logger("debug", args.join)

proc info*(self: GameState, args: varargs[string, `$`]) =
  self.logger("info", args.join)

proc err*(self: GameState, args: varargs[string, `$`]) =
  self.logger "err", args.join

proc init*(_: type GameState): GameState =
  let self = GameState(
    player: ZenValue[Player].init,
    flags: Zen.init(set[StateFlags]),
    units: Zen.init(seq[Unit]),
    open_unit: ZenValue[Unit].init,
    config: Config(font_size: Zen.init(0)),
    tool: Zen.init(BlueBlock),
    gravity: -80.0,
    console: ConsoleModel(log: Zen.init(seq[string])),
    open_sign: ZenValue[Sign].init
  )
  result = self
  self.open_unit.changes:
    if added and change.item != nil:
      self.push_flag EditorVisible
    elif added:
      self.pop_flag EditorVisible

  self.flags.changes:
    if EditorVisible.added:
      self.push_flag EditorFocused
    elif EditorVisible.removed:
      self.pop_flag EditorFocused
    elif DocsVisible.added:
      self.push_flag DocsFocused
    elif DocsVisible.removed:
      self.pop_flag DocsFocused

  result = self

let main_state*: GameState = GameState.init
var state* = main_state
var worker_state*: GameState

print main_state.is_nil

when is_main_module:
  import pkg / print
  on_unhandled_exception = nil

  import std / [unittest, sequtils]
  type Node = ref object
  var state = GameState.init

  state.push_flag ReticleVisible
  check:
    ReticleVisible notin state.flags
    BlockTargetVisible notin state.flags
    CommandMode notin state.flags
    MouseCaptured notin state.flags

  state.push_flag MouseCaptured
  check:
    ReticleVisible in state.flags
    MouseCaptured in state.flags
    BlockTargetVisible notin state.flags

  state.replace_flag BlockTargetVisible
  check:
    MouseCaptured in state.flags
    BlockTargetVisible in state.flags
    ReticleVisible notin state.flags

  state.pop_flag MouseCaptured
  state.push_flag ReticleVisible
  check:
    ReticleVisible notin state.flags
    BlockTargetVisible notin state.flags
    CommandMode notin state.flags
    MouseCaptured notin state.flags

  var added: set[StateFlags]
  var removed: set[StateFlags]

  state.flags.track proc(changes, _: auto) =
    added = {}
    removed = {}
    for change in changes:
      if Added in change.changes: added.incl change.item
      if Removed in change.changes: removed.incl change.item

  state.push_flag CommandMode
  check:
    ReticleVisible in state.flags
    CommandMode in state.flags
    MouseCaptured in state.flags
    BlockTargetVisible notin state.flags

  state.pop_flag CommandMode

  state.push_flag MouseCaptured
  check MouseCaptured in state.flags

  state.open_unit.value = Unit()
  check MouseCaptured notin state.flags

  state.push_flag CommandMode
  check MouseCaptured in state.flags

  state.pop_flag MouseCaptured
  check MouseCaptured in state.flags

  state.open_unit.value = nil
  check MouseCaptured in state.flags

  state.pop_flag CommandMode
  check MouseCaptured notin state.flags

  state.pop_flag EditorVisible
  check MouseCaptured notin state.flags

  state.push_flag MouseCaptured
  check MouseCaptured in state.flags

  state.push_flag DocsVisible
  check MouseCaptured notin state.flags

  state.push_flag CommandMode
  check MouseCaptured in state.flags
