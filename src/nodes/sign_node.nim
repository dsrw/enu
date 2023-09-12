import pkg / [godot]
import godotapi / [spatial, resource_loader, packed_scene, collision_shape,
                   mesh_instance, quad_mesh, spatial_material, viewport,
                   style_box_flat]
import ui / markdown_label
import core

gdobj SignNode of Spatial:
  var model*: Sign
  var zid: ZID
  var material: SpatialMaterial

  proc set_visibility =
    if Visible in self.model.global_flags:
      self.visible = true
      self.material.params_blend_mode = spatial_material.BLEND_MODE_MIX
    elif Visible notin self.model.global_flags and God in state.local_flags:
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
        BILLBOARD_ENABLED
      else:
        BILLBOARD_DISABLED

    label.markdown = self.model.title
    label.update

    self.model.title_value.watch:
      if added or touched:
        if change.item == "":
          label.markdown = self.model.markdown
        else:
          label.markdown = change.item
        resize()
        label.update

    self.model.markdown_value.watch:
      if added or touched:
        if self.model.title == "":
          label.markdown = change.item
          resize()
          label.update

    self.model.glow_value.watch:
      if added:
        self.material.emission_energy = change.item

    self.transform = self.model.transform
    self.model.transform_value.watch:
      if added:
        self.transform = change.item

    self.model.global_flags.watch:
      if (change.item == Visible and ScriptInitializing notin
          self.model.global_flags) or ScriptInitializing.removed:

        self.set_visibility

    state.local_flags.watch:
      if God.removed:
        self.set_visibility

    self.model.local_flags.watch:
      if Highlight.added:
        self.material.emission_energy = 1.0
      elif Highlight.removed:
        self.material.emission_energy = self.model.glow

  method process*(delta: float) =
    # If we only billboard the material, the collision surface doesn't move
    # so highlighting the sign is weird from some angles. Align the mesh to the
    # camera, along with billboarding the material. The mesh doesn't line-up
    # with the billboard 100%, but it's pretty close.
    if ?self.model and self.model.billboard:
      let camera = self.get_viewport.get_camera
      if ?camera:
        let camera_origin = camera.global_transform.origin
        let cross = UP.cross(self.global_transform.origin - camera_origin)

        if cross != vec3():
          self.look_at(camera_origin, UP)

var sign_scene {.threadvar.}: PackedScene
proc init*(_: type SignNode): SignNode =
  if sign_scene.is_nil:
    sign_scene = load("res://components/SignNode.tscn") as PackedScene
  result = sign_scene.instance() as SignNode
