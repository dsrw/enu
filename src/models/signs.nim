import std / [sugar]
import pkg / [model_citizen, print]
import godotapi / spatial
import core, types, states, bots, builds

let state = GameState.active

proc init*(_: type Sign, 
  markdown: string, transform = Transform.init, width = 1.0, height = 1.0, 
  mono_width = 22, billboard = false, zoomable = true): Sign =

  let self = Sign(
    flags: ZenSet[ModelFlags].init,
    markdown: Zen.init(markdown),
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
    mono_width: mono_width,
    billboard: billboard,
    zoomable: zoomable
  )

  state.flags.changes:
    if PrimaryDown.added and Hover in self.flags:
      state.markdown.value = self.markdown.value

  self.flags.changes:
    if Hover.added:
      self.glow.value = 1
      state.push_flag ReticleVisible
    elif Hover.removed:
      self.glow.value = 0
      state.pop_flag ReticleVisible

  result = self
