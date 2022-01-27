import std / [tables, os]
import pkg/godot except print, Color
import pkg / [print, model_citizen]
import godotapi / [node, voxel_terrain, voxel_mesher_blocky, voxel_tool, voxel_library, shader_material,
                   resource_loader, packed_scene]
import models / [types, builds, colors, units], globals
import engine / contexts

const
  highlight_energy = 1.0
  default_energy = 0.0
  empty_zid: ZID = 0

gdobj BuildNode of VoxelTerrain:
  var
    unit*: Build
    active_chunks: Table[Vector3, ZID]
    transform_zid: ZID

  proc init*() =
    self.bind_signals self, "block_loaded", "block_unloaded"

  proc clone_materials =
    # generate our own copy of the library materials, so we can manipulate them without impacting other builds.
    let count = self.mesher.as(VoxelMesherBlocky).library.voxel_count
    for i in 0..int.high:
      let m = self.get_material(i)
      if m.is_nil:
        break
      else:
        let m = m.duplicate.as(ShaderMaterial)
        m.set_shader_param("emission_energy", default_energy.to_variant)
        self.set_material(i, m)

  method ready() =
    self.clone_materials()

  proc draw(location: Vector3, color: Color) =
    self.get_voxel_tool.set_voxel(location, color.action_index.ord)

  proc draw_block(voxels: Chunk) =
    for loc, info in voxels:
      self.draw(loc, info.color)

  proc set_energy(energy: float) =
    let library = self.mesher.as(VoxelMesherBlocky).library
    for i in 0..<library.voxel_count.int:
      let m = self.get_material(i).as(ShaderMaterial)
      if not m.is_nil:
        m.set_shader_param("emission_energy", energy.to_variant)

  proc track_chunk(chunk_id: Vector3) =
    if chunk_id in self.unit.chunks:
      self.draw_block(self.unit.chunks[chunk_id])
      self.active_chunks[chunk_id] = self.unit.chunks[chunk_id].changes:
        # `and not modified` isn't required, but the block will be replaced on the next iteration anyway.
        if removed and not modified:
          self.draw(change.item.key, action_colors[eraser])
        elif added:
          self.draw(change.item.key, change.item.value.color)
      self.draw_block(self.unit.chunks[chunk_id])
    else:
      self.active_chunks[chunk_id] = empty_zid

  method on_block_loaded(chunk_id: Vector3) =
    self.track_chunk(chunk_id)

  method on_block_unloaded(chunk_id: Vector3) =
    let zid = self.active_chunks[chunk_id]
    if zid != empty_zid:
      self.unit.chunks[chunk_id].untrack(zid)
    self.active_chunks.del(chunk_id)

  proc track_changes() =
    self.unit.energy.changes:
      if added:
        self.set_energy(change.item)

    self.transform_zid = self.unit.transform.changes:
      if added:
        self.transform = change.item

    self.unit.bounds.changes:
      if added:
        self.bounds = change.item

    self.unit.chunks.changes:
      let id = change.item.key
      if id in self.active_chunks:
        if added:
          self.track_chunk(change.item.key)
        elif removed:
          self.active_chunks[id] = empty_zid

    self.unit.flags.changes:
      if Highlight.added:
        self.set_energy highlight_energy
      elif Highlight.removed:
        self.set_energy default_energy

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

  proc setup*(unit: Build) =
    let was_skipping_join = dont_join
    dont_join = true
    self.unit = unit
    self.unit.to_global = proc(local: Vector3): Vector3 =
      self.to_global(local)
    self.unit.to_local = proc(global: Vector3): Vector3 =
      self.to_local(global)
    self.transform = unit.transform.value
    self.track_changes
    self.unit.draw(vec3(), (Manual, unit.start_color))
    dont_join = was_skipping_join

let build_scene = load("res://components/BuildNode.tscn") as PackedScene
proc init*(_: type BuildNode): BuildNode =
  result = build_scene.instance() as BuildNode
