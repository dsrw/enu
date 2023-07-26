import std / [math]
import godotapi / spatial
import core, models / units

proc init*(_: type Player): Player =
  result = Player(
    id: \"player-{Zen.thread_ctx.id}",
    rotation_value: ~0.0,
    start_transform: Transform.init(origin = vec3(0, 1, 0)),
    input_direction_value: ~Vector3
  )
  result.init_unit
  result.global_flags += Global

method on_begin_turn*(self: Player, direction: Vector3, degrees: float,
    lean: bool, move_mode: int): Callback =

  let rotation = floor_mod(self.rotation, 360)
  let degrees = if direction == LEFT: -degrees else: degrees
  self.rotation_value.touch rotation - degrees
  self.transform = Transform.init(origin = self.transform.origin)

method collect_garbage*(self: Player) =
  discard
