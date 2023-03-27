import godotapi / spatial
import core, states, bots, builds, models / colors

proc init*(_: type Sign,
  markdown: string, title = "", owner: Unit, transform = Transform.init,
  width = 1.0, height = 1.0, size = 32, billboard = false,
  zoomable = true): Sign =

  let title = if title == "": markdown else: title
  let self = Sign(
    flags: ZenSet[ModelFlags].init,
    markdown: Zen.init(markdown),
    title: Zen.init(title),
    units: Zen.init(seq[Unit]),
    start_transform: transform,
    transform: Zen.init(transform),
    code: ZenValue[Code].init,
    velocity: ZenValue[Vector3].init,
    glow: ZenValue[float].init,
    scale: Zen.init(1.0),
    width: width,
    height: height,
    size: size,
    billboard: billboard,
    zoomable: zoomable,
    frame_created: state.frame_count,
    color: Zen.init(action_colors[black]),
    owner: owner
  )

  self.flags += Visible
  state.flags.watch:
    if PrimaryDown.added and Hover in self.flags:
      state.open_sign.value = self

  self.flags.watch:
    if Hover.added:
      self.glow.value = 1
      state.push_flag ReticleVisible
    elif Hover.removed:
      self.glow.value = 0
      state.pop_flag ReticleVisible

  result = self
