import godotapi / spatial
import core, states, bots, builds, models / [colors, units]

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
  result = self

method main_thread_init*(self: Sign) =
  proc_call main_thread_init(Unit(self))

  state.local_flags.watch:
    if PrimaryDown.added and Hover in self.local_flags:
      state.open_sign = self

  self.local_flags.watch:
    if Hover.added:
      self.local_flags += Highlight
      state.push_flag ReticleVisible
    elif Hover.removed:
      self.local_flags -= Highlight
      state.pop_flag ReticleVisible
