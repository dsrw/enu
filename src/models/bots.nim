import std / math
import pkg / model_citizen
import core, models / [types, states, scripts, units], engine / engine
include "default_robot.nim.nimf"

let state = GameState.active

method code_template*(self: Bot, imports: string): string =
  result = default_robot(self.script_file, imports, self.script_ctx.is_clone)

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
  var final_basis = self.transform.basis.rotated(UP, deg_to_rad(degrees))
  result = proc(delta: float): bool =
    duration += delta
    self.transform.basis = self.transform.basis.rotated(UP, deg_to_rad(degrees * delta * self.speed))
    if duration <= 1.0 / self.speed:
      true
    else:
      self.transform.basis = final_basis
      false
  active_ctx().start_advance_timer()

method load_vars*(self: Bot) =
  let old_speed = self.speed
  let ctx = self.script_ctx
  self.speed = ctx.engine.get_float("speed", ctx.engine.module_name)
  let scale = ctx.engine.get_float("scale", ctx.engine.module_name)
  if scale != self.scale:
    var basis = self.transform.basis
    basis.set_scale(vec3(scale, scale, scale))
    self.transform.basis = basis
    self.scale = scale

method on_script_loaded*(self: Bot) =
  let e = self.script_ctx.engine
  e.expose "play", proc(a: VmArgs): bool =
    self.animation.value = get_string(a, 0)
    return false

proc bot_at*(state: GameState, position: Vector3): Bot =
  for unit in state.units:
    if unit of Bot and unit.transform.origin == position:
      return Bot(unit)

method reset*(self: Bot) =
  self.animation.value = ""
  self.units.clear()

proc init*(_: type Bot, transform = Transform.init, clone_of: Bot = nil, global = true): Bot =
  let self = Bot(
    id: "bot_" & generate_id(),
    units: Zen.init(seq[Unit]),
    transform: Zen.init(transform),
    start_transform: transform,
    flags: ZenSet[ModelFlags].init,
    code: ZenValue[string].init,
    velocity: ZenValue[Vector3].init,
    animation: ZenValue[string].init,
    energy: ZenValue[float].init,
    speed: 1.0,
    clone_of: clone_of
  )
  if global: self.flags += Global

  self.flags.changes:
    if Hover.added:
      state.reticle = true
      if state.tool.value != Block:
        let (root, _) = self.find_root
        root.walk_tree proc(unit: Unit) = unit.flags += Highlight
    elif Hover.removed:
      let (root, _) = self.find_root
      root.walk_tree proc(unit: Unit) = unit.flags -= Highlight
      if state.tool.value != Code:
        state.reticle = false

  state.input_flags.changes:
    if Hover in self.flags:
      if Primary.added and state.tool.value == Code:
        let (root, _) = self.find_root
        state.open_unit.value = root
      if Secondary.added and state.tool.value == Place:
        if self.parent.is_nil:
          state.units -= self
        else:
          self.parent.units -= self

  result = self

method clone*(self: Bot, clone_to: Unit, ctx: ScriptCtx): Unit =
  var transform = clone_to.transform.value
  result = Bot.init(transform = transform, clone_of = self)
  result.parent = clone_to
