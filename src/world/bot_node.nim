import std / [tables, sugar, os]
import pkg/godot except print
import pkg/model_citizen
import godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                   input_event, animation_player, resource_loader, packed_scene]
import globals, core, print
import engine / [contexts, engine], models / [types, bots, units]

gdobj BotNode of KinematicBody:
  var
    unit*: Bot
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

    self.transform_zid = self.unit.transform.changes:
      if added:
        self.transform = change.item

    var velocity_zid: ZID
    velocity_zid = self.unit.velocity.changes:
      if touched:
        self.unit.velocity.pause velocity_zid:
          self.unit.velocity.value = self.move_and_slide(change.item, UP)

    self.unit.animation.changes:
      if "".added:
        self.animation_player.stop(true)
      elif added():
        self.animation_player.play(change.item)

  proc setup*(unit: Bot) =
    self.unit = unit
    self.unit.to_global = proc(local: Vector3): Vector3 =
      self.to_global(local)
    self.unit.to_local = proc(global: Vector3): Vector3 =
      self.to_local(global)
    self.transform = unit.transform.value
    self.track_changes

  method process(delta: float) =
    if self.unit:
      if self.unit.script_ctx:
        if self.unit.script_ctx.engine.running:
          self.unit.advance(delta)
        elif self.unit.script_ctx.is_clone and not self.unit.script_ctx.engine.initialized:
            if self.unit.script_file.file_exists:
              self.unit.code.value = self.unit.script_file.read_file

      # self.unit.transform.pause self.transform_zid:
      #   self.unit.transform.value = self.transform

let bot_scene = load("res://components/BotNode.tscn") as PackedScene
proc init*(_: type BotNode): BotNode =
  result = bot_scene.instance() as BotNode
