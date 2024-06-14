import pkg/[godot]
import godotapi/[area, control]
import core, gdutils, nodes/bot_node

gdobj SelectionArea of Area:
  var bot*: BotNode

  method ready*() =
    self.bot = self.get_node("..") as BotNode
