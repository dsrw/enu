import godotapi / [mesh_instance]
import pkg / [godot]
import globals, models

gdobj GroundNode of MeshInstance:
  var model*: Ground[Node]

  method ready() =
    self.model = Ground.init(Node, self, state)
    state.ground = self.model
