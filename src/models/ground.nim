import std / [sugar]
import pkg / [model_citizen, print]
import types, builds, bots, core

proc surrounding(point: Vector3): seq[Vector3] =
  collect(new_seq):
    for x in 0..2:
      for y in 0..2:
        for z in 0..2:
          point + vec3(x - 1, y - 1, z - 1)

proc fire[T](self: Ground[T], state: GameState[T], append = false) =
  var add_to {.global.}: Build[T]
  let point = (self.target_point - vec3(0.5, 0, 0.5)).trunc
  if state.tool.value == Block:
    if not append:
      add_to = state.units.find_first(point.surrounding)
    if add_to:
      let local = point.local_to(add_to)
      add_to.draw(local, (Manual, state.selected_color))
    else:
      add_to = Build.init(T, state, position = point, root = true, color = state.selected_color)
      state.units += add_to

  elif state.tool.value == Place:
    var t = Transform.init(origin = self.target_point)
    state.units += Bot.init(T, state, transform = t)

proc init*(_: type Ground, T: type, node: T, state: GameState[T]): Ground[T] =
  let self = Ground[T](flags: ZenSet[ModelFlags].init, node: node)

  state.input_flags.changes:
    if Primary.added and Hover in self.flags:
      self.fire(state, append = false)
    if Primary.removed or Secondary.removed:
      state.draw_plane = vec3()

  self.flags.changes:
    if Primary in state.input_flags and state.draw_plane == vec3():
      if change.item == TargetMoved:
        self.fire(state, append = true)

  result = self
