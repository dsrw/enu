import std / [tables, bitops]
import pkg/godot except print, Color
import pkg / [print, model_citizen]
import godotapi / [node, voxel_terrain, voxel_mesher_blocky, voxel_tool, voxel_library, shader_material,
                   resource_loader, packed_scene]
import models / [types, builds, colors, units, states], globals

const
  highlight_glow = 1.0
  default_glow = 0.0
  empty_zid: ZID = 0

let state = GameState.active

let build_scene = load("res://components/BuildNode.tscn") as PackedScene
let shader = load("res://shaders/terrain_voxel.shader") as Shader
let hidden_shader = load("res://shaders/terrain_voxel_hidden.shader") as Shader

gdobj BuildNode of VoxelTerrain:
  var
    model*: Build
    active_chunks: Table[Vector3, ZID]
    transform_zid: ZID
    default_view_distance: int

  proc init*() =
    self.bind_signals self, "block_loaded", "block_unloaded"
    self.default_view_distance = self.max_view_distance.int

  proc prepare_materials =
    if self.model.shared.materials.len == 0:
      # generate our own copy of the library materials, so we can manipulate them without impacting other builds.
      for i in 0..int.high:
        let m = self.get_material(i)
        if m.is_nil:
          break
        else:
          let m = m.duplicate.as(ShaderMaterial)
          m.set_shader_param("emission_energy", default_glow.to_variant)
          self.model.shared.materials.add(m)

    for i, material in self.model.shared.materials:
      self.set_material(i, material)

  method ready() =
    self.model.sight_ray = self.get_node("SightRay") as RayCast
    self.prepare_materials()

  proc draw(location: Vector3, color: Color) =
    self.get_voxel_tool.set_voxel(location, color.action_index.ord)

  proc draw_block(voxels: Chunk) =
    for loc, info in voxels:
      self.draw(loc, info.color)

  proc set_glow(glow: float) =
    let library = self.mesher.as(VoxelMesherBlocky).library
    for i in 0..<library.voxel_count.int:
      let m = self.get_material(i).as(ShaderMaterial)
      if not m.is_nil:
        m.set_shader_param("emission_energy", glow.to_variant)

  proc track_chunk(chunk_id: Vector3) =
    if chunk_id in self.model.chunks:
      self.draw_block(self.model.chunks[chunk_id])
      self.active_chunks[chunk_id] = self.model.chunks[chunk_id].changes:
        # `and not modified` isn't required, but the block will be replaced on the next iteration anyway.
        if removed and not modified:
          self.draw(change.item.key, action_colors[eraser])
        elif added:
          self.draw(change.item.key, change.item.value.color)
      self.draw_block(self.model.chunks[chunk_id])
    else:
      self.active_chunks[chunk_id] = empty_zid

  method on_block_loaded(chunk_id: Vector3) =
    self.track_chunk(chunk_id)

  method on_block_unloaded(chunk_id: Vector3) =
    let zid = self.active_chunks[chunk_id]
    if zid != empty_zid:
      self.model.chunks[chunk_id].untrack(zid)
    self.active_chunks.del(chunk_id)

  proc set_visibility =
    if Visible in self.model.flags:
      self.visible = true

      for material in self.model.shared.materials:
        material.shader = shader
    elif Visible notin self.model.flags and Key in state.flags:
      self.visible = true

      for material in self.model.shared.materials:
        material.shader = hidden_shader
    else:
      self.visible = false

  proc track_changes() =
    self.model.glow.changes:
      if added:
        self.set_glow(change.item)

    self.bounds = self.model.bounds.value
    self.model.bounds.changes:
      if added:
        self.bounds = change.item

    self.model.chunks.changes:
      let id = change.item.key
      if id in self.active_chunks:
        if added:
          self.track_chunk(change.item.key)
        elif removed:
          self.active_chunks[id] = empty_zid

    self.model.flags.changes:
      if Highlight.added:
        self.set_glow highlight_glow
      elif Highlight.removed:
        self.set_glow self.model.glow.value
      elif change.item == Visible:
        self.set_visibility

    self.model.state_zids.add:
      state.flags.changes:
        if change.item == Key:
          self.set_visibility

    self.model.scale.changes:
      if added:
        let scale = change.item
        self.scale = vec3(scale, scale, scale)
        self.model.transform.pause self.transform_zid:
          self.model.transform.value = self.transform
        self.max_view_distance = int(self.default_view_distance.float / scale)

    self.transform_zid = self.model.transform.changes:
      if added:
        self.transform = change.item

  method process(delta: float) =
    if self.model:
      self.model.frame_delta.touch delta
      self.model.transform.pause self.transform_zid:
        self.model.transform.value = self.transform

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
  result = build_scene.instance() as BuildNode
