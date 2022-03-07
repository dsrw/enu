import pkg / model_citizen
import godotapi / spatial
import models / [types]

proc init*(_: type Player, node: Spatial): Player =
  result = Player(
    flags: ZenSet[ModelFlags].init,
    node: node,
    velocity: ZenValue[Vector3].init
  )

method collect_garbage*(self: Player) =
  discard
