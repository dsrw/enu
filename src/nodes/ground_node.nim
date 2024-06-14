import godotapi/[mesh_instance]
import pkg/godot except print
import core, gdutils, models

gdobj GroundNode of MeshInstance:
  var model*: Ground

  method ready() =
    self.model = Ground.init(self)
    state.ground = self.model
