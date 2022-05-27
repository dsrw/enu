import std / [sugar]
import pkg / [model_citizen, print]
import godotapi / spatial
import core, types, states, bots, builds

let state = GameState.active

proc fire(self: Ground, append = false) =
  state.draw_unit_id = "ground"
  var add_to {.global.}: Build
  let point = (self.target_point - vec3(0.5, 0, 0.5)).trunc
  if state.tool.value notin {CodeMode, PlaceBot}:
    if not append:
      add_to = state.units.find_first(point.surrounding)
    if add_to:
      let local = point.local_to(add_to)
      add_to.draw(local, (Manual, state.selected_color))
    else:
      add_to = Build.init(transform = Transform.init(origin = point), global = true, color = state.selected_color)
      state.units += add_to

  elif state.tool.value == PlaceBot and state.bot_at(self.target_point).is_nil:
    var t = Transform.init(origin = self.target_point)
    state.units += Bot.init(transform = t)

proc init*(_: type Ground, node: Spatial): Ground =
  let self = Ground(flags: ZenSet[ModelFlags].init, node: node)

  state.flags.changes:
    if PrimaryDown.added and Hover in self.flags:
      self.fire(append = false)
    if PrimaryDown.removed or SecondaryDown.removed:
      state.draw_unit_id = ""

  self.flags.changes:
    if PrimaryDown in state.flags and state.draw_unit_id == "ground":
      if change.item == TargetMoved:
        self.fire(append = true)

  result = self
