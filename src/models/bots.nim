import std / math
import pkg / model_citizen
import core, models / [types, states, scripts, units]
include "default_robot.nim.nimf"

let state = GameState.active

method code_template*(self: Bot, imports: string): string =
  result = default_robot(self.file_name, imports, self.script_ctx.is_clone)

method on_begin_move*(self: Bot, direction: Vector3, steps: float): Callback =
  var duration = 0.0
  let
    moving = -self.transform.basis.z
    finish_time = 1.0 / self.speed * steps

  var velocity = state.gravity * UP
  result = proc(delta: float): bool =
    duration += delta
    if duration >= finish_time:
      self.transform.origin = self.transform.origin.snapped(vec3(0.1, 0.1, 0.1))
      return false
    else:
      self.velocity.touch(moving * self.speed)
      return true
  active_ctx().start_advance_timer()

method on_begin_turn*(self: Bot, axis: Vector3, degrees: float): Callback =
  let degrees = degrees * -axis.x
  var duration = 0.0
  # TODO: Why can't this be a one liner?
  var final_transform = self.transform.value
  final_transform.basis.rotate(UP, deg_to_rad(degrees))
  result = proc(delta: float): bool =
    duration += delta
    print self.transform.value
    echo "transform ^^^"
    var tra = self.transform.value
    tra = tra.rotated(UP, deg_to_rad(degrees * delta * self.speed))
    self.transform.value = tra
    if duration <= 1.0 / self.speed:
      true
    else:
      self.transform.value = final_transform
      false
  active_ctx().start_advance_timer()


method clone*(self: Bot, clone_to: Unit, ctx: ScriptCtx): Unit =
  quit "override me"

method on_sleep*(self: Bot, seconds: float) =
  discard

method on_script_loaded*(self: Bot) =
  discard

proc bot_at*(state: GameState, position: Vector3): Bot =
  for unit in state.units:
    if unit of Bot and unit.transform.origin == position:
      return Bot(unit)

proc init*(_: type Bot, state: GameState, transform = Transform.init): Bot =
  let self = Bot(
    id: "bot_" & generate_id(),
    units: Zen.init(seq[Unit]),
    transform: Zen.init(transform),
    flags: ZenSet[ModelFlags].init,
    code: ZenValue[string].init,
    velocity: ZenValue[Vector3].init
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
