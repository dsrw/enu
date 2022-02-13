import pkg/godot
import godotapi/node
import models/types, bot_node, build_node, ground_node, selection_area

proc model*(self: Object): Model =
  result = if self of SelectionArea:
    SelectionArea(self).bot.unit
  elif self of BuildNode:
    BuildNode(self).unit
  elif self of GroundNode:
    GroundNode(self).model
  else:
    nil
