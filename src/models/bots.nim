import pkg/model_citizen
import types
include "default_robot.nim.nimf"
#proc init*(_: typedesc[GameState], T: typedesc): GameState[T] =
proc init*(_: type Bot, T: type, transform = Transform.init): Bot[T] =
  Bot[T](
    units: Zen.init(seq[Unit[T]]),
    transform: transform,
    flags: ZenSet[UnitFlags].init
  )

# proc code_template(file: string, imports: string): string =
#   result = default_robot(config.script_dir & "/" & file, imports,
#                          self.unit.script_ctx.is_clone)
