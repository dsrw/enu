import std / [strutils, os]
import pkg / [model_citizen, print]
import pkg/godot except print
import godotapi/node
import models, world / [bot_node, build_node], engine / contexts

type
  UnitController* = object

let state = GameState.active

proc change_code(self: Unit, code: string) =
  self.transform.value = self.start_transform
  state.paused = false
  self.reset()

  if code.strip == "" and file_exists(self.script_file):
    remove_file self.script_file
  elif code.strip != "":
    write_file(self.script_file, code)
    if self.script_ctx.is_nil:
      self.script_ctx = ScriptCtx.init
    self.script_ctx.script = self.script_file
    self.load_script()

proc remove_from_scene(unit: Unit) =
  if unit == previous_build: previous_build = nil
  if unit == current_build: current_build = nil
  let parent_node = unit.node.get_node("..")
  proc untrack_all(self: auto) =
    for name, field in self[].field_pairs:
      when field is Zen:
        field.untrack_all
  if unit of Build: Build(unit).untrack_all
  elif unit of Bot: Bot(unit).untrack_all
  if not unit.script_ctx.is_nil and not unit.script_ctx.engine.is_nil:
    unit.script_ctx.engine.callback = nil
  if not unit.clone_of:
    remove_file unit.script_file
    remove_dir unit.data_dir
  for child in unit.units:
    child.remove_from_scene()
  unit.parent = nil
  unit.node.owner = nil
  parent_node.remove_child(unit.node)
  unit.node.queue_free()

proc add_to_scene(unit: Unit) =
  proc add(unit: auto, T: type) =
    var node = unit.node as T
    if node.is_nil:
      node = T.init
    unit.node = node
    node.setup(unit)

  let parent_node = if Global in unit.flags:
    state.nodes.data
  else:
    unit.parent.node

  if unit of Bot: Bot(unit).add(BotNode)
  elif unit of Build: Build(unit).add(BuildNode)
  parent_node.add_child(unit.node)
  unit.node.owner = parent_node

proc find_nested_changes(parent: Change[Unit]) =
  for change in parent.triggered_by:
    if change of Change[Unit]:
      let change = Change[Unit](change)
      if Modified in change.changes:
        find_nested_changes(change)
      elif Added in change.changes:
        change.item.parent = parent.item
        change.item.add_to_scene()
      elif Removed in change.changes:
        change.item.remove_from_scene()
    if Added in change.changes and change of Change[string] and parent.field_name == "code":
      let change = Change[string](change)
      parent.item.change_code(change.item)
    if Added in change.changes and change of Change[ModelFlags]:
      let change = Change[ModelFlags](change)
      if change.item == Global:
        parent.item.remove_from_scene()
        parent.item.add_to_scene()

proc watch*(f: UnitController, state: GameState) =
  state.units.changes:
    if added():
      change.item.add_to_scene()
    elif modified():
      find_nested_changes(change)
    elif removed():
      change.item.remove_from_scene()

proc init*(_: type UnitController): UnitController =
  result = UnitController()
  result.watch state
