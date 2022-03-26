import pkg / model_citizen
import godotapi / spatial
import models / [types]

proc init*(_: type Player, node: Spatial): Player =
  result = Player(
    flags: ZenSet[ModelFlags].init,
    node: node,
    velocity: ZenValue[Vector3].init,
    transform: ZenValue[Transform].init,
    scale: Zen.init(1.0),
    rotation: Zen.init(0.0)
  )
  result.flags += Global

method collect_garbage*(self: Player) =
  discard
