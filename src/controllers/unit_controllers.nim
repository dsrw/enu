import std / strutils
import pkg / [model_citizen, print]
import pkg/godot except print
import godotapi/node
import models, world / [bot_node, build_node], engine / contexts

type
  UnitController* = object
    state: GameState

proc change_code(self: Unit, code: string) =
  if code.strip != "":
    self.file_name.write_file(code)
    if self.script_ctx.is_nil:
      self.script_ctx = ScriptCtx.init
    self.script_ctx.script = self.file_name
    self.load_script()

proc remove_from_scene(unit: Unit, parent_node: Node) =
  unit.parent = nil
  parent_node.remove_child(unit.node)

proc add_to_scene(unit: Unit, parent_node: Node) =
  proc add(unit: auto, T: type) =
    var node = unit.node as T
    if node.is_nil:
      node = T.init
    unit.node = node
    node.setup(unit)

  if unit of Bot: Bot(unit).add(BotNode)
  elif unit of Build: Build(unit).add(BuildNode)

  parent_node.add_child(unit.node)

proc find_nested_changes(parent: Change[Unit]) =
  for change in parent.triggered_by:
    if change of Change[Unit]:
      let change = Change[Unit](change)
      if Modified in change.changes:
        find_nested_changes(change)
      elif Added in change.changes:
        change.item.parent = parent.item
        change.item.add_to_scene(parent.item.node)
      elif Removed in change.changes:
        change.item.remove_from_scene(change.item.parent.node)
    if Added in change.changes and change of Change[string] and parent.field_name == "code":
      let change = Change[string](change)
      parent.item.change_code(change.item)

proc watch*(f: UnitController, state: GameState) =
  state.units.changes:
    if added():
      change.item.add_to_scene(state.nodes.data)
    elif modified():
      find_nested_changes(change)
    elif removed():
      change.item.remove_from_scene(state.nodes.data)

proc init*(_: type UnitController): UnitController =
  result = UnitController(state: GameState.active)
  result.watch GameState.active
