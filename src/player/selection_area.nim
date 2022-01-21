import pkg / [godot, model_citizen]
import godotapi / [area, control]
import core, globals, world/bot_node

let state = GameState.active

gdobj SelectionArea of Area:
  var
    bot*: BotNode

  method ready*() =
    self.bot = self.get_node("..") as BotNode
