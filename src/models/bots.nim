import std / [math, sugar, monotimes]
import godotapi / spatial
import core, models / [states, units, colors]
include "bot_code_template.nim.nimf"

method code_template*(self: Bot, imports: string): string =
  result = bot_code_template(self.script_ctx.script, imports)

method on_begin_move*(self: Bot, direction: Vector3, steps: float,
    moving_mode: int): Callback =

  # move_mode param is ignored
  var duration = 0.0
  let
    moving = -self.transform.basis.z
    finish_time = 1.0 / self.speed * steps

  result = proc(delta: float, _: MonoTime): TaskStates =
    duration += delta
    if duration >= finish_time:
      self.velocity.touch(vec3())
      self.transform.origin = self.transform.origin.snapped(vec3(0.1, 0.1, 0.1))
      return Done
    else:
      self.velocity.touch(moving * self.speed)
      return Running

method on_begin_turn*(self: Bot, axis: Vector3, degrees: float, lean: bool,
    move_mode: int): Callback =

  # move mode param is ignored
  let degrees = degrees * -axis.x
  var duration = 0.0
  var final_basis = self.transform.basis.rotated(UP, deg_to_rad(degrees))
  result = proc(delta: float, _: MonoTime): TaskStates =
    duration += delta
    self.transform.basis = self.transform.basis.rotated(UP,
        deg_to_rad(degrees * delta * self.speed))

    if duration <= 1.0 / self.speed:
      Running
    else:
      self.transform.basis = final_basis
      Done

proc bot_at*(state: GameState, position: Vector3): Bot =
  for unit in state.units:
    if unit of Bot and unit.transform.origin == position:
      return Bot(unit)

proc reset_state*(self: Bot) =
  self.transform.value = self.start_transform

method reset*(self: Bot) =
  self.reset_state
  self.speed = 1
  self.color.value = self.start_color
  self.animation.touch "auto"
  self.global_flags += Visible
  self.velocity.value = vec3()
  self.units.clear()

proc init*(_: type Bot, id = "bot_" & generate_id(), transform = Transform.init,
    clone_of: Bot = nil, global = true, parent: Unit = nil): Bot =

  var self = Bot(
    id: id,
    start_transform: transform,
    animation: ~"auto",
    speed: 1.0,
    clone_of: clone_of,
    start_color: action_colors[black],
    parent: parent,
    frame_created: state.frame_count
  )

  self.init_unit

  if global: self.global_flags += Global

  self.local_flags.watch:
    debug "self flag changed", zid, changes = change.changes,
        item = change.item, unit = self.id, zen_id = self.local_flags.id

    if Hover.added:
      state.push_flag ReticleVisible
      if state.tool.value in {CodeMode, PlaceBot}:
        let root = self.find_root(true)
        root.walk_tree proc(unit: Unit) = unit.local_flags += Highlight
    elif Hover.removed:
      let root = self.find_root(true)
      root.walk_tree proc(unit: Unit) = unit.local_flags -= Highlight
      state.pop_flag ReticleVisible

  self.local_flags.untrack_on_destroy:
    state.local_flags.changes:
      debug "state flag changed", zid, changes = change.changes,
          item = change.item, unit = self.id, zen_id = self.local_flags.id

      if Hover in self.local_flags:
        if PrimaryDown.added and state.tool.value == CodeMode:
          let root = self.find_root(true)
          state.open_unit.value = root
        if SecondaryDown.added and state.tool.value == PlaceBot:
          if self.parent.is_nil:
            state.units -= self
          else:
            self.parent.units -= self
  result = self

method clone*(self: Bot, clone_to: Unit, id: string): Unit =
  var transform = clone_to.transform.value
  result = Bot.init(id = id, transform = transform, clone_of = self,
      parent = clone_to)

method on_collision*(self: Unit, partner: Model, normal: Vector3) =
  self.collisions.add (partner.id, normal)

method off_collision*(self: Unit, partner: Model) =
  for collision in self.collisions.value.dup:
    if collision.id == partner.id:
      self.collisions -= collision
