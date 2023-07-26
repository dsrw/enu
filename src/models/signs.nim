import godotapi / spatial
import core, states, bots, builds, models / colors

proc init*(_: type Sign,
    markdown: string, title = "", owner: Unit, transform = Transform.init,
    width = 1.0, height = 1.0, size = 32, billboard = false,
    zoomable = true): Sign =

  let title = if title == "": markdown else: title
  var self = Sign(
    id: "sign_" & generate_id(),
    markdown_value: ~markdown,
    title_value: ~title,
    glow_value: ~0.0,
    width_value: ~width,
    height_value: ~height,
    size_value: ~size,
    billboard_value: ~billboard,
    zoomable_value: ~zoomable,
    frame_created: state.frame_count,
    color_value: ~action_colors[black],
    start_transform: transform,
    owner_value: ~owner
  )
  self.init_unit

  state.local_flags.watch:
    if PrimaryDown.added and Hover in self.local_flags:
      state.open_sign = self

  self.local_flags.watch:
    if Hover.added:
      self.glow = 1
      state.push_flag ReticleVisible
    elif Hover.removed:
      self.glow = 0
      state.pop_flag ReticleVisible

  result = self
