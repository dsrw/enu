import pkg/model_citizen
import types
include "default_robot.nim.nimf"

# proc code_template(file: string, imports: string): string =
#   result = default_robot(config.script_dir & "/" & file, imports,
#                          self.unit.script_ctx.is_clone)

proc init*(_: type Bot, T: type, state: GameState, transform = Transform.init): Bot[T] =
  let self = Bot[T](
    units: Zen.init(seq[Unit[T]]),
    transform: transform,
    flags: ZenSet[ModelFlags].init
  )

  state.input_flags.track proc(changes: auto) =
    for change in changes:
      if Added in change.changes and change.item == Primary and
         state.tool.value == Code and Hover in self.flags:
        state.open_unit.value = self

  result = self
