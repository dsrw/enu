import ../godotapi / [viewport, camera, mesh_instance, material, camera,
                      viewport_texture, image, resource_loader],
       godot,
       core, globals

gdobj PreviewMaker of Viewport:
  var
    camera: Camera
    cube: MeshInstance
    callback: proc(img: Image)
    skip_next = false

  method ready*() =
    self.camera = self.find_node("Camera") as Camera
    self.cube = self.find_node("Cube") as MeshInstance
    assert not self.camera.is_nil
    assert not self.cube.is_nil

  method process*(delta: float) =
    if not self.skip_next and not self.callback.is_nil:
     let image = self.get_texture().get_data()
     self.callback(image)
     self.callback = nil
    self.skip_next = false

  proc generate_block_preview*(material_name: string, callback: proc(preview: Image)) =
    let material = load(&"res://materials/{material_name}.tres") as Material
    self.cube.set_surface_material(0, material)
    self.render_target_update_mode = UPDATE_ONCE
    self.camera.fov = 1
    self.camera.look_at vec3(), UP
    self.callback = callback
    self.skip_next = true
