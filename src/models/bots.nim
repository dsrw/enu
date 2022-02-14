import std / [math, sugar, monotimes]
import pkg / model_citizen
import godotapi / spatial
import core, models / [types, states, units]
include "bot_code_template.nim.nimf"

let state = GameState.active

method code_template*(self: Bot, imports: string): string =
  result = bot_code_template(self.script_file, imports)

method on_begin_move*(self: Bot, direction: Vector3, steps: float, moving_mode: int): Callback =
  # move_mode param is ignored
  var duration = 0.0
  let
    moving = -self.transform.basis.z
    finish_time = 1.0 / self.speed * steps

  var velocity = state.gravity * UP
  result = proc(delta: float): bool =
    duration += delta
    if duration >= finish_time:
      self.origin = self.origin.snapped(vec3(0.1, 0.1, 0.1))
      return false
    else:
      self.velocity.touch(moving * self.speed)
      return true
  # TODO?
  # active_ctx().start_advance_timer()

method on_begin_turn*(self: Bot, axis: Vector3, degrees: float, move_mode: int): Callback =
  # move mode param is ignored
  let degrees = degrees * -axis.x
  var duration = 0.0
  var final_basis = self.basis.rotated(UP, deg_to_rad(degrees))
  result = proc(delta: float): bool =
    duration += delta
    self.basis = self.basis.rotated(UP, deg_to_rad(degrees * delta * self.speed))
    if duration <= 1.0 / self.speed:
      true
    else:
      self.basis = final_basis
      false
  # TODO?
  # active_ctx().start_advance_timer()

# method load_vars*(self: Bot) =
#   let old_speed = self.speed
#   let ctx = self.script_ctx
#   self.speed = ctx.engine.get_float("speed", ctx.engine.module_name)
#   let scale = ctx.engine.get_float("scale", ctx.engine.module_name)
#   if scale != self.scale:
#     var basis = self.transform.basis
#     basis.set_scale(vec3(scale, scale, scale))
#     self.transform.basis = basis
#     self.scale = scale

# method on_script_loaded*(self: Bot) =
#   let e = self.script_ctx.engine
#   e.expose "play", proc(a: VmArgs): bool =
#     self.animation.value = get_string(a, 0)
#     return false

proc bot_at*(state: GameState, position: Vector3): Bot =
  for unit in state.units:
    if unit of Bot and unit.origin == position:
      return Bot(unit)

method reset*(self: Bot) =
  self.transform = self.start_transform
  self.animation.value = ""
  self.units.clear()

proc init*(_: type Bot, transform = Transform.init, clone_of: Bot = nil, global = true): Bot =
  let self = Bot(
    id: "bot_" & generate_id(),
    units: Zen.init(seq[Unit]),
    start_transform: transform,
    flags: ZenSet[ModelFlags].init,
    code: ZenValue[string].init,
    velocity: ZenValue[Vector3].init,
    animation: ZenValue[string].init,
    energy: ZenValue[float].init,
    speed: 1.0,
    clone_of: clone_of,
    frame_delta: ZenValue[float].init,
    scale: Zen.init(1.0)
  )
  if global: self.flags += Global

  self.flags.changes:
    if Hover.added:
      state.reticle = true
      if state.tool.value != Block:
        let (root, _) = self.find_root(true)
        root.walk_tree proc(unit: Unit) = unit.flags += Highlight
    elif Hover.removed:
      let (root, _) = self.find_root(true)
      root.walk_tree proc(unit: Unit) = unit.flags -= Highlight
      if state.tool.value != Code:
        state.reticle = false

  state.input_flags.changes:
    if Hover in self.flags:
      if Primary.added and state.tool.value == Code:
        let (root, _) = self.find_root(true)
        state.open_unit.value = root
      if Secondary.added and state.tool.value == Place:
        if self.parent.is_nil:
          state.units -= self
        else:
          self.parent.units -= self

  result = self

method clone*(self: Bot, clone_to: Unit): Unit =
  var transform = clone_to.transform
  result = Bot.init(transform = transform, clone_of = self)
  result.parent = clone_to

method on_collision*(self: Unit, partner: Model, normal: Vector3) =
  self.collisions.add (partner, normal)

method off_collision*(self: Unit, partner: Model) =
  self.collisions = collect:
    for collision in self.collisions:
      if collision.model != partner:
        collision
