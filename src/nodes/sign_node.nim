import pkg / [godot]
import godotapi / [spatial, resource_loader, packed_scene, collision_shape,
                   mesh_instance, quad_mesh, spatial_material, viewport,
                   style_box_flat]
import ui / markdown_label
import core, models / [states]

gdobj SignNode of Spatial:
  var model*: Sign
  var zid: ZID
  var material: SpatialMaterial

  proc set_visibility =
    if Visible in self.model.global_flags:
      self.visible = true
      self.material.params_blend_mode = spatial_material.BLEND_MODE_MIX
    elif Visible notin self.model.global_flags and God in state.flags:
      self.visible = true
      self.material.params_blend_mode = spatial_material.BLEND_MODE_ADD
    else:
      self.visible = false

  proc setup* =
    debug "sign setup", sign = self.model.id
    var
      label = self.find_node("MarkdownLabel") as MarkdownLabel
      shape = self.find_node("CollisionShape") as CollisionShape
      mesh = self.find_node("MeshInstance") as MeshInstance
      viewport = self.find_node("Viewport") as Viewport
      quad = mesh.mesh as QuadMesh
    self.material = mesh.get_active_material(0) as SpatialMaterial

    proc resize =
      debug "sign resize", sign = self.model.id
      var
        ratio = self.model.width.value / self.model.height.value
        size = vec2(viewport.size.x, viewport.size.x / ratio)

      quad.size = vec2(self.model.width.value, self.model.height.value)
      shape.scale = vec3(self.model.width.value, self.model.height.value, 1)
      var t = mesh.transform
      t.origin.x = self.model.width.value / -2 + 0.5
      t.origin.y = self.model.height.value / -2 + 0.5
      mesh.transform = t
      viewport.size = size
      label.rect_size = size

      var stylebox = label.og_label.get_stylebox("normal") as StyleBoxFlat

      stylebox.content_margin_left = 80 / self.model.width.value
      label.size = int(float(self.model.size.value) / self.model.width.value)

    resize()
    self.material.params_billboard_mode =
      if self.model.billboard.value:
        BILLBOARD_FIXED_Y
      else:
        BILLBOARD_DISABLED

    label.markdown = self.model.title.value
    label.update

    self.model.title.watch:
      if added or touched:
        if change.item == "":
          label.markdown = self.model.markdown.value
        else:
          label.markdown = change.item
        resize()
        label.update

    self.model.markdown.watch:
      if added or touched:
        if self.model.title.value == "":
          label.markdown = change.item
          resize()
          label.update

    self.model.glow.watch:
      if added:
        self.material.emission_energy = change.item

    self.transform = self.model.transform.value
    self.model.transform.watch:
      if added:
        self.transform = change.item

    self.model.global_flags.watch:
      if (change.item == Visible and ScriptInitializing notin
          self.model.global_flags) or ScriptInitializing.removed:

        self.set_visibility

    state.flags.watch:
      if God.removed:
        self.set_visibility

var sign_scene {.threadvar.}: PackedScene
proc init*(_: type SignNode): SignNode =
  if sign_scene.is_nil:
    sign_scene = load("res://components/SignNode.tscn") as PackedScene
  result = sign_scene.instance() as SignNode
