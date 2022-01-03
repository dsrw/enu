import pkg/model_citizen
import types
include "default_robot.nim.nimf"

# proc code_template(file: string, imports: string): string =
#   result = default_robot(config.script_dir & "/" & file, imports,
#                          self.unit.script_ctx.is_clone)

proc bot_at*[T](state: GameState[T], position: Vector3): Bot[T] =
  for unit in state.units:
    if unit of Bot[T] and unit.transform.origin == position:
      return Bot[T](unit)

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
