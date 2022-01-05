import pkg/godot except print
import pkg / [model_citizen]
import models / [types, bots, states]
import world / [bot_node, build_node]
import godotapi/node
import print

type
  NodeFactory* = object
    state: GameState

method add_to_scene(unit: Unit, node: Node) {.base.} =
  assert false, "Not implemented"

method remove_from_scene(unit: Unit, parent_node: Node) {.base.} =
  unit.parent = nil
  parent_node.remove_child(unit.node)

method add_to_scene(unit: Bot, parent_node: Node) =
  var bot_node = unit.node as BotNode
  if bot_node.is_nil:
    bot_node = BotNode.init
  unit.node = bot_node
  bot_node.setup(unit)
  parent_node.add_child(bot_node)

method add_to_scene(unit: Build, parent_node: Node) =
  var build_node = unit.node as BuildNode
  if build_node.is_nil:
    build_node = BuildNode.init
  unit.node = build_node
  build_node.setup(unit)
  parent_node.add_child(build_node)

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

proc watch*(f: NodeFactory, state: GameState) =
  state.units.changes:
    if added():
      change.item.add_to_scene(state.nodes.data)
    elif modified():
      find_nested_changes(change)
    elif removed():
      change.item.remove_from_scene(state.nodes.data)

proc init*(_: type NodeFactory, state: GameState): NodeFactory =
  result = NodeFactory(state: state)
  result.watch state
