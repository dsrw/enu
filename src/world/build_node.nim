import std / [tables]
import pkg/godot except print
import pkg / [print, model_citizen]
import godotapi / [node, voxel_terrain, voxel_mesher_blocky, voxel_tool, voxel_library, shader_material,
                   resource_loader, packed_scene]
import models / [types, builds, colors], globals
import engine / contexts

const
  highlight_energy = 5.0
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

  proc draw(location: Vector3, info: VoxelInfo) =
    self.get_voxel_tool.set_voxel(location, info.color.action_index.ord)

  proc draw_block(voxels: Chunk) =
    for loc, info in voxels:
      self.draw(loc, info)

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
        if added:
          self.draw(change.item.key, change.item.value)
        elif removed and not modified:
          self.draw(change.item.key, (Computed, action_colors[eraser]))
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

    # self.unit.chunks.track proc(changes: auto) =
    #   for root_change in changes:
    #     for change in root_change.triggered_by:
    #       if change of Change[Pair[Vector3, VoxelInfo]]:
    #         let change = Change[Pair[Vector3, VoxelInfo]](change)
    #         if Added in change.changes:
    #           if root_change.item.key in self.active_blocks:
    #             self.draw(change.item.key, change.item.value)
    #         elif Removed in change.changes:
    #           if root_change.item.key in self.active_blocks:
    #             self.draw(change.item.key, (Computed, action_colors[eraser]))

  # TODO
  # # method on_tree_exiting() =
  # #   game_node.trigger("collider_exiting", self)
  #

  method process(delta: float) =
    if self.unit:
      if self.unit.script_ctx and self.unit.script_ctx.engine.running:
        self.unit.advance(delta)

      self.unit.transform.pause self.transform_zid:
        self.unit.transform.value = self.transform

  proc setup*(unit: Build) =
    self.unit = unit
    self.unit.to_global = proc(local: Vector3): Vector3 =
      self.to_global(local)
    self.unit.to_local = proc(global: Vector3): Vector3 =
      self.to_local(global)
    self.transform = unit.transform.value
    self.track_changes
    self.unit.draw(vec3(), (Manual, unit.start_color))

let build_scene = load("res://components/BuildNode.tscn") as PackedScene
proc init*(_: type BuildNode): BuildNode =
  result = build_scene.instance() as BuildNode
