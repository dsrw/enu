import std / [tables, sugar, os]
import pkg/godot except print
import pkg/model_citizen
import godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                   input_event, animation_player, resource_loader, packed_scene]
import globals, core, print
import models / [types, bots, units]

gdobj BotNode of KinematicBody:
  var
    unit*: Bot
    material* {.gdExport.}, highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material
    skin: Spatial
    mesh: MeshInstance
    animation_player: AnimationPlayer

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
    self.unit.energy.changes:
      if added:
        if change.item >= 1.0:
          self.highlight()
        else:
          self.set_default_material()

    self.unit.flags.changes:
      if Highlight.added:
        self.highlight()
      elif Highlight.removed:
        self.set_default_material()

    var velocity_zid: ZID
    velocity_zid = self.unit.velocity.changes:
      if touched:
        self.unit.velocity.pause velocity_zid:
          self.unit.velocity.value = self.move_and_slide(change.item, UP)

    self.unit.animation.changes:
      if "".added:
        self.animation_player.stop(true)
      elif added:
        self.animation_player.play(change.item)

    self.unit.scale.changes:
      if added:
        let scale = change.item
        self.scale = vec3(scale, scale, scale)

  proc setup*(unit: Bot) =
    self.unit = unit
    self.transform = unit.start_transform
    self.track_changes

  method process(delta: float) =
    if self.unit:
      self.unit.frame_delta.touch delta

let bot_scene = load("res://components/BotNode.tscn") as PackedScene
proc init*(_: type BotNode): BotNode =
  result = bot_scene.instance() as BotNode
