import pkg / [godot]
import godotapi / [spatial, resource_loader, packed_scene, collision_shape,
                   mesh_instance, quad_mesh, spatial_material, viewport,
                   style_box_flat]
import ui / markdown_label, models / [signs]
import core, models / [states]

let state = GameState.active

gdobj SignNode of Spatial:
  var model*: Sign
  var zid: ZID
  var material: SpatialMaterial

  proc set_visibility =
    if Visible in self.model.flags:
      self.visible = true
      self.material.params_blend_mode = spatial_material.BLEND_MODE_MIX
    elif Visible notin self.model.flags and God in state.flags:
      self.visible = true
      self.material.params_blend_mode = spatial_material.BLEND_MODE_ADD
    else:
      self.visible = false

  proc setup* =
    var
      label = self.find_node("MarkdownLabel") as MarkdownLabel
      shape = self.find_node("CollisionShape") as CollisionShape
      mesh = self.find_node("MeshInstance") as MeshInstance
      viewport = self.find_node("Viewport") as Viewport
      quad = mesh.mesh as QuadMesh
    self.material = mesh.get_active_material(0) as SpatialMaterial

    proc resize =
      var
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

      var stylebox = label.og_label.get_stylebox("normal") as StyleBoxFlat

      stylebox.content_margin_left = 80 / self.model.width
      label.size = int(float(self.model.size) / self.model.width)

    resize()
    self.material.params_billboard_mode =
      if self.model.billboard:
        BILLBOARD_FIXED_Y
      else:
        BILLBOARD_DISABLED

    label.markdown = self.model.title.value
    label.update

    self.model.title.watch:
      if added() or touched():
        if change.item == "":
          label.markdown = self.model.markdown.value
        else:
          label.markdown = change.item
        resize()
        label.update

    self.model.markdown.watch:
      if added() or touched():
        if self.model.title.value == "":
          label.markdown = change.item
          resize()
          label.update

    self.model.glow.watch:
      if added():
        self.material.emission_energy = change.item

    self.transform = self.model.transform.value
    self.model.transform.watch:
      if added():
        self.transform = change.item

    self.model.flags.watch:
      if change.item == Visible:
        self.set_visibility

    state.flags.watch:
      if God.removed:
        self.set_visibility

let sign_scene = load("res://components/SignNode.tscn") as PackedScene
proc init*(_: type SignNode): SignNode =
  result = sign_scene.instance() as SignNode
