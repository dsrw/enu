import pkg/godot
import godotapi/node
import models/types, bot_node, build_node, ground_node

proc model*(self: Object): Model[Node] =
  result = if self of BotNode:
    BotNode(self).unit
  elif self of BuildNode:
    BuildNode(self).unit
  elif self of GroundNode:
    GroundNode(self).model
  else:
    nil
