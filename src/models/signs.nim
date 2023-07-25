import godotapi / spatial
import core, states, bots, builds, models / colors

proc init*(_: type Sign,
    markdown: string, title = "", owner: Unit, transform = Transform.init,
    width = 1.0, height = 1.0, size = 32, billboard = false,
    zoomable = true): Sign =

  let title = if title == "": markdown else: title
  var self = Sign(
    id: "sign_" & generate_id(),
    markdown: ~markdown,
    title: ~title,
    glow: ~0.0,
    width: ~width,
    height: ~height,
    size: ~size,
    billboard: ~billboard,
    zoomable: ~zoomable,
    frame_created: state.frame_count,
    color: Zen.init(action_colors[black]),
    start_transform: transform,
    owner: ~owner
  )
  self.init_unit

  state.local_flags.watch:
    if PrimaryDown.added and Hover in self.local_flags:
      state.open_sign.value = self

  self.local_flags.watch:
    if Hover.added:
      self.glow.value = 1
      state.push_flag ReticleVisible
    elif Hover.removed:
      self.glow.value = 0
      state.pop_flag ReticleVisible

  result = self
