import godotapi / [mesh_instance]
import pkg/godot except print
import pkg/print
import globals, models

gdobj GroundNode of MeshInstance:
  var model*: Ground

  method ready() =
    self.model = Ground.init(Node, self)
    GameState.active.ground = self.model
