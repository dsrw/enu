import std / [tables]
import godotapi / [node, voxel_terrain, voxel_mesher_blocky, voxel_tool, voxel_library, shader_material,
                   resource_loader, packed_scene]
import pkg/godot except print
import pkg / [print, model_citizen]
import models / [types, builds, colors], globals

type
  TrackedBlock = tuple[voxels: VoxelBlock, gid: int]

const
  highlight_energy = 1.0
  default_energy = 0.1

gdobj BuildNode of VoxelTerrain:
  var
    unit*: Build[Node]
    loaded_blocks*: Table[Vector3, TrackedBlock]

  proc init*() =
    self.bind_signals(self, "block_loaded", "block_unloaded", "target_in", "target_out")#, "target_move",
                            #"target_fire", "target_remove", "mouse_released")

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

  proc draw(location: Vector3, info: VoxelInfo) =
    while not self.bounds.contains(location):
      self.bounds = self.bounds.grow(16)
    self.get_voxel_tool.set_voxel(location, info.color.action_index.ord)

  proc draw_block(voxels: VoxelBlock) =
    for loc, info in voxels:
      self.draw(loc, info)

  method ready() =
    self.clone_materials()

  method on_block_loaded(location: Vector3) =
    var tracked_block: TrackedBlock
    tracked_block.voxels = self.unit.voxels[location]
    tracked_block.gid = tracked_block.voxels.track proc(changes: auto) =
      for change in changes:
        if Added in change.changes:
          self.draw(change.obj.key, change.obj.value)
    self.draw_block(tracked_block.voxels)
    self.loaded_blocks[location] = tracked_block

  method on_block_unloaded(location: Vector3) =
    var tracked_block = self.loaded_blocks[location]
    tracked_block.voxels.untrack(tracked_block.gid)
    self.loaded_blocks.del(location)

  # method on_target_move(point, normal: Vector3) =
  #   let
  #     prev_point = self.current_point
  #     prev_normal = self.current_normal
  #   self.current_point = point
  #   self.current_normal = normal
  #   let targeted_voxel = self.find_targeted_voxel(point, normal)
  #   if targeted_voxel != self.targeted_voxel:
  #     self.targeted_voxel = targeted_voxel
  #
  #   if not self.highlighted and tool_mode == CodeMode:
  #     self.get_parent.trigger("highlight", true)
  #
  #   if tool_mode == ObjectMode:
  #     if normal == UP:
  #       state.target_block = true
  #     else:
  #       state.reticle = true
  #
  #   if self.painting and tool_mode == BlockMode:
  #     let plane = point * normal
  #     if self.draw_plane == plane:
  #       self.on_target_fire()
  #   elif self.erasing and tool_mode == BlockMode:
  #     let plane = point * normal
  #     if self.draw_plane == plane:
  #       self.on_target_remove()
  #

  proc set_energy(energy: float) =
    let library = self.mesher.as(VoxelMesherBlocky).library
    for i in 0..<library.voxel_count.int:
      let m = self.get_material(i).as(ShaderMaterial)
      if not m.is_nil:
        m.set_shader_param("emission_energy", energy.to_variant)

  proc select =
    self.set_energy(highlight_energy)

  proc deselect =
    self.set_energy(default_energy)

  method on_target_out() =
    self.unit.target_out(state)

  method on_target_in() =
    self.unit.target_in(state)

  proc track_changes() =
    self.unit.flags.track proc(changes: auto) =
      for change in changes:
        if change.obj == Highlighted:
          if Added in change.changes:
            self.select
          elif Removed in change.changes:
            self.deselect

  # method on_mouse_released() =
  #   self.painting = false
  #   self.erasing = false
  #   self.draw_plane = vec3()
  #
  # # method on_tree_exiting() =
  # #   game_node.trigger("collider_exiting", self)
  #
  # method on_target_fire() =
  #   let vox = self.get_vox(self.targeted_voxel)
  #   if vox:
  #     if tool_mode == BlockMode:
  #       self.painting = true
  #       let point = self.targeted_voxel + self.current_normal
  #       if not self.root_builder.is_nil:
  #         let t = self.get_parent().as(Spatial).translation #+ vec3(2,0,1)
  #         self.root_builder.draw_terrain(t + point, action_index, true)
  #         self.root_builder.draw_plane = (t + self.current_point) * self.current_normal
  #       else:
  #         self.draw_terrain(point, action_index, true)
  #       self.draw_plane = self.current_point * self.current_normal
  #     elif tool_mode == ObjectMode:
  #       var transform = init_transform().translated(self.to_global(self.current_point))
  #       create_bot(transform, data_node, up_axis = self.current_normal)
  #     elif tool_mode == CodeMode:
  #       self.trigger("block_selected")
  #       self.get_parent.trigger("deselect", true)
  #
  # method on_target_remove() =
  #   let loc = self.targeted_voxel
  #   if tool_mode == BlockMode:
  #     self.erasing = true
  #     let data = self.get_vox(loc)
  #     if data:
  #       let data = data.get
  #       self.draw_terrain(loc, 0)
  #       if self.buffers.len == 0:
  #         self.trigger("last_block_deleted", 0)
  #       else:
  #         self.trigger("terrain_block_removed", 0 , loc, data.index, data.keep)
  #     self.draw_plane = self.current_point * self.current_normal
  proc setup*(unit: Build[Node]) =
    self.unit = unit
    self.transform = unit.transform
    self.unit.draw(vec3(), (Manual, unit.start_color))
    self.track_changes

let build_scene = load("res://components/BuildNode.tscn") as PackedScene
proc init*(_: type BuildNode): BuildNode =
  result = build_scene.instance() as BuildNode
