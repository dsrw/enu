import ../../godotapi / [viewport, camera, mesh_instance, spatial_material, camera,
                         viewport_texture, image_texture, image, resource_loader]
import godot
from std/colors import extract_rgb
import ".." / [core, globals, api/block_colors, api/directions]

gdobj PreviewMaker of Viewport:
  var
    camera: Camera
    cube: MeshInstance
    bot: Spatial
    callback: proc(img: Image)
    skip_next = false

  method ready*() =
    trace:
      self.camera = self.find_node("Camera") as Camera
      self.cube = self.find_node("Cube") as MeshInstance
      self.bot = self.find_node("bot") as Spatial
      assert not self.camera.is_nil
      assert not self.cube.is_nil
      assert not self.bot.is_nil

  method process*(delta: float) =
    trace:
      if not self.skip_next and not self.callback.is_nil:
        let image = self.get_texture().get_data()
        self.callback(image)
        self.callback = nil
      self.skip_next = false

  proc generate_block_preview*(block_color: BlockColor, callback: proc(preview: Image)) =
    let material = load(&"res://materials/default-block-grid.tres") as SpatialMaterial
    self.cube.visible = true
    self.bot.visible = false
    let
      texture = gdnew[ImageTexture]()
      image = gdnew[Image]()
      color = init_color block_color.main

    image.create(256, 256, true, FORMAT_RGB8)
    image.fill(color)

    #image.lock() # To enable drawing with setpixel later
    texture.createfrom_image(image)
    material.albedo_texture = texture
    material.albedo_color = color
    material.emission = color
    self.cube.set_surface_material(0, material)
    self.render_target_update_mode = UPDATE_ONCE
    self.camera.fov = 1
    self.camera.look_at vec3(), Up
    #callback(image)
    self.callback = callback
    self.skip_next = true

  proc generate_object_preview*(object_name: string, callback: proc(preview: Image)) =
    self.cube.visible = false
    self.bot.visible = true
    self.render_target_update_mode = UPDATE_ONCE
    self.camera.fov = 1.2
    self.camera.look_at vec3(), Up
    self.callback = callback
    self.skip_next = true
