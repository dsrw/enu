import std / [tables]
import godotapi / [node, voxel_terrain, voxel_mesher_blocky, voxel_tool, voxel_library, shader_material,
                   resource_loader, packed_scene]
import pkg/godot except print
import pkg / [print, model_citizen]
import models / [types, builds], globals

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
    self.bind_signals(self, "block_loaded", "block_unloaded")

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

  proc setup*(unit: Build[Node]) =
    self.unit = unit
    self.transform = unit.transform
    self.unit.draw(vec3(), (Manual, init_color()))

  proc draw(location: Vector3, info: VoxelInfo) =
    while not self.bounds.contains(location):
      self.bounds = self.bounds.grow(16)
    self.get_voxel_tool.set_voxel(location, 2)

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

let build_scene = load("res://components/BuildNode.tscn") as PackedScene
proc init*(_: type BuildNode): BuildNode =
  result = build_scene.instance() as BuildNode
