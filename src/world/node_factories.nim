import pkg/godot except print
import pkg / [model_citizen]
import models / [types, bots, states]
import world / [bot_node]
import godotapi/node
import print

type
  Unit = types.Unit[Node]
  Bot = types.Bot[Node]
  GameState = types.GameState[Node]
  NodeFactory* = object
    state: GameState

method add_to_scene(unit: Unit, node: Node) =
  assert false, "Not implemented"

method remove_from_scene(unit: Unit, parent_node: Node) =
  unit.parent = nil
  parent_node.remove_child(unit.node)

method add_to_scene(unit: Bot, parent_node: Node) =
  var bot_node = unit.node as BotNode
  if bot_node.is_nil:
    bot_node = gdnew[BotNode]()

  parent_node.add_child(bot_node)
  bot_node.unit = unit
  unit.node = bot_node

proc find_nested_changes(parent: Change[Unit]) =
  for change in parent.triggered_by:
    assert change of Change[Unit]
    let change = Change[Unit](change)
    if Added in change.changes:
      change.obj.parent = parent.obj
      change.obj.add_to_scene(parent.obj.node)
    elif Modified in change.changes:
      find_nested_changes(change)
    elif Removed in change.changes:
      change.obj.remove_from_scene(change.obj.parent.node)

proc watch*(f: NodeFactory, state: GameState) =
  state.units.track proc(changes: auto) =
    for change in changes:
      if Added in change.changes:
        change.obj.add_to_scene(state.nodes.game)
      elif Modified in change.changes:
        find_nested_changes(change)
      elif Removed in change.changes:
        change.obj.remove_from_scene(state.nodes.game)

proc init*(_: type NodeFactory, state: GameState): NodeFactory =
  result = NodeFactory(state: state)
  result.watch state
