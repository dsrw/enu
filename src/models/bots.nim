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

  self.flags.changes:
    if Hover.added:
      state.reticle = true
      if state.tool.value != Block:
        self.flags += Highlight
    elif Hover.removed:
      self.flags -= Highlight
      if state.tool.value != Code:
        state.reticle = false

  state.input_flags.changes:
    if Hover in self.flags:
      if Primary.added and state.tool.value == Code:
        state.open_unit.value = self
      if Secondary.added and state.tool.value == Place:
        if self.parent.is_nil:
          state.units -= self
        else:
          self.parent.units -= self

  result = self
