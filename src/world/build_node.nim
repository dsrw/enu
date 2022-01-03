import std / [tables, sets]
import godotapi / [node, voxel_terrain, voxel_mesher_blocky, voxel_tool, voxel_library, shader_material,
                   resource_loader, packed_scene]
import pkg/godot except print
import pkg / [print, model_citizen]
import models / [types, builds, colors], globals

const
  highlight_energy = 1.0
  default_energy = 0.1

gdobj BuildNode of VoxelTerrain:
  var
    unit*: Build[Node]
    active_blocks: HashSet[Vector3]

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

  proc draw_block(voxels: VoxelBlock) =
    for loc, info in voxels:
      self.draw(loc, info)

  method on_block_loaded(location: Vector3) =
    self.active_blocks.incl(location)
    if location in self.unit.voxels:
      self.draw_block(self.unit.voxels[location])

  method on_block_unloaded(location: Vector3) =
    self.active_blocks.excl(location)

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

  proc track_changes() =
    self.unit.flags.changes:
      if Highlight.added:
        self.select
      elif Highlight.removed:
        self.deselect

    self.unit.voxels.track proc(changes: auto) =
      for root_change in changes:
        for change in root_change.triggered_by:
          if change of Change[Pair[Vector3, VoxelInfo]]:
            let change = Change[Pair[Vector3, VoxelInfo]](change)
            if Added in change.changes:
              if root_change.item.key in self.active_blocks:
                self.draw(change.item.key, change.item.value)
              else:
                if not self.bounds.contains(change.item.key):
                  self.bounds = self.bounds.expand(change.item.key)

  # TODO
  # # method on_tree_exiting() =
  # #   game_node.trigger("collider_exiting", self)
  #

  proc setup*(unit: Build[Node]) =
    self.unit = unit
    self.unit.to_global = proc(local: Vector3): Vector3 =
      self.to_global(local)
    self.unit.to_local = proc(global: Vector3): Vector3 =
      self.to_local(global)
    self.transform = unit.transform
    self.unit.draw(vec3(), (Manual, unit.start_color))

    self.track_changes

let build_scene = load("res://components/BuildNode.tscn") as PackedScene
proc init*(_: type BuildNode): BuildNode =
  result = build_scene.instance() as BuildNode
