import std / [strutils, os, tables]
import pkg / [model_citizen, print]
import pkg/godot except print
import godotapi / [node, spatial]
import models, nodes / [bot_node, build_node]

type
  NodeController* = ref object

let state = GameState.active

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
  if unit.script_ctx:
    unit.script_ctx.callback = nil
  if not unit.clone_of:
    remove_file unit.script_file

    remove_dir unit.data_dir
  for child in unit.units:
    child.remove_from_scene()
  unit.parent = nil
  unit.node.owner = nil
  parent_node.remove_child(unit.node)
  if unit.node of BuildNode:
    BuildNode(unit.node).unit = nil
  elif unit.node of BotNode:
    BotNode(unit.node).unit = nil
  unit.node.queue_free()
  unit.node = nil

proc add_to_scene(unit: Unit) =
  proc add(unit: auto, T: type, parent_node: Node) =
    var node = unit.node as T
    if node.is_nil:
      node = T.init
    unit.node = node
    node.unit = unit
    node.transform = unit.start_transform
    parent_node.add_child(unit.node)
    unit.node.owner = parent_node
    node.setup(unit)

  let parent_node = if Global in unit.flags:
    state.nodes.data
  else:
    unit.parent.node

  if unit of Bot: Bot(unit).add(BotNode, parent_node)
  elif unit of Build: Build(unit).add(BuildNode, parent_node)

proc set_global(unit: Unit, global: bool) =
  var parent_node = unit.node.get_node("..")
  parent_node.remove_child(unit.node)
  if global:
    state.nodes.data.add_child(unit.node)
    unit.node.owner = state.nodes.data
    unit.transform.origin = unit.transform.origin + unit.start_transform.origin
  else:
    unit.parent.node.add_child(unit.node)
    unit.node.owner = unit.parent.node
    unit.transform.origin = unit.transform.origin - unit.start_transform.origin

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
    elif change of Change[ModelFlags]:
      let change = Change[ModelFlags](change)
      if change.item == Global:
        if Added in change.changes:
          parent.item.set_global(true)
        elif Removed in change.changes:
          parent.item.set_global(false)

proc watch*(f: NodeController, state: GameState) =
  state.units.changes:
    if added():
      change.item.add_to_scene()
    elif modified():
      find_nested_changes(change)
    elif removed():
      change.item.remove_from_scene()

proc reset_nodes*(_: type NodeController) =
  current_build = nil
  previous_build = nil

proc init*(_: type NodeController): NodeController =
  result = NodeController()
  result.watch state
