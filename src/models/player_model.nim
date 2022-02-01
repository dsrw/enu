import pkg / model_citizen
import models / [types]

proc init*(_: type PlayerModel, T: type, node: T): PlayerModel =
  let self = PlayerModel(flags: ZenSet[ModelFlags].init, node: node)
  result = self
