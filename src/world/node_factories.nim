import pkg/godot except print
import pkg / [model_citizen]
import models / [types, bots, states]
import world / [bot_node]
import godotapi/node
import print

type
  NodeFactory*[T] = object
    state: GameState[T]

method add_to_scene(unit: Unit[Node], node: Node) =
  assert false, "Not implemented"

method remove_from_scene(unit: Unit[Node], node: Node) =
  unit.parent = nil
  node.remove_child(unit.node)

method add_to_scene(unit: Bot[Node], node: Node) =
  var bot_node = unit.node as BotNode
  if bot_node.is_nil:
    bot_node = gdnew[BotNode]()

  node.add_child(bot_node)
  bot_node.unit = unit
  unit.node = bot_node

proc watch(units: ZenSeq[Unit[Node]], node: Node, parent: Unit[Node]) =
  units.track proc(changes, gid: auto) =
    for change in changes:
      let unit = change.obj
      if Added in change.kinds:
        unit.parent = parent
        unit.add_to_scene(node)
        watch(unit.units, unit.node, unit)
      elif Removed in change.kinds:
        if not unit.parent.is_nil:
          unit.parent.units.untrack(gid)
        units.untrack(gid)
        unit.units.untrack_all
        unit.remove_from_scene(node)

proc watch*[T](f: NodeFactory[T], state: GameState[T]) =
  watch(state.units, state.nodes.game, nil)

proc init*[T](_: typedesc[NodeFactory], state: GameState[T]): NodeFactory[T] =
  result = NodeFactory[T](state: state)
  result.watch state
