import std / [tables, sugar, os]
import pkg/godot except print
import pkg/model_citizen
import godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                   input_event, animation_player, resource_loader, packed_scene]
import globals, core, print
import models / [types, bots, units]

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

    var velocity_zid: ZID
    velocity_zid = self.model.velocity.changes:
      if touched:
        self.model.velocity.pause velocity_zid:
          self.model.velocity.value = self.move_and_slide(change.item, UP)
        if self.model.animation.value == "auto":
          if change.item.length <= 0.1:
            self.animation_player.playback_speed = 1
            self.animation_player.stop(true)
          elif change.item.length <= 3:
            self.animation_player.playback_speed = change.item.length / 2
            self.animation_player.play("walk")
          else:
            self.animation_player.playback_speed = change.item.length / 5
            self.animation_player.play("run")

    self.model.animation.changes:
      if "".added or "auto".added:
        self.animation_player.stop(true)
      elif added:
        self.animation_player.play(change.item)

    self.model.scale.changes:
      if added:
        let scale = change.item
        self.scale = vec3(scale, scale, scale)
        self.model.transform.pause(self.transform_zid):
          self.model.transform.value = self.transform

    self.transform_zid = self.model.transform.changes:
      if added:
        self.transform = change.item

  proc setup* =
    self.track_changes

  method process(delta: float) =
    if self.model:
      self.model.frame_delta.touch delta
      self.model.transform.pause self.transform_zid:
        self.model.transform.value = self.transform

let bot_scene = load("res://components/BotNode.tscn") as PackedScene
proc init*(_: type BotNode): BotNode =
  result = bot_scene.instance() as BotNode
