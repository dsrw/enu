import std / [tables, math]
import pkg/godot except print
import pkg / [chroma]
import godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                   input_event, animation_player, resource_loader, packed_scene,
                   spatial_material]
import globals, core, models / [states, colors]

gdobj BotNode of KinematicBody:
  var
    model*: Unit
    material* {.gdExport.}, highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material
    skin: Spatial
    mesh: MeshInstance
    animation_player: AnimationPlayer
    transform_zid: ZID

  proc update_material*(value: Material) =
    self.mesh.set_surface_material(0, value)

  proc set_default_material() =
    self.update_material(self.material)

  proc highlight() =
    self.update_material(self.highlight_material)

  method ready() =
    self.skin = self.get_node("model").as(Spatial)
    self.mesh = self.skin.get_node("root/Skeleton/body001").as(MeshInstance)
    self.set_default_material()
    self.animation_player =
        self.skin.get_node("AnimationPlayer").as(AnimationPlayer)
    if self.model of Player:
      # hack so player model doesn't hover
      self.skin.translate DOWN * 0.8

  proc set_color(color: chroma.Color) =
    var adjusted: chroma.Color
    if color == action_colors[green]:
      adjusted = color
      adjusted.a = 0.015
    elif color == action_colors[white]:
      adjusted = color
      adjusted.a = 0.1
    else:
      var dist = (color.distance(action_colors[brown]) + 10).cbrt / 7.5
      adjusted = color.saturate(0.2).darken(dist - 0.15)
      adjusted.a = 0.95 - color.distance(action_colors[black]) / 100

    SpatialMaterial(self.material).albedo_color = adjusted

  proc set_visibility =
    var color = SpatialMaterial(self.material).albedo_color
    if Visible in self.model.flags:
      self.visible = true
      self.set_color(color)
    elif Visible notin self.model.flags and God in state.flags:
      self.visible = true
      color.a = 0.0
      SpatialMaterial(self.material).albedo_color = color
    else:
      self.visible = false

  proc set_walk_animation(velocity: float, backwards: bool) =
    if velocity <= 0.1:
      self.animation_player.playback_speed = 0.5
      self.animation_player.play("idle", custom_blend = 0.5)
    elif velocity <= 5:
      self.animation_player.playback_speed = velocity / 2
      if backwards:
        self.animation_player.play_backwards("walk", custom_blend = 0.1)
      else:
        self.animation_player.play("walk", custom_blend = 0.1)
    else:
      self.animation_player.playback_speed = velocity / 10
      if backwards:
        self.animation_player.play_backwards("run", custom_blend = 0.1)
      else:
        self.animation_player.play("run", custom_blend = 0.1)

  proc track_changes() =
    self.model.glow.watch:
      if added:
        if change.item >= 1.0:
          self.highlight()
        else:
          self.set_default_material()

    self.model.flags.watch:
      if Highlight.added:
        self.highlight()
      elif Highlight.removed:
        self.set_default_material()
      elif change.item == Visible:
        self.set_visibility

    state.flags.watch:
      if change.item == God:
        self.set_visibility

    var velocity_zid: ZID
    if self.model of Bot:
      let bot = Bot(self.model)
      velocity_zid = bot.velocity.watch:
        if touched:
          if bot.animation.value == "auto":
            self.set_walk_animation(change.item.length, false)
      bot.animation.watch:
        if added or touched and change.item in ["", "auto"]:
          self.animation_player.play("idle")
        elif added:
          self.animation_player.play(change.item)

    elif self.model of Player:
      let player = Player(self.model)
      player.rotation.watch:
        if added:
          self.skin.rotation_degrees = (change.item + 180.0) * UP

      player.velocity.watch:
        if added:
          var velocity = change.item.length
          self.set_walk_animation(change.item.length,
              player.input_direction.value.z > 0.0)

    self.model.scale.watch:
      if added:
        let scale = change.item
        self.scale = vec3(scale, scale, scale)
        self.model.transform.pause(self.transform_zid):
          self.model.transform.value = self.transform

    self.model.color.watch:
      if added:
        self.set_color(change.item)

    self.transform_zid = self.model.transform.watch:
      if added:
        self.transform = change.item

  proc setup* =
    self.set_color(self.model.color.value)
    self.track_changes

  method process(delta: float) =
    if ?self.model:
      self.model.transform.pause self.transform_zid:
        self.model.transform.value = self.transform
      self.model.global_transform.value = self.global_transform
      if self.model of Bot:
        let bot = Bot(self.model)
        if bot.velocity.value.length > 0:
          discard self.move_and_slide(self.model.velocity.value, UP)

var bot_scene {.threadvar.}: PackedScene
proc init*(_: type BotNode): BotNode =
  if bot_scene.is_nil:
    bot_scene = load("res://components/BotNode.tscn") as PackedScene
  result = bot_scene.instance() as BotNode
