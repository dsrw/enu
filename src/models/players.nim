import pkg / model_citizen
import godotapi / spatial
import models / [types]

proc init*(_: type Player, node: Spatial): Player =
  let self = Player(flags: ZenSet[ModelFlags].init, node: node)
  result = self
