import std/unittest
import pkg / [print, model_citizen]
import godot except print
import godotapi/node
import world/node_factories, models / [states, bots, types]

proc tests =
  var state = GameState.init(Node)
  state.nodes.game = gdnew[Node]()
  var factory = NodeFactory.init(state)
  let u = Bot.init(Node)
  state.units += u
  let u2 = Bot.init(Node)
  u.units += u2
  let u3 = Bot.init(Node)
  let u4 = Bot.init(Node)
  u2.units += u3
  u2.units += u4
  u2.units -= u4
  print state
tests()
