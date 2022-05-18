import pkg / [godot, model_citizen]
import godotapi / [spatial, resource_loader, packed_scene, collision_shape,
                   mesh_instance, quad_mesh, spatial_material, viewport]
import ui / markdown_label, models / [types, signs]
import core

gdobj SignNode of Spatial:
  var model*: Sign

  proc setup* =
    var
      label = self.find_node("MarkdownLabel") as MarkdownLabel
      shape = self.find_node("CollisionShape") as CollisionShape
      mesh = self.find_node("MeshInstance") as MeshInstance
      viewport = self.find_node("Viewport") as Viewport
      quad = mesh.mesh as QuadMesh
      material = mesh.get_active_material(0) as SpatialMaterial
      ratio = self.model.width / self.model.height
      size = vec2(viewport.size.x, viewport.size.x / ratio)
 
    quad.size = vec2(self.model.width, self.model.height)
    shape.scale = vec3(self.model.width, self.model.height, 1)
    var t = mesh.transform
    t.origin.x = self.model.width / -2 + 0.5
    t.origin.y = self.model.height / -2 + 0.5
    mesh.transform = t

    viewport.size = size
    label.rect_size = size

    label.mono_width = self.model.mono_width
    material.params_billboard_mode =
      if self.model.billboard:
        BILLBOARD_FIXED_Y
      else:
        BILLBOARD_DISABLED

    label.markdown = self.model.markdown.value

    self.model.markdown.changes:
      if added:
        label.markdown = change.item

    self.model.glow.changes:
      if added:
        material.emission_energy = change.item

let sign_scene = load("res://components/SignNode.tscn") as PackedScene
proc init*(_: type SignNode): SignNode =
  result = sign_scene.instance() as SignNode
