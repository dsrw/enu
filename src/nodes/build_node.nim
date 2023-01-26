import std / [tables, bitops]
import pkg/godot except print, Color
import godotapi / [node, voxel_terrain, voxel_mesher_blocky, voxel_tool,
       voxel_library, shader_material,resource_loader, packed_scene]
import core, models / [builds, colors, states], globals

const
  highlight_glow = 1.0
  default_glow = 0.0

var build_scene {.threadvar.}: PackedScene
var shader {.threadvar.}: Shader
var hidden_shader {.threadvar.}: Shader

gdobj BuildNode of VoxelTerrain:
  var
    model*: Build
    transform_zid: ZID
    default_view_distance: int
    voxel_tool_ref: VoxelTool

  proc init*() =
    self.bind_signals self, "block_loaded", "block_unloaded"
    self.default_view_distance = self.max_view_distance.int

  proc prepare_materials =
    if self.model.shared.value.materials.len == 0:
      # generate our own copy of the library materials, so we can manipulate them without impacting other builds.
      for i in 0..int.high:
        let m = self.get_material(i)
        if m.is_nil:
          break
        else:
          let m = m.duplicate.as(ShaderMaterial)
          m.set_shader_param("emission_energy", default_glow.to_variant)
          self.model.shared.value.materials.add(m)

    for i, material in self.model.shared.value.materials:
      self.set_material(i, material)

  method ready() =
    self.model.sight_ray = self.get_node("SightRay") as RayCast
    self.voxel_tool_ref = self.get_voxel_tool()
    self.model.voxel_tool.value = addr self.voxel_tool_ref
    self.prepare_materials()

  proc set_glow(glow: float) =
    let library = self.mesher.as(VoxelMesherBlocky).library
    for i in 0..<library.voxel_count.int:
      let m = self.get_material(i).as(ShaderMaterial)
      if not m.is_nil:
        m.set_shader_param("emission_energy", glow.to_variant)

  method on_block_loaded(chunk_id: Vector3) =
    self.model.last_loaded_chunk_id.value = chunk_id

  method on_block_unloaded(chunk_id: Vector3) =
    self.model.last_unloaded_chunk_id.value = chunk_id

  proc set_visibility =
    if Visible in self.model.flags:
      self.visible = true

      for material in self.model.shared.value.materials:
        material.shader = shader
    elif Visible notin self.model.flags and God in state.flags:
      self.visible = true

      for material in self.model.shared.value.materials:
        material.shader = hidden_shader
    else:
      self.visible = false

  proc track_changes() =
    self.model.glow.watch:
      if added:
        self.set_glow(change.item)

    self.bounds = self.model.bounds.value
    self.model.bounds.watch:
      if added:
        debug "changing bounds", new = change.item
        self.bounds = change.item

    self.model.flags.watch:
      if Highlight.added:
        self.set_glow highlight_glow
      elif Highlight.removed:
        self.set_glow self.model.glow.value
      elif change.item == Visible:
        self.set_visibility

    state.flags.watch:
      if change.item == God:
        self.set_visibility

    self.model.scale.watch:
      if added:
        let scale = change.item
        self.scale = vec3(scale, scale, scale)
        self.model.transform.pause self.transform_zid:
          self.model.transform.value = self.transform
        self.max_view_distance = int(self.default_view_distance.float / scale)

    self.transform_zid = self.model.transform.watch:
      if added:
        self.transform = change.item

  method process(delta: float) =
    if ?self.model:
      self.model.transform.pause self.transform_zid:
       self.model.transform.value = self.transform
      self.model.global_transform.value = self.global_transform
      self.model.frame_delta.touch delta

  proc setup* =
    let was_skipping_join = dont_join
    dont_join = true

    self.track_changes

    dont_join = was_skipping_join
    if not self.model.bot_collisions:
      var layer = 0
      layer.set_bits(2)
      self.collision_layer = layer

proc init*(_: type BuildNode): BuildNode =
  if build_scene.is_nil:
    build_scene = load("res://components/BuildNode.tscn") as PackedScene
    shader = load("res://shaders/terrain_voxel.shader") as Shader
    hidden_shader = load("res://shaders/terrain_voxel_hidden.shader") as Shader
  result = build_scene.instance() as BuildNode
