import std / [math, sugar, monotimes]
import pkg / model_citizen
import godotapi / spatial
import core, models / [types, states, units, colors]
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
      self.transform.origin = self.transform.origin.snapped(vec3(0.1, 0.1, 0.1))
      return false
    else:
      self.velocity.touch(moving * self.speed)
      return true

method on_begin_turn*(self: Bot, axis: Vector3, degrees: float, move_mode: int): Callback =
  # move mode param is ignored
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

proc bot_at*(state: GameState, position: Vector3): Bot =
  for unit in state.units:
    if unit of Bot and unit.transform.origin == position:
      return Bot(unit)

method reset*(self: Bot) =
  self.transform.value = self.start_transform
  self.animation.value = ""
  self.units.clear()

proc init*(_: type Bot, id = "bot_" & generate_id(), transform = Transform.init, clone_of: Bot = nil,
           global = true, parent: Unit = nil): Bot =
  let self = Bot(
    id: id,
    units: Zen.init(seq[Unit]),
    start_transform: transform,
    transform: Zen.init(transform),
    flags: ZenSet[ModelFlags].init,
    code: ZenValue[string].init,
    velocity: ZenValue[Vector3].init,
    animation: ZenValue[string].init,
    energy: ZenValue[float].init,
    speed: 1.0,
    clone_of: clone_of,
    frame_delta: ZenValue[float].init,
    scale: Zen.init(1.0),
    start_color: action_colors[black],
    shared: if parent: parent.shared else: Shared(),
    parent: parent
  )
  if global: self.flags += Global

  self.flags.changes:
    if Hover.added:
      state.flags += ShowReticle
      if state.tool.value != Block:
        let root = self.find_root(true)
        root.walk_tree proc(unit: Unit) = unit.flags += Highlight
    elif Hover.removed:
      let root = self.find_root(true)
      root.walk_tree proc(unit: Unit) = unit.flags -= Highlight
      if state.tool.value != Code:
        state.flags -= ShowReticle

  state.flags.changes:
    if Hover in self.flags:
      if PrimaryDown.added and state.tool.value == Code:
        let root = self.find_root(true)
        state.open_unit.value = root
      if SecondaryDown.added and state.tool.value == Place:
        if self.parent.is_nil:
          state.units -= self
        else:
          self.parent.units -= self

  result = self

method clone*(self: Bot, clone_to: Unit, id: string): Unit =
  var transform = clone_to.transform.value
  result = Bot.init(id = id, transform = transform, clone_of = self, parent = clone_to)

method on_collision*(self: Unit, partner: Model, normal: Vector3) =
  self.collisions.add (partner, normal)

method off_collision*(self: Unit, partner: Model) =
  self.collisions = collect:
    for collision in self.collisions:
      if collision.model != partner:
        collision
