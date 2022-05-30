import std / [sugar]
import pkg / [model_citizen, print]
import godotapi / spatial
import core, types, states, bots, builds, models / colors

let state = GameState.active

proc init*(_: type Sign, 
  markdown: string, title = "", transform = Transform.init, width = 1.0, 
  height = 1.0, size = 32, billboard = false, zoomable = true): Sign =

  let title = if title == "": markdown else: title
  let self = Sign(
    flags: ZenSet[ModelFlags].init,
    markdown: Zen.init(markdown),
    title: Zen.init(title),
    units: Zen.init(seq[Unit]),
    start_transform: transform,
    transform: Zen.init(transform),
    code: ZenValue[string].init,
    velocity: ZenValue[Vector3].init,
    glow: ZenValue[float].init,
    frame_delta: ZenValue[float].init,
    scale: Zen.init(1.0),
    width: width,
    height: height,
    size: size,
    billboard: billboard,
    zoomable: zoomable,
    frame_created: state.frame_count,
    color: Zen.init(action_colors[black])
  )

  echo "zoomable is ", zoomable

  self.flags += Visible
  self.state_zids.add:
    state.flags.changes:
      if PrimaryDown.added and Hover in self.flags:
        state.open_sign.value = self

  self.flags.changes:
    if Hover.added:
      self.glow.value = 1
      state.push_flag ReticleVisible
    elif Hover.removed:
      self.glow.value = 0
      state.pop_flag ReticleVisible

  result = self
