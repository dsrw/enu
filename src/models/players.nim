import std / math
import pkg / model_citizen
import godotapi / spatial
import models / [types]
import core

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

method on_begin_turn*(self: Player, direction: Vector3, degrees: float, lean: bool, move_mode: int): Callback =
  let rotation = floor_mod(self.rotation.value, 360)
  let degrees = if direction == LEFT: -degrees else: degrees
  self.rotation.touch rotation - degrees
  self.transform.value = Transform.init(origin = self.transform.origin)

method collect_garbage*(self: Player) =
  discard
