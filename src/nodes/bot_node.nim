import std / [tables, sugar, os, math]
import pkg/godot except print
import pkg / [chroma]
import godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                   input_event, animation_player, resource_loader, packed_scene,
                   spatial_material]
import globals, core, print
import core, models / [bots, units, states, colors]

let state = GameState.active

gdobj BotNode of KinematicBody:
  var
    model*: Bot
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
    self.skin = self.get_node("Mannequiny").as(Spatial)
    self.mesh = self.skin.get_node("root/Skeleton/body001").as(MeshInstance)
    self.animation_player = self.skin.get_node("AnimationPlayer").as(AnimationPlayer)
    self.set_default_material()

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

  proc track_changes() =
    self.model.glow.changes:
      if added:
        if change.item >= 1.0:
          self.highlight()
        else:
          self.set_default_material()

    self.model.flags.changes:
      if Highlight.added:
        self.highlight()
      elif Highlight.removed:
        self.set_default_material()
      elif change.item == Visible:
        self.set_visibility

    self.model.state_zids.add:
      state.flags.changes:
        if change.item == God:
          self.set_visibility

    var velocity_zid: ZID
    velocity_zid = self.model.velocity.changes:
      if touched:
        self.model.velocity.pause velocity_zid:
          self.model.velocity.value = self.move_and_slide(change.item, UP)
        if self.model.animation.value == "auto":
          if change.item.length <= 0.1:
            self.animation_player.playback_speed = 0.5
            self.animation_player.play("idle", custom_blend = 0.5)
          elif change.item.length <= 3:
            self.animation_player.playback_speed = change.item.length / 2
            self.animation_player.play("walk", custom_blend = 0.1)
          else:
            self.animation_player.playback_speed = change.item.length / 10
            self.animation_player.play("run", custom_blend = 0.1)

    self.model.animation.changes:
      if added or touched and change.item in ["", "auto"]:
        self.animation_player.play("idle")
      elif added:
        self.animation_player.play(change.item)

    self.model.scale.changes:
      if added:
        let scale = change.item
        self.scale = vec3(scale, scale, scale)
        self.model.transform.pause(self.transform_zid):
          self.model.transform.value = self.transform

    self.model.color.changes:
      if added:
        self.set_color(change.item)

    self.transform_zid = self.model.transform.changes:
      if added:
        self.transform = change.item

  proc setup* =
    self.set_color(self.model.color.value)
    self.track_changes

  method process(delta: float) =
    if ?self.model:
      self.model.frame_delta.touch delta
      self.model.transform.pause self.transform_zid:
        self.model.transform.value = self.transform

let bot_scene = load("res://components/BotNode.tscn") as PackedScene
proc init*(_: type BotNode): BotNode =
  result = bot_scene.instance() as BotNode
