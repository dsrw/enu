import godotapi / [mesh_instance]
import pkg/godot except print
import pkg/print
import globals, models

gdobj GroundNode of MeshInstance:
  var model*: Ground[Node]

  method ready() =
    self.model = Ground.init(Node, self, state)
    state.ground = self.model
