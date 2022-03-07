import std / [sugar]
import pkg / [model_citizen, print]
import godotapi / spatial
import core, types, states, bots, builds

let state = GameState.active

proc fire(self: Ground, append = false) =
  var add_to {.global.}: Build
  let point = (self.target_point - vec3(0.5, 0, 0.5)).trunc
  if state.tool.value == Block:
    if not append:
      add_to = state.units.find_first(point.surrounding)
    if add_to:
      let local = point.local_to(add_to)
      add_to.draw(local, (Manual, state.selected_color))
    else:
      add_to = Build.init(transform = Transform.init(origin = point), global = true, color = state.selected_color)
      state.units += add_to

  elif state.tool.value == Place and state.bot_at(self.target_point).is_nil:
    var t = Transform.init(origin = self.target_point)
    state.units += Bot.init(transform = t)

proc init*(_: type Ground, node: Spatial): Ground =
  let self = Ground(flags: ZenSet[ModelFlags].init, node: node)

  state.input_flags.changes:
    if Primary.added and Hover in self.flags:
      self.fire(append = false)
    if Primary.removed or Secondary.removed:
      state.draw_plane = vec3()

  self.flags.changes:
    if Primary in state.input_flags and state.draw_plane == vec3():
      if change.item == TargetMoved:
        self.fire(append = true)

  result = self
