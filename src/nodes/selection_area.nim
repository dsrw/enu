import pkg / [godot]
import godotapi / [area, control]
import core, globals, nodes/bot_node

let state = GameState.active

gdobj SelectionArea of Area:
  var
    bot*: BotNode

  method ready*() =
    self.bot = self.get_node("..") as BotNode
